/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Exp
import Mathlib.Tactic

/-! Scaled exterior Taylor tests and arithmetic prime envelopes. -/

namespace GRWTSK.XiExteriorTaylorScale

/-- At an unknown zero beyond two probe widths each Taylor contribution of
order at least two is paid by its own Poisson mass. -/
theorem distant_pole_charge {r η D : ℝ} (hr : 0 < r) (hη : r / 2 ≤ η)
    (hD : 2*r ≤ D) (k : ℕ) :
    r^(k+2) / D^(k+3) ≤ η / D^2 := by
  have hD' : 0 < D := by linarith
  have hk := pow_le_pow_left₀ hr.le (show r ≤ D by linarith) k
  have hprod : r^2 ≤ η*D := by
    have h := mul_le_mul hη hD (by linarith : 0 ≤ 2*r) (by linarith : 0 ≤ η)
    nlinarith
  have h := mul_le_mul hk hprod (sq_nonneg r) (pow_nonneg hD'.le k)
  apply (div_le_div_iff₀ (pow_pos hD' _) (sq_pos_of_pos hD')).2
  rw [pow_add r k 2, pow_add D k 3]
  nlinarith [mul_le_mul_of_nonneg_right h (sq_nonneg D)]

/-- A critical-line pole is paid at every positive derivative order. -/
theorem central_pole_charge {r D : ℝ} (hr : 0 < r) (hD : r ≤ D) (k : ℕ) :
    r^(k+1)/D^(k+2) ≤ r/D^2 := by
  have hd := hr.trans_le hD
  have h := pow_le_pow_left₀ hr.le hD k
  apply (div_le_div_iff₀ (pow_pos hd _) (sq_pos_of_pos hd)).2
  rw [pow_add D k 2, pow_succ]
  nlinarith [mul_nonneg (sub_nonneg.mpr h) (mul_nonneg hr.le (sq_nonneg D))]

/-- The near-pole excess starts exactly when the transverse displacement
overcomes the squared height separation at the chosen horizontal scale. -/
theorem moving_disk_gap (r δ t : ℝ) :
    r^2-((r-δ)^2+t^2) = δ*(2*r-δ)-t^2 := by ring

/-- A positive exponential tilt of a single Dirichlet term; summation
bounds the complete Euler derivative by a lower real abscissa. -/
theorem tilted_monomial {x h : ℝ} (hx : 0 ≤ x) (hh : 0 < h) (k : ℕ) :
    h^k * x^k / (k.factorial : ℝ) ≤ Real.exp (h*x) := by
  rw [← mul_pow]
  exact Real.pow_div_factorial_le_exp (h*x) (mul_nonneg hh.le hx) k

end GRWTSK.XiExteriorTaylorScale
