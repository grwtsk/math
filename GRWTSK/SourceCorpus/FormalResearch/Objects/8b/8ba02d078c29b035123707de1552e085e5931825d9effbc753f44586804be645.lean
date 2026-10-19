import Mathlib.Algebra.Polynomial.Derivative
import Mathlib.Data.Real.Basic

/-!
# Real quadratic polynomials

The carrier is Mathlib's polynomial type.  Coefficients are parameters, not a
second project-local polynomial structure.
-/

namespace Mathematics.Polynomial

open _root_.Polynomial
open scoped Polynomial

/-- The real polynomial `aX² + bX + c`. -/
noncomputable def quadratic (a b c : ℝ) : ℝ[X] :=
  C a * X ^ 2 + C b * X + C c

@[simp] theorem eval_quadratic (a b c x : ℝ) :
    (quadratic a b c).eval x = a * x ^ 2 + b * x + c := by
  simp [quadratic]

end Mathematics.Polynomial
