# Complete source: GRWTSK.Topology.GeneralTopology.StabilityModels.Variantc45198dee791be006b96a1dca7bb5ff95b47f23ca14dbb9c2f59003798493a56

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `90917418bd6b7f627bae5b1ef0e78adbd840c70f` · SHA-256 `903694c72a094558e64e6274b768941c74f06e7470c6b4433395a910d50dc5d7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Snapshot.Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Snapshot.Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537","mathematical_subject":"Topology.GeneralTopology","original_sha256":"386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Operational/StabilityModels.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Operational.Contraction
import Mathematics.Operational.Lyapunov
import Mathlib.Analysis.SpecificLimits.Normed

/-!
# Stability boundary models

Three exact real-line operators witness the strict separation between
fixedness, Lyapunov stability, and attraction:

* `x ↦ 2x` fixes zero but is not Lyapunov stable there;
* `x ↦ x` makes every point Lyapunov stable but none locally attractive;
* `x ↦ x / 2` is a strict contraction and is asymptotically stable at zero.

A fourth element records a small nonzero residual without constructing an
exact fixed-point witness.
-/


namespace GRWTSK.Topology.GeneralTopology.Snapshot.Variant386a635b4e119b18c1fb0e4c8c3755b722c852062ac3281fd7fc0fdba53da537

namespace Mathematics.Operational.StabilityModels

open Filter
open scoped NNReal

noncomputable section

private def snapshot : Projection.ProjectionSnapshot where
  snapshotId := { bits := 0 }
  parentSnapshotId := none
  architectureDigest := default
  scopeDigest := default
  dependencyDigest := default
  obligationDigest := default
  environmentDigest := default
  policyDigest := default
  routeRegistryDigest := default
  creationDigest := default

private def digest : Digest := default

/-- Expanding real-line operator. -/
def doublingOperator : VersionedOperator ℝ :=
  VersionedOperator.onUniverse
    { value := "operator:real-doubling" }
    snapshot
    (fun value ↦ 2 * value)
    digest

/-- Identity real-line operator. -/
def identityOperator : VersionedOperator ℝ :=
  VersionedOperator.onUniverse
    { value := "operator:real-identity" }
    snapshot
    id
    digest

/-- Contracting real-line operator. -/
def halfOperator : VersionedOperator ℝ :=
  VersionedOperator.onUniverse
    { value := "operator:real-half" }
    snapshot
    (fun value ↦ value / 2)
    digest

/-- Zero is an exact fixed point of the expanding operator. -/
def doublingZero : CertifiedFixedPoint doublingOperator where
  point := ⟨0, Set.mem_univ 0⟩
  fixed := by
    apply Subtype.ext
    norm_num [doublingOperator, VersionedOperator.step,
      VersionedOperator.onUniverse]

/-- Every real number is an exact fixed point of the identity operator. -/
def identityPoint (value : ℝ) :
    CertifiedFixedPoint identityOperator where
  point := ⟨value, Set.mem_univ value⟩
  fixed := by
    apply Subtype.ext
    rfl

/-- Zero is an exact fixed point of the half operator. -/
def halfZero : CertifiedFixedPoint halfOperator where
  point := ⟨0, Set.mem_univ 0⟩
  fixed := by
    apply Subtype.ext
    norm_num [halfOperator, VersionedOperator.step,
      VersionedOperator.onUniverse]

@[simp] theorem doubling_step_value
    (state : doublingOperator.domain) :
    (doublingOperator.step state : ℝ) = 2 * state :=
  rfl

@[simp] theorem identity_step
    (state : identityOperator.domain) :
    identityOperator.step state = state := by
  apply Subtype.ext
  rfl

@[simp] theorem half_step_value
    (state : halfOperator.domain) :
    (halfOperator.step state : ℝ) = (state : ℝ) / 2 :=
  rfl

/-- Closed form for every iterate of the expanding operator. -/
theorem doubling_iterate_value
    (iteration : Nat)
    (state : doublingOperator.domain) :
    ((doublingOperator.step^[iteration]) state : ℝ) =
      2 ^ iteration * (state : ℝ) := by
  induction iteration generalizing state with
  | zero =>
      simp
  | succ iteration inductionHypothesis =>
      rw [Function.iterate_succ_apply]
      rw [inductionHypothesis, doubling_step_value]
      ring_nf

/-- Zero for `x ↦ 2x` is exact but Lyapunov unstable. -/
theorem doublingZero_not_lyapunovStable :
    ¬ IsLyapunovStable doublingOperator doublingZero := by
  apply not_isLyapunovStable_of_escape doublingZero 1 one_pos
  intro δ δ_positive
  let displacement : ℝ := min (δ / 2) (1 / 2)
  have displacement_positive : 0 < displacement := by
    exact lt_min (half_pos δ_positive) (by norm_num)
  have displacement_lt : displacement < δ := by
    exact
      lt_of_le_of_lt (min_le_left _ _)
        (half_lt_self δ_positive)
  let state : doublingOperator.domain :=
    ⟨displacement, Set.mem_univ displacement⟩
  have powersDiverge :
      Tendsto
        (fun iteration : Nat ↦
          (2 : ℝ) ^ iteration * displacement)
        atTop atTop :=
    Tendsto.atTop_mul_const displacement_positive
      (tendsto_pow_atTop_atTop_of_one_lt
        (show (1 : ℝ) < 2 by norm_num))
  have eventuallyEscapes :
      ∀ᶠ iteration : Nat in atTop,
        1 ≤ (2 : ℝ) ^ iteration * displacement :=
    powersDiverge.eventually (eventually_ge_atTop 1)
  obtain ⟨iteration, escaped⟩ := eventuallyEscapes.exists
  refine ⟨state, ?_, iteration, ?_⟩
  · change dist displacement 0 < δ
    simpa [Real.dist_eq,
      abs_of_pos displacement_positive] using displacement_lt
  · rw [Subtype.dist_eq, doubling_iterate_value]
    change
      1 ≤ |(2 : ℝ) ^ iteration * displacement - 0|
    rw [sub_zero, abs_of_nonneg]
    · exact escaped
    · positivity

/-- Every identity fixed point is Lyapunov stable. -/
theorem identityPoint_lyapunovStable (value : ℝ) :
    IsLyapunovStable identityOperator (identityPoint value) := by
  apply isLyapunovStable_of_iterate_nonexpansive
  intro iteration state
  have stateFixed :
      Function.IsFixedPt identityOperator.step state :=
    identity_step state
  rw [(stateFixed.iterate iteration).eq,
    (identityPoint value).iterate_eq iteration]

/-- No identity fixed point is locally attractive on a nontrivial real neighborhood. -/
theorem identityPoint_not_locallyAttractive (value : ℝ) :
    ¬ IsLocallyAttractive identityOperator
      (identityPoint value) := by
  rintro ⟨radius, radius_positive, attracts⟩
  let displacedValue := value + radius / 2
  let state : identityOperator.domain :=
    ⟨displacedValue, Set.mem_univ displacedValue⟩
  have stateClose :
      dist state (identityPoint value).point < radius := by
    change dist displacedValue value < radius
    rw [Real.dist_eq]
    simp only [displacedValue, add_sub_cancel_left]
    rw [abs_of_pos (half_pos radius_positive)]
    exact half_lt_self radius_positive
  have tendsToFixed :=
    attracts state stateClose
  have constantSequence :
      (fun iteration : Nat ↦
        (identityOperator.step^[iteration]) state) =
      fun _ ↦ state := by
    funext iteration
    exact
      ((show Function.IsFixedPt identityOperator.step state from
        identity_step state).iterate iteration).eq
  rw [constantSequence] at tendsToFixed
  have state_eq_fixed :
      state = (identityPoint value).point :=
    tendsto_nhds_unique tendsto_const_nhds tendsToFixed
  have value_eq :
      displacedValue = value :=
    congrArg Subtype.val state_eq_fixed
  dsimp [displacedValue] at value_eq
  linarith

/-- The half operator is a strict contraction on its complete domain. -/
theorem half_step_contracting :
    ContractingWith (⟨1 / 2, by norm_num⟩ : ℝ≥0)
      halfOperator.step := by
  constructor
  · change (1 / 2 : ℝ) < 1
    norm_num
  · apply LipschitzWith.of_dist_le_mul
    intro left right
    change
      dist ((left : ℝ) / 2) ((right : ℝ) / 2) ≤
        (1 / 2 : ℝ) * dist (left : ℝ) (right : ℝ)
    rw [Real.dist_eq, Real.dist_eq, ← sub_div, abs_div]
    ring_nf
    exact le_rfl

/-- The quadratic energy `V(x) = x²` is a local Lyapunov certificate. -/
def halfZero_lyapunovCertificate :
    LocalQuadraticLyapunovCertificate halfZero where
  region := Set.univ
  fixed_mem := Set.mem_univ _
  invariant := fun _ _ ↦ Set.mem_univ _
  energy := fun state ↦ (state : ℝ) ^ 2
  lowerConstant := 1
  upperConstant := 1
  lowerConstant_positive := one_pos
  upperConstant_positive := one_pos
  lower_bound := by
    intro state _
    change
      1 * dist (state : ℝ) 0 ^ 2 ≤
        (state : ℝ) ^ 2
    rw [Real.dist_eq, sub_zero, sq_abs]
    simp
  upper_bound := by
    intro state _
    change
      (state : ℝ) ^ 2 ≤
        1 * dist (state : ℝ) 0 ^ 2
    rw [Real.dist_eq, sub_zero, sq_abs]
    simp
  decreases := by
    intro state _
    change ((state : ℝ) / 2) ^ 2 ≤ (state : ℝ) ^ 2
    nlinarith [sq_nonneg (state : ℝ)]
  local_sublevel := by
    intro ε ε_positive
    refine ⟨ε, ε_positive, ?_⟩
    intro state stateClose
    refine ⟨Set.mem_univ _, ?_⟩
    change
      1 * dist (state : ℝ) 0 ^ 2 <
        1 * ε ^ 2
    simpa [Subtype.dist_eq, halfZero, Real.dist_eq,
      sq_abs] using
      (sq_lt_sq₀ dist_nonneg ε_positive.le).mpr stateClose

/-- Zero for `x ↦ x/2` is globally, hence locally, asymptotically stable. -/
theorem halfZero_asymptoticallyStable :
    IsLocallyAsymptoticallyStable halfOperator halfZero := by
  letI : CompleteSpace halfOperator.domain :=
    isClosed_univ.completeSpace_coe
  exact ⟨halfZero_lyapunovCertificate.isLyapunovStable,
    isLocallyAttractive_of_contraction
      halfZero half_step_contracting⟩

/-- A concrete low-residual observation that is not an exact fixed point. -/
def lowResidualObservation :
    ApproximateFixedPointObservation halfOperator where
  point := ⟨1 / 100, Set.mem_univ _⟩
  tolerance := 1 / 100
  tolerance_nonnegative := by norm_num
  residual_le := by
    norm_num [fixedResidual, halfOperator,
      VersionedOperator.onUniverse, Real.norm_eq_abs]
  numericalProfileId := {
    value := "numerical-profile:exact-rational-low-residual"
  }
  authority := default

/-- The low-residual observation's point is nevertheless not exactly fixed. -/
theorem lowResidualObservation_not_fixed :
    ¬ Function.IsFixedPt halfOperator.step
      lowResidualObservation.point := by
  intro fixed
  have rawFixed :=
    congrArg Subtype.val fixed
  norm_num [lowResidualObservation, halfOperator,
    VersionedOperator.step, VersionedOperator.onUniverse] at rawFixed

end

end Mathematics.Operational.StabilityModels
```
