-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.RealAnalysis.Integration
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.RealAnalysis.Integration.MangoldtLogSum.Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.Integration.SourceCorpus.MangoldtLogSum.Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83","mathematical_subject":"Analysis.Integration","original_sha256":"3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/cache-source-audit/source/3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimatePrimePowerSectors
import FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.EstimateActualSourceKernelBound
import Zeta23.Chebyshev

/-!
# Unconditional removal of the actual even prime-power sector

Mertens' first theorem controls the complete von-Mangoldt-over-n sum. The
source-native finite-step Abel identity retains its closed upper atom and
uses the zero value at one. This is distinct from the unit Möbius atom.
-/


namespace GRWTSK.Analysis.RealAnalysis.Integration.MangoldtLogSum.Variant3308b9b8923334974cd187e33947dfb2c9b76e26aead66808beb95bd22f3cc83

set_option autoImplicit false

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
namespace EstimateEvenPrimePowers

open MeasureTheory Set
open FormalResearch.RiemannHypothesis.SourcePairing
open Realization CorrelationRegularity PrimePowerDescent EstimatePrimePowerSectors

noncomputable section

/-- The actual von Mangoldt logarithmic sum, with its closed finite endpoint. -/
def mangoldtLogSum (x : ℝ) : ℝ :=
  ∑ n ∈ Finset.Ioc 0 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n / (n : ℝ)

/-- The actual arithmetic discrepancy supplied by Mertens' first theorem. -/
def mangoldtLogError (x : ℝ) : ℝ := mangoldtLogSum x - Real.log x

/-- The atom at one vanishes, so the sum starts at two without an endpoint correction. -/
theorem mangoldtLogSum_eq_Icc_two (x : ℝ) :
    mangoldtLogSum x =
      ∑ n ∈ Finset.Icc 2 ⌊x⌋₊, ArithmeticFunction.vonMangoldt n / (n : ℝ) := by
  unfold mangoldtLogSum
  symm
  apply Finset.sum_subset
  · intro n hn
    simp only [Finset.mem_Icc, Finset.mem_Ioc] at hn ⊢
    omega
  · intro n hn hnot
    have hn1 : n = 1 := by
      simp only [Finset.mem_Icc, Finset.mem_Ioc] at hn hnot
      omega
    subst n
    simp

/-- Unlike the weighted Möbius primitive, this primitive is zero at one. -/
theorem mangoldtLogSum_one : mangoldtLogSum 1 = 0 := by
  rw [mangoldtLogSum_eq_Icc_two]
  norm_num

/-- The exact installed Mertens theorem is used only for its von Mangoldt sum. -/
theorem mangoldtLogError_abs_le (x : ℝ) (hx : 1 ≤ x) :
    |mangoldtLogError x| ≤ Real.log 4 + 4 :=
  Zeta23.Cheb.mertensFirst hx

/-- Every even prime-power exponent is removed with a linear all-real bound. -/
theorem evenPowerMoment_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |evenPowerMoment A| ≤ A + Real.log 4 + 4 := by
  have hA0 : 0 ≤ A := by linarith
  have hm := (abs_le.mp (mangoldtLogError_abs_le (Real.exp A) (Real.one_le_exp hA0))).2
  rw [mangoldtLogError, Real.log_exp] at hm
  have hb : |evenPowerMoment A| ≤ mangoldtLogSum (Real.exp A) := by
    rw [evenPowerMoment, mangoldtLogSum_eq_Icc_two]
    calc
      _ ≤ ∑ n ∈ primePowerInventory A,
          |ArithmeticFunction.vonMangoldt n / (n : ℝ) *
            sourceCorrelation explicitSecondDerivative A (2 * Real.log n)| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ n ∈ primePowerInventory A, ArithmeticFunction.vonMangoldt n / (n : ℝ) := by
        apply Finset.sum_le_sum
        intro n hn
        have hw : 0 ≤ ArithmeticFunction.vonMangoldt n / (n : ℝ) :=
          div_nonneg ArithmeticFunction.vonMangoldt_nonneg (Nat.cast_nonneg n)
        rw [abs_mul, abs_of_nonneg hw]
        simpa only [mul_one] using mul_le_mul_of_nonneg_left
          (EstimateCorrelation.actual_correlation_abs_le_one A (2 * Real.log n) hA) hw
      _ = _ := rfl
  linarith

/-- A fixed source inventory gives the exact closed logarithmic step representation. -/
theorem mangoldtLogSum_eq_finite_steps (A t : ℝ) (ht : t ≤ 2 * A) :
    mangoldtLogSum (Real.exp (t / 2)) =
      ∑ n ∈ primePowerInventory A,
        if 2 * Real.log n ≤ t then ArithmeticFunction.vonMangoldt n / (n : ℝ) else 0 := by
  rw [mangoldtLogSum_eq_Icc_two,
    ← inventory_filter_log A (t / 2) (by linarith), Finset.sum_filter]
  apply Finset.sum_congr rfl
  intro n hn
  have he : Real.log n ≤ t / 2 ↔ 2 * Real.log n ≤ t := by constructor <;> intro h <;> linarith
  simp only [he]

