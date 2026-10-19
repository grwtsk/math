import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Access

structure CylinderAccessDescriptor where
  systemRef : String
  finiteUniverseRef : String
  compressionRank : Nat
  compatibilityReceiptRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .cylinderAccess

end Mathematics.SemiLocalDefect.Access
