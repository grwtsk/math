# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.SourcePrimitiveBaseline.Variantd66ba459809a25e8c8a26eef7faed9f03d260941dae661cb756598fefbd343de

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7969ed20a26b03e198af7ab44092711f31ea6aa9` · SHA-256 `1aa1973bbb002eab64e6ab99ccc31962a762b0614e1910f8d0674b4d46dc813c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimitiveZeroOfLeAbs.Variant80e180463dde2a4c945a5e31121e2e7d3e98af3017833058c65bd1cebd649b28","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"80e180463dde2a4c945a5e31121e2e7d3e98af3017833058c65bd1cebd649b28","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PrimitiveZeroOfLeAbs.Variant80e180463dde2a4c945a5e31121e2e7d3e98af3017833058c65bd1cebd649b28","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"80e180463dde2a4c945a5e31121e2e7d3e98af3017833058c65bd1cebd649b28","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle15/next-primitive-baseline/attempt-02/SourcePrimitiveBaseline.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePrimitivePrimeInteraction
import FormalResearch.RiemannHypothesis.SourcePairedSquareMainTerm

/-!
# Private actual primitive zero mode and complete signed reconstruction

This optional future candidate is outside the current canonical six-root packet.
The zero-mode main term is independently evaluated from the actual primitive.
The complete time-mean minus continuous-half drift is retained before exact
cancellation. No eventual arithmetic witness or Vaughan main-term identification
is asserted. Private compilation and independent review remain separate gates.

AI attribution: developed with OpenAI Codex; focused status is external.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PrimitiveZeroOfLeAbs.Variant80e180463dde2a4c945a5e31121e2e7d3e98af3017833058c65bd1cebd649b28

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePrimitiveBaseline

open MeasureTheory Set
open scoped Interval
open SourcePrimitivePrimeInteraction SourceCausalEnergy SourcePairing
open SourceDiagonalMainTerm SourcePrimePowerPartition SourcePairedSquareMainTerm
open SourcePairedTailQuadrature SourcePairedTailTest SourcePairedPrimeAverages
open SourceFirstPrimeAbel SourcePrimeSquareTailWork WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open CorrelationMoment Realization EstimateMertensResidual

private theorem primitive_zero_of_le_abs {A x : ℝ} (hA : 0 < A)
    (hx : A ≤ |x|) : normalizedPrimitiveBump A x = 0 := by
  by_cases hm : x ∈ Icc (-A) A
  · by_cases hs : 0 ≤ x
    · have he : x = A := by rw [abs_of_nonneg hs] at hx; linarith [hm.2]
      rw [he]
      exact (normalizedPrimitiveBump_endpoints hA).2
    · have he : x = -A := by rw [abs_of_neg (lt_of_not_ge hs)] at hx; linarith [hm.1]
      rw [he]
      exact (normalizedPrimitiveBump_endpoints hA).1
  · exact normalizedPrimitiveBump_zero_of_not_mem hA hm

private theorem primitiveCorrelationZero_zero {A s : ℝ} (hA : 0 < A)
    (hs : 2 * A ≤ |s|) : primitiveCorrelationZero A s = 0 := by
  unfold primitiveCorrelationZero
  apply integral_eq_zero_of_ae
  filter_upwards [] with x
  change _ = (0 : ℝ)
  by_cases hx : A ≤ |x|
  · rw [primitive_zero_of_le_abs hA hx, zero_mul]
  · have ht := abs_add_le x (-(x - s))
    have he : x + -(x - s) = s := by ring
    rw [he, abs_neg] at ht
    have hxs : A ≤ |x - s| := by linarith [lt_of_not_ge hx]
    rw [primitive_zero_of_le_abs hA hxs, mul_zero]

