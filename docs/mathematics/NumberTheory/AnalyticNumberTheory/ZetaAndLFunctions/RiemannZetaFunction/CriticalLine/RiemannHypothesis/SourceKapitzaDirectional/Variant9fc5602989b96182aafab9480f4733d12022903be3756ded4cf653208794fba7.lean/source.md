# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourceKapitzaDirectional.Variant9fc5602989b96182aafab9480f4733d12022903be3756ded4cf653208794fba7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c4316735188cf01bc9d082342d2fdf5f900fc719` · SHA-256 `3bc05c11a3ed6e9e00870bd4cac36c5457cbe5d8f05c7faf49b9e10516a0c195`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DirectionalPrice.Variant46b0697e206097b2af9269a8727463c32925e61be524547ae50f1e9873f9e1b6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"46b0697e206097b2af9269a8727463c32925e61be524547ae50f1e9873f9e1b6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.DirectionalPrice.Variant46b0697e206097b2af9269a8727463c32925e61be524547ae50f1e9873f9e1b6","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"46b0697e206097b2af9269a8727463c32925e61be524547ae50f1e9873f9e1b6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-continuation-20261006/ingestion/post-Map285-PR450-actual-source-capture-v2-20261007T194312Z/selected-remote-blobs/FormalResearch/RiemannHypothesis/SourceKapitzaDirectional.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourceProjectionReadout
import Mathlib.Analysis.InnerProductSpace.PiL2

/-!
# One-sided source-direction prices for complete projection increments

A finite signed readout needs only the positive part of each row's component along
its actual state increment. The complete diagonal and cross terms remain in that
pairing. Nested orthogonal fits, initial zero fit, and exact terminal membership
are supplied explicitly in the native source consumer. No arithmetic price-square
bound or refinement is constructed here.

The two-dimensional fixture makes the omitted orthogonal row component visible.
The one-block unit-source price is exactly the positive part of the readout, so
that special case supplies no new arithmetic estimate.

Task RH16-KAPITZA-20261007, cycle K-C3. Human originating Kapitza direction:
grwtsk contributors; earlier proposal reported by him, original date unverified.
AI contributions here are the stated calculation, formalization, and inspections.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.DirectionalPrice.Variant46b0697e206097b2af9269a8727463c32925e61be524547ae50f1e9873f9e1b6

set_option autoImplicit false
noncomputable section

namespace FormalResearch.RiemannHypothesis.SourceKapitzaDirectional

open scoped InnerProductSpace BigOperators
open CompensatedReadout SourceProjectionReadout

section Directional

variable (𝕜 : Type*) [RCLike 𝕜]
variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace 𝕜 H]

/-- Price only the positive real component of the row along the prescribed increment. -/
def directionalPrice (d g : H) : ℝ := by
  classical
  exact if d = 0 then 0 else max 0 (RCLike.re (inner 𝕜 d g)) / ‖d‖

/-- A zero source increment has exactly zero directional price. -/
theorem directionalPrice_zero (g : H) : directionalPrice 𝕜 0 g = 0 := by
  simp [directionalPrice]

/-- Every directional price is nonnegative. -/
theorem directionalPrice_nonneg (d g : H) : 0 ≤ directionalPrice 𝕜 d g := by
  unfold directionalPrice
  split_ifs
  · exact le_rfl
  · exact div_nonneg (le_max_left _ _) (norm_nonneg _)

/-- The norm-weighted price is exactly the positive part, including zero increments. -/
theorem norm_mul_directionalPrice (d g : H) :
    ‖d‖ * directionalPrice 𝕜 d g = max 0 (RCLike.re (inner 𝕜 d g)) := by
  by_cases hd : d = 0
  · simp [hd, directionalPrice]
  · rw [directionalPrice, if_neg hd]
    have hn : ‖d‖ ≠ 0 := norm_ne_zero_iff.mpr hd
    field_simp

