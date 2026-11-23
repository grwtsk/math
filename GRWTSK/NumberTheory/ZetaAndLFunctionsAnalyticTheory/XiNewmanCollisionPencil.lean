/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Algebra.Polynomial.Derivative
import Mathlib.Tactic

/-! Polynomial commutators and the neighboring-root calculation for a heat pencil. -/
namespace GRWTSK.XiNewmanCollisionPencil
open Polynomial

noncomputable def jets : ℕ → ℝ[X] → ℝ[X]
  | 0, p => p
  | n+1, p => derivative (jets n p)

/-- Commuting a power of differentiation through coordinate multiplication. -/
theorem derivative_coordinate (p : ℝ[X]) (k : ℕ) :
    jets (k+1) (X*p) = X*jets (k+1) p + ((k:ℝ[X])+1)*jets k p := by
  induction k with
  | zero => simp [jets, derivative_mul, add_comm]
  | succ k ih =>
    change derivative (jets (k+1) (X*p)) = _
    rw [ih]
    simp only [derivative_add, derivative_mul, derivative_X, derivative_natCast,
      derivative_one, zero_add, zero_mul, one_mul]
    change _ = X*derivative (jets (k+1) p) + _ * derivative (jets k p)
    push_cast
    simp only [jets]
    ring

theorem adjacent_force {a b y : ℝ} (hay : a ≠ y) (hby : b ≠ y) :
    1/(a-y)-1/(b-y) = (b-a)/((a-y)*(b-y)) := by
  field_simp [sub_ne_zero.mpr hay,sub_ne_zero.mpr hby]
  ring

theorem squared_gap_speed {g interaction : ℝ} (hg : g ≠ 0) (hi : 0 ≤ interaction) :
    -4 ≤ 2*g*(-2/g+g*interaction) := by
  have h : 2*g*(-2/g+g*interaction) = -4+2*g^2*interaction := by
    field_simp
    ring
  rw [h]
  nlinarith [mul_nonneg (sq_nonneg g) hi]

/-- A positive diagonal metric cannot symmetrize a nonzero real skew pair. -/
theorem incompatible_pair {a b x : ℝ} (ha : 0 < a) (hb : 0 < b) (hx : x ≠ 0) :
    a*x ≠ b*(-x) := by
  intro h
  have hc : (a+b)*x = 0 := by linarith only [h, mul_neg b x, add_mul a b x]
  exact hx ((mul_eq_zero.mp hc).resolve_left (by linarith))

end GRWTSK.XiNewmanCollisionPencil
