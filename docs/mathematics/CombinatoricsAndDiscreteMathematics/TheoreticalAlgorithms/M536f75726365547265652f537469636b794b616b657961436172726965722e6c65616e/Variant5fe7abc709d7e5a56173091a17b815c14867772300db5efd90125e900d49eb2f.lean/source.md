# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e.Variant5fe7abc709d7e5a56173091a17b815c14867772300db5efd90125e900d49eb2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3e936b41c36ec1592be6a539032b0736767051bf` · SHA-256 `5fe7abc709d7e5a56173091a17b815c14867772300db5efd90125e900d49eb2f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/- source-tree-label: STL1|L|addr=0100010|role=proof_code_atom|slug=sourcetree-stickykakeyacarrier|owner=canonical_owner|core=SourceTree/StickyKakeyaCarrier.lean|leaf=M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e.lean -/

/- Finite Carrier source-tree witness predicates only.
   These names do not assert Kakeya, projection, or analytic theorem authority. -/

set_option autoImplicit false

namespace Think.SourceTree

inductive StickyResidueKind
  | stickyCoverMissing
  | stickyScaleFailure
  | balancedCoverMissing
  | unitRescalingNotExtremal
  | multiscaleSelfSimilarityFailed
  | sourcePlaneMapMissing
  | sourcePlaneMapNotLipschitz
  | localImportDirectionNotPlanar
  | carrierPlaneFieldIncoherent
  | sourceGrainMissing
  | grainSpacingNotRegular
  | leafPairNotGrain
  | grainCoverNotBalanced
  | twistedProjectionCollapse
  | hiddenOverlapUnderProjection
  | fakeDimensionDrop
  | coverMedoidMissing
  | duplicateCoverMedoid
  | medoidConfusedWithOwner
  | coverMedoidOwnsChildConcept
  | lMedoidCollision
  | rMedoidInstability
  | medoidScatterednessFailed
  | dominantFaceMedoidMissing
  | newtonRefactorNotMedoidCentered
  | medoidGaugeMissing
  | sourcePlaneMapNotMedoidCentered
  | medoidPlaneIncoherent
  | katzTaoConvexWolffFailure
  | frostmanConvexWolffFailure
  | frostmanSlabWolffFailure
  | almostPartitioningCoverMissing
  | coverNotKBalanced
  | coverFactorsAboveFailed
  | coverFactorsBelowFailed
  | sourceConvexFactorMissing
  | grainDecompositionMissing
  | grainTangencyFailed
  | rescaledGrainEFailure
  | threeMoveLoopNotTerminated
  | multiplicityFactorizationFailed
  | sourceDoublingFailure
deriving DecidableEq, Repr

structure StickySourceTreePredicate where
  stickyScaleFailureCount : Nat
  unitRescalingFailureCount : Nat
  fixedPointReached : Bool

def StickySourceTreePredicate.closed
    (w : StickySourceTreePredicate) : Prop :=
  w.stickyScaleFailureCount = 0
    /\ w.unitRescalingFailureCount = 0
    /\ w.fixedPointReached = true

structure PlanarSourceTreePredicate where
  planeMapPresent : Bool
  planeMapLipschitz : Bool
  nonplanarImportDirectionCount : Nat
  incoherentPlaneFieldCount : Nat

def PlanarSourceTreePredicate.closed
    (w : PlanarSourceTreePredicate) : Prop :=
  w.planeMapPresent = true
    /\ w.planeMapLipschitz = true
    /\ w.nonplanarImportDirectionCount = 0
    /\ w.incoherentPlaneFieldCount = 0

structure GrainySourceTreePredicate where
  sourceGrainCount : Nat
  grainSpacingFailureCount : Nat
  leafPairNotGrainCount : Nat
  grainCoverNotBalancedCount : Nat

def GrainySourceTreePredicate.closed
    (w : GrainySourceTreePredicate) : Prop :=
  w.sourceGrainCount > 0
    /\ w.grainSpacingFailureCount = 0
    /\ w.leafPairNotGrainCount = 0
    /\ w.grainCoverNotBalancedCount = 0

