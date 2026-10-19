import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure BalanceDescriptor where
  balanceRef : String
  totalSymbolRef : String
  factorRefs : List String
  status : OpenBridgeStatus :=
    openBridgeStatus .archimedeanBalanceNaturality

end Mathematics.SemiLocalDefect.Hardy
