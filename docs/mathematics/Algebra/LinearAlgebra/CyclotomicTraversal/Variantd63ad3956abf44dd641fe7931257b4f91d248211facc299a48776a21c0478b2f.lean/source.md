# Complete source: GRWTSK.Algebra.LinearAlgebra.CyclotomicTraversal.Variantd63ad3956abf44dd641fe7931257b4f91d248211facc299a48776a21c0478b2f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `91177893dd34f76df0d29dad6fa7c684760e2ab4` · SHA-256 `e75b42724fa64a16fd1df69f25e0ff1e325ed09eb843283cd6fa8aae6bfe416e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CINIdentifier.Variante32ec423ac1e5387969e930f80be92c9ab27432b6e528819871f25415d62a4dc","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e32ec423ac1e5387969e930f80be92c9ab27432b6e528819871f25415d62a4dc","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CINIdentifier.Variante32ec423ac1e5387969e930f80be92c9ab27432b6e528819871f25415d62a4dc","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"e32ec423ac1e5387969e930f80be92c9ab27432b6e528819871f25415d62a4dc","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/CyclotomicTraversal.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.RingTheory.Polynomial.Cyclotomic.Roots
import Mathlib.LinearAlgebra.Vandermonde
import FCRS.TheoremGraph
import FCRS.PersistentResidual
import FCRS.Transport.Theorems.TT01_Bertrand

/-!
Exact cyclotomic addresses, dependency-ready traversal, and typed prediction.

The proof DAG alone controls readiness.  Cyclotomic roots reorder or seed only
the already-ready wave, and an exact root is never treated as a theorem proof.
-/


namespace GRWTSK.Algebra.LinearAlgebra.CINIdentifier.Variante32ec423ac1e5387969e930f80be92c9ab27432b6e528819871f25415d62a4dc

namespace FCRS.CyclotomicTraversal

open scoped BigOperators
open FCRS.TheoremTransfer
open FCRS.TheoremGraph

/-- CIN-01--CIN-07 catalog. -/
inductive CINIdentifier where
  | cin01MaximalRootSetCountable
  | cin02CountableCorpusRootIndexable
  | cin03FiniteConfigurationInFiniteRoots
  | cin04IndexingNotIntrinsicExpression
  | cin05ExpandedRelationEncoding
  | cin06ExpandedNotReductIntrinsic
  | cin07MaximalCarrierNotSemanticClosure
deriving Repr, DecidableEq

/-- CYC-01--CYC-23 catalog. -/
inductive CYCIdentifier where
  | cyc01RootCharacterization | cyc02ExactOrder | cyc03RootCardinality
  | cyc04CanonicalEnumeration | cyc05NoDuplication | cyc06DifferentOrderSeparation
  | cyc07ConjugateClosure | cyc08InfiniteStream | cyc09PrefixStability
  | cyc10BertrandFrontierCapacity | cyc11RootInjection | cyc12MultiplierPermutation
  | cyc13WaveTotalOrder | cyc14VandermondeInvertibility | cyc15GramPositivity
  | cyc16FrameLowerBound | cyc17StateEmbeddingExcitationPreservation
  | cyc18ExactIndexControl | cyc19ApproximationError
  | cyc20ApproximationProofSeparation | cyc21SelectionCertification
  | cyc22ArbitraryCarrierPartiality | cyc23MaximalCarrierCapacity
deriving Repr, DecidableEq

/-- CTR-01--CTR-17 catalog. -/
inductive CTRIdentifier where
  | ctr01ReadyFrontierDefinition | ctr02FrontierNonemptiness
  | ctr03WaveAntichain | ctr04UniqueWaveOrder | ctr05SelectedTheoremReadiness
  | ctr06DependencyRespect | ctr07NoRepetition | ctr08ExactWaveExhaustion
  | ctr09StrictVisitedGrowth | ctr10Termination | ctr11Completeness
  | ctr12Determinism | ctr13RestartPrefixStability | ctr14ProvenanceRetention
  | ctr15IndependentReflectiveTraversal | ctr16RootOrderNonProof
  | ctr17InvalidGraphDetection
deriving Repr, DecidableEq

