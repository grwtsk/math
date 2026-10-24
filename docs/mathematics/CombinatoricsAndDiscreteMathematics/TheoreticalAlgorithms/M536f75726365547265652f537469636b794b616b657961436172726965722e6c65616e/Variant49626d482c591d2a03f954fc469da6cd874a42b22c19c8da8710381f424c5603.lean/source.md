# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e.Variant49626d482c591d2a03f954fc469da6cd874a42b22c19c8da8710381f424c5603

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e2317f2089c373f32ce72bc2a9f61fc78f20981f` · SHA-256 `78cc9944b1c021fae2a7133cd29e47fc5d7b5ef2d5497d769a600f05e5644605`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StickyResidueKind.Variant5fe7abc709d7e5a56173091a17b815c14867772300db5efd90125e900d49eb2f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5fe7abc709d7e5a56173091a17b815c14867772300db5efd90125e900d49eb2f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.StickyResidueKind.Variant5fe7abc709d7e5a56173091a17b815c14867772300db5efd90125e900d49eb2f","mathematical_subject":"Computation.DataStructures","original_sha256":"5fe7abc709d7e5a56173091a17b815c14867772300db5efd90125e900d49eb2f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit1/Bit0/Bit0/Bit0/Bit1/Bit0/M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/- source-tree-label: STL1|L|addr=0100010|role=proof_code_atom|slug=sourcetree-stickykakeyacarrier|owner=canonical_owner|core=SourceTree/StickyKakeyaCarrier.lean|leaf=M536f75726365547265652f537469636b794b616b657961436172726965722e6c65616e.lean -/

/- Finite Carrier source-tree witness predicates only.
   These names do not assert Kakeya, projection, or analytic theorem authority. -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.StickyResidueKind.Variant5fe7abc709d7e5a56173091a17b815c14867772300db5efd90125e900d49eb2f

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
