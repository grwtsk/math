-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.DifferentialCalculus
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CriticalPrimeTest.Variant72dfad66aa2001dae2ed59522d5d743cee927ee19e4a7c2c7ad65571ef0d470e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"72dfad66aa2001dae2ed59522d5d743cee927ee19e4a7c2c7ad65571ef0d470e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Calculus.SourceCorpus.CriticalPrimeTest.Variant72dfad66aa2001dae2ed59522d5d743cee927ee19e4a7c2c7ad65571ef0d470e","mathematical_subject":"Analysis.Calculus","original_sha256":"72dfad66aa2001dae2ed59522d5d743cee927ee19e4a7c2c7ad65571ef0d470e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/confluence/cycle4/first-prime-abel/draft-v2-source.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.RiemannHypothesis.SourcePrimeSquareMainTerm
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateMertensResidual

/-!
# The actual first-prime signed Abel interaction

The exponential factor remains inside the signed interaction. The continuous
positive half is restored through zero and uniformly bounded by the existing
pole moment. No uniform signed arithmetic witness is supplied.

AI attribution: developed with OpenAI Codex; Lean checks the proof terms.
-/


namespace GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.CriticalPrimeTest.Variant72dfad66aa2001dae2ed59522d5d743cee927ee19e4a7c2c7ad65571ef0d470e

set_option autoImplicit false

namespace FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel

open MeasureTheory
open scoped Interval
open WeightedPrimeAbel SourcePairing SourceDiagonalMainTerm
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation EstimateMertensResidual
open EstimateMobiusSplit EstimatePrimeSmoothDefect

noncomputable section

/-- The literal first-prime logarithmic test, including its critical exponential weight. -/
def criticalPrimeTest (A t : ℝ) : ℝ :=
  Real.exp (t / 2) * sourceCorrelation explicitSecondDerivative A t

/-- The full continuous positive half, including the interval below the first prime. -/
def criticalContinuousMoment (A : ℝ) : ℝ :=
  ∫ t in 0..2 * A, criticalPrimeTest A t

/-- The signed arithmetic Abel interaction; no absolute value is inserted. -/
def criticalSignedWork (A : ℝ) : ℝ :=
  ∫ t in 0..2 * A, primeLogError t * deriv (criticalPrimeTest A) t

/-- An open eventual lower target for the actual signed interaction. -/
def CriticalAbelTailLowerBound : Prop :=
  ∃ C : ℝ, 0 ≤ C ∧ ∃ R : ℝ, 1 ≤ R ∧
    ∀ A : ℝ, R ≤ A → diagonalMainCoefficient A * A - C ≤ criticalSignedWork A

theorem criticalPrimeTest_contDiff (A : ℝ) (hA : 0 < A) :
    ContDiff ℝ 1 (criticalPrimeTest A) := by
  exact ((contDiff_id.div_const 2).exp).mul
    (sourceCorrelation_contDiff A hA)

theorem criticalPrimeTest_deriv (A t : ℝ) (hA : 0 < A) :
    deriv (criticalPrimeTest A) t = Real.exp (t / 2) *
      (sourceCorrelation explicitSecondDerivative A t / 2 +
        deriv (sourceCorrelation explicitSecondDerivative A) t) := by
  have he := ((hasDerivAt_id t).div_const 2).exp
  have hc := ((contDiff_one_iff_deriv.mp (sourceCorrelation_contDiff A hA)).1 t).hasDerivAt
  have hd : HasDerivAt (criticalPrimeTest A) (Real.exp (t / 2) *
      (sourceCorrelation explicitSecondDerivative A t / 2 +
        deriv (sourceCorrelation explicitSecondDerivative A) t)) t :=
    (he.mul hc).congr_deriv (by dsimp only [id_eq]; ring)
  exact hd.deriv

theorem criticalPrimeTest_at_upper (A : ℝ) (hA : 0 < A) :
    criticalPrimeTest A (2 * A) = 0 := by
  rw [criticalPrimeTest, sourceCorrelation_upper_endpoint A hA, mul_zero]

theorem criticalPrimeTest_at_zero (A : ℝ) (hA : 1 ≤ A) :
    criticalPrimeTest A 0 = 1 := by
  simp only [criticalPrimeTest, zero_div, Real.exp_zero, one_mul]
  exact actual_correlation_at_zero A hA

