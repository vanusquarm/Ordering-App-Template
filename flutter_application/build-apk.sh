#!/bin/bash 
PATH_PROJECT=$(pwd)

# build apk
flutter clean
flutter pub get
flutter build apk --release

# move file app-release.apk to root folder
cp "$PATH_PROJECT/build/app/outputs/flutter-apk/app-release.apk" "$PATH_PROJECT/smart market.apk"