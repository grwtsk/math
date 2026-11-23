/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.LinearAlgebra.Matrix.Vec
import Mathlib.LinearAlgebra.Matrix.NonsingularInverse
import Mathlib.Tactic

/-! # Determinant phases and the two Hermitian lattice actions

The algebra is valid before choosing a place. In particular the conjugation
need not preserve the chosen valuation at a split prime.
-/
namespace GRWTSK.NumberTheory.AlpogeAllPlaceThetaNormalization

open Matrix
open scoped Kronecker

/-- The algebraic identity controlling the phase of the denominator in the
fixed-point residue for the inverse action, valid even if the denominator vanishes. -/
theorem unitary_residue_determinant {R ι : Type*} [CommRing R] [StarRing R]
    [Fintype ι] [DecidableEq ι] (U : Matrix ι ι R) (hu : U * Uᴴ = 1) :
    star (1 - Uᴴ).det = (-1) ^ Fintype.card ι * U.det * (1 - Uᴴ).det := by
  have hm : -(U * (1 - Uᴴ)) = 1 - U := by rw [mul_sub, Matrix.mul_one, hu, neg_sub]
  rw [← Matrix.det_conjTranspose, Matrix.conjTranspose_sub, Matrix.conjTranspose_one,
    Matrix.conjTranspose_conjTranspose, ← hm, Matrix.det_neg, Matrix.det_mul, mul_assoc]

/-- Vectorization of the forward lattice change (the inverse of the
substitution on functions) and its exact determinant. -/
theorem forward_hom_determinant {R m n : Type*} [CommRing R] [StarRing R]
    [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n]
    (A : Matrix m m R) (B : Matrix n n R) :
    (∀ X : Matrix n m R, (Aᴴᵀ ⊗ₖ B) *ᵥ X.vec = (B * X * Aᴴ).vec) ∧
       (Aᴴᵀ ⊗ₖ B).det = star A.det ^ Fintype.card n * B.det ^ Fintype.card m := by
  constructor
  · intro X
    simpa using Matrix.kronecker_mulVec_vec B X Aᴴᵀ
  · rw [Matrix.det_kronecker, Matrix.det_transpose, Matrix.det_conjTranspose]

/-- Squaring the two character powers on even ranks gives the determinant
of the forward action, with the conjugation on the domain lattice. -/
theorem character_square_forward {R m n : Type*} [CommRing R] [StarRing R]
    [Fintype m] [Fintype n] [DecidableEq m] [DecidableEq n]
    (A : Matrix m m R) (B : Matrix n n R)
    (hm : Even (Fintype.card m)) (hn : Even (Fintype.card n)) :
    ((star A.det) ^ (Fintype.card n / 2) * B.det ^ (Fintype.card m / 2)) ^ 2 =
      (Aᴴᵀ ⊗ₖ B).det := by
  rw [(forward_hom_determinant A B).2, mul_pow, ← pow_mul, ← pow_mul]
  rcases hm with ⟨i, hi⟩
  rcases hn with ⟨j, hj⟩
  rw [show Fintype.card n / 2 * 2 = Fintype.card n by omega,
    show Fintype.card m / 2 * 2 = Fintype.card m by omega]

/-- A local determinant phase and the transported character have the same
norm at every place where their squares differ by a norm-one multiplier. -/
theorem character_phase_quotient {K : Type*} [NormedField K] {c d u : K}
    (hd : d ≠ 0) (hu : ‖u‖ = 1) (h : c ^ 2 = u * d ^ 2) :
    ‖c / d‖ = 1 := by
  have h2 := congrArg norm h
  simp only [norm_pow, norm_mul, hu, one_mul] at h2
  have he : ‖c‖ = ‖d‖ := by nlinarith [norm_nonneg c, norm_nonneg d]
  rw [norm_div, he, div_self (norm_ne_zero_iff.mpr hd)]

/-- Two frames of the same local lattice have determinants differing by a
unit of its coefficient subring. This identifies the prime exponent used in
the character normalization for every allowed local frame. -/
theorem determinant_frame_unit {R j : Type*} [CommRing R] [Fintype j] [DecidableEq j]
    (O : Subring R) (U V : Matrix j j O) (A : Matrix j j R)
    (hUV : U * V = 1) :
    ∃ e : Oˣ, (U.map O.subtype * A).det = ((e : O) : R) * A.det := by
  obtain ⟨e, he⟩ := Matrix.isUnit_det_of_right_inverse hUV
  refine ⟨e, ?_⟩
  rw [Matrix.det_mul, he]
  have h := O.subtype.map_det U
  rw [RingHom.mapMatrix_apply] at h
  exact congrArg (· * A.det) h.symm

/-- Integral directions for the original Hom lattice carry through
independently perturbed domain and codomain after multiplying the two
clearing factors. The transfer uses one containment from each perturbation. -/
theorem perturbed_hom_multipliers {R V W : Type*} [CommRing R]
    [AddCommGroup V] [AddCommGroup W] [Module R V] [Module R W]
    (L L' : Submodule R V) (M M' : Submodule R W)
    (s t : R) (hL : ∀ x ∈ L', s • x ∈ L) (hM : ∀ y ∈ M, t • y ∈ M')
    (f : V →ₗ[R] W) (hf : ∀ x ∈ L, f x ∈ M) :
    ∀ x ∈ L', (t * s) • f x ∈ M' := by
  intro x hx
  simpa only [map_smul, mul_smul] using hM _ (hf _ (hL _ hx))

end GRWTSK.NumberTheory.AlpogeAllPlaceThetaNormalization
