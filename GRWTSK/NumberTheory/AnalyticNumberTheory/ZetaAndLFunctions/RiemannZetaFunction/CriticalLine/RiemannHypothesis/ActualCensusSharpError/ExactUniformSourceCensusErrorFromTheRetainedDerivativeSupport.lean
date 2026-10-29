import FormalResearch.RiemannHypothesis.Conversation.ActualCensusMoment

/-!
# Exact uniform source-census error from the retained derivative support

The actual logarithmic derivative vanishes strictly beyond the unchanged
source cutoff. Paying every integer cell and its complete derivative
variation therefore gives 2*sqrt(65/3), without a spurious extra tail cost.
The bilateral negative-half payment adds one. This checks the paper census
constant for every A>=1 and every real r>0, including its integer exponents.
Human exact complete-census direction: grwtsk contributors. Local derivative
support and exact constant consumer: OpenAI Codex. Earlier source derivative
energy and qualified Mathlib calculus retain their origins. The exact sixth
leading coefficient and signed exceptional-Gram estimate remain separate.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualCensusSharpError
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateTwoMomentSampling
open PositiveDomainQuadrature ActualLogarithmicSampling ActualCensusCutoff
open ActualSourceLaplaceMoment ActualCensusMoment MeasureTheory Set Filter
open scoped Topology
noncomputable section
local notation "C" => sourceCorrelation explicitSecondDerivative

theorem actual_correlation_derivative_zero_above_support {A t : ℝ}
    (hA : 1 ≤ A) (ht : 2 * A < t) : deriv (C A) t = 0 := by
  have he : C A =ᶠ[𝓝 t] fun _ ↦ (0 : ℝ) := by
    filter_upwards [Ioi_mem_nhds ht] with u hu
    exact sourceCorrelation_eq_zero_of_two_mul_le_abs A u (by linarith)
      (hu.le.trans (le_abs_self _))
  simpa using he.deriv_eq

