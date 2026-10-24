-- corpus-organization-transform:v1
-- Mathematical subject: NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PairedPrimeQuadratureTailLowerBound.Variant79da4dac692ee34f0701b7c4ae45cb78a3b7f1b4191a75c6bb69b9e01969d44c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"79da4dac692ee34f0701b7c4ae45cb78a3b7f1b4191a75c6bb69b9e01969d44c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.NumberTheory.RiemannHypothesis.SourceCorpus.PairedPrimeQuadratureTailLowerBound.Variant79da4dac692ee34f0701b7c4ae45cb78a3b7f1b4191a75c6bb69b9e01969d44c","mathematical_subject":"NumberTheory.RiemannHypothesis","original_sha256":"79da4dac692ee34f0701b7c4ae45cb78a3b7f1b4191a75c6bb69b9e01969d44c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle11/paired-tail-quadrature/private-v2-input.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePairedTailTest
import FormalResearch.RiemannHypothesis.SourcePairedContrastResidual
import FormalResearch.RiemannHypothesis.SourceContinuousHalfEnergy

/-!
# Exact prime quadrature for the actual paired tail

The independently specified source tail retains its full time mean and continuous
half. These global C1 tails are not compactly supported; Abel uses a finite
interval. The exact closed-prime quadrature is the actual paired contrast; its eventual
lower bound remains an open proposition, with no arithmetic witness supplied.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.PairedPrimeQuadratureTailLowerBound.Variant79da4dac692ee34f0701b7c4ae45cb78a3b7f1b4191a75c6bb69b9e01969d44c

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature

open MeasureTheory
open scoped Interval
open SourcePairedTailTest SourcePairedPrimeWork SourcePairedPrimeAverages
open SourcePairedContrastResidual SourceFirstPrimeAbel SourceDiagonalMainTerm
open SourceContinuousHalfEnergy WeightedPrimeAbel
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open EstimateMertensResidual Realization CorrelationRegularity

/-- The full independently specified drift stays beside the literal diagonal main term. -/
def PairedPrimeQuadratureTailLowerBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
    diagonalMainCoefficient A * A + negativeTimeMean A - criticalContinuousMoment A - C ≤
      primeLogSum (2 * A) (pairedTailTest A)

private theorem window_zero_eq_sum (b : ℝ) (F : ℝ → ℝ) :
    primeLogWindow 0 b F = primeLogSum b F := by
  have hz : primeLogInventory 0 = ∅ := by
    apply Finset.eq_empty_of_forall_notMem
    intro p hp
    obtain ⟨hI, hprime⟩ := Finset.mem_filter.mp hp
    have hple := (Finset.mem_Ioc.mp hI).2
    simp only [Real.exp_zero, Nat.floor_one] at hple
    have := hprime.two_le
    omega
  simp only [primeLogWindow, primeLogSum, hz, Finset.sum_empty, sub_zero]

/-- The source survival remains at least one to the left of zero. -/
theorem negativeSurvival_ge_one_left {A u : ℝ} (hA : 1 ≤ A) (hu : u ≤ 0) :
    1 ≤ negativeSurvival A u := by
  have h := (negativeSurvival_antitone hA) hu
  simpa only [negativeSurvival_at_zero hA] using h

/-- A sustained left tail guards against falsely importing compact support from the source. -/
theorem pairedTailTest_ge_one_left {A u : ℝ} (hA : 1 ≤ A) (hu : u ≤ -(2 * A)) :
    1 ≤ pairedTailTest A u := by
  have hu0 : u ≤ 0 := by linarith
  have hc := sourceCorrelation_eq_zero_of_two_mul_le_abs A u
    (show 0 < A by linarith) (show 2 * A ≤ |u| by rw [abs_of_nonpos hu0]; linarith)
  rw [pairedTailTest, criticalPrimeTest, hc, mul_zero, neg_zero, zero_add]
  exact negativeSurvival_ge_one_left hA hu0

/-- The exact survival arithmetic correction is the already bounded negative mean. -/
theorem negativeSurvival_signed_work {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, primeLogError u * deriv (negativeSurvival A) u) =
      -negativeErrorMean A := by
  have hf : (fun u : ℝ => primeLogError u * deriv (negativeSurvival A) u) =
      (fun u : ℝ => (-1/negativeMass A) * (primeLogError u * negativeSlope A u)) := by
    funext u
    rw [(negativeSurvival_hasDerivAt hA u).deriv]
    ring
  rw [hf, intervalIntegral.integral_const_mul]
  unfold negativeErrorMean negativeSlopeWork
  ring

/-- Both closed source endpoints are kept before the actual zero endpoint error cancels. -/
theorem negativeSurvival_prime_sum_sub_mean {A : ℝ} (hA : 1 ≤ A) :
    primeLogSum (2 * A) (negativeSurvival A) - negativeTimeMean A = negativeErrorMean A := by
  have h := primeLogWindow_sub_integral 0 (2 * A) (by norm_num) (by linarith)
    (negativeSurvival A) (negativeSurvival_contDiff hA)
  rw [window_zero_eq_sum, negativeSurvival_integral_eq_timeMean hA,
    negativeSurvival_at_upper A, negativeSurvival_signed_work hA] at h
  simpa only [primeLogError, primeLogPrefix_zero, sub_self, zero_mul, mul_zero,
    sub_zero, zero_sub, neg_neg] using h

/-- Uniformity concerns the survival replacement only, not the signed tail quadrature. -/
theorem negativeSurvival_prime_error_uniformly_bounded :
    ∃ C : ℝ, 0 ≤ C ∧ ∀ A : ℝ, 1 ≤ A →
      |primeLogSum (2 * A) (negativeSurvival A) - negativeTimeMean A| ≤ C := by
  obtain ⟨C, hC0, hC⟩ := negativeErrorMean_uniformly_bounded
  refine ⟨C, hC0, ?_⟩
  intro A hA
  rw [negativeSurvival_prime_sum_sub_mean hA]
  exact hC A hA