structure TwistedProjectionNoncollapsePredicate where
  projectedMassLowerBound : Nat
  minProjectedMass : Nat
  projectionCollapseCount : Nat
  hiddenOverlapUnderProjectionCount : Nat

def TwistedProjectionNoncollapsePredicate.closed
    (w : TwistedProjectionNoncollapsePredicate) : Prop :=
  w.minProjectedMass >= w.projectedMassLowerBound
    /\ w.projectionCollapseCount = 0
    /\ w.hiddenOverlapUnderProjectionCount = 0

structure SourceTreeMedoidPredicate where
  coverCount : Nat
  medoidCount : Nat
  missingMedoidCount : Nat
  duplicateMedoidCount : Nat
  medoidOwnerConfusionCount : Nat
  lMedoidCollisionCount : Nat
  rMedoidInstabilityCount : Nat
  dominantFaceMedoidPresent : Bool
  refactorLeafMedoidGaugePassed : Bool

def SourceTreeMedoidPredicate.closed
    (w : SourceTreeMedoidPredicate) : Prop :=
  w.coverCount = w.medoidCount
    /\ w.missingMedoidCount = 0
    /\ w.duplicateMedoidCount = 0
    /\ w.medoidOwnerConfusionCount = 0
    /\ w.lMedoidCollisionCount = 0
    /\ w.rMedoidInstabilityCount = 0
    /\ w.dominantFaceMedoidPresent = true
    /\ w.refactorLeafMedoidGaugePassed = true

structure SourceTreeConvexWolffPredicate where
  wolffClosed : Bool
  factorsAboveKatzTao : Bool
  factorsBelowFrostman : Bool
  grainTangencyClosed : Bool
  multiplicityFactorizationClosed : Bool
  sourceDoublingClosed : Bool
  residueCount : Nat

def SourceTreeConvexWolffPredicate.closed
    (w : SourceTreeConvexWolffPredicate) : Prop :=
  w.wolffClosed = true
    /\ w.factorsAboveKatzTao = true
    /\ w.factorsBelowFrostman = true
    /\ w.grainTangencyClosed = true
    /\ w.multiplicityFactorizationClosed = true
    /\ w.sourceDoublingClosed = true
    /\ w.residueCount = 0

structure StickyKakeyaCarrierWitness where
  sticky : StickySourceTreePredicate
  medoid : SourceTreeMedoidPredicate
  convexWolff : SourceTreeConvexWolffPredicate
  planar : PlanarSourceTreePredicate
  grainy : GrainySourceTreePredicate
  twisted : TwistedProjectionNoncollapsePredicate
  residueCount : Nat
  nonClaimCount : Nat

def StickyKakeyaCarrierWitness.closed
    (w : StickyKakeyaCarrierWitness) : Prop :=
  w.sticky.closed
    /\ w.medoid.closed
    /\ w.convexWolff.closed
    /\ w.planar.closed
    /\ w.grainy.closed
    /\ w.twisted.closed
    /\ w.residueCount = 0
    /\ w.nonClaimCount > 0

def stickyKakeyaCarrierNonClaims : List String :=
  [
    "finite_source_tree_witness_not_kakeya_theorem",
    "finite_source_tree_witness_not_projection_theorem",
    "finite_source_tree_witness_not_analytic_authority",
    "carrier_receipt_is_finite_witness_evidence_only"
  ]

theorem stickyKakeyaCarrierSound
    (w : StickyKakeyaCarrierWitness)
    (h : w.closed) :
    w.residueCount = 0 :=
  h.2.2.2.2.2.2.1

theorem stickyKakeyaCarrierKeepsNonClaims
    (w : StickyKakeyaCarrierWitness)
    (h : w.closed) :
    w.nonClaimCount > 0 :=
  h.2.2.2.2.2.2.2

end Think.SourceTree
```
