/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiGaussianTransverseMoment
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.XiTransverseHeatKernel
import Mathlib.Analysis.Calculus.LocalExtr.Rolle
import Mathlib.MeasureTheory.Integral.DominatedConvergence

/-! Exact Gaussian averaging of the isotropic xi divisor scans and the two-scale criterion. -/

namespace GRWTSK.XiGaussianScanSemigroup
open Real MeasureTheory Set GRWTSK.XiGaussianTransverseMoment
open GRWTSK.NumberTheory.SpectralProductDivisorReturn
open GRWTSK.NumberTheory.Zeta.CompletedQuotientSource
noncomputable section

/-- Isotropic Gaussian sum, retaining the full analytic order. -/
def isotropic (t b : ℝ) := scan t b t

private theorem xi_countable : Countable XiZero := by
  have h := (weight_summable (by norm_num : (0:ℝ)<1) 0).countable_support
  have he : Function.support (weight 1 0) = univ := by
    ext z
    simp [Function.mem_support,(weight_pos 1 0 z).ne']
  exact countable_univ_iff.mp (he ▸ h)

theorem convolve_double {t : ℝ} (ht : 0 < t) (b : ℝ) :
    (∫ c : ℝ, exp (-(2*t*(b-c)^2))*isotropic (2*t) c) =
      scan t b (2*t) * sqrt (π/(4*t)) := by
  let _ := xi_countable
  let m := fun z : XiZero => (analyticOrderNatAt xi z.val : ℝ)
  let F := fun (z : XiZero) (c : ℝ) => m z *
    (exp (-(2*t*(b-c)^2))*exp (-(2*t*((z.val.im-c)^2+(z.val.re-1/2)^2))))
  let Q := fun z : XiZero => weight t b z * exp (-(2*t*transverse z))
  let A := sqrt (π/(4*t))
  have h2 : 0 < 2*t := by positivity
  have integ (z : XiZero) : (∫ c, F z c) = Q z * A := by
    dsimp only [F]
    rw [integral_const_mul, GRWTSK.XiTransverseHeatKernel.gaussian_scan_integral h2 h2]
    have hp : 2*t*(2*t)/(2*t+2*t) = t := by field_simp; ring
    rw [hp,show 2*t+2*t=4*t by ring]
    simp only [Q,weight,transverse,A,m,neg_add_rev,exp_add]
    ring
  have nonneg (z : XiZero) (c : ℝ) : 0 ≤ F z c := by dsimp [F,m]; positivity
  have intF (z : XiZero) : Integrable (F z) := by
    have hi : Integrable (fun c : ℝ => exp (-(2*t)*(b-c)^2)) :=
      (integrable_comp_sub_left _ b).2 (integrable_exp_neg_mul_sq h2)
    apply (hi.const_mul (m z)).mono' (by dsimp [F]; fun_prop)
    filter_upwards with c
    rw [Real.norm_of_nonneg (nonneg z c)]
    dsimp [F]
    apply mul_le_mul_of_nonneg_left _ (Nat.cast_nonneg _)
    rw [neg_mul]
    exact mul_le_of_le_one_right (exp_pos _).le (exp_le_one_iff.mpr (neg_nonpos.mpr (by positivity)))
  have hs : Summable Q := by
    apply Summable.of_norm_bounded (weight_summable ht b)
    intro z
    rw [Real.norm_of_nonneg (mul_nonneg (weight_pos _ _ _).le (exp_pos _).le)]
    exact mul_le_of_le_one_right (weight_pos _ _ _).le (exp_le_one_iff.mpr
      (neg_nonpos.mpr (mul_nonneg h2.le (transverse_bounds z).1)))
  have hnorm : Summable (fun z => ∫ c, ‖F z c‖) := by
    simp_rw [Real.norm_of_nonneg (nonneg _ _),integ]
    exact hs.mul_right A
  have hF (c : ℝ) : exp (-(2*t*(b-c)^2))*isotropic (2*t) c = ∑' z, F z c := by
    unfold isotropic scan
    rw [← tsum_mul_left]
    apply tsum_congr
    intro z
    simp only [F,m,weight,transverse,mul_add,neg_add_rev,exp_add]
    ring
  simp_rw [hF]
  rw [← integral_tsum_of_summable_integral_norm intF hnorm]
  simp_rw [integ]
  exact tsum_mul_right

theorem two_scale_iff_RH {t : ℝ} (ht : 0 < t) (b : ℝ) :
    (∫ c : ℝ, exp (-(2*t*(b-c)^2))*isotropic (2*t) c) =
      isotropic t b * sqrt (π/(4*t)) ↔ _root_.RiemannHypothesis := by
  rw [convolve_double ht]
  have ha : sqrt (π/(4*t)) ≠ 0 := (sqrt_pos.mpr (by positivity)).ne'
  rw [mul_left_inj' ha]
  constructor
  · intro hh
    have hc : ContinuousOn (scan t b) (Icc t (2*t)) :=
      fun x hx => (scan_hasDerivAt ht (ht.trans_le hx.1) b).continuousAt.continuousWithinAt
    obtain ⟨x,hx,hd⟩ := exists_deriv_eq_zero (by linarith : t < 2*t) hc hh.symm
    exact (stationary_scan_iff_RH ht (ht.trans hx.1) b).mp hd
  · intro h
    have hv (z : XiZero) : transverse z = 0 := by
      obtain ⟨hz,htr,hp⟩ := (xi_eq_zero_iff_nontrivialZetaZero _).mp z.2
      simp [transverse,h _ hz htr hp]
    simp [isotropic,scan,hv]

end
end GRWTSK.XiGaussianScanSemigroup
