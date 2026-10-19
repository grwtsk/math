import Mathematics.Polynomial.Cubic

/-!
# Cubic derivative

Algebraic differentiation remains inside the canonical polynomial ring.
-/

namespace Mathematics.Polynomial

open _root_.Polynomial

/-- Differentiating a cubic yields its coefficient-correct quadratic. -/
@[simp] theorem derivative_cubic (a b c d : ℝ) :
    derivative (cubic a b c d) = quadratic (3 * a) (2 * b) c := by
  simp only [
    cubic,
    quadratic,
    derivative_add,
    derivative_C_mul_X_pow,
    derivative_C_mul_X,
    derivative_C
  ]
  ring_nf

end Mathematics.Polynomial
