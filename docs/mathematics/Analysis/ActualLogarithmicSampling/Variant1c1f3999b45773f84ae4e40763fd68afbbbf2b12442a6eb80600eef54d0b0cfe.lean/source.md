# Complete source: GRWTSK.Analysis.ActualLogarithmicSampling.Variant1c1f3999b45773f84ae4e40763fd68afbbbf2b12442a6eb80600eef54d0b0cfe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b92e22ef52d7dc478cec6ad916b9abf4dc28622` · SHA-256 `1c1f3999b45773f84ae4e40763fd68afbbbf2b12442a6eb80600eef54d0b0cfe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.RiemannHypothesis.Conversation.PositiveDomainQuadrature
import FormalResearch.RiemannHypothesis.SourceCorrelationEnergy
import Mathlib.Analysis.SpecialFunctions.Integrals.Basic

/-!
# Every integer cell of the actual logarithmic source census

The sample is the unchanged source correlation C_A(r log n). Its derivative
is reconstructed only where x>0, and the complete finite census from n=1
retains all unit cells and endpoints. The inherited actual derivative bound
gives a checked logarithmic quadrature price. This is the analytic sampling
consumer before the exponential cutoff and Laplace comparison. Human actual
square/sixth census direction: grwtsk contributors. Local positive-domain and
source-energy consumer: OpenAI Codex. Qualified source results and Mathlib
integration infrastructure retain their origins; no arithmetic cancellation
or sharp paper constant is claimed.
-/
set_option autoImplicit false
namespace GRWTSK.RiemannHypothesis.Conversation.ActualLogarithmicSampling
open FormalResearch.RiemannHypothesis.SourcePairing
open FormalResearch.RiemannHypothesis.SourceCorrelationEnergy
open FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry
open Realization CorrelationRegularity EstimateTwoMomentSampling
open PositiveDomainQuadrature MeasureTheory Set
noncomputable section
local notation "C" => sourceCorrelation explicitSecondDerivative

def logarithmicSample (A r x : ℝ) : ℝ := C A (r * Real.log x)
def logarithmicDerivative (A r x : ℝ) : ℝ := r * deriv (C A) (r * Real.log x) / x

theorem actual_logarithmic_hasDerivAt {A : ℝ} (hA : 1 ≤ A) (r : ℝ)
    {x : ℝ} (hx : 0 < x) :
    HasDerivAt (logarithmicSample A r) (logarithmicDerivative A r x) x := by
  have h := ((sourceCorrelation_contDiff A (by linarith)).differentiable (by norm_num)
    (r * Real.log x)).hasDerivAt.comp x ((Real.hasDerivAt_log hx.ne').const_mul r)
  apply h.congr_deriv
  unfold logarithmicDerivative
  simp only [div_eq_mul_inv]
  ring

theorem actual_logarithmic_derivative_continuousOn {A : ℝ} (hA : 1 ≤ A) (r : ℝ) :
    ContinuousOn (logarithmicDerivative A r) (Ioi 0) := by
  intro x hx
  have hd := (sourceCorrelation_contDiff A (by linarith)).continuous_deriv (by norm_num)
  exact ((continuousAt_const.mul (hd.continuousAt.comp
    (continuousAt_const.mul (Real.continuousAt_log hx.ne')))).div
    continuousAt_id hx.ne').continuousWithinAt

theorem actual_logarithmic_derivative_price {A r x : ℝ} (hA : 1 ≤ A)
    (hr : 0 ≤ r) (hx : 0 < x) :
    |logarithmicDerivative A r x| ≤ (5 * r / A) * (1 / x) := by
  unfold logarithmicDerivative
  rw [abs_div, abs_mul, abs_of_nonneg hr, abs_of_pos hx]
  have h := div_le_div_of_nonneg_right
    (mul_le_mul_of_nonneg_left (sourceCorrelation_deriv_abs_le_five_div hA (r * Real.log x)) hr) hx.le
  calc
    _ ≤ r * (5 / A) / x := h
    _ = _ := by ring

theorem actual_logarithmic_complete_sampling_price {A r : ℝ} (hA : 1 ≤ A)
    (hr : 0 ≤ r) (N : ℕ) :
    |leftSampleSum (logarithmicSample A r) N -
      (∫ x in (1 : ℝ)..(N + 1 : ℝ), logarithmicSample A r x)| ≤
      (5 * r / A) * Real.log (N + 1 : ℝ) := by
  have hc := actual_logarithmic_derivative_continuousOn hA r
  have hleft := complete_positive_domain_sampling_price
    (logarithmicSample A r) (logarithmicDerivative A r)
    (fun x hx ↦ actual_logarithmic_hasDerivAt hA r hx) hc N
  have hpos : 0 < (N + 1 : ℝ) := by positivity
  have hab : (1 : ℝ) ≤ N + 1 := by linarith [Nat.cast_nonneg (α := ℝ) N]
  have hi : IntervalIntegrable (fun x ↦ |logarithmicDerivative A r x|)
      volume (1 : ℝ) (N + 1 : ℝ) := by
    apply ContinuousOn.intervalIntegrable
    apply hc.abs.mono
    rw [uIcc_of_le hab]
    intro x hx
    exact lt_of_lt_of_le zero_lt_one hx.1
  have hj : IntervalIntegrable (fun x : ℝ ↦ (5 * r / A) * (1 / x))
      volume (1 : ℝ) (N + 1 : ℝ) := by
    apply ContinuousOn.intervalIntegrable
    intro x hx
    rw [uIcc_of_le hab] at hx
    exact (continuousAt_const.mul (continuousAt_const.div continuousAt_id
      (ne_of_gt (lt_of_lt_of_le zero_lt_one hx.1)))).continuousWithinAt
  have hb := intervalIntegral.integral_mono_on hab hi hj
    (fun x hx ↦ actual_logarithmic_derivative_price hA hr
      (lt_of_lt_of_le zero_lt_one hx.1))
  rw [intervalIntegral.integral_const_mul,
    integral_one_div_of_pos zero_lt_one hpos, div_one] at hb
  exact hleft.trans hb

end
end GRWTSK.RiemannHypothesis.Conversation.ActualLogarithmicSampling
```
