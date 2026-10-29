import FiveCesaroKernelBudget
import SourceCancelledFactorialDecay

/-!
The newly recovered actual curvature coefficient five improves the genuine
factorial cancellation budget by a factor of four. Only the analytic sector
is estimated; the full signed arithmetic pairing remains an open obligation.
Research direction: grwtsk contributors. Formal construction: OpenAI Codex.
-/

set_option autoImplicit false
namespace FormalResearch.RiemannHypothesis.SourceFiveCancelledFactorialBudget
open MeasureTheory Set
open scoped BigOperators
open SourceLeadingFullKappaReduction SourceCorrelationCurvature
open SourceCancelledFactorialSectorBudget SourceCancelledFactorialDecay
open SourceActualFactorialTailDecomposition SourceActualFactorialJointCancellation
open SourcePairing SourcePositiveSampling SourceStrictComplementaryLocalization
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateVaughanSource
noncomputable section

/-- The actual first derivative uses the recovered curvature coefficient five. -/
theorem actualCorrelation_first_abs_le_five {A : ℝ} (hA : 91 ≤ A) (t : ℝ) :
    |deriv (sourceCorrelation explicitSecondDerivative A) t| ≤ 5 / A ^ 2 * |t| := by
  have hp : 0 < A := by linarith
  have he := Convex.norm_image_sub_le_of_norm_deriv_le
    (s := Set.univ) (f := deriv (sourceCorrelation explicitSecondDerivative A))
    (fun x _ => (sourceCorrelation_deriv_contDiff hp).differentiable (by norm_num) x)
    (fun x _ => by simpa only [Real.norm_eq_abs] using
      RH16FiveCesaro.actualCorrelation_second_abs_le_five hA x)
    convex_univ (mem_univ (0 : ℝ)) (mem_univ t)
  simpa only [Real.norm_eq_abs, (actualCorrelation_odd_jets_zero hp).1, sub_zero] using he

/-- The actual normalized correlation deviates quadratically from its genuine unit value. -/
theorem actualCorrelation_sub_one_abs_le_five {A : ℝ} (hA : 91 ≤ A) (t : ℝ) :
    |sourceCorrelation explicitSecondDerivative A t - 1| ≤ (5 / 2 : ℝ) / A ^ 2 * t ^ 2 := by
  have hp : 0 < A := by linarith
  by_cases ht : t = 0
  · subst t
    simp [EstimateCorrelation.actual_correlation_at_zero A (by linarith : 1 ≤ A)]
  have hf := sourceCorrelation_contDiff_two hp
  obtain ⟨z, _, hz⟩ := taylor_mean_remainder_lagrange_iteratedDeriv
    (n := 1) (show (0 : ℝ) ≠ t from Ne.symm ht) hf.contDiffOn
  have hT : taylorWithinEval (sourceCorrelation explicitSecondDerivative A) 1
      (uIcc 0 t) 0 t = 1 := by
    rw [show (1 : ℕ) = 0 + 1 from rfl, taylorWithinEval_succ]
    simp only [taylor_within_zero_eval, Nat.cast_zero, zero_add, Nat.factorial_zero,
      Nat.cast_one, mul_one, inv_one, one_mul, pow_one, smul_eq_mul,
      iteratedDerivWithin_one, sub_zero]
    rw [((hf.differentiable (by norm_num)) 0).derivWithin
      ((uniqueDiffOn_uIcc (show (0 : ℝ) ≠ t from Ne.symm ht)) 0 left_mem_uIcc),
      (actualCorrelation_odd_jets_zero hp).1,
      EstimateCorrelation.actual_correlation_at_zero A (by linarith : 1 ≤ A)]
    simp
  rw [hT] at hz
  simp only [iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial_succ,
    Nat.factorial_zero, Nat.cast_mul, mul_one, sub_zero] at hz
  have hE : sourceCorrelation explicitSecondDerivative A t - 1 =
      deriv (deriv (sourceCorrelation explicitSecondDerivative A)) z * t ^ 2 / 2 := by
    linarith [hz]
  rw [hE, abs_div, abs_mul, abs_of_nonneg (sq_nonneg t),
    abs_of_pos (by norm_num : (0 : ℝ) < 2)]
  calc
    _ ≤ (5 / A ^ 2) * t ^ 2 / 2 := by
      gcongr
      exact RH16FiveCesaro.actualCorrelation_second_abs_le_five hA z
    _ = _ := by ring


