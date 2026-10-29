import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Access

structure PassivityObstructionDescriptor where
  obstructionRef : String
  witnessVectorRef : String
  strictNegativityCertificateRef : Option String
  minimalityCertificateRefs : List String
  status : OpenBridgeStatus :=
    openBridgeStatus .passivityObstruction

end Mathematics.SemiLocalDefect.Access
