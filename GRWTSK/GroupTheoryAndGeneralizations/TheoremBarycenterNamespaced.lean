-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TBIdentifier.Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.TBIdentifier.Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/TheoremBarycenter.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib
import FCRS.CyclotomicTraversal
import FCRS.ControlledSpherical.ControlledProduct

/-!
Metric controlled realizations, finite Fréchet means, and barycentric
normalization.  Metrics are added by a sibling wrapper; neither
`ControlledPlaneModel` nor an opaque spherical carrier is redefined.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TBIdentifier.Variant9522e4025a5d511b6a0b8626433c78ee496ac2ba57155bb8751b00272fd5e598

namespace FCRS.TheoremBarycenter

open scoped BigOperators
open FCRS.TheoremTransfer
open FCRS.TheoremGraph
open FCRS.ControlledPlane
open FCRS.ControlledSpherical

/-- TB-01--TB-20 catalog. -/
inductive TBIdentifier where
  | tb01MetricControlledObservation | tb02WeightedTheoremConfiguration
  | tb03FrechetFunctional | tb04BarycenterExistenceInterface
  | tb05BarycenterUniquenessInterface | tb06SimilarityScalesFrechetEnergy
  | tb07BarycenterSimilarityEquivariance | tb08AutomorphismOrbit
  | tb09OrbitEnergyWellDefinedness | tb10BarycentricEmbeddingExistence
  | tb11BarycentricEmbeddingUniqueness | tb12StabilizerQuotientCanonicity
  | tb13ComplexPlaneTrivialControlRecovery | tb14ComplexAffineCompatibility
  | tb15RiemannSphereTrivialControlRecovery
  | tb16SphericalIsometryBarycenterCompatibility
  | tb17FullMobiusFrechetCounterboundary
  | tb18ConformalBarycenterMobiusEquivarianceInterface
  | tb19CyclotomicTheoremDenotationCompatibility
  | tb20BarycentricAutomorphicEmbeddingAssembly
deriving Repr, DecidableEq

/-- Optional metric data on the exact paired observation image. -/
structure MetricControlledObservation
    (Entity Control Point : Type*)
    (observation : ControlledObservation Entity Control Point) where
  imageMetric : MetricSpace (ObservationImage observation)
  projectionMetric : Option (MetricSpace Point)
  controlMetric : Option (MetricSpace Control)
  combineDistances : ℝ → ℝ → ℝ
  combineNonnegative : ∀ projectionDistance controlDistance,
    0 ≤ projectionDistance → 0 ≤ controlDistance →
      0 ≤ combineDistances projectionDistance controlDistance
  metricRelationshipEvidence :
    ∀ (pointMetric : MetricSpace Point) (controlStateMetric : MetricSpace Control),
      projectionMetric = some pointMetric →
      controlMetric = some controlStateMetric →
      ∀ left right,
        @dist _ imageMetric.toDist left right =
          combineDistances
            (@dist _ pointMetric.toDist left.val.1 right.val.1)
            (@dist _ controlStateMetric.toDist left.val.2 right.val.2)

/-- Versioned validity interval for a theorem denotation. -/
structure DenotationValidityInterval where
  intervalVersion : VersionId
  validFrom : VersionId
  validUntil : Option VersionId

/-- Versioned theorem denotation into the exact metric realization. -/
structure TheoremDenotation (X : Type*) where
  occurrence : TheoremOccurrence
  denotationVersion : VersionId
  realizationVersion : VersionId
  metricVersion : VersionId
  scopeVersion : VersionId
  validityInterval : DenotationValidityInterval
  provenance : List VersionId
  point : X

/-- Finite nonnegative normalized theorem configuration. -/
structure WeightedTheoremConfiguration (X : Type*) (count : Nat) where
  theoremDenotation : Fin count → TheoremDenotation X
  theoremOccurrence : Fin count → TheoremOccurrence
  point : Fin count → X
  theoremOccurrenceExact : ∀ index,
    theoremOccurrence index = (theoremDenotation index).occurrence
  pointExact : ∀ index, point index = (theoremDenotation index).point
  weight : Fin count → ℝ
  weightNonnegative : ∀ index, 0 ≤ weight index
  normalized : ∑ index, weight index = 1

/-- Finite Fréchet functional. -/
noncomputable def frechetEnergy
    {X : Type*} [PseudoMetricSpace X] {count : Nat}
    (configuration : WeightedTheoremConfiguration X count) (candidate : X) : ℝ :=
  ∑ index, configuration.weight index *
    dist candidate (configuration.point index) ^ 2

/-- The full argmin set; existence and choice are separate interfaces. -/
def BarycenterSet
    {X : Type*} [PseudoMetricSpace X] {count : Nat}
    (configuration : WeightedTheoremConfiguration X count) : Set X :=
  {candidate | ∀ other,
    frechetEnergy configuration candidate ≤ frechetEnergy configuration other}

