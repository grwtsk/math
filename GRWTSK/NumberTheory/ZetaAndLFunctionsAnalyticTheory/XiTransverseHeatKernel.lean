/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Gaussian.GaussianIntegral
import Mathlib.Analysis.SpecialFunctions.Log.Deriv
import Mathlib.Tactic

/-! Gaussian convolution, heat production, and a positive finite inversion formula. -/

namespace GRWTSK.XiTransverseHeatKernel
open Real MeasureTheory
noncomputable section

def kernel (h x d : ℝ) := exp (-(log h)/2-(x^2+d^2)/(4*h))

theorem kernel_time {h : ℝ} (hh : 0 < h) (x d : ℝ) :
    HasDerivAt (fun v => kernel v x d)
      (kernel h x d * (-1/(2*h)+(x^2+d^2)/(4*h^2))) h := by
  have hd := (((Real.hasDerivAt_log hh.ne').neg.div_const 2).sub
    ((hasDerivAt_const h (x^2+d^2)).div ((hasDerivAt_id h).const_mul 4) (by simpa using hh.ne'))).exp
  convert hd using 1 <;> simp [kernel] <;> field_simp <;> ring

theorem kernel_space (h x d : ℝ) : HasDerivAt (fun y => kernel h y d)
    (kernel h x d * (-x/(2*h))) x := by
  have hd := ((hasDerivAt_const x (-(log h)/2)).sub
    ((((hasDerivAt_id x).pow 2).add_const (d^2)).div_const (4*h))).exp
  convert hd using 1 <;> simp [kernel] <;> ring

theorem kernel_space_twice {h : ℝ} (hh : 0 < h) (x d : ℝ) :
    HasDerivAt (deriv (fun y => kernel h y d))
    (kernel h x d * (x^2/(4*h^2)-1/(2*h))) x := by
  have hd := (kernel_space h x d).mul ((hasDerivAt_id x).neg.div_const (2*h))
  have he : deriv (fun y => kernel h y d) = fun y => kernel h y d * (-y/(2*h)) :=
    funext fun y => (kernel_space h y d).deriv
  rw [he]
  convert hd using 1
  · rfl
  · simp
    field_simp
    ring

theorem heat_production {h : ℝ} (hh : 0 < h) (x d : ℝ) :
    deriv (fun v => kernel v x d) h - deriv (deriv (fun y => kernel h y d)) x =
      kernel h x d * d^2/(4*h^2) := by
  rw [(kernel_time hh x d).deriv,(kernel_space_twice hh x d).deriv]
  field_simp
  ring

/-- The center integral of an isotropic scan at inverse width u recovers the
anisotropic weight at inverse longitudinal width su/(s+u). -/
theorem gaussian_scan_integral {s u : ℝ} (hs : 0 < s) (hu : 0 < u) (b g d : ℝ) :
    (∫ c : ℝ, exp (-(s*(b-c)^2)) * exp (-(u*((g-c)^2+d^2)))) =
      exp (-(s*u/(s+u)*(g-b)^2+u*d^2)) * sqrt (π/(s+u)) := by
  let a := (s*b+u*g)/(s+u)
  have hsu : s+u ≠ 0 := (add_pos hs hu).ne'
  have he (c : ℝ) : -(s*(b-c)^2) + -(u*((g-c)^2+d^2)) =
      -(s*u/(s+u)*(g-b)^2+u*d^2) + (-(s+u)*(c-a)^2) := by
    unfold a
    field_simp
    ring
  simp_rw [← exp_add,he,exp_add]
  rw [integral_const_mul]
  congr 1
  calc
    _ = ∫ c : ℝ, exp (-(s+u)*c^2) :=
      integral_sub_right_eq_self (fun c : ℝ => exp (-(s+u)*c^2)) a
    _ = _ := integral_gaussian _

/-- Exact residual when inverting q ↦ 1/q by positive geometric sums.
For q=exp(-t*d²), the residual vanishes on the critical line. -/
theorem inverse_sample_residual (q : ℝ) (N : ℕ) :
    1 - q * ∑ k ∈ Finset.range N, (1-q)^k = (1-q)^N := by
  induction N with
  | zero => simp
  | succ n ih =>
    rw [Finset.sum_range_succ,pow_succ]
    linarith only [ih,show q*((∑ k ∈ Finset.range n,(1-q)^k)+(1-q)^n) =
      q*(∑ k ∈ Finset.range n,(1-q)^k)+q*(1-q)^n by ring,
      show (1-q)^n*(1-q)=(1-q)^n-q*(1-q)^n by ring]

theorem inverse_sample_bounds {q q₀ : ℝ} (hl : q₀ ≤ q) (hu : q ≤ 1) (N : ℕ) :
    0 ≤ 1 - q * ∑ k ∈ Finset.range N, (1-q)^k ∧
    1 - q * ∑ k ∈ Finset.range N, (1-q)^k ≤ (1-q₀)^N := by
  rw [inverse_sample_residual]
  exact ⟨pow_nonneg (sub_nonneg.mpr hu) _,pow_le_pow_left₀ (sub_nonneg.mpr hu) (by linarith) _⟩

end
end GRWTSK.XiTransverseHeatKernel
