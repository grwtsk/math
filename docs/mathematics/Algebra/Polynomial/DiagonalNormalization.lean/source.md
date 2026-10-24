# Complete source: GRWTSK.Algebra.Polynomial.DiagonalNormalization

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c39a19783791dd1f7592c05d624bed05cf51204e` · SHA-256 `09769d4252e91731ce6aae20e81a42a4dd97cece0b81b5ce597c8283eeb11fe7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.Algebra.Polynomial.Coeff
import Mathlib.Tactic

/-! Correction check for the two distinct unpublished KL manuscript versions.
No Coxeter algebra, KL recurrence, or positivity-to-vanishing bridge is asserted. -/
namespace GRWTSK.Algebra.Polynomial

/-- The printed diagonal q² cannot equal the required diagonal 1 in ℤ[q]. -/
theorem X_sq_ne_one : (Polynomial.X : Polynomial ℤ) ^ 2 ≠ 1 := by
  intro h
  have hc := congrArg (fun p : Polynomial ℤ => p.coeff 0) h
  norm_num at hc

/-- A normalized polynomial family cannot have the printed q² diagonal. -/
theorem normalized_diagonal_ne_X_sq {W : Type*} (P : W → W → Polynomial ℤ)
    (diagonal : ∀ w, P w w = 1) (w : W) : P w w ≠ Polynomial.X ^ 2 := by
  rw [diagonal]
  exact Ne.symm X_sq_ne_one
end GRWTSK.Algebra.Polynomial
```