structure BarycenterExistence
    {X : Type*} [PseudoMetricSpace X] {count : Nat}
    (configuration : WeightedTheoremConfiguration X count) : Prop where
  exists_barycenter : Set.Nonempty (BarycenterSet configuration)

structure UniqueBarycenter
    {X : Type*} [PseudoMetricSpace X] {count : Nat}
    (configuration : WeightedTheoremConfiguration X count) where
  point : X
  minimizes : point ∈ BarycenterSet configuration
  unique : ∀ candidate, candidate ∈ BarycenterSet configuration → candidate = point

inductive BarycenterChoiceClassification where
  | unique
  | explicitChoice
deriving Repr, DecidableEq

/-- Explicitly versioned selection from a possibly non-singleton argmin set. -/
structure ChoiceSelectedBarycenter
    {X : Type*} [PseudoMetricSpace X] {count : Nat}
    (configuration : WeightedTheoremConfiguration X count) where
  point : X
  minimizes : point ∈ BarycenterSet configuration
  choiceVersion : VersionId

/-- A total barycenter selection records whether it is justified by uniqueness
or is an explicitly versioned choice from the complete argmin set. -/
structure ChosenBarycenter
    {X : Type*} [PseudoMetricSpace X] {count : Nat}
    (configuration : WeightedTheoremConfiguration X count) where
  classification : BarycenterChoiceClassification
  selection :
    match classification with
    | .unique => UniqueBarycenter configuration
    | .explicitChoice => ChoiceSelectedBarycenter configuration

def ChosenBarycenter.point
    {X : Type*} [PseudoMetricSpace X] {count : Nat}
    {configuration : WeightedTheoremConfiguration X count}
    (chosen : ChosenBarycenter configuration) : X :=
  match chosen.classification, chosen.selection with
  | .unique, selection => selection.point
  | .explicitChoice, selection => selection.point

theorem ChosenBarycenter.minimizes
    {X : Type*} [PseudoMetricSpace X] {count : Nat}
    {configuration : WeightedTheoremConfiguration X count}
    (chosen : ChosenBarycenter configuration) :
    chosen.point ∈ BarycenterSet configuration := by
  cases chosen with
  | mk classification selection =>
      cases classification <;> exact selection.minimizes

/-- Bijective metric similarity; arbitrary automorphisms do not inhabit it. -/
structure MetricSimilarity (X : Type*) [PseudoMetricSpace X] where
  equivalence : X ≃ X
  scale : ℝ
  scalePositive : 0 < scale
  scalesDistance : ∀ left right,
    dist (equivalence left) (equivalence right) = scale * dist left right

def pushforwardConfiguration
    {X : Type*} [PseudoMetricSpace X] {count : Nat}
    (similarity : MetricSimilarity X)
    (configuration : WeightedTheoremConfiguration X count) :
    WeightedTheoremConfiguration X count where
  theoremDenotation := fun index =>
    { configuration.theoremDenotation index with
      point := similarity.equivalence (configuration.point index) }
  theoremOccurrence := configuration.theoremOccurrence
  point := fun index => similarity.equivalence (configuration.point index)
  theoremOccurrenceExact := by
    intro index
    simpa using configuration.theoremOccurrenceExact index
  pointExact := by
    intro index
    simp
  weight := configuration.weight
  weightNonnegative := configuration.weightNonnegative
  normalized := configuration.normalized

