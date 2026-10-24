import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Access

structure ReleaseProfileDescriptor where
  profileRef : String
  scoreUnitRef : String
  lowerBoundCertificateRef : Option String
  heuristicAdmissionAllowed : Bool := false
  status : OpenBridgeStatus :=
    openBridgeStatus .releaseProfile

end Mathematics.SemiLocalDefect.Access
