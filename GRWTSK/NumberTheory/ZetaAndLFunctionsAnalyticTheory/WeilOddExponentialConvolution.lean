import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddSineProjection
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddOutputTrace
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Deriv
import Mathlib.MeasureTheory.Integral.IntervalIntegral.FundThmCalculus

/-!
# Finite exponential convolution of an odd Weil sine mode

Local attribution is to grwtsk contributors.

The calculation isolates one exponential in the periodic-boundary kernel expansion.
Split the window at the observation point and use the exponential-sine
primitive with opposite rate signs on the two intervals. The interior
cosine terms cancel. The endpoint sine terms vanish at the actual
frequency, and the endpoint cosine terms combine into the signed
hyperbolic sine contribution.

The result applies to the literal `zeroExtendedSine` with its original
normalization, and its vanishing outside the window identifies the
whole-line integral. The formula includes the zero mode and both
window endpoints. It supplies a single kernel term for the boundary
comparison. Passing to the infinite sum and establishing the operator
domain require their own arguments. Independent mathematical review and
novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddExponentialConvolution

open OddRootProjection OddOutputTrace

private def expSinePrimitive (a w x : ℝ) : ℝ :=
  Real.exp (a * x) * (a * Real.sin (w * x) - w * Real.cos (w * x)) / (a ^ 2 + w ^ 2)

private theorem hasDerivAt_expSinePrimitive {a : ℝ} (ha : a ≠ 0) (w x : ℝ) :
    HasDerivAt (expSinePrimitive a w) (Real.exp (a * x) * Real.sin (w * x)) x := by
  have he := ((hasDerivAt_id x).const_mul a).exp
  have hs := (((hasDerivAt_id x).const_mul w).sin).const_mul a
  have hc := (((hasDerivAt_id x).const_mul w).cos).const_mul w
  have h := (he.mul (hs.sub hc)).div_const (a ^ 2 + w ^ 2)
  have hd : a ^ 2 + w ^ 2 ≠ 0 := by positivity
  convert h using 1
  · funext y
    rfl
  · dsimp [id]
    field_simp [hd]
    ring

private theorem integral_exp_sin {a : ℝ} (ha : a ≠ 0) (w lo hi : ℝ) :
    (∫ s in lo..hi, Real.exp (a * s) * Real.sin (w * s)) =
      expSinePrimitive a w hi - expSinePrimitive a w lo := by
  have hcont : Continuous (fun s : ℝ ↦ Real.exp (a * s) * Real.sin (w * s)) := by fun_prop
  exact intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun s _ ↦ hasDerivAt_expSinePrimitive ha w s) (hcont.intervalIntegrable _ _)