private theorem primitiveCorrelationZero_even (A : ℝ) :
    Function.Even (primitiveCorrelationZero A) := by
  intro s
  unfold primitiveCorrelationZero
  have h := integral_sub_right_eq_self (μ := volume)
    (fun x => normalizedPrimitiveBump A x * normalizedPrimitiveBump A (x - -s)) s
  simpa only [sub_neg_eq_add, sub_add_cancel, mul_comm] using h.symm

private theorem primitiveCorrelationZero_integrable {A : ℝ} (hA : 0 < A) :
    Integrable (primitiveCorrelationZero A) := by
  have hb := normalizedPrimitiveBump_integrable hA
  have h := weighted_correlation_integrable (normalizedPrimitiveBump A) 0
    (by simpa using hb) (by simpa using hb)
  simpa [correlation, primitiveCorrelationZero] using h

/-- Full compact Fubini and exact reflection give the primitive half-line zero mode. -/
theorem primitiveCorrelationZero_half_integral {A : ℝ} (hA : 0 < A) :
    (∫ s in 0..2 * A, primitiveCorrelationZero A s) =
      (1 / 2 : ℝ) * (∫ x : ℝ, normalizedPrimitiveBump A x) ^ 2 := by
  have hb := normalizedPrimitiveBump_integrable hA
  have hf := weighted_correlation_integral (normalizedPrimitiveBump A) 0
    (by simpa using hb) (by simpa using hb)
  have hfull : (∫ s : ℝ, primitiveCorrelationZero A s) =
      (∫ x : ℝ, normalizedPrimitiveBump A x) ^ 2 := by
    simpa [correlation, primitiveCorrelationZero, pow_two] using hf
  have hs : Function.support (primitiveCorrelationZero A) ⊆ Ioc (-(2 * A)) (2 * A) := by
    intro s hmem
    have hn : |s| < 2 * A := by
      by_contra hn
      exact hmem (primitiveCorrelationZero_zero hA (le_of_not_gt hn))
    exact ⟨by linarith [neg_abs_le s], (le_abs_self s).trans hn.le⟩
  have hsupport := intervalIntegral.integral_eq_integral_of_support_subset (μ := volume) hs
  have heven : (∫ s in -(2 * A)..0, primitiveCorrelationZero A s) =
      ∫ s in 0..2 * A, primitiveCorrelationZero A s := by
    have he : (fun s : ℝ => primitiveCorrelationZero A (-s)) = primitiveCorrelationZero A :=
      funext (primitiveCorrelationZero_even A)
    have hn := intervalIntegral.integral_comp_neg (primitiveCorrelationZero A)
      (a := -(2 * A)) (b := 0)
    rw [he] at hn
    simpa using hn
  have hi := primitiveCorrelationZero_integrable hA
  have hadd := intervalIntegral.integral_add_adjacent_intervals
    (a := -(2 * A)) (b := 0) (c := 2 * A) hi.intervalIntegrable hi.intervalIntegrable
  rw [heven, hsupport, hfull] at hadd
  linarith

/-- The factor 1/32 gives kappa_A times A, not kappa_A alone. -/
theorem primitive_zero_mode_main {A : ℝ} (hA : 1 ≤ A) :
    diagonalMainCoefficient A * A =
      (1 / 32 : ℝ) * ∫ s in 0..2 * A, primitiveCorrelationZero A s := by
  have hp : 0 < A := by linarith
  have hb : (∫ x : ℝ, normalizedPrimitiveBump A x) =
      Real.sqrt A * (256 / 315 : ℝ) / Real.sqrt (sourceNormalization A) := by
    unfold normalizedPrimitiveBump
    rw [integral_div, scaledBump_integral A hp]
  rw [primitiveCorrelationZero_half_integral hp, hb]
  have hZ := source_normalization_pos A hA
  rw [div_pow, mul_pow, Real.sq_sqrt hp.le, Real.sq_sqrt hZ.le]
  unfold diagonalMainCoefficient
  ring

