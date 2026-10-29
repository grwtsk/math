import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure JacobiCompressionDescriptor where
  compressionRef : String
  rank : Nat
  exactMatrixRef : String
  status : OpenBridgeStatus :=
    openBridgeStatus .jacobiCompression

end Mathematics.SemiLocalDefect.QSeries