/-- Multiplication preserves the exact finite step formula. -/
theorem mangoldtLogSum_mul_eq_steps (A t y : ℝ) (ht : t ≤ 2 * A) :
    mangoldtLogSum (Real.exp (t / 2)) * y =
      ∑ n ∈ primePowerInventory A, (ArithmeticFunction.vonMangoldt n / (n : ℝ)) *
        (if 2 * Real.log n ≤ t then y else 0) := by
  rw [mangoldtLogSum_eq_finite_steps A t ht, Finset.sum_mul]
  apply Finset.sum_congr rfl
  intro n hn
  split_ifs <;> simp

/-- The actual logarithmic primitive times the source derivative is integrable. -/
theorem mangoldtLogSum_mul_deriv_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ mangoldtLogSum (Real.exp (t / 2)) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) volume 0 (2 * A) := by
  have hA0 : 0 ≤ 2 * A := by linarith
  have hC := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hi : IntervalIntegrable (∑ n ∈ primePowerInventory A, fun t : ℝ ↦
      (ArithmeticFunction.vonMangoldt n / (n : ℝ)) *
        (if 2 * Real.log n ≤ t then deriv (sourceCorrelation explicitSecondDerivative A) t else 0))
      volume 0 (2 * A) :=
    IntervalIntegrable.sum (primePowerInventory A) (fun n _ ↦
      (intervalIntegrable_closed_step 0 (2 * A) (2 * Real.log n) _
        (hC.continuous_deriv_one.intervalIntegrable _ _)).const_mul _)
  have heq : (∑ n ∈ primePowerInventory A, fun t : ℝ ↦
      (ArithmeticFunction.vonMangoldt n / (n : ℝ)) *
        (if 2 * Real.log n ≤ t then
          deriv (sourceCorrelation explicitSecondDerivative A) t else 0)) =
      (fun t ↦ ∑ n ∈ primePowerInventory A, (ArithmeticFunction.vonMangoldt n / (n : ℝ)) *
        (if 2 * Real.log n ≤ t then
          deriv (sourceCorrelation explicitSecondDerivative A) t else 0)) := by
    funext t
    simp only [Finset.sum_apply]
  rw [heq] at hi
  apply hi.congr
  intro t ht
  exact (mangoldtLogSum_mul_eq_steps A t _ ((uIoc_of_le hA0 ▸ ht).2)).symm

/-- The closed upper atom is retained and then vanishes by the actual source endpoint. -/
theorem evenPowerMoment_eq_logSum_integral (A : ℝ) (hA : 1 ≤ A) :
    evenPowerMoment A =
      -(∫ t in (0 : ℝ)..(2 * A), mangoldtLogSum (Real.exp (t / 2)) *
        deriv (sourceCorrelation explicitSecondDerivative A) t) := by
  have hA0 : 0 ≤ 2 * A := by linarith
  have hC := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have he : (∫ t in (0 : ℝ)..(2 * A), mangoldtLogSum (Real.exp (t / 2)) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) =
      ∑ n ∈ primePowerInventory A, (ArithmeticFunction.vonMangoldt n / (n : ℝ)) *
        (sourceCorrelation explicitSecondDerivative A (2 * A) -
          sourceCorrelation explicitSecondDerivative A (2 * Real.log n)) := by
    calc
      _ = ∫ t in (0 : ℝ)..(2 * A), ∑ n ∈ primePowerInventory A,
          (ArithmeticFunction.vonMangoldt n / (n : ℝ)) *
            (if 2 * Real.log n ≤ t then
              deriv (sourceCorrelation explicitSecondDerivative A) t else 0) := by
        apply intervalIntegral.integral_congr
        intro t ht
        exact mangoldtLogSum_mul_eq_steps A t _ ((uIcc_of_le hA0 ▸ ht).2)
      _ = _ := integral_finite_steps_deriv 0 (2 * A) (primePowerInventory A)
        (fun n ↦ 2 * Real.log n) (fun n ↦ ArithmeticFunction.vonMangoldt n / (n : ℝ))
        (by
          intro n hn
          have hb := inventory_log_bounds A n hn
          have hlog : 0 ≤ Real.log (n : ℝ) := Real.log_nonneg (by
            exact_mod_cast (show 1 ≤ n from le_trans (by norm_num) (Finset.mem_Icc.mp hn).1))
          constructor <;> linarith)
        _ hC
  rw [he, sourceCorrelation_upper_endpoint A (by linarith)]
  simp only [zero_sub, mul_neg, Finset.sum_neg_distrib, neg_neg, evenPowerMoment]

