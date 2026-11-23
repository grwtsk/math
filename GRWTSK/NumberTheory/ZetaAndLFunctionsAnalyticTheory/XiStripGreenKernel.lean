/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.DerivHyp
import Mathlib.Analysis.SpecialFunctions.Artanh
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Series
import Mathlib.Tactic

/-! The midpoint Green kernel in a strip, its exponential localization and Fourier weight. -/

namespace GRWTSK.XiStripGreenKernel
open Real Set
noncomputable section

def ratio (k d x : ℝ) := sin (k*d) / cosh (k*x)

def green (k d x : ℝ) := artanh (ratio k d x)

theorem ratio_bounds {k d D : ℝ} (hk : 0 < k) (hd : 0 ≤ d) (hdD : d ≤ D)
    (hD : k*D < π/2) (x : ℝ) : 0 ≤ ratio k d x ∧ ratio k d x ≤ sin (k*D) := by
  have hkd := mul_nonneg hk.le hd
  have hle := mul_le_mul_of_nonneg_left hdD hk.le
  have hsin := sin_nonneg_of_nonneg_of_le_pi hkd (by linarith [pi_pos])
  exact ⟨div_nonneg hsin (cosh_pos _).le,
    (div_le_self hsin (one_le_cosh _)).trans
      (sin_le_sin_of_le_of_le_pi_div_two (by linarith [pi_pos]) hD.le hle)⟩

theorem ratio_lt_one {k d D : ℝ} (hk : 0 < k) (hd : 0 ≤ d) (hdD : d ≤ D)
    (hD : k*D < π/2) (x : ℝ) : ratio k d x < 1 := by
  have h0 := mul_nonneg hk.le (hd.trans hdD)
  have hlo : -(π/2) ≤ k*D := by linarith [pi_pos]
  have hs := sin_lt_sin_of_lt_of_le_pi_div_two hlo (le_refl (π/2)) hD
  rw [sin_pi_div_two] at hs
  exact (ratio_bounds hk hd hdD hD x).2.trans_lt hs

theorem artanh_bounds {q : ℝ} (hq : 0 ≤ q) (hu : q < 1) :
    q ≤ artanh q ∧ artanh q ≤ q/(1-q) := by
  have hp : 0 < 1+q := by linarith
  have hm : 0 < 1-q := by linarith
  rw [artanh_eq_half_log ⟨by linarith,hu.le⟩,log_div hp.ne' hm.ne']
  constructor
  · let f := fun x : ℝ => log (1+x)-log (1-x)-2*x
    have hd (x : ℝ) (hx : x ∈ Icc 0 q) :
        HasDerivAt f ((1+x)⁻¹+(1-x)⁻¹-2) x := by
      have h1 : 1+x ≠ 0 := by linarith [hx.1]
      have h2 : 1-x ≠ 0 := by linarith [hx.2]
      convert ((((hasDerivAt_id x).const_add 1).log h1).sub
        (((hasDerivAt_id x).const_sub 1).log h2)).sub ((hasDerivAt_id x).const_mul 2) using 1
      · rfl
      · simp [one_div]
        ring
    have mono : MonotoneOn f (Icc 0 q) := monotoneOn_of_deriv_nonneg (convex_Icc _ _)
      (fun x hx => (hd x hx).continuousAt.continuousWithinAt)
      (fun x hx => (hd x (interior_subset hx)).differentiableAt.differentiableWithinAt) (fun x hx => by
        have h := interior_subset hx
        rw [(hd x h).deriv]
        have h1 : 0 < 1+x := by linarith [h.1]
        have h2 : 0 < 1-x := by linarith [h.2]
        field_simp
        nlinarith [sq_nonneg x])
    have h := mono (left_mem_Icc.mpr hq) (right_mem_Icc.mpr hq) hq
    simp [f] at h
    linarith
  · have h := log_le_sub_one_of_pos (div_pos hp hm)
    rw [log_div hp.ne' hm.ne'] at h
    have he : (1+q)/(1-q)-1 = 2*(q/(1-q)) := by field_simp; ring
    linarith [he]

theorem half_log_green {k d x : ℝ} (hl : 0 ≤ ratio k d x) (hu : ratio k d x < 1) :
    green k d x = (1/2)*log ((cosh (k*x)+sin (k*d))/(cosh (k*x)-sin (k*d))) := by
  rw [green,artanh_eq_half_log ⟨by linarith,hu.le⟩]
  congr 2
  unfold ratio
  field_simp

theorem quadratic_cosh (x : ℝ) : x^2/2 ≤ cosh x := by
  have h := (Real.hasSum_cosh x).summable.le_tsum 1 (fun i _ => by
    exact div_nonneg (by rw [pow_mul]; positivity) (Nat.cast_nonneg _))
  simpa [← Real.cosh_eq_tsum, Nat.factorial] using h

theorem scaled_prime_coefficient {y : ℝ} (hy : 0 < y) :
    (1/2)*(1/y^2)/((y+y⁻¹)/2)-1/y = -((1/2)/((y+y⁻¹)/2)) := by
  have hn : y+y⁻¹ ≠ 0 := (add_pos hy (inv_pos.mpr hy)).ne'
  field_simp
  ring

end
end GRWTSK.XiStripGreenKernel
