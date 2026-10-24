# Complete source: GRWTSK.NumberTheory.AnalyticNumberTheory.ZetaAndLFunctions.RiemannZetaFunction.CriticalLine.RiemannHypothesis.ActualCensusMoment.Varianta462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b7778df09ee0c6d1af6f734ea8e80361f4c3bc89` · SHA-256 `a462d8fd6552a5575a481e43b9bb9a0526ca4a98c1288638322ad05740d2f868`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.ActualCensusCutoff
import FormalResearch.RiemannHypothesis.Conversation.ActualLogarithmicIntegral

/-!
# Full actual census compared with its unchanged Laplace moment

The complete integer census, exact exponential cutoff, negative half of the
bilateral integral and quadrature payment are all retained. A uniform coarse
error of fifteen suffices to distinguish the annihilated square census from
the non-annihilated sixth source moment. The sharper paper error and exact
sixth asymptotic coefficient are separate. Human full-census direction:
grwtsk contributors. Local retained-half and discrete consumer: OpenAI Codex.
This does not lower-bound the signed exceptional arithmetic Gram family.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualCensusMoment
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateCorrelation
open ActualSourceLaplaceMoment ActualSourceLaplaceSign ActualLogarithmicSampling
open ActualLogarithmicIntegral ActualCensusCutoff MeasureTheory Set
noncomputable section
local notation "C" => sourceCorrelation explicitSecondDerivative

theorem exact_decaying_exponential_interval {A r : ℝ} (hr : 0 < r) :
    (∫ t in (0 : ℝ)..2 * A, Real.exp (-t / r)) =
      r * (1 - Real.exp (-(2 * A) / r)) := by
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ ↦ -r * Real.exp (-t / r))
      (Real.exp (-t / r)) t := by
    have h := ((((hasDerivAt_id t).neg).div_const r).exp).const_mul (-r)
    apply h.congr_deriv
    change -r * (Real.exp (-t / r) * (-1 / r)) = Real.exp (-t / r)
    field_simp [hr.ne']
  rw [intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ ↦ hd t)
    ((Real.continuous_exp.comp (continuous_id.neg.div_const r)).intervalIntegrable _ _)]
  simp only [neg_zero, zero_div, Real.exp_zero, mul_one]
  ring

theorem actual_negative_half_price_le_radius {A r : ℝ} (hA : 1 ≤ A) (hr : 0 < r) :
    |∫ t in (0 : ℝ)..2 * A, Real.exp (-t / r) * C A t| ≤ r := by
  have hc : Continuous (fun t ↦ Real.exp (-t / r)) :=
    Real.continuous_exp.comp (continuous_id.neg.div_const r)
  have hb : ‖∫ t in (0 : ℝ)..2 * A, Real.exp (-t / r) * C A t‖ ≤
      ∫ t in (0 : ℝ)..2 * A, Real.exp (-t / r) :=
    intervalIntegral.norm_integral_le_of_norm_le (by linarith)
      (Filter.Eventually.of_forall (fun t _ ↦ by
        rw [Real.norm_eq_abs, abs_mul, abs_of_pos (Real.exp_pos _)]
        exact mul_le_of_le_one_right (Real.exp_pos _).le (actual_correlation_abs_le_one A t hA)))
      (hc.intervalIntegrable _ _)
  rw [Real.norm_eq_abs, exact_decaying_exponential_interval hr] at hb
  exact hb.trans (by nlinarith [Real.exp_pos (-(2 * A) / r)])

theorem actual_cutoff_integral_moment_error_le_one {A r : ℝ}
    (hA : 1 ≤ A) (hr : 0 < r) :
    |(∫ x in (1 : ℝ)..censusCutoff A r, logarithmicSample A r x) -
      (1 / r) * (testMoment A (1 / r)) ^ 2| ≤ 1 := by
  rw [censusCutoff, actual_logarithmic_integral_exact hA hr]
  have hs := actual_full_moment_retains_negative_half hA (1 / r)
  simp_rw [neg_mul, one_div_mul_eq_div, ← neg_div] at hs
  have heq : (1 / r) * (∫ t in (0 : ℝ)..2 * A, Real.exp (t / r) * C A t) -
      (1 / r) * (testMoment A (1 / r)) ^ 2 =
      -(1 / r) * (∫ t in (0 : ℝ)..2 * A, Real.exp (-t / r) * C A t) := by
    rw [hs]
    ring
  rw [heq, abs_mul, abs_neg, abs_of_pos (one_div_pos.mpr hr)]
  have h := mul_le_mul_of_nonneg_left (actual_negative_half_price_le_radius hA hr)
    (one_div_pos.mpr hr).le
  simpa [hr.ne'] using h

theorem actual_complete_census_moment_error_le_fifteen {A r : ℝ}
    (hA : 8 ≤ A) (hr : 0 < r) (hr6 : r ≤ 6) :
    |actualCensus A r - (1 / r) * (testMoment A (1 / r)) ^ 2| ≤ 15 := by
  have h1 := actual_census_quadrature_price_le_fourteen hA hr hr6
  have hA1 : 1 ≤ A := by linarith
  have h2 := actual_cutoff_integral_moment_error_le_one hA1 hr
  have htriangle := abs_sub_le (actualCensus A r)
    (∫ x in (1 : ℝ)..censusCutoff A r, logarithmicSample A r x)
    ((1 / r) * (testMoment A (1 / r)) ^ 2)
  linarith

theorem actual_square_census_bounded {A : ℝ} (hA : 8 ≤ A) :
    |actualCensus A 2| ≤ 15 := by
  have h := actual_complete_census_moment_error_le_fifteen hA
    (by norm_num : (0 : ℝ) < 2) (by norm_num)
  rw [actual_square_laplace_annihilated (by linarith)] at h
  simpa using h

theorem actual_sixth_census_retains_moment {A : ℝ} (hA : 8 ≤ A) :
    (1 / 6) * (testMoment A (1 / 6)) ^ 2 - 15 ≤ actualCensus A 6 := by
  have h := actual_complete_census_moment_error_le_fifteen hA
    (by norm_num : (0 : ℝ) < 6) (by norm_num)
  linarith [(abs_le.mp h).1]

end
end GRWTSK.RiemannHypothesis.Conversation.ActualCensusMoment
```
