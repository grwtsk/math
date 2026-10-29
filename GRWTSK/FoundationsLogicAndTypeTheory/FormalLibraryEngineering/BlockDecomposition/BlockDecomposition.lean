import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.Hardy

structure BlockDecompositionDescriptor where
  decompositionRef : String
  toeplitzBlockRef : String
  hankelBlockRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .hardyBlockDecomposition

end Mathematics.SemiLocalDefect.Hardy
