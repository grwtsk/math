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
    (hA : 1 ≤ A) (_hy : 0 ≤ y) (hyA : y ≤ A) :
    criticalDiscrepancyBridge A (2*A-y) = actualPrimeIntercept*y/(2*A)+
      actualAffineError (2*A-y)-(1-y/(2*A))*actualAffineError (2*A) := by
  have hpos : 0 < A := by linarith
  rw [actual_bridge_affine_dictionary hpos.ne',
    actual_primitive_error_dictionary hI (by linarith : 0 ≤ 2*A-y),
    actual_primitive_error_dictionary hI (by linarith : 0 ≤ 2*A)]
  field_simp [hpos.ne']
  ring

private theorem inverse_square_eq_rpow (t : ℝ) : (1/t^2:ℝ) = t^(-2:ℝ) := by
  rw [show (-2:ℝ) = ((-2:ℤ):ℝ) by norm_num,Real.rpow_intCast]
  simp [zpow_neg,one_div]

theorem inverse_square_integrable {T : ℝ} (hT : 0 < T) :
    IntegrableOn (fun t : ℝ => 1/t^2) (Ioi T) := by
  simpa only [inverse_square_eq_rpow] using
    integrableOn_Ioi_rpow_of_lt (by norm_num : (-2:ℝ)< -1) hT

theorem inverse_square_integral {T : ℝ} (hT : 0 < T) :
    (∫ t in Ioi T, (1/t^2:ℝ)) = 1/T := by
  simp_rw [inverse_square_eq_rpow]
  have h := integral_Ioi_rpow_of_lt (by norm_num : (-2:ℝ)< -1) hT
  convert! h using 1
  norm_num [Real.rpow_neg_one]

theorem actual_prime_tail_abs_le {K T : ℝ} (hT : 1 ≤ T)
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

theorem actual_affine_error_abs_le {K T : ℝ} (hT : 1 ≤ T)
    (hdecay : ∀ t : ℝ, 1 ≤ t → |actualPrimeRemainder t| ≤ K/t^2) :
    |actualAffineError T| ≤ K/T+2*criticalDecay T := by
  unfold actualAffineError
  calc
    _ ≤ |-(∫ t in Ioi T, actualPrimeRemainder t)|+|2*criticalDecay T| := abs_add_le _ _
    _ ≤ K/T+2*criticalDecay T := by
      have hx : 0 ≤ 2*criticalDecay T := by unfold criticalDecay;positivity
      rw [abs_neg,abs_of_nonneg hx]
      exact add_le_add (actual_prime_tail_abs_le hT hdecay) le_rfl

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

theorem actual_prime_short_interval_abs_le {K A y : ℝ} (hK : 0 ≤ K)
    (hA : 1 ≤ A) (hy : 0 ≤ y) (hyA : y ≤ A)
    (hdecay : ∀ t : ℝ, 1 ≤ t → |actualPrimeRemainder t| ≤ K/t^2) :
    |∫ t in (2*A-y)..(2*A), actualPrimeRemainder t| ≤ K*y/A^2 := by
  have hpos : 0 < A := by linarith
  have h := intervalIntegral.norm_integral_le_of_norm_le_const
    (f:=actualPrimeRemainder) (a:=2*A-y) (b:=2*A) (C:=K/A^2) (fun t ht => ?_)
  · rw [Real.norm_eq_abs,show 2*A-(2*A-y)=y by ring,abs_of_nonneg hy] at h
    convert! h using 1
    ring
  · rw [uIoc_of_le (by linarith : 2*A-y ≤ 2*A)] at ht
    have hAt : A ≤ t := by linarith [ht.1]
    have hsq : A^2 ≤ t^2 := pow_le_pow_left₀ hpos.le hAt 2
    rw [Real.norm_eq_abs]
    exact (hdecay t (by linarith)).trans
      (div_le_div_of_nonneg_left hK (sq_pos_of_pos hpos) hsq)

theorem decay_short_interval_abs_le {A y : ℝ} (hy : 0 ≤ y) (hyA : y ≤ A) :
    |∫ t in (2*A-y)..(2*A), criticalDecay t| ≤ y*criticalDecay A := by
  have h := intervalIntegral.norm_integral_le_of_norm_le_const
    (f:=criticalDecay) (a:=2*A-y) (b:=2*A) (C:=criticalDecay A) (fun t ht => ?_)
  · rw [Real.norm_eq_abs,show 2*A-(2*A-y)=y by ring,abs_of_nonneg hy] at h
    simpa only [mul_comm] using h
  · rw [uIoc_of_le (by linarith : 2*A-y ≤ 2*A)] at ht
    rw [Real.norm_eq_abs,abs_of_pos (by unfold criticalDecay;positivity)]
    unfold criticalDecay
    exact Real.exp_le_exp.mpr (by linarith [ht.1])

theorem actual_affine_error_increment_abs_le
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) {K A y : ℝ} (hK : 0 ≤ K)
    (hA : 1 ≤ A) (hy : 0 ≤ y) (hyA : y ≤ A)
    (hdecay : ∀ t : ℝ, 1 ≤ t → |actualPrimeRemainder t| ≤ K/t^2) :
    |actualAffineError (2*A-y)-actualAffineError (2*A)| ≤ K*y/A^2+y*criticalDecay A := by
  rw [actual_affine_error_increment hI (by linarith : 0 ≤ 2*A-y) (by linarith : 2*A-y ≤ 2*A)]
  calc
    _ ≤ |∫ t in (2*A-y)..(2*A), actualPrimeRemainder t|+
        |∫ t in (2*A-y)..(2*A), criticalDecay t| := by
      simpa only [abs_neg] using abs_add_le
        (-(∫ t in (2*A-y)..(2*A), actualPrimeRemainder t))
        (∫ t in (2*A-y)..(2*A), criticalDecay t)
    _ ≤ K*y/A^2+y*criticalDecay A := add_le_add
      (actual_prime_short_interval_abs_le hK hA hy hyA hdecay)
      (decay_short_interval_abs_le hy hyA)