theorem actual_logarithmic_derivative_zero_after_cutoff {A r x : ℝ}
    (hA : 1 ≤ A) (hr : 0 < r) (hx : censusCutoff A r < x) :
    logarithmicDerivative A r x = 0 := by
  have hX : 0 < censusCutoff A r := Real.exp_pos _
  have hl := Real.log_lt_log hX hx
  rw [censusCutoff, Real.log_exp] at hl
  have ht : 2 * A < r * Real.log x := by
    have h := mul_lt_mul_of_pos_left hl hr
    rw [mul_div_cancel₀ (2 * A) hr.ne'] at h
    exact h
  unfold logarithmicDerivative
  rw [actual_correlation_derivative_zero_above_support hA ht, mul_zero, zero_div]

theorem exact_native_logarithmic_derivative_price {A r x : ℝ}
    (hA : 1 ≤ A) (hr : 0 < r) (hx : 0 < x) :
    |logarithmicDerivative A r x| ≤
      (r * Real.sqrt (65 / 3) / A) * (1 / x) := by
  have hApos : 0 < A := by linarith
  have hs : Real.sqrt (162826 / 7623 : ℝ) ≤ Real.sqrt (65 / 3) :=
    Real.sqrt_le_sqrt (by norm_num)
  have hco := (sourceCorrelation_deriv_abs_le_coefficient hA (r * Real.log x)).trans
    (div_le_div_of_nonneg_right hs hApos.le)
  unfold logarithmicDerivative
  rw [abs_div, abs_mul, abs_of_pos hr, abs_of_pos hx]
  calc
    _ ≤ r * (Real.sqrt (65 / 3) / A) / x :=
      div_le_div_of_nonneg_right (mul_le_mul_of_nonneg_left hco hr.le) hx.le
    _ = _ := by ring

theorem actual_full_census_quadrature_exact_uniform_price {A r : ℝ}
    (hA : 1 ≤ A) (hr : 0 < r) :
    |actualCensus A r -
      (∫ x in (1 : ℝ)..censusCutoff A r, logarithmicSample A r x)| ≤
      2 * Real.sqrt (65 / 3) := by
  have hApos : 0 < A := by linarith
  have hX1 : 1 ≤ censusCutoff A r := Real.one_le_exp_iff.mpr (by positivity)
  have hXpos : 0 < censusCutoff A r := Real.exp_pos _
  have hXN : censusCutoff A r ≤ censusCount A r + 1 := (Nat.lt_floor_add_one _).le
  have hc := actual_logarithmic_derivative_continuousOn hA r
  have hi {a b : ℝ} (ha : 1 ≤ a) (hab : a ≤ b) :
      IntervalIntegrable (fun x ↦ |logarithmicDerivative A r x|) volume a b := by
    apply ContinuousOn.intervalIntegrable
    apply hc.abs.mono
    rw [uIcc_of_le hab]
    intro x hx
    exact lt_of_lt_of_le zero_lt_one (ha.trans hx.1)
  have hz : (∫ x in censusCutoff A r..(censusCount A r + 1 : ℝ),
      |logarithmicDerivative A r x|) = 0 := by
    calc
      _ = ∫ x in censusCutoff A r..(censusCount A r + 1 : ℝ), (0 : ℝ) := by
        apply intervalIntegral.integral_congr_Ioo_of_le hXN
        intro x hx
        dsimp only
        rw [actual_logarithmic_derivative_zero_after_cutoff hA hr hx.1, abs_zero]
      _ = 0 := intervalIntegral.integral_zero
  have hsplit := intervalIntegral.integral_add_adjacent_intervals
    (hi (by norm_num) hX1) (hi hX1 hXN)
  rw [hz, add_zero] at hsplit
  have hquad := complete_positive_domain_sampling_price
    (logarithmicSample A r) (logarithmicDerivative A r)
    (fun x hx ↦ actual_logarithmic_hasDerivAt hA r hx) hc (censusCount A r)
  rw [actual_census_integral_retains_final_cell hA hr, ← hsplit] at hquad
  have hj : IntervalIntegrable (fun x : ℝ ↦
      (r * Real.sqrt (65 / 3) / A) * (1 / x)) volume 1 (censusCutoff A r) := by
    apply ContinuousOn.intervalIntegrable
    intro x hx
    rw [uIcc_of_le hX1] at hx
    exact (continuousAt_const.mul (continuousAt_const.div continuousAt_id
      (ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))).continuousWithinAt
  have hp := intervalIntegral.integral_mono_on (μ := volume) hX1
    (hi (by norm_num) hX1) hj
    (fun x hx ↦ exact_native_logarithmic_derivative_price hA hr
      (lt_of_lt_of_le zero_lt_one hx.1))
  rw [intervalIntegral.integral_const_mul,
    integral_one_div_of_pos zero_lt_one hXpos, div_one, censusCutoff, Real.log_exp] at hp
  have heq : (r * Real.sqrt (65 / 3) / A) * (2 * A / r) =
      2 * Real.sqrt (65 / 3) := by field_simp
  rw [heq] at hp
  exact hquad.trans hp

theorem actual_census_exact_uniform_moment_error {A r : ℝ}
    (hA : 1 ≤ A) (hr : 0 < r) :
    |actualCensus A r - (1 / r) * (testMoment A (1 / r)) ^ 2| ≤
      2 * Real.sqrt (65 / 3) + 1 := by
  have h1 := actual_full_census_quadrature_exact_uniform_price hA hr
  have h2 := actual_cutoff_integral_moment_error_le_one hA hr
  have htriangle := abs_sub_le (actualCensus A r)
    (∫ x in (1 : ℝ)..censusCutoff A r, logarithmicSample A r x)
    ((1 / r) * (testMoment A (1 / r)) ^ 2)
  linarith

end
end GRWTSK.RiemannHypothesis.Conversation.ActualCensusSharpError
