import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilGammaData
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilOddBoundarySignalBounds
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Bounds
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-!
# Sine transform of the odd Weil boundary kernel

Local attribution is to grwtsk contributors.

This is the kernel calculation used in Section 2 of
`documentation/mathematics/_support/reviews/weil-odd-output-trace.md`. On
the positive half-line, `parityKernel 0` expands as the sum of exponentials
with rates `2*j+1/2`. The bound `|sin(w*r)| ≤ |w|*r` and the half-line
exponential first moment give an inverse-square bound on the absolute
integral of each term. The resulting summable majorant permits termwise
integration on the entire interval.

The exponential-sine antiderivative gives the exact finite-interval
integral. At an actual frequency `π*n/T`, the sine at `2*T` vanishes and
the cosine equals one. Both endpoint evaluations therefore give the same
exponential weight and denominator as the boundary signal. A separate
pointwise bound near zero proves integrability of the product with sine
directly. The zero frequency has zero sine transform, and the theorem
includes it. The full source matrix comparison requires additional
identities. Independent mathematical review and novelty assessment are
pending.
-/

set_option autoImplicit false
noncomputable section

open MeasureTheory Set

namespace GRWTSK.NumberTheory.WeilQuadraticForm.OddKernelSineTransform

open OddRootProjection OddBoundarySignalBounds

private def rate (j : ℕ) : ℝ := 2 * (j : ℝ) + 1 / 2

private theorem rate_pos (j : ℕ) : 0 < rate j := by unfold rate; positivity

private def exponential (j : ℕ) (r : ℝ) : ℝ := Real.exp (-(rate j * r))

private theorem exponential_eq (j : ℕ) (r : ℝ) :
    exponential j r = Real.exp (-r / 2) * (Real.exp (-2 * r)) ^ j := by
  rw [← Real.exp_nat_mul, ← Real.exp_add]
  unfold exponential rate
  congr 1
  ring

private theorem ratio_lt_one {r : ℝ} (hr : 0 < r) :
    Real.exp (-2 * r) < 1 := Real.exp_lt_one_iff.mpr (by linarith)

theorem parityKernel_zero_exp_summable {r : ℝ} (hr : 0 < r) :
    Summable (fun j : ℕ ↦ Real.exp (-((2 * (j : ℝ) + 1 / 2) * r))) :=
  ((summable_geometric_of_lt_one (Real.exp_nonneg _) (ratio_lt_one hr)).mul_left
    (Real.exp (-r / 2))).congr (fun j ↦ (exponential_eq j r).symm)

/-- On the positive half-line the base gamma kernel is its literal geometric expansion. -/
theorem parityKernel_zero_eq_tsum {r : ℝ} (hr : 0 < r) :
    parityKernel 0 r = ∑' j : ℕ, Real.exp (-((2 * (j : ℝ) + 1 / 2) * r)) := by
  change parityKernel 0 r = ∑' j, exponential j r
  simp_rw [exponential_eq]
  rw [tsum_mul_left, tsum_geometric_of_lt_one (Real.exp_nonneg _) (ratio_lt_one hr)]
  unfold parityKernel
  simp only [Nat.cast_zero, zero_add, div_eq_mul_inv, one_mul, neg_mul,
    mul_comm ((2 : ℝ)⁻¹) r]

private def expSine (a w r : ℝ) : ℝ := Real.exp (-(a * r)) * Real.sin (w * r)

private def expSinePrimitive (a w r : ℝ) : ℝ :=
  -Real.exp (-(a * r)) * (a * Real.sin (w * r) + w * Real.cos (w * r)) /
    (a ^ 2 + w ^ 2)

