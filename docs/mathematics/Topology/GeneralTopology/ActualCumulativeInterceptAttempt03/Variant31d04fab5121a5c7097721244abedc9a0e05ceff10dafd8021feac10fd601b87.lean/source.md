# Complete source: GRWTSK.Topology.GeneralTopology.ActualCumulativeInterceptAttempt03.Variant31d04fab5121a5c7097721244abedc9a0e05ceff10dafd8021feac10fd601b87

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a55c59b3c457ad28b328030ed2c50b0af5afbe69` · SHA-256 `31d04fab5121a5c7097721244abedc9a0e05ceff10dafd8021feac10fd601b87`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualPrimeIntercept
import FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
import Mathlib.MeasureTheory.Integral.IntegralEqImproper

/-! Actual cumulative discrepancy and its independent integral intercept.
grwtsk contributors's mathematical direction; OpenAI Codex scratch construction.
The centered-Mangoldt positive-axis unweighted L1 hypothesis remains explicit.
No endpoint-relative rate, signed witness or RH consumer is supplied. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualCumulativeIntercept
open MeasureTheory Set Filter Topology
open scoped Interval
open FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
open FormalResearch.RiemannHypothesis.SourceCriticalDecayWork
open FormalResearch.RiemannHypothesis.WeightedPrimeAbel
open ContinuousResearch.ActualPrimeIntercept ContinuousResearch.SourceRemainderLaplace
open ContinuousResearch.ProperPowerMoments

/-- Independent affine slope retaining both actual centering constants. -/
def actualAffineSlope : ℝ :=
  1 - Real.eulerMascheroniConstant - properPowerMoment 0

theorem cumulative_discrepancy_eq_remainder (u : ℝ) :
    criticalCumulativeDiscrepancy u =
      actualPrimeRemainder u + actualAffineSlope - criticalDecay u := by
  rw [criticalCumulativeDiscrepancy_eq]
  unfold actualPrimeRemainder actualAffineSlope
  ring

theorem actual_prime_remainder_intervalIntegrable (a b : ℝ) :
    IntervalIntegrable actualPrimeRemainder volume a b := by
  have hd : Continuous criticalDecay := by unfold criticalDecay; fun_prop
  have h := ((criticalCumulativeDiscrepancy_intervalIntegrable a b).sub
    (intervalIntegrable_const (c:=actualAffineSlope))).add (hd.intervalIntegrable (μ:=volume) a b)
  convert! h using 1
  funext u
  rw [cumulative_discrepancy_eq_remainder]
  ring

theorem decay_integral (u : ℝ) :
    (∫ t in 0..u, criticalDecay t) = 2 - 2*criticalDecay u := by
  have hd (t : ℝ) : HasDerivAt (fun x : ℝ => -2*criticalDecay x) (criticalDecay t) t := by
    have h := (((hasDerivAt_id t).neg.div_const 2).exp).const_mul (-2:ℝ)
    convert! h using 1
    dsimp [criticalDecay]
    ring
  have hc : Continuous criticalDecay := by unfold criticalDecay; fun_prop
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    (hc.intervalIntegrable (μ:=volume) 0 u)
  simpa [criticalDecay,sub_eq_add_neg,add_comm,neg_mul] using h

theorem actual_primitive_decomposition (u : ℝ) :
    criticalDiscrepancyPrimitive u = actualAffineSlope*u +
      (∫ t in 0..u, actualPrimeRemainder t) - 2 + 2*criticalDecay u := by
  unfold criticalDiscrepancyPrimitive
  simp_rw [cumulative_discrepancy_eq_remainder]
  rw [intervalIntegral.integral_sub
      ((actual_prime_remainder_intervalIntegrable 0 u).add intervalIntegrable_const)
      ((show Continuous criticalDecay by unfold criticalDecay;fun_prop).intervalIntegrable (μ:=volume) 0 u),
    intervalIntegral.integral_add (actual_prime_remainder_intervalIntegrable 0 u)
      intervalIntegrable_const,
    intervalIntegral.integral_const,decay_integral]
  simp only [sub_zero,smul_eq_mul]
  ring

/-- The actual exponential correction vanishes along all real coordinates. -/
theorem decay_tendsto_zero : Tendsto criticalDecay atTop (𝓝 0) := by
  have h := Real.tendsto_exp_atBot.comp
    ((tendsto_id : Tendsto (fun u : ℝ => u) atTop atTop).const_mul_atTop_of_neg
      (by norm_num : (-1/2 : ℝ) < 0))
  convert! h using 1
  funext u
  dsimp [criticalDecay]
  congr 1
  ring

/-- Exact tail dictionary retains the physical -2 and the nonconstant exponential. -/
theorem actual_primitive_tail_dictionary
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) {u : ℝ} (hu : 0 ≤ u) :
    criticalDiscrepancyPrimitive u - actualAffineSlope*u - actualPrimeIntercept =
      -(∫ t in Ioi u, actualPrimeRemainder t) + 2*criticalDecay u := by
  have h := intervalIntegral.integral_Ioi_sub_Ioi (actual_prime_remainder_integrable hI) hu
  rw [actual_primitive_decomposition,actualPrimeIntercept]
  linarith

/-- The literal G has the independently defined integral intercept, under only actual L1. -/
theorem actual_primitive_affine_intercept
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    Tendsto (fun u : ℝ => criticalDiscrepancyPrimitive u - actualAffineSlope*u)
      atTop (𝓝 actualPrimeIntercept) := by
  have ht := intervalIntegral_tendsto_integral_Ioi 0
    (actual_prime_remainder_integrable hI) (tendsto_id : Tendsto (fun u : ℝ => u) atTop atTop)
  have h := (ht.sub_const 2).add (decay_tendsto_zero.const_mul 2)
  simp only [mul_zero,add_zero] at h
  apply h.congr'
  filter_upwards [] with u
  rw [actual_primitive_decomposition]
  ring

/-- The literal affine-subtracted remainder tends to zero on all real coordinates. -/
theorem actual_primitive_affine_error_tendsto_zero
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    Tendsto (fun u : ℝ => criticalDiscrepancyPrimitive u - actualAffineSlope*u - actualPrimeIntercept)
      atTop (𝓝 0) := by
  simpa using (actual_primitive_affine_intercept hI).sub_const actualPrimeIntercept

/-- The actual upper endpoint average converges to the independent affine slope. -/
theorem actual_upper_average_tendsto
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) :
    Tendsto (fun A : ℝ => criticalDiscrepancyPrimitive (2*A)/(2*A))
      atTop (𝓝 actualAffineSlope) := by
  have hA : Tendsto (fun A : ℝ => 2*A) atTop atTop :=
    tendsto_id.const_mul_atTop (by norm_num : (0:ℝ)<2)
  have h := ((actual_primitive_affine_intercept hI).comp hA).div_atTop hA
  have hz := tendsto_const_nhds.add h
  simp only [add_zero] at hz
  apply hz.congr'
  filter_upwards [eventually_gt_atTop (0:ℝ)] with A hpos
  have hn : 2*A ≠ 0 := ne_of_gt (by linarith : 0<2*A)
  field_simp
  ring

/-- Fixed physical coordinate bridge limit; no A-dependent endpoint-relative rate. -/
theorem actual_bridge_fixed_coordinate_tendsto
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) (u : ℝ) :
    Tendsto (fun A : ℝ => criticalDiscrepancyBridge A u) atTop
      (𝓝 (criticalDiscrepancyPrimitive u - actualAffineSlope*u)) := by
  have h := tendsto_const_nhds.sub ((actual_upper_average_tendsto hI).const_mul u)
  have he (A : ℝ) : criticalDiscrepancyPrimitive u -
    u*(criticalDiscrepancyPrimitive (2*A)/(2*A)) = criticalDiscrepancyBridge A u := by
    unfold criticalDiscrepancyBridge
    ring
  simpa only [mul_comm actualAffineSlope u] using h.congr he

end ContinuousResearch.ActualCumulativeIntercept
```
