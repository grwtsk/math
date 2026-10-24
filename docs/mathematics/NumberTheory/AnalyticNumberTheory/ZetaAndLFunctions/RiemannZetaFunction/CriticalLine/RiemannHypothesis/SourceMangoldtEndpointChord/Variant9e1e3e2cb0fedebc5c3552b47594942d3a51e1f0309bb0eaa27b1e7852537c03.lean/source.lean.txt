import FormalResearch.RiemannHypothesis.SourceMangoldtAbel

/-!
# Actual endpoint-chord replacement of the signed Mangoldt work

The chord uses only the actual closed-prefix discrepancy at its two endpoints.
The remaining centered work is retained, without an eventual signed estimate.
Research candidate; local kernel and accepted-main statuses are separate.

AI attribution: constructed with OpenAI Codex from the actual source APIs.
-/

set_option autoImplicit false
noncomputable section
namespace FormalResearch.RiemannHypothesis.SourceMangoldtEndpointChord

open MeasureTheory Set SourceMangoldtAbel SourceFirstPrimeAbel

/-- Removing the literal endpoint chord changes the actual work by at most Cm/A. -/
theorem criticalMangoldtWork_endpoint_chord_replacement_abs_le
    {A : ℝ} (hA : 1 ≤ A) :
    |criticalMangoldtWork A -
      ∫ t in 0..2 * A,
        (mangoldtLogError t -
          (mangoldtLogError (2 * A) / (2 * A)) * t) *
            deriv (criticalPrimeTest A) t| ≤
      (Real.log 4 + 4 + Real.log 2) / A := by
  have hA0 : 0 < A := lt_of_lt_of_le zero_lt_one hA
  have hL : 0 < 2 * A := by positivity
  let c := mangoldtLogError (2 * A) / (2 * A)
  have hg := criticalPrimeTest_contDiff A hA0
  have hit : IntervalIntegrable (fun t : ℝ => t * deriv (criticalPrimeTest A) t)
      volume 0 (2 * A) :=
    (continuous_id.mul hg.continuous_deriv_one).intervalIntegrable 0 (2 * A)
  have hparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun t : ℝ => t) (u' := fun _ : ℝ => (1 : ℝ))
    (v := criticalPrimeTest A) (v' := deriv (criticalPrimeTest A))
    (fun t _ => hasDerivAt_id t)
    (fun t _ => (hg.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable 0 (2 * A))
    (hg.continuous_deriv_one.intervalIntegrable 0 (2 * A))
  have hlinear : (∫ t in 0..2 * A, t * deriv (criticalPrimeTest A) t) =
      -criticalContinuousMoment A := by
    simpa only [criticalPrimeTest_at_upper A hA0, mul_zero, zero_mul,
      sub_zero, zero_sub, one_mul, criticalContinuousMoment] using hparts
  have hraw := criticalMangoldtWork_intervalIntegrable A hA0
  have hsplit (t : ℝ) :
      (mangoldtLogError t - c * t) * deriv (criticalPrimeTest A) t =
        mangoldtLogError t * deriv (criticalPrimeTest A) t -
          c * (t * deriv (criticalPrimeTest A) t) := by ring
  have hchord : (∫ t in 0..2 * A,
      (mangoldtLogError t - c * t) * deriv (criticalPrimeTest A) t) =
      criticalMangoldtWork A + c * criticalContinuousMoment A := by
    simp_rw [hsplit]
    rw [intervalIntegral.integral_sub hraw (hit.const_mul c),
      intervalIntegral.integral_const_mul, hlinear]
    change criticalMangoldtWork A - c * (-criticalContinuousMoment A) = _
    ring
  change |criticalMangoldtWork A - (∫ t in 0..2 * A,
    (mangoldtLogError t - c * t) * deriv (criticalPrimeTest A) t)| ≤ _
  rw [hchord]
  have hdifference : criticalMangoldtWork A -
      (criticalMangoldtWork A + c * criticalContinuousMoment A) =
      -(c * criticalContinuousMoment A) := by ring
  rw [hdifference, abs_neg, abs_mul]
  have hC : 0 ≤ Real.log 4 + 4 + Real.log 2 := by
    have h4 : 0 ≤ Real.log (4 : ℝ) := Real.log_nonneg (by norm_num)
    have h2 : 0 ≤ Real.log (2 : ℝ) := Real.log_nonneg (by norm_num)
    linarith
  have hc : |c| ≤ (Real.log 4 + 4 + Real.log 2) / (2 * A) := by
    dsimp only [c]
    rw [abs_div, abs_of_pos hL]
    exact div_le_div_of_nonneg_right (mangoldtLogError_abs_le (2 * A) hL.le) hL.le
  calc
    _ ≤ ((Real.log 4 + 4 + Real.log 2) / (2 * A)) * 2 :=
      mul_le_mul hc (criticalContinuousMoment_abs_le_two A hA)
        (abs_nonneg _) (div_nonneg hC hL.le)
    _ = _ := by field_simp

end FormalResearch.RiemannHypothesis.SourceMangoldtEndpointChord
