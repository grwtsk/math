import FormalResearch.RiemannHypothesis.Conversation.ActualLogarithmicSampling
import FormalResearch.RiemannHypothesis.Conversation.ActualSourceLaplaceSign

/-!
# Exact positive-domain logarithmic integral and bilateral source moment

The exponential change of variables uses the actual logarithmic source only
on its positive domain. The full compact correlation and its negative half
remain present; no one-sided moment is substituted for a bilateral moment.
Human complete-window and square/sixth census direction: grwtsk contributors.
Local substitution and retained-half moment consumer: OpenAI Codex. The
qualified source correlation and earlier moment infrastructure retain their
formal origins. No discrete census asymptotic is asserted by this identity.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualLogarithmicIntegral
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity CorrelationMoment EstimateCorrelation
open ActualLogarithmicSampling ActualSourceLaplaceMoment MeasureTheory Set
noncomputable section
local notation "C" => sourceCorrelation explicitSecondDerivative

theorem actual_logarithmic_integral_exact {A r : ℝ} (hA : 1 ≤ A) (hr : 0 < r) :
    (∫ x in (1 : ℝ)..Real.exp (2 * A / r), logarithmicSample A r x) =
      (1 / r) * (∫ t in (0 : ℝ)..2 * A, Real.exp (t / r) * C A t) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ ↦ Real.exp (t / r))
      (Real.exp (t / r) / r) t := by
    convert ((hasDerivAt_id t).div_const r).exp using 1 <;> simp [div_eq_mul_inv]
  have hg : ContinuousOn (logarithmicSample A r) (Ioi 0) :=
    fun x hx ↦ (actual_logarithmic_hasDerivAt hA r hx).continuousAt.continuousWithinAt
  have h := intervalIntegral.integral_comp_mul_deriv'
    (a := (0 : ℝ)) (b := 2 * A) (fun t _ ↦ hd t)
    ((Real.continuous_exp.comp (continuous_id.div_const r)).div_const r).continuousOn
    (hg.mono (by rintro _ ⟨t, _, rfl⟩; exact Real.exp_pos _))
  have heq : (fun t : ℝ ↦ (logarithmicSample A r ∘ fun t ↦ Real.exp (t / r)) t *
      (Real.exp (t / r) / r)) =
      fun t ↦ (1 / r) * (Real.exp (t / r) * C A t) := by
    funext t
    simp only [Function.comp_apply, logarithmicSample, Real.log_exp]
    rw [mul_div_cancel₀ t hr.ne']
    ring
  rw [heq, intervalIntegral.integral_const_mul] at h
  simpa only [zero_div, Real.exp_zero] using h.symm

theorem actual_full_moment_retains_negative_half {A : ℝ} (hA : 1 ≤ A) (σ : ℝ) :
    (testMoment A σ) ^ 2 =
      (∫ t in (0 : ℝ)..2 * A, Real.exp (σ * t) * C A t) +
      (∫ t in (0 : ℝ)..2 * A, Real.exp ((-σ) * t) * C A t) := by
  have hpos : 0 < A := by linarith
  have hi : Integrable (fun t ↦ Real.exp (σ * t) * C A t) :=
    weighted_correlation_integrable _ _
      (weighted_normalizedTest_integrable A σ hA)
      (weighted_normalizedTest_integrable A (-σ) hA)
  have hfull : (∫ t, Real.exp (σ * t) * C A t) =
      ∫ t in -(2 * A)..2 * A, Real.exp (σ * t) * C A t := by
    calc
      _ = ∫ t, (Icc (-(2 * A)) (2 * A)).indicator
          (fun t ↦ Real.exp (σ * t) * C A t) t := by
        apply integral_congr_ae
        filter_upwards [] with t
        by_cases ht : t ∈ Icc (-(2 * A)) (2 * A)
        · rw [indicator_of_mem ht]
        · rw [indicator_of_notMem ht]
          have hz : C A t = 0 := by
            apply sourceCorrelation_eq_zero_of_two_mul_le_abs A t hpos
            by_contra hh
            exact ht (abs_le.mp (le_of_lt (lt_of_not_ge hh)))
          rw [hz, mul_zero]
      _ = _ := zeroExtension_integral _ _ _ (by linarith)
  have hreflect : (∫ t in -(2 * A)..0, Real.exp (σ * t) * C A t) =
      ∫ t in (0 : ℝ)..2 * A, Real.exp ((-σ) * t) * C A t := by
    calc
      _ = ∫ t in (0 : ℝ)..2 * A, Real.exp (σ * (-t)) * C A (-t) := by
        simpa only [neg_zero] using
          (intervalIntegral.integral_comp_neg (fun t ↦ Real.exp (σ * t) * C A t)
            (a := 0) (b := 2 * A)).symm
      _ = _ := by
        apply intervalIntegral.integral_congr
        intro t _
        dsimp only
        rw [sourceCorrelation_even A t]
        congr 2
        ring
  have hs := intervalIntegral.integral_add_adjacent_intervals
    (a := -(2 * A)) (b := 0) (c := 2 * A) hi.intervalIntegrable hi.intervalIntegrable
  rw [hreflect, ← hfull, exact_full_correlation_laplace_square hA] at hs
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.ActualLogarithmicIntegral