/-- Negative increments retain their sign in the original sum and cost zero here. -/
theorem real_inner_le_norm_mul_directionalPrice (d g : H) :
    RCLike.re (inner 𝕜 d g) ≤ ‖d‖ * directionalPrice 𝕜 d g := by
  rw [norm_mul_directionalPrice]
  exact le_max_right _ _

/-- The directional premise is weaker than a bound on the complete row norm. -/
theorem directionalPrice_le_norm (d g : H) : directionalPrice 𝕜 d g ≤ ‖g‖ := by
  by_cases hd : d = 0
  · simp [hd, directionalPrice]
  · rw [directionalPrice, if_neg hd, div_le_iff₀ (norm_pos_iff.mpr hd)]
    apply max_le
    · positivity
    · simpa only [mul_comm] using
        (RCLike.re_le_norm (inner 𝕜 d g)).trans (norm_inner_le_norm d g)

/-- A nonpositive prescribed signed pairing has zero directional cost. -/
theorem directionalPrice_eq_zero_of_real_inner_nonpos (d g : H)
    (h : RCLike.re (inner 𝕜 d g) ≤ 0) : directionalPrice 𝕜 d g = 0 := by
  by_cases hd : d = 0
  · simp [hd, directionalPrice]
  · simp [directionalPrice, hd, max_eq_left h]

/-- Finite Cauchy–Schwarz uses only the positive directional row prices. -/
theorem finite_real_inner_sum_le_directional {ι : Type*} (s : Finset ι) (d g : ι → H) :
    (∑ j ∈ s, RCLike.re (inner 𝕜 (d j) (g j))) ≤
      Real.sqrt (∑ j ∈ s, ‖d j‖ ^ 2) *
        Real.sqrt (∑ j ∈ s, directionalPrice 𝕜 (d j) (g j) ^ 2) := by
  calc
    _ ≤ ∑ j ∈ s, ‖d j‖ * directionalPrice 𝕜 (d j) (g j) := by
      apply Finset.sum_le_sum
      intro j hj
      exact real_inner_le_norm_mul_directionalPrice 𝕜 _ _
    _ ≤ _ := Real.sum_mul_le_sqrt_mul_sqrt s
      (fun j ↦ ‖d j‖) (fun j ↦ directionalPrice 𝕜 (d j) (g j))

/-- State-energy and directional-square budgets remain independently supplied inputs. -/
theorem finite_real_inner_sum_le_of_directional_square_bounds {ι : Type*}
    (s : Finset ι) (d g : ι → H) (E B : ℝ)
    (hE : (∑ j ∈ s, ‖d j‖ ^ 2) ≤ E)
    (hB : (∑ j ∈ s, directionalPrice 𝕜 (d j) (g j) ^ 2) ≤ B) :
    (∑ j ∈ s, RCLike.re (inner 𝕜 (d j) (g j))) ≤ Real.sqrt E * Real.sqrt B := by
  apply (finite_real_inner_sum_le_directional 𝕜 s d g).trans
  exact mul_le_mul (Real.sqrt_le_sqrt hE) (Real.sqrt_le_sqrt hB)
    (Real.sqrt_nonneg _) (Real.sqrt_nonneg _)

/-- Every previous full row-square premise implies this one-sided directional premise. -/
theorem directional_square_sum_le_row_square_sum {ι : Type*}
    (s : Finset ι) (d g : ι → H) :
    (∑ j ∈ s, directionalPrice 𝕜 (d j) (g j) ^ 2) ≤ ∑ j ∈ s, ‖g j‖ ^ 2 := by
  apply Finset.sum_le_sum
  intro j hj
  exact (sq_le_sq₀ (directionalPrice_nonneg 𝕜 _ _) (norm_nonneg _)).2
    (directionalPrice_le_norm 𝕜 _ _)

end Directional

section Projections

variable {H : Type*} [NormedAddCommGroup H] [InnerProductSpace ℂ H]
variable (V : ℕ → Submodule ℂ H) [∀ j, (V j).HasOrthogonalProjection]