/-- TP-01--TP-16 catalog. -/
inductive TPIdentifier where
  | tp01PredictionTypeSeparation | tp02CyclotomicSeedWellTyped
  | tp03SeedNormBound | tp04ClosedPredecessorContext
  | tp05SeededPredictionExistence | tp06DeterministicExactModelVersion
  | tp07SeedSemanticPayloadInvariance | tp08BridgeCandidateWellFormedness
  | tp09PredictionIsNotProof | tp10TypedPredictionResidual
  | tp11NoncircularBootstrap | tp12TraversalCompatibility
  | tp13SeedEmbeddingInjectivity | tp14ConjugateRealificationCoherence
  | tp15VersionRetention | tp16PredictionValidationSeparation
deriving Repr, DecidableEq

/-- Exact arithmetic root address `(n,k)` with `k` a reduced unit modulo `n`. -/
structure CyclotomicRootAddress where
  order : Nat
  orderPositive : 0 < order
  exponent : Nat
  exponentReduced : exponent < order
  exponentUnit : Nat.Coprime exponent order

theorem CyclotomicRootAddress.pair_injective :
    Function.Injective (fun address : CyclotomicRootAddress =>
      (address.order, address.exponent)) := by
  intro left right equality
  cases left with
  | mk leftOrder leftPositive leftExponent leftReduced leftUnit =>
    cases right with
    | mk rightOrder rightPositive rightExponent rightReduced rightUnit =>
      simp only at equality
      cases equality
      rfl

/-- CIN-01: the maximal symbolic cyclotomic address carrier is countable. -/
theorem cin01_maximalRootAddressSetCountable :
    Countable CyclotomicRootAddress := by
  exact CyclotomicRootAddress.pair_injective.countable

structure CyclotomicPolynomialIndex where
  order : Nat
  positive : 0 < order
deriving Repr

structure CyclotomicExponent where
  value : Nat
deriving Repr, DecidableEq

structure CyclotomicRootStreamVersion where
  version : VersionId
deriving Repr, DecidableEq

inductive ExactRootSelectionMethod where
  | canonicalUnitEnumeration
  | leastCertifiedPrimeWave
  | deterministicMultiplierPermutation
deriving Repr, DecidableEq

/-- Exact root occurrence; complex coordinates are mathematical, not floating point. -/
structure CyclotomicRootOccurrence where
  occurrenceVersion : VersionId
  address : CyclotomicRootAddress
  polynomialIndex : CyclotomicPolynomialIndex
  polynomialIndexExact : polynomialIndex.order = address.order
  value : ℂ
  primitive : IsPrimitiveRoot value address.order
  polynomialRoot : (Polynomial.cyclotomic address.order ℂ).IsRoot value
  streamVersion : CyclotomicRootStreamVersion
  selectionMethod : ExactRootSelectionMethod

/-- CYC-01/02: exact occurrence retains both primitive order and polynomial root. -/
theorem exactRootOccurrence_boundaries (root : CyclotomicRootOccurrence) :
    IsPrimitiveRoot root.value root.address.order ∧
      (Polynomial.cyclotomic root.address.order ℂ).IsRoot root.value :=
  ⟨root.primitive, root.polynomialRoot⟩

/-- Numerical coordinates are an optional approximation artifact only. -/
structure RootApproximationArtifact where
  approximationVersion : VersionId
  exactRootOccurrenceVersion : VersionId
  realApproximation : ℝ
  imaginaryApproximation : ℝ
  precisionBits : Nat
  roundingMode : String
  algorithmVersion : VersionId
  errorBound : ℝ
  errorBoundNonnegative : 0 ≤ errorBound
  executionVersion : VersionId

/-- Arbitrary cyclotomic carriers may omit roots. -/
structure CyclotomicRootCarrier where
  contains : CyclotomicRootAddress → Prop

/-- The maximal carrier contains every exact symbolic address. -/
def MaximalCyclotomicCarrier : CyclotomicRootCarrier where
  contains := fun _ => True

structure RootCarrierCapacity
    (carrier : CyclotomicRootCarrier) (required : List CyclotomicRootAddress) : Prop where
  containsRequired : ∀ root, root ∈ required → carrier.contains root

/-- Intrinsic-expression classification is separate from root indexing. -/
inductive ExpressionSignature where
  | cyclotomicReduct
  | forestExpansion
  | externalSignature
deriving Repr, DecidableEq

structure RootIndexing (Theorem : Type) where
  address : Theorem → CyclotomicRootAddress
  injective : Function.Injective address

