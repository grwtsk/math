# Complete source: GRWTSK.Algebra.LinearAlgebra.Spectrum.Variant228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b9d44b833de758419e3a71f83f0575b4b17abfd0` · SHA-256 `228b8baae5ec7e4993e7ce8aea6c8526ed396f0a483ff7ca200309f4a8e6a6b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Alexander Bentkamp. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Alexander Bentkamp
-/
import Mathlib.Analysis.InnerProductSpace.Spectrum
import Mathlib.Data.Matrix.Rank
import Mathlib.LinearAlgebra.Matrix.Diagonal
import Mathlib.LinearAlgebra.Matrix.Hermitian

#align_import linear_algebra.matrix.spectrum from "leanprover-community/mathlib"@"46b633fd842bef9469441c0209906f6dddd2b4f5"

/-! # Spectral theory of hermitian matrices

This file proves the spectral theorem for matrices. The proof of the spectral theorem is based on
the spectral theorem for linear maps (`LinearMap.IsSymmetric.eigenvectorBasis_apply_self_apply`).

## Tags

spectral theorem, diagonalization theorem

-/


namespace Matrix

variable {𝕜 : Type*} [IsROrC 𝕜] [DecidableEq 𝕜] {n : Type*} [Fintype n] [DecidableEq n]

variable {A : Matrix n n 𝕜}

open scoped Matrix

open scoped BigOperators

namespace IsHermitian

variable (hA : A.IsHermitian)

/-- The eigenvalues of a hermitian matrix, indexed by `Fin (Fintype.card n)` where `n` is the index
type of the matrix. -/
noncomputable def eigenvalues₀ : Fin (Fintype.card n) → ℝ :=
  (isHermitian_iff_isSymmetric.1 hA).eigenvalues finrank_euclideanSpace
#align matrix.is_hermitian.eigenvalues₀ Matrix.IsHermitian.eigenvalues₀

/-- The eigenvalues of a hermitian matrix, reusing the index `n` of the matrix entries. -/
noncomputable def eigenvalues : n → ℝ := fun i =>
  hA.eigenvalues₀ <| (Fintype.equivOfCardEq (Fintype.card_fin _)).symm i
#align matrix.is_hermitian.eigenvalues Matrix.IsHermitian.eigenvalues

/-- A choice of an orthonormal basis of eigenvectors of a hermitian matrix. -/
noncomputable def eigenvectorBasis : OrthonormalBasis n 𝕜 (EuclideanSpace 𝕜 n) :=
  ((isHermitian_iff_isSymmetric.1 hA).eigenvectorBasis finrank_euclideanSpace).reindex
    (Fintype.equivOfCardEq (Fintype.card_fin _))
#align matrix.is_hermitian.eigenvector_basis Matrix.IsHermitian.eigenvectorBasis

/-- A matrix whose columns are an orthonormal basis of eigenvectors of a hermitian matrix. -/
noncomputable def eigenvectorMatrix : Matrix n n 𝕜 :=
  (PiLp.basisFun _ 𝕜 n).toMatrix (eigenvectorBasis hA).toBasis
#align matrix.is_hermitian.eigenvector_matrix Matrix.IsHermitian.eigenvectorMatrix

/-- The inverse of `eigenvectorMatrix` -/
noncomputable def eigenvectorMatrixInv : Matrix n n 𝕜 :=
  (eigenvectorBasis hA).toBasis.toMatrix (PiLp.basisFun _ 𝕜 n)
#align matrix.is_hermitian.eigenvector_matrix_inv Matrix.IsHermitian.eigenvectorMatrixInv

theorem eigenvectorMatrix_mul_inv : hA.eigenvectorMatrix * hA.eigenvectorMatrixInv = 1 := by
  apply Basis.toMatrix_mul_toMatrix_flip
#align matrix.is_hermitian.eigenvector_matrix_mul_inv Matrix.IsHermitian.eigenvectorMatrix_mul_inv

noncomputable instance : Invertible hA.eigenvectorMatrixInv :=
  invertibleOfLeftInverse _ _ hA.eigenvectorMatrix_mul_inv

noncomputable instance : Invertible hA.eigenvectorMatrix :=
  invertibleOfRightInverse _ _ hA.eigenvectorMatrix_mul_inv

theorem eigenvectorMatrix_apply (i j : n) : hA.eigenvectorMatrix i j = hA.eigenvectorBasis j i := by
  simp_rw [eigenvectorMatrix, Basis.toMatrix_apply, OrthonormalBasis.coe_toBasis,
    PiLp.basisFun_repr]
#align matrix.is_hermitian.eigenvector_matrix_apply Matrix.IsHermitian.eigenvectorMatrix_apply

/-- The columns of `Matrix.IsHermitian.eigenVectorMatrix` form the basis-/
theorem transpose_eigenvectorMatrix_apply (i : n) :
    hA.eigenvectorMatrixᵀ i = hA.eigenvectorBasis i :=
  funext <| fun j => eigenvectorMatrix_apply hA j i

theorem eigenvectorMatrixInv_apply (i j : n) :
    hA.eigenvectorMatrixInv i j = star (hA.eigenvectorBasis i j) := by
  rw [eigenvectorMatrixInv, Basis.toMatrix_apply, OrthonormalBasis.coe_toBasis_repr_apply,
    OrthonormalBasis.repr_apply_apply, PiLp.basisFun_apply, WithLp.equiv_symm_single,
    EuclideanSpace.inner_single_right, one_mul, IsROrC.star_def]
#align matrix.is_hermitian.eigenvector_matrix_inv_apply Matrix.IsHermitian.eigenvectorMatrixInv_apply

