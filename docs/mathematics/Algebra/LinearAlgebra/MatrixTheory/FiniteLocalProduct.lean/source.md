# Complete source: GRWTSK.LinearAlgebra.Matrix.FiniteLocalProduct

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `30972bdbca1a7b1f0b20205a5b9db56867cc8770` · SHA-256 `4a4197560cdfba29a6b50cdfc7436c4023beb150f6f8cc62214951d0cc43d2a2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import GRWTSK.LinearAlgebra.Matrix.ConjugateLocalFactor

/-! Finite local-factor comparison for E4. This does not pass to an infinite
Euler product or construct bad-place or Archimedean factors. -/
namespace GRWTSK.LinearAlgebra.Matrix

/-- Equality of every supplied conjugate factor transports a finite inverse product.
No nonvanishing premise is needed for totalized field inversion; analytic use of
reciprocals as holomorphic functions still requires denominators nonzero. -/
theorem finite_inverse_local_product_eq {K n v : Type*} [Field K]
    [Fintype n] [DecidableEq n] (places : Finset v)
    (A B U V : v → Matrix n n K) (t : v → K)
    (uv : ∀ p ∈ places, U p * V p = 1)
    (vu : ∀ p ∈ places, V p * U p = 1)
    (intertwines : ∀ p ∈ places, A p * U p = U p * B p) :
    (∏ p ∈ places, (Matrix.det (1 - t p • A p))⁻¹) =
      ∏ p ∈ places, (Matrix.det (1 - t p • B p))⁻¹ := by
  apply Finset.prod_congr rfl
  intro p hp
  rw [det_pencil_eq (A p) (B p) (U p) (V p) (uv p hp) (vu p hp) (intertwines p hp)]
end GRWTSK.LinearAlgebra.Matrix
```
