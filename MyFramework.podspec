
Pod::Spec.new do |spec|

  spec.name         = "MyFramework"
  spec.version      = "0.0.1"
  spec.summary      = "A CocoaPods library written in Swift"

  spec.description  = <<-DESC
This CocoaPods library helps you perform calculation.
                   DESC

  spec.homepage     = "https://github.com/vuonghuynhvncoder/MyFramework"
  spec.license      = { :type => "MIT", :file => "FILE_LICENSE" }

  spec.author             = { "vuonghuynh.vncoder" => "vuonghuynh.vncoder@gmail.com" }

  spec.ios.deployment_target = "14.0"
  spec.swift_version = "5.6"

  spec.source       = { :git => "https://github.com/vuonghuynhvncoder/MyFramework.git", :tag => "#{spec.version}" }

  spec.source_files  = "MyFramework/**/*.{h,m,swift}"
  spec.dependency 'GoogleWebRTC'
  spec.pod_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }
  spec.user_target_xcconfig = { 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'arm64' }

end