/-- Independently specified improved closed-floor factorial error budget. -/
def fiveCancelledFactorialBudget (A : ℝ) : ℝ :=
  (30 * Real.log (vaughanCutoff A : ℝ) ^ 2 +
    320 * Real.log (vaughanCutoff A : ℝ) + 960) / A

/-- The true signed cancellation coefficient retains its derivative with coefficient five. -/
theorem actual_cancelled_factorial_coefficient_quarter_abs_le
    (A t : ℝ) (hA : 91 ≤ A) :
    |(1 - sourceCorrelation explicitSecondDerivative A t) / 2 +
      deriv (sourceCorrelation explicitSecondDerivative A) t| ≤
        (5 * t ^ 2 + 20 * |t|) / (4 * A ^ 2) := by
  have hc := actualCorrelation_sub_one_abs_le_five hA t
  have hd := actualCorrelation_first_abs_le_five hA t
  calc
    _ ≤ |(1 - sourceCorrelation explicitSecondDerivative A t) / 2| +
        |deriv (sourceCorrelation explicitSecondDerivative A) t| := abs_add_le _ _
    _ ≤ ((5 / 2 : ℝ) / A ^ 2 * t ^ 2) / 2 + 5 / A ^ 2 * |t| := by
      rw [abs_div, abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2), abs_sub_comm]
      gcongr
    _ = _ := by ring

private theorem actualFactorial_sum_poly_le (A x : ℝ) :
    |shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)| *
      (5 * Real.log x ^ 2 + 20 * |Real.log x|) ≤ factorialCancellationSumMajorant A x := by
  unfold shortFactorialDefect
  rw [Finset.sum_mul]
  have h := Finset.abs_sum_le_sum_abs
    (fun d => Realization.EstimateMobiusSplit.realMoebius d *
      factorialLogDefect (x / (d : ℝ)) * x ^ (-(3 : ℝ) / 2))
    (Finset.Icc 1 (vaughanCutoff A))
  calc
    _ ≤ (∑ d ∈ Finset.Icc 1 (vaughanCutoff A),
        |Realization.EstimateMobiusSplit.realMoebius d * factorialLogDefect (x / (d : ℝ)) *
          x ^ (-(3 : ℝ) / 2)|) * (5 * Real.log x ^ 2 + 20 * |Real.log x|) :=
      mul_le_mul_of_nonneg_right h (by positivity)
    _ = _ := by
      rw [Finset.sum_mul]
      unfold factorialCancellationSumMajorant factorialCancellationRowMajorant
      apply Finset.sum_congr rfl
      intro d _
      simp_rw [abs_mul]
      ring

/-- The complete actual density is bounded using the quarter-sized nonnegative majorant. -/
theorem actual_cancelled_factorial_density_quarter_abs_le (A x : ℝ)
    (hA : 91 ≤ A) (hx : 0 < x) :
    |shortFactorialDefect (vaughanCutoff A) x *
      ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)| ≤
        factorialCancellationSumMajorant A x / (4 * A ^ 2) := by
  rw [actual_factorial_cancelled_kernel A x (by linarith) hx, ← mul_assoc, abs_mul]
  calc
    _ ≤ |shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)| *
        ((5 * Real.log x ^ 2 + 20 * |Real.log x|) / (4 * A ^ 2)) :=
      mul_le_mul_of_nonneg_left (actual_cancelled_factorial_coefficient_quarter_abs_le A _ hA)
        (abs_nonneg _)
    _ = (|shortFactorialDefect (vaughanCutoff A) x * x ^ (-(3 : ℝ) / 2)| *
        (5 * Real.log x ^ 2 + 20 * |Real.log x|)) / (4 * A ^ 2) := by ring
    _ ≤ _ := div_le_div_of_nonneg_right (actualFactorial_sum_poly_le A x) (by positivity)