/-- Restoring the full positive half is the existing pole cancellation. -/
theorem criticalContinuousMoment_eq_neg_negative (A : ℝ) (hA : 1 ≤ A) :
    criticalContinuousMoment A = -negativeSmoothMoment A := by
  have h := CorrelationMoment.pole_correlation_certificate A hA
  change criticalContinuousMoment A + negativeSmoothMoment A = 0 at h
  linarith

/-- The initial interval below log 2 is retained explicitly. -/
theorem criticalContinuousMoment_eq_smooth_add_initial (A : ℝ) (hA : 1 ≤ A) :
    criticalContinuousMoment A = smoothMoment A + initialPositiveMoment A := by
  rw [criticalContinuousMoment_eq_neg_negative A hA,
    smoothMoment_eq_neg_negative_sub_initial A hA]
  ring

/-- The continuous full half has an unconditional constant budget. -/
theorem criticalContinuousMoment_abs_le_two (A : ℝ) (hA : 1 ≤ A) :
    |criticalContinuousMoment A| ≤ 2 := by
  rw [criticalContinuousMoment_eq_neg_negative A hA, abs_neg]
  exact negativeSmoothMoment_abs_le A hA

/-- No prime atom lies at logarithmic zero. -/
theorem criticalPrimeWindow_eq_sum (A : ℝ) :
    primeLogWindow 0 (2 * A) (criticalPrimeTest A) =
      primeLogSum (2 * A) (criticalPrimeTest A) := by
  have hz : primeLogInventory 0 = ∅ := by
    apply Finset.eq_empty_of_forall_notMem
    intro p hp
    obtain ⟨hI, hprime⟩ := Finset.mem_filter.mp hp
    have hple := (Finset.mem_Ioc.mp hI).2
    simp only [Real.exp_zero, Nat.floor_one] at hple
    have := hprime.two_le
    omega
  simp only [primeLogWindow, primeLogSum, hz, Finset.sum_empty, sub_zero]

/-- Exact first-prime Abel reconstruction, with both error endpoints zero. -/
theorem criticalPrimeSum_eq_continuous_sub_work (A : ℝ) (hA : 1 ≤ A) :
    primeLogSum (2 * A) (criticalPrimeTest A) =
      criticalContinuousMoment A - criticalSignedWork A := by
  have h := primeLogWindow_sub_integral 0 (2 * A) (by norm_num) (by linarith)
    (criticalPrimeTest A) (criticalPrimeTest_contDiff A (by linarith))
  rw [criticalPrimeWindow_eq_sum, criticalPrimeTest_at_upper A (by linarith)] at h
  simp only [primeLogError, primeLogPrefix_zero, sub_self, zero_mul, mul_zero,
    zero_sub] at h
  change primeLogSum (2 * A) (criticalPrimeTest A) - criticalContinuousMoment A =
    -criticalSignedWork A at h
  linarith

/-- Upper control of the first-prime main-term sum is exactly a signed lower target.
This equivalence does not construct either witness. -/
theorem criticalPrimeTailUpper_iff_signed_lower :
    (∃ D : ℝ, 0 ≤ D ∧ ∃ R : ℝ, 1 ≤ R ∧ ∀ A : ℝ, R ≤ A →
      primeLogSum (2 * A) (criticalPrimeTest A) + diagonalMainCoefficient A * A ≤ D) ↔
      CriticalAbelTailLowerBound := by
  constructor
  · rintro ⟨D, hD, R, hR, h⟩
    refine ⟨D + 2, by linarith, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have hm := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).1
    have hp := h A hRA
    rw [criticalPrimeSum_eq_continuous_sub_work A hA] at hp
    linarith
  · rintro ⟨C, hC, R, hR, h⟩
    refine ⟨C + 2, by linarith, R, hR, ?_⟩
    intro A hRA
    have hA := hR.trans hRA
    have hm := (abs_le.mp (criticalContinuousMoment_abs_le_two A hA)).2
    rw [criticalPrimeSum_eq_continuous_sub_work A hA]
    linarith [h A hRA]

end
end FormalResearch.RiemannHypothesis.SourceFirstPrimeAbel
