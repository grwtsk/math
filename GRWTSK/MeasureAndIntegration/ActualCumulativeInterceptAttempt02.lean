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
    convert! h using 1 <;> first | rfl | (dsimp [criticalDecay];ring)
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

end ContinuousResearch.ActualCumulativeIntercept
