# Complete source: GRWTSK.LinearAlgebra.OrderedProductDeterminant

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `914cf9b05742c8c5c9ad35f196a5a29e82392712` · SHA-256 `8966422eac545c463e6da9db1285ff2021d4e564d30e2494dee9b4ddf3467e0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
MIT. grwtsk contributors direction; OpenAI Codex assistance; historical split unknown.
Established determinant-one ordered-product mathematics; upstream identities retained.
-/
import GRWTSK.Algebra.OrderedProduct
import GRWTSK.LinearAlgebra.JacobiTransfer
import GRWTSK.LinearAlgebra.OrderedTransfer

namespace GRWTSK.LinearAlgebra.OrderedProductDeterminant

/-!
# Frozen ordered products and step-dependent gauges

`orderedProduct A n k = A (n+k-1) ⋯ A n`: a new step multiplies on the left.
`orderedTransfer A m n` uses this product with length `m-n`, so its state theorem
requires `n ≤ m`. The cocycle convention is
`A^(m+n)(x) = A^m(T^n x) * A^n(x)`.

For a step-dependent gauge the transfer is `B (n+1)⁻¹ * A n * B n`, and its
product telescopes with endpoint gauges. This does not assert that any proposed
theta or RH transfer is conjugate to a free transfer; that equality must be proved.

On a one-sided sequence, an unrestricted gauge to any chosen model always exists.
The recursive construction below supplies no bounded gauge, periodicity,
base-dynamics compatibility, unitary spectral equivalence, or uniform estimate.
An explicit `SL₂(ℚ)` fixture has gauge entry `2^n`, excluding even a uniform
entry bound. Quantitative or regularity restrictions are essential to a spectral
normal-form claim.
-/


universe u v w



open GRWTSK.Algebra


open GRWTSK.LinearAlgebra.SchrodingerTransfer


open GRWTSK.LinearAlgebra.JacobiTransfer


open GRWTSK.LinearAlgebra.OrderedTransfer

/-- Determinant-one transfer factors give a determinant-one ordered product. -/
theorem det_orderedProduct_eq_one {R : Type u} [CommRing R]
    (A : ℕ → Matrix (Fin 2) (Fin 2) R) (hdet : ∀ n, (A n).det = 1) (n k : ℕ) :
    (orderedProduct A n k).det = 1 := by
  induction k with
  | zero => simp
  | succ k ih => simp [orderedProduct_succ, Matrix.det_mul, hdet, ih]



/-- Every step's nonzero hypothesis is retained in the weighted Jacobi product. -/
theorem det_weightedJacobi_orderedProduct {K : Type u} [Field K]
    (E : K) (a b : ℕ → K) (ha : ∀ n, a n ≠ 0) (n k : ℕ) :
    (orderedProduct (fun i => weightedJacobiTransfer E (b i) (a i)) n k).det = 1 :=
  det_orderedProduct_eq_one _ (fun i => det_weightedJacobiTransfer E (b i) (a i) (ha i)) n k




end GRWTSK.LinearAlgebra.OrderedProductDeterminant
```