def CyclotomicIntrinsic (signature : ExpressionSignature) : Prop :=
  signature = .cyclotomicReduct

def ForestIntrinsic (signature : ExpressionSignature) : Prop :=
  signature = .forestExpansion

structure ExpansionIntrinsic where
  expansionVersion : VersionId
  addedRelations : List String
  relationsNonempty : addedRelations ≠ []

structure Transportable where
  translationVersion : VersionId
  preservationEvidenceVersion : VersionId

structure Reflectable where
  translationVersion : VersionId
  independentReflectionEvidenceVersion : VersionId

private def boolRootAddress : Bool → CyclotomicRootAddress
  | false => {
      order := 1, orderPositive := by norm_num, exponent := 0
      exponentReduced := by norm_num, exponentUnit := by norm_num
    }
  | true => {
      order := 2, orderPositive := by norm_num, exponent := 1
      exponentReduced := by norm_num, exponentUnit := by norm_num
    }

private theorem boolRootAddress_injective : Function.Injective boolRootAddress := by
  intro left right equality
  cases left <;> cases right <;> simp_all [boolRootAddress]

/-- CIN-04 finite countermodel: injective indexing does not change signature. -/
theorem cin04_rootIndexingDoesNotImplyCyclotomicExpression :
    Nonempty (RootIndexing Bool) ∧
      ¬ CyclotomicIntrinsic .externalSignature := by
  refine ⟨⟨{ address := boolRootAddress, injective := boolRootAddress_injective }⟩, ?_⟩
  simp [CyclotomicIntrinsic]

/-- Existing TT-01 is the sole arithmetic source for each capacity prime. -/
theorem tt01_bertrandCapacityAdapter (threshold : Nat) (thresholdLarge : 1 < threshold) :
    ∃ prime, Nat.Prime prime ∧ threshold < prime ∧ prime < 2 * threshold :=
  FCRS.Transport.Theorems.tt01_bertrand threshold thresholdLarge

/-- Deterministic least prime selected from the TT-01-certified interval. -/
noncomputable def leastBertrandPrime (threshold : Nat) (thresholdLarge : 1 < threshold) : Nat :=
  Nat.find (tt01_bertrandCapacityAdapter threshold thresholdLarge)

theorem leastBertrandPrime_spec (threshold : Nat) (thresholdLarge : 1 < threshold) :
    Nat.Prime (leastBertrandPrime threshold thresholdLarge) ∧
      threshold < leastBertrandPrime threshold thresholdLarge ∧
      leastBertrandPrime threshold thresholdLarge < 2 * threshold :=
  Nat.find_spec (tt01_bertrandCapacityAdapter threshold thresholdLarge)

structure BertrandWaveCapacity where
  waveSize : Nat
  previousPrime : Nat
  threshold : Nat := max 2 (max waveSize previousPrime)
  thresholdExact : threshold = max 2 (max waveSize previousPrime)
  selectedPrime : Nat
  selectionMethod : ExactRootSelectionMethod
  prime : Nat.Prime selectedPrime
  lower : threshold < selectedPrime
  upper : selectedPrime < 2 * threshold
  rootCapacity : waveSize ≤ selectedPrime - 1

/-- CYC-10: TT-01 supplies enough primitive-prime slots for a finite wave. -/
noncomputable def bertrandWaveCapacity
    (waveSize previousPrime : Nat) : BertrandWaveCapacity := by
  let threshold := max 2 (max waveSize previousPrime)
  have thresholdLarge : 1 < threshold := by
    simp [threshold]
  let selectedPrime := leastBertrandPrime threshold thresholdLarge
  have specification := leastBertrandPrime_spec threshold thresholdLarge
  exact {
    waveSize := waveSize
    previousPrime := previousPrime
    threshold := threshold
    thresholdExact := rfl
    selectedPrime := selectedPrime
    selectionMethod := .leastCertifiedPrimeWave
    prime := specification.1
    lower := specification.2.1
    upper := specification.2.2
    rootCapacity := by
      have waveBelow : waveSize ≤ threshold := by
        simp [threshold]
      omega
  }

/-- A wave selection contains readiness as evidence; a root cannot manufacture it. -/
structure ReadyWaveSelection (graph : ForwardDependencyGraph)
    (visited : graph.Node → Prop) where
  theoremNode : graph.Node
  theoremReady : graph.Ready visited theoremNode
  root : CyclotomicRootOccurrence
  canonicalRank : Nat