private theorem hasDerivAt_expSinePrimitive {a : ℝ} (ha : 0 < a) (w r : ℝ) :
    HasDerivAt (expSinePrimitive a w) (expSine a w r) r := by
  have he := (((hasDerivAt_id r).const_mul a).neg.exp).neg
  have hs := (((hasDerivAt_id r).const_mul w).sin).const_mul a
  have hc := (((hasDerivAt_id r).const_mul w).cos).const_mul w
  have h := (he.mul (hs.add hc)).div_const (a ^ 2 + w ^ 2)
  have hd : a ^ 2 + w ^ 2 ≠ 0 := by positivity
  convert h using 1
  · funext x
    rfl
  · dsimp [expSine, id]
    field_simp [hd]
    ring

private theorem continuous_expSine (a w : ℝ) : Continuous (expSine a w) := by
  unfold expSine
  fun_prop

private theorem frequency_mul_twice (T : ℝ) (hT : 0 < T) (n : ℕ) :
    Real.pi * (n : ℝ) / T * (2 * T) = (n : ℝ) * (2 * Real.pi) := by
  field_simp [hT.ne']

private theorem integral_expSine_frequency (T : ℝ) (hT : 0 < T) {a : ℝ} (ha : 0 < a)
    (n : ℕ) :
    (∫ r in Ioo 0 (2 * T), expSine a (Real.pi * (n : ℝ) / T) r) =
      (Real.pi * (n : ℝ) / T) * (1 - Real.exp (-2 * a * T)) /
        (a ^ 2 + (Real.pi * (n : ℝ) / T) ^ 2) := by
  let w := Real.pi * (n : ℝ) / T
  change (∫ r in Ioo 0 (2 * T), expSine a w r) =
    w * (1 - Real.exp (-2 * a * T)) / (a ^ 2 + w ^ 2)
  have hw := frequency_mul_twice T hT n
  change w * (2 * T) = (n : ℝ) * (2 * Real.pi) at hw
  have hs : Real.sin (w * (2 * T)) = 0 := by
    rw [hw, show (n : ℝ) * (2 * Real.pi) = ((2 * n : ℕ) : ℝ) * Real.pi by push_cast; ring,
      Real.sin_nat_mul_pi]
  have hc : Real.cos (w * (2 * T)) = 1 := by rw [hw, Real.cos_nat_mul_two_pi]
  rw [← integral_Ioc_eq_integral_Ioo, ← intervalIntegral.integral_of_le (by positivity),
    intervalIntegral.integral_eq_sub_of_hasDerivAt (fun r _ ↦ hasDerivAt_expSinePrimitive ha w r)
      ((continuous_expSine a w).intervalIntegrable _ _)]
  simp only [expSinePrimitive, hs, hc, mul_zero, mul_one, zero_add, Real.sin_zero,
    Real.cos_zero, neg_zero, Real.exp_zero, neg_mul]
  rw [show -(a * (2 * T)) = -(2 * a * T) by ring]
  ring

private def moment (a r : ℝ) : ℝ := r * Real.exp (-(a * r))

private theorem moment_integrable {a : ℝ} (ha : 0 < a) :
    IntegrableOn (moment a) (Ioi 0) := by
  have hΓ : IntegrableOn (fun r : ℝ ↦ Real.exp (-r) * r) (Ioi 0) := by
    have h := Real.GammaIntegral_convergent (s := 2) (by norm_num)
    norm_num at h
    exact h
  have hscale := (integrableOn_Ioi_comp_mul_left_iff (fun r : ℝ ↦ Real.exp (-r) * r) 0 ha).2
    (by simpa only [mul_zero] using hΓ)
  have heq : moment a = fun r ↦ (1 / a) * (Real.exp (-(a * r)) * (a * r)) := by
    funext r
    unfold moment
    field_simp [ha.ne']
  rw [heq]
  exact hscale.const_mul _

private theorem integral_moment {a : ℝ} (ha : 0 < a) :
    ∫ r in Ioi 0, moment a r = 1 / a ^ 2 := by
  have h := Real.integral_rpow_mul_exp_neg_mul_Ioi (a := 2) (r := a) (by norm_num) ha
  have hΓ := Real.Gamma_nat_eq_factorial 1
  norm_num at hΓ
  norm_num [hΓ, Real.rpow_natCast] at h
  simpa [moment, one_div, inv_pow] using h

private theorem expSine_integrable (T a w : ℝ) :
    IntegrableOn (expSine a w) (Ioo 0 (2 * T)) :=
  ((continuous_expSine a w).continuousOn.integrableOn_Icc).mono_set Ioo_subset_Icc_self

private theorem expSine_normIntegral_le (T w : ℝ) {a : ℝ} (ha : 0 < a) :
    ∫ r in Ioo 0 (2 * T), ‖expSine a w r‖ ≤ |w| * (1 / a ^ 2) := by
  have hm : IntegrableOn (fun r ↦ |w| * moment a r) (Ioi 0) :=
    (moment_integrable ha).const_mul _
  calc
    _ ≤ ∫ r in Ioo 0 (2 * T), |w| * moment a r := by
      refine setIntegral_mono_on (expSine_integrable T a w).norm
        (hm.mono_set Ioo_subset_Ioi_self) measurableSet_Ioo (fun r hr ↦ ?_)
      have hs : |Real.sin (w * r)| ≤ |w| * r := by
        simpa only [abs_mul, abs_of_pos hr.1] using Real.abs_sin_le_abs (x := w * r)
      rw [Real.norm_eq_abs, expSine, abs_mul, abs_of_pos (Real.exp_pos _), moment]
      exact (mul_le_mul_of_nonneg_left hs (Real.exp_nonneg _)).trans_eq (by ring)
    _ ≤ ∫ r in Ioi 0, |w| * moment a r := by
      exact setIntegral_mono_set hm (ae_restrict_of_forall_mem measurableSet_Ioi (fun r hr ↦ by
        unfold moment
        exact mul_nonneg (abs_nonneg _) (mul_nonneg hr.le (Real.exp_nonneg _))))
        Ioo_subset_Ioi_self.eventuallySubset
    _ = _ := by rw [integral_const_mul, integral_moment ha]

private theorem normIntegral_summable (T w : ℝ) :
    Summable (fun j ↦ ∫ r in Ioo 0 (2 * T), ‖expSine (rate j) w r‖) := by
  have hp := (Real.summable_one_div_nat_pow (p := 2)).2 (by decide)
  have hshift := (summable_nat_add_iff (f := fun j : ℕ ↦ 1 / (j : ℝ) ^ 2) 1).2 hp
  refine Summable.of_nonneg_of_le (fun j ↦ integral_nonneg (fun r ↦ norm_nonneg _))
    (fun j ↦ ?_) ((hshift.mul_left 4).mul_left |w|)
  have hj : 0 ≤ (j : ℝ) := Nat.cast_nonneg _
  have hden : ((j : ℝ) + 1) ^ 2 / 4 ≤ rate j ^ 2 := by
    unfold rate
    nlinarith [sq_nonneg (j : ℝ)]
  refine (expSine_normIntegral_le T w (rate_pos j)).trans
    (mul_le_mul_of_nonneg_left ?_ (abs_nonneg _))
  calc
    _ ≤ 1 / (((j : ℝ) + 1) ^ 2 / 4) := one_div_le_one_div_of_le (by positivity) hden
    _ = _ := by push_cast; field_simp

private theorem norm_kernel_mul_sin_le (w : ℝ) {r : ℝ} (hr : 0 < r) :
    ‖parityKernel 0 r * Real.sin (w * r)‖ ≤ |w| * (1 / 2 + r) := by
  have hden := sub_pos.mpr (ratio_lt_one hr)
  have hnum : Real.exp (-(1 / 2 : ℝ) * r) ≤ 1 := Real.exp_le_one_iff.mpr (by linarith)
  have hscale := mul_le_mul_of_nonneg_right (Real.add_one_le_exp (2 * r)) (Real.exp_nonneg (-2 * r))
  rw [← Real.exp_add, show 2 * r + -2 * r = 0 by ring, Real.exp_zero] at hscale
  have hd : r ≤ (1 / 2 + r) * (1 - Real.exp (-2 * r)) := by nlinarith
  have hs : |Real.sin (w * r)| ≤ |w| * r := by
    simpa only [abs_mul, abs_of_pos hr] using Real.abs_sin_le_abs (x := w * r)
  unfold parityKernel
  simp only [Nat.cast_zero, zero_add, Real.norm_eq_abs, abs_mul,
    abs_of_nonneg (div_nonneg (Real.exp_nonneg _) hden.le)]
  calc
    _ ≤ (Real.exp (-(1 / 2) * r) / (1 - Real.exp (-2 * r))) * (|w| * r) :=
      mul_le_mul_of_nonneg_left hs (div_nonneg (Real.exp_nonneg _) hden.le)
    _ ≤ (|w| * r) / (1 - Real.exp (-2 * r)) := by
      rw [div_mul_eq_mul_div]
      exact div_le_div_of_nonneg_right (mul_le_of_le_one_left (by positivity) hnum) hden.le
    _ ≤ _ := (div_le_iff₀ hden).2 (by
      rw [mul_assoc]
      exact mul_le_mul_of_nonneg_left hd (abs_nonneg _))

/-- Multiplication by the sine factor removes the nonintegrable boundary singularity. -/
theorem integrableOn_parityKernel_zero_mul_sin (T w : ℝ) (_hT : 0 < T) :
    IntegrableOn (fun r ↦ parityKernel 0 r * Real.sin (w * r)) (Ioo 0 (2 * T)) := by
  have hm : Measurable (fun r ↦ parityKernel 0 r * Real.sin (w * r)) := by
    unfold parityKernel
    fun_prop
  have hbound : IntegrableOn (fun _ : ℝ ↦ |w| * (1 / 2 + 2 * T)) (Ioo 0 (2 * T)) := by
    exact integrableOn_const (by rw [Real.volume_Ioo]; exact ENNReal.ofReal_ne_top) (by finiteness)
  refine hbound.mono' hm.aestronglyMeasurable (ae_restrict_of_forall_mem measurableSet_Ioo ?_)
  intro r hr
  exact (norm_kernel_mul_sin_le w hr.1).trans
    (mul_le_mul_of_nonneg_left (by linarith [hr.2]) (abs_nonneg _))

/-- The literal base kernel has the boundary-signal sine transform at each actual frequency. -/
theorem integral_parityKernel_zero_mul_sine_frequency (T : ℝ) (hT : 0 < T) (n : ℕ) :
    (∫ r in Ioo 0 (2 * T), parityKernel 0 r * Real.sin ((Real.pi * (n : ℝ) / T) * r)) =
      (Real.pi * (n : ℝ) / T) * boundarySignal T n := by
  let w := Real.pi * (n : ℝ) / T
  calc
    _ = ∫ r in Ioo 0 (2 * T), ∑' j, expSine (rate j) w r := by
      refine setIntegral_congr_fun measurableSet_Ioo (fun r hr ↦ ?_)
      rw [parityKernel_zero_eq_tsum hr.1, ← tsum_mul_right]
      rfl
    _ = ∑' j, ∫ r in Ioo 0 (2 * T), expSine (rate j) w r :=
      (integral_tsum_of_summable_integral_norm (fun j ↦ expSine_integrable T (rate j) w)
        (normIntegral_summable T w)).symm
    _ = _ := by
      rw [boundarySignal_eq_tsum, ← tsum_mul_left]
      refine tsum_congr (fun j ↦ ?_)
      rw [integral_expSine_frequency T hT (rate_pos j) n]
      unfold rate
      ring

end GRWTSK.NumberTheory.WeilQuadraticForm.OddKernelSineTransform
