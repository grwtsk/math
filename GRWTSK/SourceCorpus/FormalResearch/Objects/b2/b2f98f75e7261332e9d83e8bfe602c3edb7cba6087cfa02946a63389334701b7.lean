import Mathematics.RHIsolation.Positivity

/-!
# RH-directed unknown dependency ledger

Unknown means that no accepted certificate is present.  It is neither
falsehood nor top-level rejection.
-/

namespace Mathematics.RHIsolation

inductive AnalyticEvaluationUnknown
  | xiEvaluation
  | xiDerivativeEvaluation
  | boundaryZeroFree
  | argumentPrincipleCount
deriving DecidableEq, Repr, Fintype

inductive RecursiveIsolationUnknown
  | cellPartition
  | childBoundaryOwnership
  | cellCountConservation
  | sameZeroIdentity
  | envelopeContainment
  | minimumEnvelope
deriving DecidableEq, Repr, Fintype

inductive CriticalLineUnknown
  | cellInvolutionInvariance
  | criticalLineCarrier
  | offLineSeparation
deriving DecidableEq, Repr, Fintype

inductive FiniteHeightUnknown
  | globalZeroCount
  | fullStripCoverage
  | topBoundaryConvention
  | unresolvedStripMass
deriving DecidableEq, Repr, Fintype

inductive SpectralConstructionUnknown
  | spectralStateEncoding
  | kernelContraction
  | invariantLaw
  | operatorSelfAdjointness
  | eigenvalueEnclosure
  | spectralPerturbation
deriving DecidableEq, Repr, Fintype

inductive AnalyticSpectralUnknown
  | localSpectralZeroMatch
  | multiplicityCorrespondence
  | noMissingSpectrum
  | noSpuriousSpectrum
  | testClassSeparation
  | arithmeticTraceIdentity
deriving DecidableEq, Repr, Fintype

inductive CofinalUnknown
  | cofinalHeightCoverage
  | finiteToGlobalCompatibility
  | globalSpectralCorrespondence
  | uniformLimit
deriving DecidableEq, Repr, Fintype

inductive PositivityUnknown
  | weilPositivityBridge
  | traceFactorization
  | testDomainCompleteness
deriving DecidableEq, Repr, Fintype

inductive CertificateStatus
  | unknown
  | underConstruction
  | rejected
  | certified
deriving DecidableEq, Repr, Fintype

abbrev AnalyticEvaluationLedger :=
  AnalyticEvaluationUnknown → CertificateStatus

abbrev AnalyticSpectralLedger :=
  AnalyticSpectralUnknown → CertificateStatus

def initialAnalyticEvaluationLedger :
    AnalyticEvaluationLedger :=
  fun _ => .unknown

def initialAnalyticSpectralLedger :
    AnalyticSpectralLedger :=
  fun _ => .unknown

end Mathematics.RHIsolation
