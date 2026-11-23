/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import Mathlib.Algebra.Polynomial.Derivative
import Mathlib.Basic.Complex.Basic
import Mathlib.Tactic

/-! Hermite polynomials for the backward side of a real heat collision and
the first two perturbation equations for their simple roots. -/

namespace GRWTSK.XiNewmanTerminalJet

open Polynomial

/-- The monic polynomials obtained by applying exp(D²) to a monomial. -/
noncomputable def heatPolynomial : ℕ → ℂ[X]
  | 0 => 1
  | n + 1 => X * heatPolynomial n + 2 * derivative (heatPolynomial n)

theorem derivative_heatPolynomial (n : ℕ) :
    derivative (heatPolynomial (n+1)) = ((n : ℂ[X])+1) * heatPolynomial n := by
  induction n with
  | zero => simp [heatPolynomial]
  | succ n ih =>
    change derivative (X * heatPolynomial (n+1) + 2 * derivative (heatPolynomial (n+1))) = _
    rw [derivative_add, derivative_mul, derivative_X, one_mul, ih]
    simp only [derivative_mul, derivative_add, derivative_natCast, derivative_one,
      derivative_ofNat, zero_add, zero_mul]
    rw [show heatPolynomial (n+1) = X * heatPolynomial n +
      2 * derivative (heatPolynomial n) from rfl]
    push_cast
    ring

theorem heatPolynomial_ode (n : ℕ) :
    2 * derivative (derivative (heatPolynomial n)) + X * derivative (heatPolynomial n) =
      (n : ℂ[X]) * heatPolynomial n := by
  have h := derivative_heatPolynomial n
  change derivative (X * heatPolynomial n + 2 * derivative (heatPolynomial n)) = _ at h
  simp only [derivative_add, derivative_mul, derivative_X, one_mul, derivative_ofNat,
    zero_mul, zero_add] at h
  linear_combination h

/-- The neighboring polynomials and the curvature at any root of the degree-n polynomial. -/
theorem heat_root_jets (n : ℕ) (a : ℂ) (ha : (heatPolynomial n).eval a = 0) :
    let v := (derivative (heatPolynomial n)).eval a
    (heatPolynomial (n+1)).eval a = 2*v ∧
    (derivative (heatPolynomial (n+1))).eval a = 0 ∧
    (heatPolynomial (n+2)).eval a = 2*a*v ∧
    2*(derivative (derivative (heatPolynomial n))).eval a = -a*v := by
  dsimp only
  have h₁ : (heatPolynomial (n+1)).eval a = 2*(derivative (heatPolynomial n)).eval a := by
    change (X * heatPolynomial n + 2 * derivative (heatPolynomial n)).eval a = _
    simp [ha]
  have h₂ : (derivative (heatPolynomial (n+1))).eval a = 0 := by
    rw [derivative_heatPolynomial]
    simp [ha]
  refine ⟨h₁, h₂, ?_, ?_⟩
  · change (X * heatPolynomial (n+1) + 2 * derivative (heatPolynomial (n+1))).eval a = _
    simp [h₁, h₂]
    ring
  · have h := congrArg (Polynomial.eval a) (heatPolynomial_ode n)
    simp [ha] at h
    linear_combination h

/-- Uniqueness of the two branch corrections after dividing by the simple Hermite slope. -/
theorem root_corrections {a v q b c r : ℂ} (hv : v ≠ 0)
    (first : v*b + q*(2*v) = 0)
    (second : v*c - a*v*b^2/4 + r*(2*a*v) = 0) :
    b = -2*q ∧ c = a*(q^2-2*r) := by
  have hb : v*(b+2*q) = 0 := by linear_combination first
  have hb' : b = -2*q := by linear_combination (mul_eq_zero.mp hb).resolve_left hv
  refine ⟨hb', ?_⟩
  rw [hb'] at second
  have hc : v*(c-a*(q^2-2*r)) = 0 := by linear_combination second
  exact sub_eq_zero.mp ((mul_eq_zero.mp hc).resolve_left hv)

/-- Conversion from the analytic factor to ordinary spatial derivatives at a double root. -/
theorem double_root_curvature (g g' g'' : ℝ) (hg : g ≠ 0) :
    4 * ((6*g')^2 / (9*(2*g)^2) - (12*g'') / (6*(2*g))) =
    4 * ((g'/g)^2 - g''/g) := by
  field_simp
  ring

end GRWTSK.XiNewmanTerminalJet
