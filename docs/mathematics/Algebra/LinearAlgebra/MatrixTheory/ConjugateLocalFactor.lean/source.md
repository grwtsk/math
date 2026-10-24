# Complete source: GRWTSK.LinearAlgebra.Matrix.ConjugateLocalFactor

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `79a8a59b18bfb2d95122528a17d3949e81d3b6cf` · SHA-256 `337aa7df5344c76dc26dfa123108ca5830d32e65589704c79fd7c69665848c9f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.Determinant
import Mathlib.Tactic

/-! Local determinant comparison from an actual supplied intertwiner.
No Satake parameters, automorphic transfer, or infinite Euler product is constructed. -/
namespace GRWTSK.LinearAlgebra.Matrix

variable {R n : Type*} [CommRing R] [Fintype n] [DecidableEq n]

/-- An invertible intertwiner transports the entire local matrix pencil. -/
theorem pencil_conjugate (A B U V : Matrix n n R) (uv : U * V = 1)
    (intertwines : A * U = U * B) (t : R) :
    1 - t • A = U * (1 - t • B) * V := by
  have ha : A = U * B * V := by
    calc
      A = A * (U * V) := by rw [uv, Matrix.mul_one]
      _ = (A * U) * V := by rw [Matrix.mul_assoc]
      _ = U * B * V := by rw [intertwines]
  rw [Matrix.mul_sub, Matrix.mul_one, Matrix.sub_mul,
    Matrix.mul_smul, Matrix.smul_mul, uv, ← ha]

/-- Equality at every local parameter t; both inverse identities are explicit. -/
theorem det_pencil_eq (A B U V : Matrix n n R) (uv : U * V = 1)
    (vu : V * U = 1) (intertwines : A * U = U * B) (t : R) :
    Matrix.det (1 - t • A) = Matrix.det (1 - t • B) := by
  rw [pencil_conjugate A B U V uv intertwines t]
  exact Matrix.det_conj_of_mul_eq_one uv vu
end GRWTSK.LinearAlgebra.Matrix
```