/-- Linearity is over the same complete closed prime inventory; no source-sign atom is omitted. -/
theorem pairedTailTest_prime_sum_eq (A : ℝ) :
    primeLogSum (2 * A) (pairedTailTest A) =
      -primeLogSum (2 * A) (criticalPrimeTest A) +
        primeLogSum (2 * A) (negativeSurvival A) := by
  unfold primeLogSum pairedTailTest
  simp only [mul_add, mul_neg, Finset.sum_add_distrib, Finset.sum_neg_distrib]

/-- The complete paired contrast equals signed quadrature minus the full continuous drift. -/
theorem pairedErrorContrast_eq_prime_quadrature {A : ℝ} (hA : 1 ≤ A) :
    pairedErrorContrast A = primeLogSum (2 * A) (pairedTailTest A) -
      (negativeTimeMean A - criticalContinuousMoment A) := by
  rw [pairedTailTest_prime_sum_eq, criticalPrimeSum_eq_continuous_sub_work A hA,
    criticalSignedWork_eq_contrast_sub_mean hA]
  have hs := negativeSurvival_prime_sum_sub_mean hA
  linarith

/-- Actual Abel reconstruction retains all compensation before any estimate. -/
theorem pairedTailTest_signed_work {A : ℝ} (hA : 1 ≤ A) :
    (∫ u in 0..2 * A, primeLogError u * deriv (pairedTailTest A) u) =
      -pairedErrorContrast A := by
  have h := primeLogWindow_sub_integral 0 (2 * A) (by norm_num) (by linarith)
    (pairedTailTest A) (pairedTailTest_contDiff hA)
  rw [window_zero_eq_sum, pairedTailTest_integral_eq hA,
    pairedTailTest_at_zero hA, pairedTailTest_at_upper hA] at h
  simp only [zero_mul, zero_sub] at h
  rw [← pairedErrorContrast_eq_prime_quadrature hA] at h
  linarith

/-- The drift is positive for the actual source, so silently discarding it changes the target. -/
theorem pairedTailTest_drift_pos {A : ℝ} (hA : 1 ≤ A) :
    0 < negativeTimeMean A - criticalContinuousMoment A := by
  linarith [negativeTimeMean_nonneg hA, criticalContinuousMoment_lt_zero hA]

/-- This is an A-dependent budget, not a uniformly bounded continuous counterterm. -/
theorem pairedTailTest_drift_le_upper {A : ℝ} (hA : 1 ≤ A) :
    negativeTimeMean A - criticalContinuousMoment A ≤ 2 * A+2 := by
  have hm := negativeTimeMean_le_upper hA
  have hH := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).1
  linarith

/-- An exact equivalence preserves kappa*A and the complete drift; it constructs no witness. -/
theorem pairedQuadrature_tail_iff_pairedContrast_tail :
    PairedPrimeQuadratureTailLowerBound ↔ PairedContrastTailLowerBound := by
  constructor
  · rintro ⟨C, hC0, R, hR, h⟩
    refine ⟨C, hC0, R, hR, ?_⟩
    intro A hRA
    rw [pairedErrorContrast_eq_prime_quadrature (hR.trans hRA)]
    linarith [h A hRA]
  · rintro ⟨C, hC0, R, hR, h⟩
    refine ⟨C, hC0, R, hR, ?_⟩
    intro A hRA
    have hc := h A hRA
    rw [pairedErrorContrast_eq_prime_quadrature (hR.trans hRA)] at hc
    linarith

/-- This reaches the unchanged residual frontier conditionally, without proving either tail. -/
theorem mertens_residual_tail_iff_pairedQuadrature_tail :
    MertensResidualTailUpperBound ↔ PairedPrimeQuadratureTailLowerBound :=
  mertens_residual_tail_iff_pairedContrast_tail.trans
    pairedQuadrature_tail_iff_pairedContrast_tail.symm

/-- The existing independent remainder is unchanged; no fitted counterterm is introduced. -/
theorem mertensResidual_eq_paired_quadrature_remainder {A : ℝ} (hA : 1 ≤ A) :
    mertensResidual A =
      -(primeLogSum (2 * A) (pairedTailTest A) -
        (diagonalMainCoefficient A * A + negativeTimeMean A - criticalContinuousMoment A)) +
      pairedResidualRemainder A := by
  rw [mertensResidual_eq_contrast_remainder hA,
    pairedErrorContrast_eq_prime_quadrature hA]
  ring

/-- A bounded prefix error gives a variation budget containing the actual positive mass. -/
theorem pairedContrast_abs_le_variation_budget {A : ℝ} (hA : 1 ≤ A) (C : ℝ)
    (hC : ∀ u : ℝ, 0 ≤ u → |primeLogError u| ≤ C) :
    |pairedErrorContrast A| ≤ 2*C*positiveMass A := by
  have h := primeLogWindow_error_le 0 (2 * A) (by norm_num) (by linarith)
    (pairedTailTest A) (pairedTailTest_contDiff hA) C hC
  rw [window_zero_eq_sum, pairedTailTest_integral_eq hA,
    ← pairedErrorContrast_eq_prime_quadrature hA,
    pairedTailTest_at_zero hA, pairedTailTest_at_upper hA,
    pairedTailTest_variation_eq hA] at h
  simp only [abs_zero, zero_add] at h
  convert h using 1 <;> ring

end FormalResearch.RiemannHypothesis.SourcePairedTailQuadrature
