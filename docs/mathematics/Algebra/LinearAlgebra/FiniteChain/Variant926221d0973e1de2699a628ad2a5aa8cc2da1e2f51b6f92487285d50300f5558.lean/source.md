# Complete source: GRWTSK.Algebra.LinearAlgebra.FiniteChain.Variant926221d0973e1de2699a628ad2a5aa8cc2da1e2f51b6f92487285d50300f5558

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5a36100a94dd4bd158d4c69a7377e970ab22ea32` · SHA-256 `926221d0973e1de2699a628ad2a5aa8cc2da1e2f51b6f92487285d50300f5558`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathematics.Homology.Event
import Mathlib.LinearAlgebra.Matrix.ToLin

/-!
# Finite integral chain shells

The chain group in degree `r` is the finite free module
`Fin (rank r) → ℤ`.  Matrix rows are targets and columns are sources, so
`boundaryMatrix r` represents `C_(r+1) → C_r`.  Degree zero has the implicit
zero outgoing differential.

This graded object is intentionally separate from the single-carrier cubical
endomorphism used elsewhere in the project.
-/

namespace Mathematics.Homology

abbrev FiniteFree (rank : Nat) := Fin rank → ℤ

/-- A finite graded free integral chain complex with its source certificate. -/
structure FiniteIntegralChain where
  rank : Nat → Nat
  boundaryMatrix :
    (degree : Nat) →
      Matrix (Fin (rank degree)) (Fin (rank (Nat.succ degree))) ℤ
  boundary_squared :
    ∀ degree,
      boundaryMatrix degree * boundaryMatrix (Nat.succ degree) = 0
  sourceAddress : ObjectAddress
  chainCertificate : ObjectAddress

namespace FiniteIntegralChain

/-- The linear boundary map represented by the persisted integer matrix. -/
def boundaryMap
    (chain : FiniteIntegralChain) (degree : Nat) :
    FiniteFree (chain.rank (Nat.succ degree)) →ₗ[ℤ]
      FiniteFree (chain.rank degree) :=
  Matrix.toLin' (chain.boundaryMatrix degree)

/-- The represented linear differential squares to zero in every degree. -/
theorem boundaryMap_squared
    (chain : FiniteIntegralChain) (degree : Nat) :
    (chain.boundaryMap degree).comp
        (chain.boundaryMap (Nat.succ degree)) =
      0 := by
  unfold boundaryMap
  rw [← Matrix.toLin'_mul]
  rw [chain.boundary_squared degree]
  exact map_zero Matrix.toLin'

end FiniteIntegralChain

end Mathematics.Homology
```