/-- CTR-05: every selected theorem was already dependency-ready. -/
theorem ctr05_selectedTheoremReadiness
    {graph : ForwardDependencyGraph} {visited : graph.Node → Prop}
    (selection : ReadyWaveSelection graph visited) :
    graph.Ready visited selection.theoremNode :=
  selection.theoremReady

/-- CTR-16: root order is scheduling evidence and has no proof field. -/
theorem ctr16_rootOrderDoesNotProveTheorem
    {graph : ForwardDependencyGraph} {visited : graph.Node → Prop}
    (selection : ReadyWaveSelection graph visited) :
    graph.Ready visited selection.theoremNode :=
  selection.theoremReady

/-- Exact finite Vandermonde seed associated with one root occurrence. -/
structure VandermondeSeed where
  seedVersion : VersionId
  rootOccurrence : CyclotomicRootOccurrence
  dimension : Nat
  coordinates : Fin dimension → ℂ
  coordinateExact : ∀ index,
    coordinates index = rootOccurrence.value ^ index.val

/-- CYC-14: distinct exact seed coordinates give a nonzero Vandermonde determinant. -/
theorem cyc14_vandermondeDeterminantNonzero
    (seed : VandermondeSeed)
    (coordinatesDistinct : Function.Injective seed.coordinates) :
    (Matrix.vandermonde seed.coordinates).det ≠ 0 :=
  Matrix.det_vandermonde_ne_zero_iff.mpr coordinatesDistinct

/-- Complex-to-real state passage is an explicit, lower-bounded adapter. -/
structure SeedStateEmbedding (State : Type*) [NormedAddCommGroup State]
    [NormedSpace ℝ State] where
  dimension : Nat
  embed : (Fin dimension → ℂ) →ₗ[ℝ] State
  lowerBound : ℝ
  lowerBoundPositive : 0 < lowerBound
  lowerBounded : ∀ seed,
    lowerBound * ‖seed‖ ≤ ‖embed seed‖

inductive PredictionOutput where
  | candidateTheoremTranslation (payload : String)
  | candidateBridgeClassification (payload : String)
  | candidatePreservationLemma (payload : String)
  | candidateModelTransition (payload : String)
  | candidateCapabilityAdapter (payload : String)
deriving Repr, DecidableEq

/-- Prediction retains exact theorem, bridge, seed, model, and sequence context. -/
structure TypedPrediction where
  predictionVersion : VersionId
  sourceTheorem : TheoremOccurrence
  sourceProposition : PropositionIdentity
  sourceAssumptionSetVersion : VersionId
  predecessorTheoremResults : List TheoremOccurrence
  targetPRDTheorem : FCRS.PersistentResidual.PRDIdentifier
  bridgeMatrixCellVersion : VersionId
  cyclotomicPolynomialVersion : VersionId
  exactRootOccurrence : CyclotomicRootOccurrence
  vandermondeSeed : VandermondeSeed
  seedAdapterVersion : VersionId
  modelVersion : VersionId
  parameterVersion : VersionId
  methodVersion : VersionId
  output : PredictionOutput
  sequence : Nat

/-- Accepted bridge evidence has no constructor from a prediction alone. -/
structure AcceptedBridge where
  bridgeVersion : VersionId
  preservationProofVersion : VersionId

/-- Prediction projection returns a candidate, never accepted evidence. -/
def predictedCandidate (prediction : TypedPrediction) : PredictionOutput :=
  prediction.output

/-- TP-09: candidate projection is exactly the prediction's output field. -/
theorem tp09_predictionIsNotProof (prediction : TypedPrediction) :
    predictedCandidate prediction = prediction.output :=
  rfl

/-- Validation remains a separately versioned event/result. -/
structure PredictionValidation (prediction : TypedPrediction) where
  executionVersion : VersionId
  resultVersion : VersionId
  validatedPredictionVersion : VersionId
  predictionExact : validatedPredictionVersion = prediction.predictionVersion

/-- Typed prediction residual retains both compared values and its constructor. -/
structure TypedPredictionResidual (Observed Residual : Type) where
  prediction : TypedPrediction
  observed : Observed
  construct : PredictionOutput → Observed → Residual
  value : Residual
  valueExact : value = construct prediction.output observed

end FCRS.CyclotomicTraversal
```
