import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure BalanceGaugeDescriptor where
  gaugeRef : String
  sourceBalanceRef : String
  targetBalanceRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .balanceGaugeInvariantCapacity

end Mathematics.SemiLocalDefect.Hardy
