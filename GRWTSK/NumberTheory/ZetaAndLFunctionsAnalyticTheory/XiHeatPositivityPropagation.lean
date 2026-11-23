/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Analysis.SpecialFunctions.Log.Basic
import Mathlib.Data.Nat.Choose.Bounds
import Mathlib.Tactic.Linarith
import Mathlib.Tactic.NormNum
import Mathlib.Tactic.Ring

/-! Real-part layers in the ξ heat forms and separated low-ordinate interpolation. -/
namespace GRWTSK.XiHeatPositivityPropagation

/-- A reflected complex square has phase-independent singular values. -/
theorem pair_block_norm (a b x y : ℝ) :
    (a*x-b*y)^2 + (-b*x-a*y)^2 = (a^2+b^2)*(x^2+y^2) := by ring

/-- Bounds with the same exponential rate give a shrinking interval for that rate. -/
theorem decay_rate_interval {t A x b C : ℝ} (ht : 0<t) (hb : 0<b) (hC : 0<C)
    (hl : b*Real.exp (-A*t) ≤ x) (hu : x ≤ C*Real.exp (-A*t)) :
    A-Real.log C/t ≤ -Real.log x/t ∧ -Real.log x/t ≤ A-Real.log b/t := by
  have hpos : 0 < b*Real.exp (-A*t) := mul_pos hb (Real.exp_pos _)
  have h1 := Real.log_le_log hpos hl
  have h2 := Real.log_le_log (lt_of_lt_of_le hpos hl) hu
  rw [Real.log_mul hb.ne' (Real.exp_pos _).ne', Real.log_exp] at h1
  rw [Real.log_mul hC.ne' (Real.exp_pos _).ne', Real.log_exp] at h2
  constructor
  · rw [sub_div' ht.ne', div_le_div_iff_of_pos_right ht]
    linarith
  · rw [sub_div' ht.ne', div_le_div_iff_of_pos_right ht]
    linarith

/-- One four-unit ordinate cell per 4.1 units gives a stronger proportional
gap for non-adjacent cells. -/
theorem nonadjacent_gap {i j x y A : ℝ} (hij : i+2 ≤ j)
    (hx : x ≤ A+41/10*i+4) (hy : A+41/10*j ≤ y) :
    (41/20)*(j-i) ≤ y-x := by linarith

/-- Differences of squared ordinates gain both a difference and a sum factor. -/
theorem squared_node_gap {x y u v : ℝ} (hu : 0≤u) (hv : 0≤v)
    (hd : u ≤ y-x) (hs : v ≤ y+x) : u*v ≤ y^2-x^2 := by
  calc
    u*v ≤ (y-x)*(y+x) := mul_le_mul hd hs hv (hu.trans hd)
    _ = _ := by ring

/-- Uniform lower bound on the factorials to either side of an interpolation node. -/
theorem split_factorials {j m : ℕ} (h : j ≤ m) :
    m.factorial ≤ 2^m * j.factorial * (m-j).factorial := by
  have e := Nat.choose_mul_factorial_mul_factorial h
  calc
    m.factorial = m.choose j * j.factorial * (m-j).factorial := e.symm
    _ ≤ _ := Nat.mul_le_mul_right _ (Nat.mul_le_mul_right _ (Nat.choose_le_two_pow m j))

/-- After the proved scalar logarithm enclosures, the whole rank and shift
range retains a strictly positive margin in the logarithmic head/tail test. -/
theorem rectangular_budget {t k : ℝ} (ht : (1:ℝ)/10^11 ≤ t)
    (hk : k ≤ 10^22*t) :
    (7*10^10:ℝ) + 2*(7*10^11)*(4169/1000) + 200 + k*(11409/1000) <
      t*((3*10^12)^2-(288*10^10)^2-1) := by
  norm_num at ht hk ⊢
  linarith

end GRWTSK.XiHeatPositivityPropagation
