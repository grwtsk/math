/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.GroupTheory.Perm.Fin
import Mathlib.Tactic

/-! # Trace frames for an odd Frobenius orbit

The odd cyclic sign descends a square root of the trace discriminant.
A symmetric square-zero error gives the integral orthonormal lift one
precision step at a time. The two identities for the resulting frame are
needed separately for the Hermitian Gram and the original tangent columns.
-/

namespace GRWTSK.NumberTheory.AlpogeOddOrbitTheta

open Matrix

/-- If the embedding rows form an odd cycle under Frobenius, the embedding
determinant is fixed, and its square is the trace discriminant. -/
theorem odd_embedding_discriminant {R : Type*} [CommRing R] {n : ℕ}
    (hn : Odd n) (σ : R →+* R) (W : Matrix (Fin n) (Fin n) R)
    (hW : ∀ i j, σ (W i j) = W (finRotate n i) j) :
    σ W.det = W.det ∧ (Wᵀ * W).det = W.det ^ 2 := by
  have hrot : W.map σ = W.submatrix (finRotate n) id := Matrix.ext hW
  rcases hn with ⟨k, rfl⟩
  constructor
  · rw [RingHom.map_det]
    change (W.map σ).det = _
    rw [hrot, Matrix.det_permute, sign_finRotate]
    simp [pow_mul, show 2 * k + 1 - 1 = 2 * k by omega]
  · rw [Matrix.det_mul, Matrix.det_transpose, pow_two]

/-- A symmetric half-error is killed modulo the next precision whenever its
square vanishes there. This applies over Z/p^(k+1) for all k ≥ 1, including
extensions whose residue degree is divisible by p. -/
theorem correct_gram_mod_square {R ι : Type*} [CommRing R]
    [Fintype ι] [DecidableEq ι] (E : Matrix ι ι R)
    (hs : Eᵀ = E) (hn : E * E = 0) :
    (1 - E)ᵀ * (1 + E + E) * (1 - E) = 1 := by
  rw [Matrix.transpose_sub, Matrix.transpose_one, hs]
  have hl : (1 - E) * (1 + E + E) = 1 + E := by
    simp only [sub_mul, mul_add, mul_one, one_mul, hn]
    abel
  simp only [hl, mul_sub, add_mul, one_mul, mul_one, hn, add_zero, add_sub_cancel_right]

/-- The row-dual frame is orthonormal and the same embedding matrix recovers
every original coordinate. The ambient dimension may exceed the orbit length. -/
theorem contracted_frame {R j k : Type*} [CommRing R] [Fintype j] [DecidableEq j]
    [Fintype k] (W : Matrix j j R) (H G : Matrix j k R)
    (hw : Wᵀ * W = 1) (hpair : H * Gᵀ = 1) :
    (Wᵀ * H) * (Wᵀ * G)ᵀ = 1 ∧ W * (Wᵀ * G) = G := by
  constructor
  · rw [Matrix.transpose_mul, Matrix.transpose_transpose, Matrix.mul_assoc,
      ← Matrix.mul_assoc H, hpair, one_mul, hw]
  · rw [← Matrix.mul_assoc, mul_eq_one_comm.mp hw, Matrix.one_mul]

/-- The even half of the doubled orbit visits each site exactly once. The
odd half gives the same sum for every function after the degree-i folding. -/
theorem odd_fold_sums {n : ℕ} [NeZero n] (hn : Odd n) {A : Type*}
    [AddCommMonoid A] (f : ZMod n → A) :
    (∑ s : ZMod n, f (2*s)) = ∑ s : ZMod n, f s ∧
    (∑ s : ZMod n, f (2*s+1)) = ∑ s : ZMod n, f s := by
  have h2 : IsUnit (2 : ZMod n) := by
    exact (ZMod.isUnit_iff_coprime 2 n).mpr (Nat.coprime_two_left.mpr hn)
  obtain ⟨u, hu⟩ := h2
  constructor
  · exact Fintype.sum_equiv (u.mulLeft) _ _ (by intro s; simp [hu])
  · exact Fintype.sum_equiv ((u.mulLeft).trans (Equiv.addRight 1)) _ _
      (by intro s; simp [hu])

end GRWTSK.NumberTheory.AlpogeOddOrbitTheta
