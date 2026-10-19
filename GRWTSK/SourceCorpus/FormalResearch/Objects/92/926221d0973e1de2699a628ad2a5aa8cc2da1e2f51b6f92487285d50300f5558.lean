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
