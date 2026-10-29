import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure CanonicalTransmissionDescriptor where
  transmissionRef : String
  capacityRef : String
  defectIdentityCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .canonicalTransmission

end Mathematics.SemiLocalDefect.Hardy
