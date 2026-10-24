import Mathematics.Polynomial.Quadratic

/-!
# Real cubic polynomials

This is the degree-three member of the same canonical polynomial carrier used
for quadratics.
-/

namespace Mathematics.Polynomial

open _root_.Polynomial
open scoped Polynomial

/-- The real polynomial `aX³ + bX² + cX + d`. -/
noncomputable def cubic (a b c d : ℝ) : ℝ[X] :=
  C a * X ^ 3 + C b * X ^ 2 + C c * X + C d

@[simp] theorem eval_cubic (a b c d x : ℝ) :
    (cubic a b c d).eval x =
      a * x ^ 3 + b * x ^ 2 + c * x + d := by
  simp [cubic]

end Mathematics.Polynomial
