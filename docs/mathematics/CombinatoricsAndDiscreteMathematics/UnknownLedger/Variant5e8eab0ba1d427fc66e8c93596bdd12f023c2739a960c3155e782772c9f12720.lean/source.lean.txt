import Mathematics.SemiLocalDefect.Access.CylinderAccess
import Mathematics.SemiLocalDefect.Sonin.HardyComparison
import Mathematics.SemiLocalDefect.QSeries.TwoPrimeInteraction
import Mathematics.SemiLocalDefect.Trace.PacketSquareRootScale
import Mathematics.SemiLocalDefect.Hardy.JuliaColligation

/-!
# Semi-local defect unknown ledger

Every unresolved realization or asymptotic bridge has a stable typed name.
-/

namespace Mathematics.SemiLocalDefect

inductive UnknownGroup
  | archimedeanBalance
  | positiveRealization
  | soninGeometry
  | finiteConnectorComputation
  | arithmeticCorrespondence
  | squareRootScale
deriving DecidableEq, Repr, Fintype

inductive SemiLocalUnknown
  | archimedeanBalanceNaturality
  | balanceGaugeInvariantDefect
  | balanceGaugeInvariantTrace
  | hardyDefectMonotonicity
  | conditionalPlacePassivity
  | hardyCanonicalTransmissionBridge
  | soninHorizonCompatibility
  | cofinalSoninGramStability
  | hardySoninPacketBridge
  | primeConnectorQSeriesPSD
  | compressionExhaustion
  | mixedPlaceInteractionControl
  | asymptoticTraceFlatness
  | semiLocalArithmeticTail
  | semiLocalOperatorBridge
  | weilBoundaryIdentification
  | localGlobalArithmeticCompatibility
  | packetHilbertSchmidtScale
  | uniformPacketTestCoverage
  | packetToDiscrepancyNormBridge
deriving DecidableEq, Repr, Fintype

def SemiLocalUnknown.group :
    SemiLocalUnknown → UnknownGroup
  | .archimedeanBalanceNaturality
  | .balanceGaugeInvariantDefect
  | .balanceGaugeInvariantTrace =>
      .archimedeanBalance
  | .hardyDefectMonotonicity
  | .conditionalPlacePassivity
  | .hardyCanonicalTransmissionBridge =>
      .positiveRealization
  | .soninHorizonCompatibility
  | .cofinalSoninGramStability
  | .hardySoninPacketBridge =>
      .soninGeometry
  | .primeConnectorQSeriesPSD
  | .compressionExhaustion
  | .mixedPlaceInteractionControl
  | .asymptoticTraceFlatness =>
      .finiteConnectorComputation
  | .semiLocalArithmeticTail
  | .semiLocalOperatorBridge
  | .weilBoundaryIdentification
  | .localGlobalArithmeticCompatibility =>
      .arithmeticCorrespondence
  | .packetHilbertSchmidtScale
  | .uniformPacketTestCoverage
  | .packetToDiscrepancyNormBridge =>
      .squareRootScale

inductive ObligationState
  | unknown
  | underConstruction
  | rejected (receipt : CertificateDigest)
  | certified (certificate : CertificateDigest)
deriving DecidableEq, Repr

structure UnknownLedgerEntry where
  obligation : SemiLocalUnknown
  statementDigest : CertificateDigest
  state : ObligationState
  evidence : List CertificateDigest

structure SemiLocalUnknownLedger where
  entries : SemiLocalUnknown → UnknownLedgerEntry
  identity :
    ∀ obligation,
      (entries obligation).obligation =
        obligation

end Mathematics.SemiLocalDefect
