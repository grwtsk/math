/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.Analysis.InnerProductSpace.Adjoint
import Mathlib.Analysis.InnerProductSpace.PiL2
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Tactic

/-! # Weighted class pairing and the normalized adjoint of a theta map

Inner products here are linear in the second argument. Class weights remain
outside Parseval's formula, so no choice of square roots of stabilizer orders
enters the adjoint. -/

namespace GRWTSK.NumberTheory.AlpogeThetaAdjointPairing

open scoped InnerProductSpace
open LinearMap

variable {X Y W : Type*} [NormedAddCommGroup X] [InnerProductSpace ℂ X]
  [NormedAddCommGroup Y] [InnerProductSpace ℂ Y]
  [NormedAddCommGroup W] [InnerProductSpace ℂ W]
  [FiniteDimensional ℂ X] [FiniteDimensional ℂ Y]

/-- A covariant linear functional gives the required unitary stabilizer
eigenvector under Riesz duality. -/
theorem riesz_stabilizer (s : W ≃ₗᵢ[ℂ] W) (v : W) (c : ℂ) (hc : ‖c‖ = 1)
    (h : ∀ w, ⟪v, s w⟫_ℂ = c * ⟪v,w⟫_ℂ) : s v = c • v := by
  apply ext_inner_right ℂ
  intro w
  obtain ⟨w, rfl⟩ := s.surjective w
  rw [s.inner_map_map, inner_smul_left, h, ← mul_assoc]
  have e : starRingEnd ℂ c * c = 1 := by
    rw [mul_comm, Complex.mul_conj, Complex.normSq_eq_norm_sq, hc]
    norm_num
  rw [e, one_mul]

/-- The adjoint at every double-class representative for a theta class sum.
The assembly hypothesis says exactly that the Riesz vectors obey the source
stabilizer restrictions, so represent an element of the arithmetic form space. -/
theorem adjoint_classes {I : Type*} [Fintype I] (T : X →ₗ[ℂ] Y) (w : I → ℝ)
    (N : ℝ) (ev : I → X →ₗ[ℂ] W) (A : Y → I → W)
    (hX : ∀ x y, ⟪x,y⟫_ℂ = ∑ j, (w j : ℂ) * ⟪ev j x, ev j y⟫_ℂ)
    (hT : ∀ x u, ⟪T x,u⟫_ℂ = (N : ℂ) * ∑ j, (w j : ℂ) * ⟪ev j x, A u j⟫_ℂ)
    (hA : ∀ u, ∃ x, ∀ j, ev j x = A u j) (u : Y) (i : I) :
    ev i (T.adjoint u) = (N : ℂ) • A u i := by
  obtain ⟨y, hy⟩ := hA u
  have hh : T.adjoint u = (N : ℂ) • y := by
    apply ext_inner_left ℂ
    intro x
    rw [T.adjoint_inner_right, inner_smul_right, hT, hX]
    simp only [hy]
  rw [hh, map_smul, hy]

omit [FiniteDimensional ℂ X] in
/-- All coefficient coordinates of a Riesz vector give the polarized Gram
form, including the square of the real Petersson scale. -/
theorem polarized_classes {I J : Type*} [Fintype I] [Fintype J]
    (b : OrthonormalBasis J ℂ W) (w : I → ℝ) (N : ℝ) (ev : I → X →ₗ[ℂ] W)
    (hX : ∀ x y, ⟪x,y⟫_ℂ = ∑ j, (w j : ℂ) * ⟪ev j x, ev j y⟫_ℂ)
    (x y : X) (A B : I → W) (hx : ∀ i, ev i x = (N : ℂ) • A i)
    (hy : ∀ i, ev i y = (N : ℂ) • B i) :
    ⟪x,y⟫_ℂ = (N : ℂ)^2 * ∑ k, ∑ i, (w i : ℂ) *
      (⟪A i,b k⟫_ℂ * starRingEnd ℂ ⟪B i,b k⟫_ℂ) := by
  rw [hX, Finset.sum_comm, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro i _
  simp only [hx, hy, inner_smul_left, inner_smul_right, Complex.conj_ofReal,
    inner_conj_symm, ← Finset.mul_sum, b.sum_inner_mul_inner]
  ring

/-- Testing the Gram form against every target vector identifies the full
operator, including its component orthogonal to the Hecke eigenspace. -/
theorem normalized_composite (T : X →ₗ[ℂ] Y) (h l : ℝ) (hh : h ≠ 0) (u : Y)
    (hG : ∀ v, ⟪T.adjoint u,T.adjoint v⟫_ℂ = ((h*l : ℝ) : ℂ)*⟪u,v⟫_ℂ) :
    T ((h : ℂ)⁻¹ • T.adjoint u) = (l : ℂ) • u := by
  apply ext_inner_right ℂ
  intro v
  rw [map_smul, inner_smul_left, inner_smul_left, ← T.adjoint_inner_right, hG]
  simp only [map_inv₀, Complex.conj_ofReal, Complex.ofReal_mul]
  have hC : (h : ℂ) ≠ 0 := by exact_mod_cast hh
  field_simp [hC]

/-- The normalized preimage is orthogonal to every vector in the kernel.
This fixes its norm-minimality among preimages when the composite is scalar. -/
theorem adjoint_pullback_orthogonal (T : X →ₗ[ℂ] Y) (c : ℂ) (u : Y) (x : X)
    (hx : T x = 0) : ⟪c • T.adjoint u,x⟫_ℂ = 0 := by
  rw [inner_smul_left, T.adjoint_inner_left, hx, inner_zero_right, mul_zero]

/-- The exact determinant comparison applies to dependent inputs too, and to
any number of vectors of a single Hecke eigenspace. -/
theorem adjoint_gram_determinant {I : Type*} [Fintype I] [DecidableEq I]
    (T : X →ₗ[ℂ] Y) (u : I → Y) (c : ℝ)
    (h : ∀ i j, ⟪T.adjoint (u i),T.adjoint (u j)⟫_ℂ = (c : ℂ)*⟪u i,u j⟫_ℂ) :
    (Matrix.of fun i j => ⟪T.adjoint (u i),T.adjoint (u j)⟫_ℂ).det =
      (c : ℂ)^Fintype.card I * (Matrix.of fun i j => ⟪u i,u j⟫_ℂ).det := by
  have hM : (Matrix.of fun i j => ⟪T.adjoint (u i),T.adjoint (u j)⟫_ℂ) =
      (c : ℂ) • Matrix.of (fun i j => ⟪u i,u j⟫_ℂ) := by
    ext i j
    exact h i j
  rw [hM, Matrix.det_smul]

end GRWTSK.NumberTheory.AlpogeThetaAdjointPairing
