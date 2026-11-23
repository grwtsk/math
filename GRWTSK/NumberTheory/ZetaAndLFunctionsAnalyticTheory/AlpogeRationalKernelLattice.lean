/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Data.Int.Star
import Mathlib.LinearAlgebra.Matrix.PosDef

/-! # Integral extraction of the coordinates of a flag-minor functional

In the integral standard monomial basis the matrix of all flag products is
`[1 U]`. The Cauchy–Binet polynomial of a functional with basis values `x`
has coordinates `x + U (Uᵀ x)`. The determinant below is independent of the
field, the chosen functional and its extension off the flag-minor span.
-/

namespace GRWTSK.NumberTheory.AlpogeRationalKernelLattice

open Matrix

variable {ι κ : Type*} [Fintype ι] [DecidableEq ι] [Fintype κ]

/-- Integral Gram matrix of the columns of the straightening matrix `[1 U]`. -/
def gram (U : Matrix ι κ ℤ) : Matrix ι ι ℤ := 1 + U * Uᵀ

/-- The same positive integer clears denominators in every characteristic-zero
realization of the given straightening matrix. -/
theorem gram_det_pos (U : Matrix ι κ ℤ) : 0 < (gram U).det := by
  apply Matrix.PosDef.det_pos
  apply Matrix.PosDef.one.add_posSemidef
  simpa only [Matrix.conjTranspose_eq_transpose_of_trivial] using
    Matrix.posSemidef_self_mul_conjTranspose U

/-- The determinant-scaled functional values are given by integral linear
combinations of the observed polynomial coordinates, over any commutative ring. -/
theorem det_smul_basis_values {R : Type*} [CommRing R] (U : Matrix ι κ ℤ)
    (x : ι → R) :
    ((gram U).det : R) • x =
      ((gram U).adjugate.map (Int.castRingHom R)) *ᵥ
        (x + U.map (Int.castRingHom R) *ᵥ ((U.map (Int.castRingHom R))ᵀ *ᵥ x)) := by
  let f := Int.castRingHom R
  have hm : (gram U).map f = 1 + U.map f * (U.map f)ᵀ := by
    change f.mapMatrix (1 + U * Uᵀ) = _
    rw [map_add, map_one]
    congr 1
    ext i j
    exact f.map_matrix_mul U Uᵀ i j
  have hy : x + U.map f *ᵥ ((U.map f)ᵀ *ᵥ x) = (gram U).map f *ᵥ x := by
    rw [hm, Matrix.add_mulVec, Matrix.one_mulVec, Matrix.mulVec_mulVec]
  change f (gram U).det • x = (gram U).adjugate.map f *ᵥ _
  rw [hy, ← RingHom.mapMatrix_apply, RingHom.map_adjugate, Matrix.mulVec_mulVec,
    RingHom.mapMatrix_apply, Matrix.adjugate_mul, Matrix.smul_mulVec, Matrix.one_mulVec, RingHom.map_det]
  rfl

/-- A formula inside the coefficient field for each individual basis value.
In the intended application `K` is the coefficient field and `L` the completed
algebraic closure at a finite place. -/
theorem basis_values_descend {K L : Type*} [Field K] [Field L] [CharZero L]
    (f : K →+* L) (U : Matrix ι κ ℤ) (x : ι → L) (b : ι → K)
    (hb : x + U.map (Int.castRingHom L) *ᵥ ((U.map (Int.castRingHom L))ᵀ *ᵥ x) = f ∘ b)
    (i : ι) :
    x i = f ((((gram U).adjugate.map (Int.castRingHom K)) *ᵥ b) i / ((gram U).det : K)) := by
  have hn : ((gram U).det : L) ≠ 0 := Int.cast_ne_zero.mpr (gram_det_pos U).ne'
  have hx := congrFun (det_smul_basis_values U x) i
  rw [hb, Pi.smul_apply, smul_eq_mul] at hx
  rw [map_div₀, map_intCast, eq_div_iff hn, mul_comm]
  refine hx.trans ?_
  rw [RingHom.map_mulVec]
  congr 2
  ext a j
  simp

/-- For the two-column shape with heights two and one, the nonstandard
straightening columns have disjoint supports and square length two. This
recovers the scalar three independently of the number of such columns. -/
theorem three_mul_identity {R : Type*} [CommRing R] [DecidableEq κ] (U : Matrix ι κ R)
    (hU : Uᵀ * U = 2 • (1 : Matrix κ κ R)) :
    (3 • (1 : Matrix ι ι R) - U * Uᵀ) * (1 + U * Uᵀ) = 3 • (1 : Matrix ι ι R) := by
  have hsq : (U * Uᵀ) * (U * Uᵀ) = 2 • (U * Uᵀ) := by
    rw [Matrix.mul_assoc, ← Matrix.mul_assoc Uᵀ U Uᵀ, hU,
      Matrix.smul_mul, Matrix.one_mul, Matrix.mul_smul]
  rw [sub_mul, Matrix.smul_mul, Matrix.one_mul, mul_add, Matrix.mul_one, hsq, smul_add]
  abel

end GRWTSK.NumberTheory.AlpogeRationalKernelLattice