theorem conjTranspose_eigenvectorMatrixInv : hA.eigenvectorMatrixInvᴴ = hA.eigenvectorMatrix := by
  ext i j
  rw [conjTranspose_apply, eigenvectorMatrixInv_apply, eigenvectorMatrix_apply, star_star]
#align matrix.is_hermitian.conj_transpose_eigenvector_matrix_inv Matrix.IsHermitian.conjTranspose_eigenvectorMatrixInv

theorem conjTranspose_eigenvectorMatrix : hA.eigenvectorMatrixᴴ = hA.eigenvectorMatrixInv := by
  rw [← conjTranspose_eigenvectorMatrixInv, conjTranspose_conjTranspose]
#align matrix.is_hermitian.conj_transpose_eigenvector_matrix Matrix.IsHermitian.conjTranspose_eigenvectorMatrix

/-- *Diagonalization theorem*, *spectral theorem* for matrices; A hermitian matrix can be
diagonalized by a change of basis.

For the spectral theorem on linear maps, see
`LinearMap.IsSymmetric.eigenvectorBasis_apply_self_apply`. -/
theorem spectral_theorem :
    hA.eigenvectorMatrixInv * A = diagonal ((↑) ∘ hA.eigenvalues) * hA.eigenvectorMatrixInv := by
  rw [eigenvectorMatrixInv, PiLp.basis_toMatrix_basisFun_mul]
  ext i j
  have := isHermitian_iff_isSymmetric.1 hA
  convert this.eigenvectorBasis_apply_self_apply finrank_euclideanSpace (EuclideanSpace.single j 1)
    ((Fintype.equivOfCardEq (Fintype.card_fin _)).symm i) using 1
  · dsimp only [EuclideanSpace.single, toEuclideanLin_piLp_equiv_symm, toLin'_apply,
      Matrix.of_apply, IsHermitian.eigenvectorBasis]
    simp_rw [mulVec_single, mul_one, OrthonormalBasis.coe_toBasis_repr_apply,
      OrthonormalBasis.repr_reindex]
    rfl
  · simp only [diagonal_mul, (· ∘ ·), eigenvalues]
    rw [eigenvectorBasis, Basis.toMatrix_apply, OrthonormalBasis.coe_toBasis_repr_apply,
      OrthonormalBasis.repr_reindex, eigenvalues₀, PiLp.basisFun_apply, WithLp.equiv_symm_single]
#align matrix.is_hermitian.spectral_theorem Matrix.IsHermitian.spectral_theorem

theorem eigenvalues_eq (i : n) :
    hA.eigenvalues i =
      IsROrC.re (star (hA.eigenvectorMatrixᵀ i) ⬝ᵥ A.mulVec (hA.eigenvectorMatrixᵀ i)) := by
  have := hA.spectral_theorem
  rw [← @Matrix.mul_inv_eq_iff_eq_mul_of_invertible (A := hA.eigenvectorMatrixInv)] at this
  have := congr_arg IsROrC.re (congr_fun (congr_fun this i) i)
  rw [diagonal_apply_eq, Function.comp_apply, IsROrC.ofReal_re,
    inv_eq_left_inv hA.eigenvectorMatrix_mul_inv, ← conjTranspose_eigenvectorMatrix, mul_mul_apply]
    at this
  exact this.symm
#align matrix.is_hermitian.eigenvalues_eq Matrix.IsHermitian.eigenvalues_eq

/-- The determinant of a hermitian matrix is the product of its eigenvalues. -/
theorem det_eq_prod_eigenvalues : det A = ∏ i, (hA.eigenvalues i : 𝕜) := by
  apply mul_left_cancel₀ (det_ne_zero_of_left_inverse (eigenvectorMatrix_mul_inv hA))
  rw [← det_mul, spectral_theorem, det_mul, mul_comm, det_diagonal]
  simp_rw [Function.comp_apply]
#align matrix.is_hermitian.det_eq_prod_eigenvalues Matrix.IsHermitian.det_eq_prod_eigenvalues

/-- *spectral theorem* (Alternate form for convenience) A hermitian matrix can be can be
replaced by a diagonal matrix sandwiched between the eigenvector matrices. This alternate form
allows direct rewriting of A since: $ A = V D V⁻¹$ -/
lemma spectral_theorem' :
    A = hA.eigenvectorMatrix * diagonal ((↑) ∘ hA.eigenvalues) * hA.eigenvectorMatrixInv := by
  simpa [ ← Matrix.mul_assoc, hA.eigenvectorMatrix_mul_inv, Matrix.one_mul] using
    congr_arg (hA.eigenvectorMatrix * ·) hA.spectral_theorem

/-- rank of a hermitian matrix is the rank of after diagonalization by the eigenvector matrix -/
lemma rank_eq_rank_diagonal : A.rank = (Matrix.diagonal hA.eigenvalues).rank := by
  conv_lhs => rw [hA.spectral_theorem']
  have hE := isUnit_det_of_invertible (hA.eigenvectorMatrix)
  have hiE := isUnit_det_of_invertible (hA.eigenvectorMatrixInv)
  simp only [rank_mul_eq_right_of_isUnit_det hA.eigenvectorMatrix _ hE,
    rank_mul_eq_left_of_isUnit_det hA.eigenvectorMatrixInv _ hiE,
    rank_diagonal, Function.comp_apply, ne_eq, algebraMap.lift_map_eq_zero_iff]

/-- rank of a hermitian matrix is the number of nonzero eigenvalues of the hermitian matrix -/
lemma rank_eq_card_non_zero_eigs : A.rank = Fintype.card {i // hA.eigenvalues i ≠ 0} := by
  rw [rank_eq_rank_diagonal hA, Matrix.rank_diagonal]

end IsHermitian

end Matrix
```