/-- The actual full diagonal-plus-cross row is priced in the actual increment direction. -/
def combinedDirectionalPrice (K : H →L[ℂ] H) (q : H) (j : ℕ) : ℝ :=
  directionalPrice ℂ (stateIncrement (projectedState V q) j) (combinedProjectionRow V K q j)

/-- The price uses the positive part of the exact full diagonal-plus-cross readout change. -/
theorem norm_increment_mul_price_eq_positive_readout_increment [CompleteSpace H]
    (hV : Monotone V) (K : H →L[ℂ] H) (hK : IsSelfAdjoint K) (q : H) (j : ℕ) :
    ‖stateIncrement (projectedState V q) j‖ * combinedDirectionalPrice V K q j =
      max 0 (quadraticReadout K (projectedState V q (j + 1)) -
        quadraticReadout K (projectedState V q j)) := by
  rw [combinedDirectionalPrice, norm_mul_directionalPrice, RCLike.re_eq_complex_re,
    combined_projection_row_inner V hV]
  congr 1
  exact (quadratic_difference_eq_combined K hK _ _).symm

/-- The exact projected telescope admits the weaker one-sided directional budget. -/
theorem projected_readout_le_of_directional_square [CompleteSpace H] (hV : Monotone V)
    (K : H →L[ℂ] H) (hK : IsSelfAdjoint K) (q : H) (n : ℕ) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n, combinedDirectionalPrice V K q j ^ 2) ≤ B) :
    quadraticReadout K (projectedState V q n) -
      quadraticReadout K (projectedState V q 0) ≤ ‖q‖ * Real.sqrt B := by
  rw [projected_readout_combined_telescope V hV K hK q n]
  have h := finite_real_inner_sum_le_of_directional_square_bounds ℂ (Finset.range n)
    (stateIncrement (projectedState V q)) (combinedProjectionRow V K q)
    (‖q‖ ^ 2) B (projected_increment_energy_le V hV q n) hB
  simpa only [Real.sqrt_sq (norm_nonneg _), RCLike.re_eq_complex_re] using h

/-- Zero initial fit and terminal source membership are required for reconstruction. -/
theorem full_readout_le_of_directional_projection_rows [CompleteSpace H]
    (hV : Monotone V) (hzero : V 0 = ⊥) (K : H →L[ℂ] H) (hK : IsSelfAdjoint K)
    (q : H) (n : ℕ) (hq : q ∈ V n) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n, combinedDirectionalPrice V K q j ^ 2) ≤ B) :
    quadraticReadout K q ≤ ‖q‖ * Real.sqrt B := by
  have hn : projectedState V q n = q := Submodule.starProjection_eq_self_iff.mpr hq
  have h0 : projectedState V q 0 = 0 := by simp [projectedState, hzero]
  have h := projected_readout_le_of_directional_square V hV K hK q n B hB
  simpa only [hn, h0, quadraticReadout, map_zero, inner_zero_left, Complex.zero_re,
    sub_zero] using h

/-- A single exact source block is tautological: its price is the readout's positive part. -/
theorem single_block_directionalPrice (hV : Monotone V) (hzero : V 0 = ⊥)
    (K : H →L[ℂ] H) (q : H) (hq : q ∈ V 1) (hunit : ‖q‖ = 1) :
    combinedDirectionalPrice V K q 0 = max 0 (quadraticReadout K q) := by
  have hn : projectedState V q 1 = q := Submodule.starProjection_eq_self_iff.mpr hq
  have h0 : projectedState V q 0 = 0 := by simp [projectedState, hzero]
  have hi := combined_projection_row_inner V hV K q 0
  have hd : stateIncrement (projectedState V q) 0 = q := by
    simp [stateIncrement, hn, h0]
  rw [hd, hn, h0, add_zero] at hi
  have hp := norm_mul_directionalPrice ℂ q (combinedProjectionRow V K q 0)
  rw [hunit, one_mul, hi] at hp
  simpa only [combinedDirectionalPrice, hd, quadraticReadout, RCLike.re_eq_complex_re] using hp

end Projections

section NativeSource

open SourceReflectionDuality SourceScaleL2Continuity SourceMangoldtInteraction SourceFirstPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

