import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Access

structure PrimeCutAccessDescriptor where
  requestRef : String
  finitePrimeUniverseRef : String
  residualFrontierRef : Option String
  authoritativeEffect : Bool := false
  status : OpenBridgeStatus :=
    openBridgeStatus .primeCutAccess

end Mathematics.SemiLocalDefect.Access
