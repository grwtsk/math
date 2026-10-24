# Complete source: GRWTSK.Algebra.CommutativeAlgebra.Quadratic.Variant8ba02d078c29b035123707de1552e085e5931825d9effbc753f44586804be645

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe590ad8a2608b26b2e0b1e9950ebe8bf501092f` · SHA-256 `8ba02d078c29b035123707de1552e085e5931825d9effbc753f44586804be645`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