variable (V : ℕ → Submodule ℂ ComplexL2) [∀ j, (V j).HasOrthogonalProjection]

/-- This actual-source upper bound still requires the independent directional-square premise. -/
theorem mertensResidual_le_sqrt_of_directional_projection_rows
    (hV : Monotone V) (hzero : V 0 = ⊥) (A : ℝ) (hA : 1 ≤ A)
    (n : ℕ) (hq : originalSourceState A ∈ V n) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n,
      combinedDirectionalPrice V (mangoldtInteraction A) (originalSourceState A) j ^ 2) ≤ B) :
    mertensResidual A ≤ Real.sqrt B := by
  have h := full_readout_le_of_directional_projection_rows V hV hzero
    (mangoldtInteraction A) (mangoldtInteraction_selfAdjoint A) (originalSourceState A) n hq B hB
  rw [originalSourceState_norm (by linarith : 0 < A), one_mul] at h
  simpa only [mertensResidual_eq_quadratic hA, quadraticReadout] using h

/-- The independently identified scalar compensation retains its exact original-source cost. -/
theorem mertensResidual_le_moment_add_sqrt_of_scalar_directional_rows
    (hV : Monotone V) (hzero : V 0 = ⊥) (A : ℝ) (hA : 1 ≤ A)
    (n : ℕ) (hq : originalSourceState A ∈ V n) (B : ℝ)
    (hB : (∑ j ∈ Finset.range n,
      combinedDirectionalPrice V (scalarCompensatedPrimeOperator A)
        (originalSourceState A) j ^ 2) ≤ B) :
    mertensResidual A ≤ criticalContinuousMoment A + Real.sqrt B := by
  have h := full_readout_le_of_directional_projection_rows V hV hzero
    (scalarCompensatedPrimeOperator A) (scalarCompensatedPrimeOperator_selfAdjoint A)
    (originalSourceState A) n hq B hB
  rw [originalSourceState_norm (by linarith : 0 < A), one_mul,
    scalarCompensatedPrimeOperator_source_readout A hA] at h
  linarith

/-- A one-block unit original source costs exactly `max 0 r_A`, proving no new cap. -/
theorem single_block_originalSource_directionalPrice
    (hV : Monotone V) (hzero : V 0 = ⊥) (A : ℝ) (hA : 1 ≤ A)
    (hq : originalSourceState A ∈ V 1) :
    combinedDirectionalPrice V (mangoldtInteraction A) (originalSourceState A) 0 =
      max 0 (mertensResidual A) := by
  rw [single_block_directionalPrice V hV hzero _ _ hq
    (originalSourceState_norm (by linarith : 0 < A))]
  congr 1
  exact (mertensResidual_eq_quadratic hA).symm

end NativeSource

section AdaptiveNativeConsumer

open SourceReflectionDuality SourceScaleL2Continuity SourceMangoldtInteraction
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry

/-- Depth and spaces may depend on real scale; the directional budget must be uniform. -/
theorem mertensResidualTail_of_adaptive_directional_rows
    (V : ℝ → ℕ → Submodule ℂ ComplexL2)
    [∀ A j, (V A j).HasOrthogonalProjection] (depth : ℝ → ℕ) (R B : ℝ) (hR : 1 ≤ R)
    (hV : ∀ A : ℝ, R ≤ A → Monotone (V A))
    (hzero : ∀ A : ℝ, R ≤ A → V A 0 = ⊥)
    (hq : ∀ A : ℝ, R ≤ A → originalSourceState A ∈ V A (depth A))
    (hB : ∀ A : ℝ, R ≤ A → (∑ j ∈ Finset.range (depth A),
      combinedDirectionalPrice (V A) (mangoldtInteraction A) (originalSourceState A) j ^ 2) ≤ B) :
    MertensResidualTailUpperBound := by
  refine ⟨Real.sqrt B, Real.sqrt_nonneg _, R, hR, ?_⟩
  intro A hRA
  exact mertensResidual_le_sqrt_of_directional_projection_rows (V A) (hV A hRA)
    (hzero A hRA) A (hR.trans hRA) (depth A) (hq A hRA) B (hB A hRA)