theorem actual_moving_endpoint_error_abs_le
    (hI : IntegrableOn actualRemainder (Ioi (0:ℝ))) {K A y : ℝ} (hK : 0 ≤ K)
    (hA : 1 ≤ A) (hy : 0 ≤ y) (hyA : y ≤ A)
    (hdecay : ∀ t : ℝ, 1 ≤ t → |actualPrimeRemainder t| ≤ K/t^2) :
    |criticalDiscrepancyBridge A (2*A-y)-actualPrimeIntercept*y/(2*A)| ≤
      5*K*y/(4*A^2)+y*Real.exp (-A/2)+(y/A)*Real.exp (-A) := by
  have hpos : 0 < A := by linarith
  have hz : 0 ≤ y/(2*A) := div_nonneg hy (by linarith)
  have hb := actual_affine_error_abs_le (by linarith : 1 ≤ 2*A) hdecay
  have hi := actual_affine_error_increment_abs_le hI hK hA hy hyA hdecay
  rw [actual_moving_endpoint_dictionary hI hA hy hyA]
  calc
    _ = |(actualAffineError (2*A-y)-actualAffineError (2*A))+
          (y/(2*A))*actualAffineError (2*A)| := by congr 1;ring
    _ ≤ |actualAffineError (2*A-y)-actualAffineError (2*A)|+
          |(y/(2*A))*actualAffineError (2*A)| := abs_add_le _ _
    _ ≤ (K*y/A^2+y*criticalDecay A)+(y/(2*A))*(K/(2*A)+2*criticalDecay (2*A)) := by
      rw [abs_mul,abs_of_nonneg hz]
      exact add_le_add hi (mul_le_mul_of_nonneg_left hb hz)
    _ = 5*K*y/(4*A^2)+y*Real.exp (-A/2)+(y/A)*Real.exp (-A) := by
      unfold criticalDecay
      rw [show -(2*A)/2=-A by ring]
      field_simp [hpos.ne']
      ring

end ContinuousResearch.ActualMovingEndpoint
