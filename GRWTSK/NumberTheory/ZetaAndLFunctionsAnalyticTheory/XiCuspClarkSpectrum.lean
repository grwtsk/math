/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.Complex.Basic
import Mathlib.Tactic

/-! # Scalar identities for the rank-one modular characteristic function -/

namespace GRWTSK.NumberTheory.XiCuspClarkSpectrum
open Complex

/-- The real-axis boundary condition for the self-adjoint real part. -/
theorem clark_condition (n d : ℂ) (hd : d ≠ 0) :
    n / d = -1 ↔ n + d = 0 := by
  rw [div_eq_iff hd]
  constructor <;> intro h <;> linear_combination h

/-- Cayley transformation composes by the tangent addition rule. -/
theorem cayley_height_transport (a b : ℂ) (ha : 1-I*a ≠ 0) (hb : 1-I*b ≠ 0)
    (hab : 1-a*b ≠ 0) :
    ((1+I*a)/(1-I*a))*((1+I*b)/(1-I*b)) =
      (1+I*((a+b)/(1-a*b)))/(1-I*((a+b)/(1-a*b))) := by
  have e : (1-I*a)*(1-I*b) = 1-a*b-I*(a+b) := by
    linear_combination a*b*I_mul_I
  have hn : 1-I*((a+b)/(1-a*b)) ≠ 0 := by
    intro h
    field_simp [hab] at h
    apply mul_ne_zero ha hb
    rw [e]
    linear_combination h
  rw [div_mul_div_comm]
  apply (div_eq_div_iff (mul_ne_zero ha hb) hn).2
  field_simp [hab]
  ring_nf <;> simp [Complex.I_sq, Complex.I_pow_three] <;> ring

/-- Implicit spectral flow and the positive Clark atom agree at a simple phase root. -/
theorem mass_from_height_derivative (t p v : ℝ) (ht : t ≠ 0) (hp : p ≠ 0)
    (h : t+p*v=0) : 2/(t^2*p) = -2*v/t^3 := by
  field_simp
  linear_combination h

end GRWTSK.NumberTheory.XiCuspClarkSpectrum
