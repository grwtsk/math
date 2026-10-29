import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Trace

structure ArithmeticTailDescriptor where
  tailRef : String
  finiteCutRef : String
  uniformBoundCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .arithmeticTail

end Mathematics.SemiLocalDefect.Trace
