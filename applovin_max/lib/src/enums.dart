/// Represents an ad format.
enum AdFormat {
  /// The banner ad.
  banner("banner"),

  /// The MREC ad.
  mrec("mrec");

  /// @nodoc
  final String value;

  /// @nodoc
  const AdFormat(this.value);
}

/// Represents an AdView ad position.
enum AdViewPosition {
  topCenter("top_center"),
  topRight("top_right"),
  centered("centered"),
  centerLeft("center_left"),
  centerRight("center_right"),
  bottomLeft("bottom_left"),
  bottomCenter("bottom_center"),
  bottomRight("bottom_right");

  /// @nodoc
  final String value;

  /// @nodoc
  const AdViewPosition(this.value);
}

/// Represents content ratings for the ads shown to users.
///
/// These ratings correspond to IQG Media Ratings.
enum AdContentRating {
  none(0),
  allAudiences(1),
  everyoneOverTwelve(2),
  matureAudiences(3);

  /// @nodoc
  final int value;

  /// @nodoc
  const AdContentRating(this.value);
}

/// Represents gender.
enum UserGender {
  unknown('U'),
  female('F'),
  male('M'),
  other('O');

  /// @nodoc
  final String value;

  /// @nodoc
  const UserGender(this.value);
}

/// Represents the user's geography used to determine the type of consent flow
/// shown to the user.
enum ConsentFlowUserGeography {
  /// User's geography is unknown.
  unknown('U'),

  /// The user is in GDPR region.
  gdpr('G'),

  /// The user is in a non-GDPR region.
  other('O');

  /// @nodoc
  final String value;

  /// @nodoc
  const ConsentFlowUserGeography(this.value);
}

/// AppLovin SDK-defined app tracking transparency status values (extended to
/// include "unavailable" state on iOS before iOS14).
enum AppTrackingStatus {
  /// Device is on iOS before iOS14, AppTrackingTransparency.framework is not
  /// available.
  unavailable('U'),

  /// The user has not yet received an authorization request to authorize access
  /// to app-related data that can be used for tracking the user or the device.
  notDetermined('N'),

  /// Authorization to access app-related data that can be used for tracking the
  /// user or the device is restricted.
  restricted('R'),

  /// The user denies authorization to access app-related data that can be used
  /// for tracking the user or the device.
  denied('D'),

  /// The user authorizes access to app-related data that can be used for
  /// tracking the user or the device.
  authorized('A');

  /// @nodoc
  final String value;

  /// @nodoc
  const AppTrackingStatus(this.value);
}

/// Represents errors for CMP flow.
enum CMPErrorCode {
  /// Indicates that an unspecified error has occurred.
  unspecified(-1),

  /// Indicates that the CMP has not been integrated correctly.
  integrationError(1),

  /// Indicates that the CMP form is unavailable.
  formUnavailable(2),

  /// Indicates that the CMP form is not required.
  formNotRequired(3);

  /// @nodoc
  final int value;

  /// @nodoc
  const CMPErrorCode(this.value);
}

/// Represents the load state of an ad in the waterfall.
///
/// This enum contains possible states of an ad in the waterfall the adapter
/// response info could represent.
enum AdLoadState {
  /// The AppLovin MAX SDK did not attempt to load an ad from this network in
  /// the waterfall because an ad higher in the waterfall loaded successfully.
  adLoadNotAttempted,

  /// An ad successfully loaded from this network.
  adLoaded,

  /// An ad failed to load from this network.
  adFailedToLoad;
}
