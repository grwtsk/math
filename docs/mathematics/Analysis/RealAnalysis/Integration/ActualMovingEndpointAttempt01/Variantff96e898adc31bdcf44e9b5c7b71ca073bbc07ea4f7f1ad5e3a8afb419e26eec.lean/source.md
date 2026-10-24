# Complete source: GRWTSK.Analysis.RealAnalysis.Integration.ActualMovingEndpointAttempt01.Variantff96e898adc31bdcf44e9b5c7b71ca073bbc07ea4f7f1ad5e3a8afb419e26eec

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `54434fdc1f81b55e624041718bb6503236ec1306` · SHA-256 `ff96e898adc31bdcf44e9b5c7b71ca073bbc07ea4f7f1ad5e3a8afb419e26eec`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import ActualCumulativeIntercept
import Mathlib.Analysis.SpecialFunctions.ImproperIntegrals

/-! Actual moving upper endpoint with the arithmetic decay hypothesis exposed.
grwtsk contributors's direction; focused scratch proof OpenAI Codex.
No accepted arithmetic instance, signed witness or RH conclusion is supplied. -/
set_option autoImplicit false
noncomputable section
namespace ContinuousResearch.ActualMovingEndpoint
open MeasureTheory Set Filter
open scoped Topology Interval
open ContinuousResearch.ActualCumulativeIntercept ContinuousResearch.ActualPrimeIntercept
open ContinuousResearch.SourceRemainderLaplace
open FormalResearch.RiemannHypothesis.SourceCriticalCumulativeDiscrepancy
open FormalResearch.RiemannHypothesis.SourceCriticalDecayWork

/-- Independent actual affine error, retaining the entire prime tail and decay term. -/
def actualAffineError (u : ℝ) : ℝ :=
  -(∫ t in Ioi u, actualPrimeRemainder t) + 2*criticalDecay u

theorem actual_primitive_error_dictionary
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) {u : ℝ} (hu : 0 ≤ u) :
    criticalDiscrepancyPrimitive u = actualAffineSlope*u+actualPrimeIntercept+actualAffineError u := by
  have h := actual_primitive_tail_dictionary hI hu
  unfold actualAffineError
  linarith

theorem actual_moving_endpoint_dictionary
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) {A y : ℝ}
    (hA : 1 ≤ A) (hy : 0 ≤ y) (hyA : y ≤ A) :
    criticalDiscrepancyBridge A (2*A-y) = actualPrimeIntercept*y/(2*A)+
      actualAffineError (2*A-y)-(1-y/(2*A))*actualAffineError (2*A) := by
  have hpos : 0 < A := by linarith
  rw [actual_bridge_affine_dictionary hpos.ne',
    actual_primitive_error_dictionary hI (by linarith : 0 ≤ 2*A-y),
    actual_primitive_error_dictionary hI (by linarith : 0 ≤ 2*A)]
  field_simp [hpos.ne']
  ring

theorem inverse_square_integrable {T : ℝ} (hT : 0 < T) :
    IntegrableOn (fun t : ℝ => 1/t^2) (Ioi T) := by
  have h := integrableOn_Ioi_rpow_of_lt (by norm_num : (-2:ℝ)< -1) hT
  convert! h using 1
  funext t
  rw [Real.rpow_neg (le_of_lt (hT.trans ?_)),Real.rpow_natCast]
  · simp
  · exact mem_Ioi.mp (by assumption)

theorem inverse_square_integral {T : ℝ} (hT : 0 < T) :
    (∫ t in Ioi T, (1/t^2:ℝ)) = 1/T := by
  have h := integral_Ioi_rpow_of_lt (by norm_num : (-2:ℝ)< -1) hT
  have he : (fun t : ℝ => (1/t^2:ℝ)) = fun t => t^(-2:ℝ) := by
    funext t
    rw [Real.rpow_neg (sq_nonneg t),Real.rpow_natCast]
    simp
  rw [he]
  convert! h using 1
  norm_num [Real.rpow_neg_one]

theorem actual_prime_tail_abs_le {K T : ℝ} (hK : 0 ≤ K) (hT : 1 ≤ T)
    (hdecay : ∀ t : ℝ, 1 ≤ t → |actualPrimeRemainder t| ≤ K/t^2) :
    |∫ t in Ioi T, actualPrimeRemainder t| ≤ K/T := by
  have ht : 0 < T := by linarith
  have hi := (inverse_square_integrable ht).const_mul K
  have hb : ∀ᵐ t ∂volume.restrict (Ioi T), ‖actualPrimeRemainder t‖ ≤ K*(1/t^2) := by
    filter_upwards [ae_restrict_mem measurableSet_Ioi] with t ht
    simpa only [Real.norm_eq_abs,mul_one_div] using hdecay t (hT.trans ht.le)
  have h := MeasureTheory.norm_integral_le_of_norm_le hi hb
  rw [integral_const_mul,inverse_square_integral ht] at h
  simpa only [Real.norm_eq_abs,mul_one_div] using h

theorem actual_affine_error_abs_le {K T : ℝ} (hK : 0 ≤ K) (hT : 1 ≤ T)
    (hdecay : ∀ t : ℝ, 1 ≤ t → |actualPrimeRemainder t| ≤ K/t^2) :
    |actualAffineError T| ≤ K/T+2*criticalDecay T := by
  unfold actualAffineError
  calc
    _ ≤ |-(∫ t in Ioi T, actualPrimeRemainder t)|+|2*criticalDecay T| := abs_add_le _ _
    _ ≤ K/T+2*criticalDecay T := by
      rw [abs_neg,abs_of_nonneg (by unfold criticalDecay;positivity)]
      exact add_le_add_right (actual_prime_tail_abs_le hK hT hdecay) _

theorem decay_interval_integral (a b : ℝ) :
    (∫ t in a..b, criticalDecay t) = 2*criticalDecay a-2*criticalDecay b := by
  have hd (t : ℝ) : HasDerivAt (fun x : ℝ => -2*criticalDecay x) (criticalDecay t) t := by
    convert! ((((hasDerivAt_id t).neg.div_const 2).exp).const_mul (-2:ℝ)) using 1
    dsimp [criticalDecay]
    ring
  have hc : Continuous criticalDecay := by unfold criticalDecay;fun_prop
  have h := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t)
    (hc.intervalIntegrable (μ:=volume) a b)
  linarith

theorem actual_affine_error_increment
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) {a b : ℝ}
    (ha : 0 ≤ a) (hab : a ≤ b) :
    actualAffineError a-actualAffineError b =
      -(∫ t in a..b, actualPrimeRemainder t)+(∫ t in a..b, criticalDecay t) := by
  have hi := (actual_prime_remainder_integrable hI).mono_set (Ioi_subset_Ioi ha)
  have h := intervalIntegral.integral_Ioi_sub_Ioi hi hab
  rw [actualAffineError,actualAffineError,decay_interval_integral]
  linarith

end ContinuousResearch.ActualMovingEndpoint
```