/-- The supplied all-real directional premise reaches the unchanged original #16 consumer. -/
theorem estimate_of_adaptive_directional_rows
    (V : ℝ → ℕ → Submodule ℂ ComplexL2)
    [∀ A j, (V A j).HasOrthogonalProjection] (depth : ℝ → ℕ) (R B : ℝ) (hR : 1 ≤ R)
    (hV : ∀ A : ℝ, R ≤ A → Monotone (V A))
    (hzero : ∀ A : ℝ, R ≤ A → V A 0 = ⊥)
    (hq : ∀ A : ℝ, R ≤ A → originalSourceState A ∈ V A (depth A))
    (hB : ∀ A : ℝ, R ≤ A → (∑ j ∈ Finset.range (depth A),
      combinedDirectionalPrice (V A) (mangoldtInteraction A) (originalSourceState A) j ^ 2) ≤ B) :
    CorrelationAssembly.EstimateObligation :=
  estimate_of_mertens_residual_tail
    (mertensResidualTail_of_adaptive_directional_rows V depth R B hR hV hzero hq hB)

end AdaptiveNativeConsumer

section OrthogonalFixture

/-- A unit prescribed source direction in an exact real two-dimensional Hilbert space. -/
def fixtureDirection : EuclideanSpace ℝ (Fin 2) := EuclideanSpace.single 0 1

/-- An arbitrarily large row component orthogonal to the prescribed direction. -/
def fixtureOrthogonalRow (t : ℝ) : EuclideanSpace ℝ (Fin 2) := EuclideanSpace.single 1 t

/-- The fixture source direction has unit norm. -/
theorem fixture_direction_norm : ‖fixtureDirection‖ = 1 := by
  simp [fixtureDirection]

/-- The orthogonal row has zero actual signed pairing for every real amplitude. -/
theorem fixture_inner_zero (t : ℝ) : inner ℝ fixtureDirection (fixtureOrthogonalRow t) = 0 := by
  simp [fixtureDirection, fixtureOrthogonalRow, EuclideanSpace.inner_single_left]

/-- The source-direction price is exactly zero while the full row may grow. -/
theorem fixture_directionalPrice_zero (t : ℝ) :
    directionalPrice ℝ fixtureDirection (fixtureOrthogonalRow t) = 0 := by
  apply directionalPrice_eq_zero_of_real_inner_nonpos
  rw [fixture_inner_zero]
  simp

/-- The discarded orthogonal row norm is exactly its amplitude, with no floating point input. -/
theorem fixture_orthogonalRow_norm (t : ℝ) : ‖fixtureOrthogonalRow t‖ = |t| := by
  simp [fixtureOrthogonalRow]

/-- Nonnegative amplitudes yield arbitrarily large exact rows at zero directional cost. -/
theorem fixture_unbounded_row_at_zero_price (t : ℝ) (ht : 0 ≤ t) :
    directionalPrice ℝ fixtureDirection (fixtureOrthogonalRow t) = 0 ∧
      ‖fixtureOrthogonalRow t‖ = t := by
  exact ⟨fixture_directionalPrice_zero t, by rw [fixture_orthogonalRow_norm, abs_of_nonneg ht]⟩

/-- No finite row-norm bound follows from vanishing source-direction prices in this fixture. -/
theorem fixture_row_norm_unbounded :
    ∀ B : ℝ, ∃ t : ℝ,
      directionalPrice ℝ fixtureDirection (fixtureOrthogonalRow t) = 0 ∧
        B < ‖fixtureOrthogonalRow t‖ := by
  intro B
  refine ⟨|B| + 1, fixture_directionalPrice_zero _, ?_⟩
  rw [fixture_orthogonalRow_norm, abs_of_nonneg (by positivity)]
  linarith [le_abs_self B]

end OrthogonalFixture

end FormalResearch.RiemannHypothesis.SourceKapitzaDirectional
```