private theorem exp_abs_split (a w T t : ℝ) (ht : t ∈ Icc (-T) T) :
    (∫ s in (-T)..T, Real.exp (-a * |t - s|) * Real.sin (w * s)) =
      Real.exp (-a * t) * (∫ s in (-T)..t, Real.exp (a * s) * Real.sin (w * s)) +
        Real.exp (a * t) * (∫ s in t..T, Real.exp (-a * s) * Real.sin (w * s)) := by
  have hcont : Continuous (fun s : ℝ ↦ Real.exp (-a * |t - s|) * Real.sin (w * s)) := by fun_prop
  rw [← intervalIntegral.integral_add_adjacent_intervals (hcont.intervalIntegrable _ _)
    (hcont.intervalIntegrable _ _)]
  congr 1
  · rw [← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    rw [uIcc_of_le ht.1]
    intro s hs
    dsimp only
    rw [abs_of_nonneg (sub_nonneg.mpr hs.2), ← mul_assoc, ← Real.exp_add]
    rw [show -a * (t - s) = -a * t + a * s by ring]
  · rw [← intervalIntegral.integral_const_mul]
    apply intervalIntegral.integral_congr
    rw [uIcc_of_le ht.2]
    intro s hs
    dsimp only
    rw [abs_of_nonpos (sub_nonpos.mpr hs.1), ← mul_assoc, ← Real.exp_add]
    rw [show -a * -(t - s) = a * t + -a * s by ring]

/-- Convolution of one exponential with the sine on the closed source interval. -/
theorem integral_exp_abs_mul_sin (T : ℝ) (hT : 0 < T) (n : ℕ) {a t : ℝ}
    (ha : 0 < a) (ht : t ∈ Icc (-T) T) :
    (∫ s in Icc (-T) T, Real.exp (-a * |t - s|) * Real.sin (frequency T n * s)) =
      (2 * a * Real.sin (frequency T n * t) -
        2 * (-1 : ℝ) ^ n * frequency T n * Real.exp (-a * T) * Real.sinh (a * t)) /
          (a ^ 2 + frequency T n ^ 2) := by
  let w := frequency T n
  change (∫ s in Icc (-T) T, Real.exp (-a * |t - s|) * Real.sin (w * s)) =
    (2 * a * Real.sin (w * t) - 2 * (-1 : ℝ) ^ n * w * Real.exp (-a * T) * Real.sinh (a * t)) /
      (a ^ 2 + w ^ 2)
  have hfreq : w * T = (n : ℝ) * Real.pi := by
    unfold w frequency
    field_simp [hT.ne']
  have hsT : Real.sin (w * T) = 0 := by rw [hfreq, Real.sin_nat_mul_pi]
  have hcT : Real.cos (w * T) = (-1 : ℝ) ^ n := by rw [hfreq, Real.cos_nat_mul_pi]
  have hsneg : Real.sin (w * -T) = 0 := by rw [mul_neg, Real.sin_neg, hsT, neg_zero]
  have hcneg : Real.cos (w * -T) = (-1 : ℝ) ^ n := by rw [mul_neg, Real.cos_neg, hcT]
  have hexp : Real.exp (-a * t) * Real.exp (a * t) = 1 := by
    rw [← Real.exp_add, show -a * t + a * t = 0 by ring, Real.exp_zero]
  have hd : a ^ 2 + w ^ 2 ≠ 0 := by positivity
  rw [integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le (by linarith : -T ≤ T),
    exp_abs_split a w T t ht, integral_exp_sin ha.ne' w, integral_exp_sin (neg_ne_zero.mpr ha.ne') w]
  simp only [expSinePrimitive, hsT, hcT, hsneg, hcneg, mul_zero, zero_sub, neg_sq,
    Real.sinh_eq]
  rw [show a * -T = -a * T by ring]
  simp only [neg_mul] at hexp ⊢
  field_simp [hd]
  simp only [mul_comm t w]
  linear_combination (2 * a * Real.sin (w * t)) * hexp

/-- The same convolution for the existing literal normalized, zero-extended sine. -/
theorem integral_exp_abs_mul_zeroExtendedSine (T : ℝ) (hT : 0 < T) (n : ℕ) {a t : ℝ}
    (ha : 0 < a) (ht : t ∈ Icc (-T) T) :
    (∫ s in Icc (-T) T, Real.exp (-a * |t - s|) * zeroExtendedSine T n s) =
      ((2 * a * Real.sin (frequency T n * t) -
        2 * (-1 : ℝ) ^ n * frequency T n * Real.exp (-a * T) * Real.sinh (a * t)) /
          (a ^ 2 + frequency T n ^ 2)) / Real.sqrt T := by
  calc
    _ = ∫ s in Icc (-T) T,
        (Real.exp (-a * |t - s|) * Real.sin (frequency T n * s)) / Real.sqrt T := by
      refine setIntegral_congr_fun measurableSet_Icc (fun s hs ↦ ?_)
      rw [zeroExtendedSine, ite_eq_left hs]
      have hf : Real.pi * (n : ℝ) * s / T = frequency T n * s := by
        unfold frequency
        ring
      rw [hf]
      exact (mul_div_assoc _ _ _).symm
    _ = _ := by rw [integral_div, integral_exp_abs_mul_sin T hT n ha ht]

/-- The whole-line integral has the same value because the literal sine vanishes outside the window. -/
theorem integral_exp_abs_mul_zeroExtendedSine_univ (T : ℝ) (hT : 0 < T) (n : ℕ) {a t : ℝ}
    (ha : 0 < a) (ht : t ∈ Icc (-T) T) :
    (∫ s : ℝ, Real.exp (-a * |t - s|) * zeroExtendedSine T n s) =
      ((2 * a * Real.sin (frequency T n * t) -
        2 * (-1 : ℝ) ^ n * frequency T n * Real.exp (-a * T) * Real.sinh (a * t)) /
          (a ^ 2 + frequency T n ^ 2)) / Real.sqrt T := by
  have hsupport :
      (∫ s in Icc (-T) T, Real.exp (-a * |t - s|) * zeroExtendedSine T n s) =
        ∫ s : ℝ, Real.exp (-a * |t - s|) * zeroExtendedSine T n s := by
    apply setIntegral_eq_integral_of_forall_compl_eq_zero
    intro s hs
    simp [zeroExtendedSine, hs]
  rw [← hsupport, integral_exp_abs_mul_zeroExtendedSine T hT n ha ht]

end GRWTSK.NumberTheory.WeilQuadraticForm.OddExponentialConvolution
