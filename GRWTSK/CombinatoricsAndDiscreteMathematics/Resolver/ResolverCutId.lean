import Mathematics.StratifiedBoundary.OrdinalTally.NormalForm
import Mathlib.Data.Finset.Basic

/-!
# Conservative stratified resolver result

A higher-layer unknown preserves any lower-layer finite certificate.
-/

namespace Mathematics.StratifiedBoundary

structure CutId where
  value : String
deriving DecidableEq, Repr

inductive StratifiedUnknownKind
  | ordinalNotationProfile
  | ordinalNormalization
  | ordinalComparison
  | fundamentalSequence
  | limitMonotonicity
  | limitCofinality
  | stratumAssignment
  | localFrontierRank
  | orbitFrontierRank
  | successorEmbedding
  | successorProjection
  | projectionLipschitz
  | kernelProjectivity
  | invariantLawProjectivity
  | automorphismProjectivity
  | bitfieldProjectivity
  | inverseLimitNonempty
  | limitMetricSeparation
  | limitMetricCompleteness
  | compatibleLimitCoupling
  | limitKernel
  | limitContraction
  | traceProjectivity
  | cylinderTraceWellDefined
  | cylinderTraceExtension
  | arithmeticSuccessorCorrespondence
  | arithmeticLimitCorrespondence
  | limitNormCompatibility
  | uniformOrdinalScale
deriving DecidableEq, Repr

inductive StratifiedRejection
  | malformedOrdinalCode
  | zeroBlockCoefficient
  | remainderOutsideBlock
  | unregisteredFundamentalSequence
  | nonmonotoneFundamentalSequence
  | noncofinalFundamentalSequence
  | incompatiblePredecessorStratum
  | malformedProjectiveComposition
  | nonTotalProjection
  | persistentIdentityConflict
  | malformedCylinderReference
deriving DecidableEq, Repr

inductive StratifiedResolution
    {Semantic : Type u}
    (profile : OrdinalNotationProfile Semantic)
    (FiniteResult LimitWitness : Type v)
  | finite
      (result : FiniteResult)
      (stratum : CanonicalOrdinalTally profile)
      (localRank : Option Nat)
      (ordinalIndex : Option (CanonicalOrdinalTally profile))
  | limitBoundary
      (stratum : CanonicalOrdinalTally profile)
      (fundamentalSequence : FundamentalSequenceId)
      (witness : LimitWitness)
  | unknown
      (nearestCut : CutId)
      (unknowns : Finset StratifiedUnknownKind)
  | rejected
      (reason : StratifiedRejection)

end Mathematics.StratifiedBoundary