/-- Every measurable portion of the true positive axis retains the improved absolute budget. -/
theorem actual_cancelled_factorial_restricted_abs_le {s : Set ℝ}
    (hs : MeasurableSet s) (hs0 : s ⊆ Ioi (0 : ℝ)) (A : ℝ) (hA : 91 ≤ A) :
    |∫ x in s, shortFactorialDefect (vaughanCutoff A) x *
      ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)| ≤
        fiveCancelledFactorialBudget A := by
  have hi := actual_cancelled_factorial_density_integrable A hA
  have hm : IntegrableOn (fun x => factorialCancellationSumMajorant A x / (4 * A ^ 2))
      (Ioi (0 : ℝ)) :=
    (factorialCancellationSumMajorant_integrable A).div_const (4 * A ^ 2)
  have hmono := setIntegral_mono_on (hi.mono_set hs0).abs (hm.mono_set hs0) hs
    (fun x hx => actual_cancelled_factorial_density_quarter_abs_le A x hA (hs0 hx))
  have hpos (x : ℝ) : 0 ≤ factorialCancellationSumMajorant A x := by
    unfold factorialCancellationSumMajorant factorialCancellationRowMajorant
    positivity
  have hext := setIntegral_mono_set hm (by
    filter_upwards with x
    exact div_nonneg (hpos x) (by positivity)) (ae_of_all _ (fun x hx => hs0 hx))
  calc
    _ ≤ ∫ x in s, |shortFactorialDefect (vaughanCutoff A) x *
        ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)| :=
      abs_integral_le_integral_abs
    _ ≤ ∫ x in s, factorialCancellationSumMajorant A x / (4 * A ^ 2) := hmono
    _ ≤ ∫ x in Ioi (0 : ℝ), factorialCancellationSumMajorant A x / (4 * A ^ 2) := hext
    _ = (∫ x in Ioi (0 : ℝ), factorialCancellationSumMajorant A x) / (4 * A ^ 2) := by
      rw [integral_div]
    _ ≤ (2 * A * (60 * Real.log (vaughanCutoff A : ℝ) ^ 2 +
        640 * Real.log (vaughanCutoff A : ℝ) + 1920)) / (4 * A ^ 2) :=
      div_le_div_of_nonneg_right (factorialCancellationSumMajorant_integral_le A (by linarith))
        (by positivity)
    _ = _ := by unfold fiveCancelledFactorialBudget; field_simp; ring

/-- The full positive-axis actual factorial work retains the improved budget. -/
theorem actual_cancelled_factorial_full_abs_le_five (A : ℝ) (hA : 91 ≤ A) :
    |actualCancelledFactorialWork A| ≤ fiveCancelledFactorialBudget A := by
  exact actual_cancelled_factorial_restricted_abs_le measurableSet_Ioi (fun _ hx => hx) A hA

/-- The original closed-floor tail retains the same improved budget. -/
theorem actual_cancelled_factorial_tail_abs_le_five (A : ℝ) (hA : 91 ≤ A) :
    |∫ x in Ioc (vaughanCutoff A : ℝ) (Real.exp (2 * A)),
      shortFactorialDefect (vaughanCutoff A) x *
        ((1 / 2 : ℝ) * x ^ (-(3 : ℝ) / 2) + deriv (plainProfile A 1) x)| ≤
        fiveCancelledFactorialBudget A := by
  apply actual_cancelled_factorial_restricted_abs_le measurableSet_Ioc _ A hA
  intro x hx
  have hu := (actual_cutoff_order A (by linarith : 1 ≤ A)).1
  exact lt_trans (by linarith : (0 : ℝ) < vaughanCutoff A) hx.1

end
end FormalResearch.RiemannHypothesis.SourceFiveCancelledFactorialBudget
