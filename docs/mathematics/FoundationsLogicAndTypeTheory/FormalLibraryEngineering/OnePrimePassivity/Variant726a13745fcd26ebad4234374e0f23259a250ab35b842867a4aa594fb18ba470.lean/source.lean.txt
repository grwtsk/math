import Mathematics.SemiLocalDefect.UnknownLedger

namespace Mathematics.SemiLocalDefect.QSeries

structure OnePrimePassivityDescriptor where
  primeRef : String
  compressionRank : Nat
  exactCertificateRef : Option String
  status : OpenBridgeStatus :=
    openBridgeStatus .onePrimePassivity

end Mathematics.SemiLocalDefect.QSeries
