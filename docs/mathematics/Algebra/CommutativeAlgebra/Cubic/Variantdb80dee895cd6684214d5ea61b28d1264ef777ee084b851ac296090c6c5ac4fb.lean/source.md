# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Cubic.Variantdb80dee895cd6684214d5ea61b28d1264ef777ee084b851ac296090c6c5ac4fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3070e8e66793c24677dc92e40ecbe75b55a945eb` · SHA-256 `db80dee895cd6684214d5ea61b28d1264ef777ee084b851ac296090c6c5ac4fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
