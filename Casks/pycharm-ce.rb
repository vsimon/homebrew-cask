cask 'pycharm-ce' do
  version '2017.1'
  sha256 '248bbed16874f42d2f75bebc237a572eb8a43fef4b1fc778efabc549d1aed159'

  url "https://download.jetbrains.com/python/pycharm-community-#{version}.dmg"
  appcast 'https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release',
          checkpoint: 'd56902f0f9917a35f04f2e538d9b2f432f18550bbd8eb05acff59cbadd90894d'
  name 'Jetbrains PyCharm Community Edition'
  name 'PyCharm CE'
  homepage 'https://www.jetbrains.com/pycharm/'

  auto_updates true
  conflicts_with cask: 'pycharm-ce-eap'

  app 'PyCharm CE.app'

  uninstall delete: '/usr/local/bin/charm'

  zap delete: [
                "~/Library/Application Support/PyCharm#{version.major_minor}",
                "~/Library/Caches/PyCharmCE#{version.major_minor}",
                "~/Library/Caches/PyCharm#{version.major_minor}",
                "~/Library/Logs/PyCharm#{version.major_minor}",
                "~/Library/Logs/PyCharmCE#{version.major_minor}",
                "~/Library/Preferences/PyCharm#{version.major_minor}",
                "~/Library/Preferences/PyCharmCE#{version.major_minor}",
                '~/Library/Saved Application State/com.jetbrains.pycharm.savedState',
              ]
end