/-- The complete Mertens discrepancy term is integrable on the actual source interval. -/
theorem mangoldtLogError_mul_deriv_intervalIntegrable (A : ℝ) (hA : 1 ≤ A) :
    IntervalIntegrable (fun t ↦ mangoldtLogError (Real.exp (t / 2)) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) volume 0 (2 * A) := by
  have hC := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hl : IntervalIntegrable (fun t ↦ (t / 2) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) volume 0 (2 * A) :=
    ((continuous_id.div_const 2).mul hC.continuous_deriv_one).intervalIntegrable _ _
  have he : (fun t ↦ mangoldtLogError (Real.exp (t / 2)) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) =
      (fun t ↦ mangoldtLogSum (Real.exp (t / 2)) *
        deriv (sourceCorrelation explicitSecondDerivative A) t) -
      (fun t ↦ (t / 2) * deriv (sourceCorrelation explicitSecondDerivative A) t) := by
    funext t
    simp only [mangoldtLogError, Real.log_exp, Pi.sub_apply, sub_mul]
  rw [he]
  exact (mangoldtLogSum_mul_deriv_intervalIntegrable A hA).sub hl

/-- Source-native Abel identity, with the exact half-factor from `log(exp(t/2))`. -/
theorem evenPowerMoment_eq_main_sub_error (A : ℝ) (hA : 1 ≤ A) :
    evenPowerMoment A =
      (1 / 2 : ℝ) * (∫ t in (0 : ℝ)..(2 * A), sourceCorrelation explicitSecondDerivative A t) -
      ∫ t in (0 : ℝ)..(2 * A), mangoldtLogError (Real.exp (t / 2)) *
        deriv (sourceCorrelation explicitSecondDerivative A) t := by
  have hC := sourceCorrelation_contDiff A (by linarith : 0 < A)
  have hl : IntervalIntegrable (fun t ↦ (t / 2) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) volume 0 (2 * A) :=
    ((continuous_id.div_const 2).mul hC.continuous_deriv_one).intervalIntegrable _ _
  have hparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul_of_hasDerivAt
    (continuous_id.div_const 2).continuousOn hC.continuous.continuousOn
    (fun t _ ↦ (hasDerivAt_id t).div_const 2)
    (fun t _ ↦ ((contDiff_one_iff_deriv.mp hC).1 t).hasDerivAt)
    (continuous_const.intervalIntegrable (0 : ℝ) (2 * A))
    (hC.continuous_deriv_one.intervalIntegrable (0 : ℝ) (2 * A))
  simp only [id_eq, sourceCorrelation_upper_endpoint A (by linarith), mul_zero, zero_div,
    zero_mul, sub_zero, zero_sub, intervalIntegral.integral_const_mul] at hparts
  have he : (fun t ↦ mangoldtLogError (Real.exp (t / 2)) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) =
      (fun t ↦ mangoldtLogSum (Real.exp (t / 2)) *
        deriv (sourceCorrelation explicitSecondDerivative A) t) -
      (fun t ↦ (t / 2) * deriv (sourceCorrelation explicitSecondDerivative A) t) := by
    funext t
    simp only [mangoldtLogError, Real.log_exp, Pi.sub_apply, sub_mul]
  rw [he]
  simp only [Pi.sub_def]
  rw [intervalIntegral.integral_sub (mangoldtLogSum_mul_deriv_intervalIntegrable A hA) hl,
    evenPowerMoment_eq_logSum_integral A hA]
  linarith

/-- The actual discrepancy integral is bounded by Mertens' constant times the
proved source variation bound ten, uniformly over every real scale. -/
theorem evenPowerMoment_error_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |∫ t in (0 : ℝ)..(2 * A), mangoldtLogError (Real.exp (t / 2)) *
        deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 10 * (Real.log 4 + 4) := by
  have hA0 : 0 < A := by linarith
  have hlen : 0 ≤ 2 * A := by positivity
  have hK : 0 ≤ Real.log 4 + 4 := by positivity
  have hb := intervalIntegral.norm_integral_le_of_norm_le_const
    (a := (0 : ℝ)) (b := 2 * A) (C := (Real.log 4 + 4) * (5 / A))
    (f := fun t ↦ mangoldtLogError (Real.exp (t / 2)) *
      deriv (sourceCorrelation explicitSecondDerivative A) t) (fun t ht ↦ ?_)
  · simp only [Real.norm_eq_abs, sub_zero, abs_of_nonneg hlen] at hb
    have he : (Real.log 4 + 4) * (5 / A) * (2 * A) = 10 * (Real.log 4 + 4) := by
      field_simp
      ring
    simpa only [he] using hb
  · rw [uIoc_of_le hlen] at ht
    rw [Real.norm_eq_abs, abs_mul]
    exact mul_le_mul
      (mangoldtLogError_abs_le _ (Real.one_le_exp (by linarith [ht.1] : 0 ≤ t / 2)))
      (EstimateActualSourceKernelBound.sourceCorrelation_deriv_abs_le A t hA)
      (abs_nonneg _) hK

/-- The half-integral main term has a genuinely uniform arithmetic error. -/
theorem evenPowerMoment_sub_half_integral_abs_le (A : ℝ) (hA : 1 ≤ A) :
    |evenPowerMoment A - (1 / 2 : ℝ) *
      (∫ t in (0 : ℝ)..(2 * A), sourceCorrelation explicitSecondDerivative A t)| ≤
      10 * (Real.log 4 + 4) := by
  rw [evenPowerMoment_eq_main_sub_error A hA]
  simpa only [sub_sub_cancel_left, abs_neg] using evenPowerMoment_error_abs_le A hA

end
end EstimateEvenPrimePowers
end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