/-- Independent literal closed first-prime data with every signed primitive lag retained. -/
def primitivePrimeCombination (A : ℝ) : ℝ :=
  (∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
    Real.exp (-Real.log (p : ℝ) / 2) * primitiveCorrelationTwo A (Real.log p)) +
  (∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
    Real.exp (-Real.log (p : ℝ) / 2) * primitiveCorrelationOne A (Real.log p)) / 2 +
  (∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
    Real.exp (-Real.log (p : ℝ) / 2) * primitiveCorrelationZero A (Real.log p)) / 16

/-- The actual prime adapter is an exact signed expansion, not an absolute estimate. -/
theorem primitivePrimeCombination_eq_firstPrimeMoment {A : ℝ} (hA : 0 < A) :
    primitivePrimeCombination A = firstPrimeMoment A :=
  (firstPrimeMoment_eq_primitive_filter hA).symm

/-- Independently defined bounded data do not include the growing source zero mode. -/
def primitivePairedRemainder (A : ℝ) : ℝ :=
  criticalContinuousMoment A + negativeErrorMean A + pairedSquareMainCorrection A

/-- The full mu-H drift stays literal until the subsequent algebraic cancellation. -/
theorem squareRemovedPairedWork_eq_primitive_with_drift {A : ℝ} (hA : 1 ≤ A) :
    squareRemovedPairedWork A =
      (negativeTimeMean A + negativeErrorMean A - primitivePrimeCombination A) -
        diagonalMainCoefficient A * A + pairedSquareMainCorrection A -
          (negativeTimeMean A - criticalContinuousMoment A) := by
  rw [squareRemovedPairedWork_eq_first_main_correction hA, pairedTailTest_prime_sum_eq,
    ← firstPrimeMoment_eq_criticalPrimeSum,
    ← primitivePrimeCombination_eq_firstPrimeMoment (show 0 < A by linarith)]
  have hs := negativeSurvival_prime_sum_sub_mean hA
  linarith

/-- Exact mu cancellation leaves the independent zero mode coupled to all prime lag channels. -/
theorem squareRemovedPairedWork_eq_primitive_remainder {A : ℝ} (hA : 1 ≤ A) :
    squareRemovedPairedWork A = primitivePairedRemainder A -
      (diagonalMainCoefficient A * A + primitivePrimeCombination A) := by
  rw [squareRemovedPairedWork_eq_primitive_with_drift hA, primitivePairedRemainder]
  ring

/-- Only the independent three-component replacement error receives an absolute bound. -/
theorem primitivePairedRemainder_uniformly_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A → |primitivePairedRemainder A| ≤ C := by
  obtain ⟨B, hB0, hB⟩ := negativeErrorMean_uniformly_bounded
  obtain ⟨S, hS0, hS⟩ := pairedSquareMainCorrection_uniformly_bounded
  refine ⟨2 + B + S, by positivity, ?_⟩
  intro A hA
  unfold primitivePairedRemainder
  exact (abs_add_le _ _).trans (add_le_add
    ((abs_add_le _ _).trans (add_le_add (criticalContinuousMoment_abs_le_two A hA) (hB A hA)))
    (hS A hA))

/-- The unchanged eventual residual target is equivalent; no signed witness is supplied. -/
theorem primitivePrime_tail_iff_residual_tail :
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      diagonalMainCoefficient A * A + primitivePrimeCombination A ≤ D) ↔
        MertensResidualTailUpperBound := by
  rw [← firstPrime_tail_iff_residual_tail]
  unfold FirstPrimeTailUpperBound
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hRA
    have hh := h A hRA
    rw [primitivePrimeCombination_eq_firstPrimeMoment (by linarith)] at hh
    linarith
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D, hD, R, hR, ?_⟩
    intro A hRA
    rw [primitivePrimeCombination_eq_firstPrimeMoment (by linarith)]
    linarith [h A hRA]

end FormalResearch.RiemannHypothesis.SourcePrimitiveBaseline
```
