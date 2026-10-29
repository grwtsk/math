import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure SymbolDescriptor where
  symbolRef : String
  cutRef : String
  archimedeanAnchorRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .archimedeanBalanceExistence

end Mathematics.SemiLocalDefect.Hardy