/-- TB-06: a genuine similarity scales Fréchet energy by `λ²`. -/
theorem tb06_similarityScalesFrechetEnergy
    {X : Type*} [PseudoMetricSpace X] {count : Nat}
    (similarity : MetricSimilarity X)
    (configuration : WeightedTheoremConfiguration X count)
    (candidate : X) :
    frechetEnergy (pushforwardConfiguration similarity configuration)
        (similarity.equivalence candidate) =
      similarity.scale ^ 2 * frechetEnergy configuration candidate := by
  simp only [frechetEnergy, pushforwardConfiguration, similarity.scalesDistance]
  rw [Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro index _
  ring

/-- TB-07: similarities carry the complete barycenter set forward. -/
theorem tb07_similarityMapsBarycenter
    {X : Type*} [PseudoMetricSpace X] {count : Nat}
    (similarity : MetricSimilarity X)
    (configuration : WeightedTheoremConfiguration X count)
    {candidate : X} (minimizes : candidate ∈ BarycenterSet configuration) :
    similarity.equivalence candidate ∈
      BarycenterSet (pushforwardConfiguration similarity configuration) := by
  intro other
  let preimage := similarity.equivalence.symm other
  have sourceInequality := minimizes preimage
  have mappedInequality := mul_le_mul_of_nonneg_left sourceInequality
    (sq_nonneg similarity.scale)
  rw [← tb06_similarityScalesFrechetEnergy similarity configuration candidate]
    at mappedInequality
  have otherExact : similarity.equivalence preimage = other := by
    simp [preimage]
  rw [← otherExact,
    tb06_similarityScalesFrechetEnergy similarity configuration preimage]
  exact mappedInequality

/-- The inverse implication is derived from the strictly positive similarity
scale; it is not assumed as an arbitrary automorphism law. -/
theorem tb07_similarityReflectsBarycenter
    {X : Type*} [PseudoMetricSpace X] {count : Nat}
    (similarity : MetricSimilarity X)
    (configuration : WeightedTheoremConfiguration X count)
    {candidate : X}
    (minimizes : similarity.equivalence candidate ∈
      BarycenterSet (pushforwardConfiguration similarity configuration)) :
    candidate ∈ BarycenterSet configuration := by
  intro other
  have mappedInequality := minimizes (similarity.equivalence other)
  rw [tb06_similarityScalesFrechetEnergy similarity configuration candidate,
    tb06_similarityScalesFrechetEnergy similarity configuration other]
    at mappedInequality
  have scaleSquarePositive : 0 < similarity.scale ^ 2 :=
    sq_pos_of_pos similarity.scalePositive
  nlinarith

/-- TB-07 in set form: the complete pushed-forward barycenter set is exactly
the image of the source barycenter set. -/
theorem tb07_barycenterSet_similarityEquivariance
    {X : Type*} [PseudoMetricSpace X] {count : Nat}
    (similarity : MetricSimilarity X)
    (configuration : WeightedTheoremConfiguration X count) :
    BarycenterSet (pushforwardConfiguration similarity configuration) =
      similarity.equivalence '' BarycenterSet configuration := by
  ext point
  constructor
  · intro minimizes
    refine ⟨similarity.equivalence.symm point, ?_, by simp⟩
    apply tb07_similarityReflectsBarycenter similarity configuration
    simpa using minimizes
  · rintro ⟨candidate, minimizes, rfl⟩
    exact tb07_similarityMapsBarycenter similarity configuration minimizes

/-- An invariant configuration plus uniqueness gives a genuine fixed point. -/
theorem uniqueBarycenter_fixed_of_invariant
    {X : Type*} [PseudoMetricSpace X] {count : Nat}
    (similarity : MetricSimilarity X)
    (configuration : WeightedTheoremConfiguration X count)
    (barycenter : UniqueBarycenter configuration)
    (invariant : pushforwardConfiguration similarity configuration = configuration) :
    similarity.equivalence barycenter.point = barycenter.point := by
  apply barycenter.unique
  have mapped :=
    tb07_similarityMapsBarycenter similarity configuration barycenter.minimizes
  simpa only [invariant] using mapped

/-- A group action whose every element is supplied as an exact metric
similarity.  Group laws are retained at the underlying equivalence level. -/
structure MetricSimilarityGroupAction
    (GroupCarrier X : Type*) [Group GroupCarrier] [PseudoMetricSpace X] where
  similarity : GroupCarrier → MetricSimilarity X
  identityAction : (similarity 1).equivalence = Equiv.refl X
  compositionAction : ∀ left right,
    (similarity (left * right)).equivalence =
      (similarity left).equivalence.trans (similarity right).equivalence

def ConfigurationStabilizer
    {GroupCarrier X : Type*} [Group GroupCarrier] [PseudoMetricSpace X]
    {count : Nat} (action : MetricSimilarityGroupAction GroupCarrier X)
    (configuration : WeightedTheoremConfiguration X count) : Set GroupCarrier :=
  {element |
    pushforwardConfiguration (action.similarity element) configuration =
      configuration}

def StabilizerFixedLocus
    {GroupCarrier X : Type*} [Group GroupCarrier] [PseudoMetricSpace X]
    {count : Nat} (action : MetricSimilarityGroupAction GroupCarrier X)
    (configuration : WeightedTheoremConfiguration X count) : Set X :=
  {point | ∀ element,
    element ∈ ConfigurationStabilizer action configuration →
      (action.similarity element).equivalence point = point}

/-- TB fixed-point theorem in group form: a unique barycenter belongs to the
fixed locus of the complete configuration stabilizer. -/
theorem uniqueBarycenter_mem_stabilizerFixedLocus
    {GroupCarrier X : Type*} [Group GroupCarrier] [PseudoMetricSpace X]
    {count : Nat} (action : MetricSimilarityGroupAction GroupCarrier X)
    (configuration : WeightedTheoremConfiguration X count)
    (barycenter : UniqueBarycenter configuration) :
    barycenter.point ∈ StabilizerFixedLocus action configuration := by
  intro element invariant
  exact uniqueBarycenter_fixed_of_invariant
    (action.similarity element) configuration barycenter invariant

/-- Finite weighted complex embedding used by the exact centering retraction. -/
structure WeightedComplexEmbedding (count : Nat) where
  weight : Fin count → ℝ
  weightNonnegative : ∀ index, 0 ≤ weight index
  normalized : ∑ index, weight index = 1
  point : Fin count → ℂ

@[ext]
theorem WeightedComplexEmbedding.ext {count : Nat}
    {left right : WeightedComplexEmbedding count}
    (weightExact : left.weight = right.weight)
    (pointExact : left.point = right.point) : left = right := by
  cases left
  cases right
  cases weightExact
  cases pointExact
  rfl

noncomputable def complexBarycenter {count : Nat}
    (embedding : WeightedComplexEmbedding count) : ℂ :=
  ∑ index, (embedding.weight index : ℂ) * embedding.point index

noncomputable def centeredEmbedding {count : Nat}
    (embedding : WeightedComplexEmbedding count) : WeightedComplexEmbedding count where
  weight := embedding.weight
  weightNonnegative := embedding.weightNonnegative
  normalized := embedding.normalized
  point := fun index => embedding.point index - complexBarycenter embedding

/-- Centering sends the weighted barycenter to zero. -/
theorem complexBarycenter_centered_eq_zero {count : Nat}
    (embedding : WeightedComplexEmbedding count) :
    complexBarycenter (centeredEmbedding embedding) = 0 := by
  have weightSum : ∑ index, (embedding.weight index : ℂ) = 1 := by
    exact_mod_cast embedding.normalized
  simp only [complexBarycenter, centeredEmbedding, mul_sub,
    Finset.sum_sub_distrib]
  rw [← Finset.sum_mul, weightSum]
  simp

/-- TB normalization: complex centering is idempotent. -/
theorem centeredEmbedding_idempotent {count : Nat}
    (embedding : WeightedComplexEmbedding count) :
    centeredEmbedding (centeredEmbedding embedding) = centeredEmbedding embedding := by
  have centeredZero := complexBarycenter_centered_eq_zero embedding
  apply WeightedComplexEmbedding.ext
  · rfl
  · funext index
    change (embedding.point index - complexBarycenter embedding) -
        complexBarycenter (centeredEmbedding embedding) =
      embedding.point index - complexBarycenter embedding
    rw [centeredZero]
    simp

/-- The fixed locus of centering is exactly the zero-barycenter locus. -/
theorem centeredEmbedding_fixed_iff {count : Nat}
    (embedding : WeightedComplexEmbedding count) :
    centeredEmbedding embedding = embedding ↔ complexBarycenter embedding = 0 := by
  constructor
  · intro fixed
    have centeredZero := complexBarycenter_centered_eq_zero embedding
    rw [fixed] at centeredZero
    exact centeredZero
  · intro zero
    apply WeightedComplexEmbedding.ext
    · rfl
    · funext index
      simp [centeredEmbedding, zero]

/-- Translation changes the barycenter by exactly the translation. -/
theorem complexBarycenter_translate {count : Nat}
    (embedding : WeightedComplexEmbedding count) (translation : ℂ) :
    complexBarycenter { embedding with
      point := fun index => embedding.point index + translation } =
      complexBarycenter embedding + translation := by
  have weightSum : ∑ index, (embedding.weight index : ℂ) = 1 := by
    exact_mod_cast embedding.normalized
  simp only [complexBarycenter, mul_add, Finset.sum_add_distrib]
  rw [← Finset.sum_mul, weightSum]
  simp

/-- Centering removes translations, but makes no rotation/scale/phase claim. -/
theorem centeredEmbedding_translationInvariant {count : Nat}
    (embedding : WeightedComplexEmbedding count) (translation : ℂ) :
    centeredEmbedding { embedding with
      point := fun index => embedding.point index + translation } =
      centeredEmbedding embedding := by
  apply WeightedComplexEmbedding.ext
  · rfl
  · funext index
    simp [centeredEmbedding, complexBarycenter_translate]

/-- Generic normalization is an idempotent retraction with an exact fixed locus. -/
structure BarycentricNormalization (Embedding : Type) where
  normalized : Embedding → Prop
  normalize : Embedding → Embedding
  idempotent : ∀ embedding, normalize (normalize embedding) = normalize embedding
  fixed_iff_normalized : ∀ embedding,
    normalize embedding = embedding ↔ normalized embedding

/-- Full Möbius equivariance is a separate open construction, not Fréchet data. -/
structure ConformalBarycenterInterface (Boundary Ball : Type*) where
  constructionVersion : VersionId
  conformalBarycenter : List Boundary → Ball
  mobiusActionBoundary : Boundary → Boundary
  mobiusActionBall : Ball → Ball
  equivarianceObligation : Prop

end FCRS.TheoremBarycenter
