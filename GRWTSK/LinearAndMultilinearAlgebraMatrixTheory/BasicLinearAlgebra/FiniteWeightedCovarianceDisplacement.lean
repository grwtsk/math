/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import Mathlib.Data.Matrix.ColumnRowPartitioned

/-!
# Displacement of a diagonal-weighted cross covariance

A rectangular cross block with a two-generator displacement gives
two projected vectors after multiplication by the diagonal receiving
weights. In the covariance commutator the two receiving-node factors
cancel. Subtracting the covariance from the retained matrix combines
one of the original generators with one projected vector, leaving
four generators in the paid matrix. The diagonal is updated directly
by weighted squares of cross entries.

This is the finite algebra in *Full-source Schur certificates for
Weil positivity at support radius two*, rStation paper 60, version 1,
§7, equations (7.1)–(7.4).
https://rstation.ai/problems/riemann_hypothesis/papers/60/v1
For an inclusion trial the columns of the cross block are the signed
receiving rows transposed, and their weights are the reciprocals of
the receiving floors. Additional remote allowances and numerical
signs are separate. Independent mathematical review is pending.
-/

set_option autoImplicit false

namespace GRWTSK.Algebra.LinearAlgebra.FiniteWeightedCovarianceDisplacement

open Matrix

variable {ι κ R : Type*} [CommRing R] [Fintype κ] [DecidableEq κ]

/-- The exact covariance entry with diagonal receiving weights. -/
theorem weightedCovariance_apply (C : Matrix ι κ R) (weight : κ → R) (i j : ι) :
    (C * diagonal weight * Cᵀ) i j = ∑ k, C i k * weight k * C j k := by
  rw [Matrix.mul_apply]
  simp only [Matrix.mul_diagonal, Matrix.transpose_apply]

/-- The covariance subtracts this weighted sum of squares on the diagonal. -/
theorem sub_weightedCovariance_diag (A : Matrix ι ι R) (C : Matrix ι κ R)
    (weight : κ → R) (i : ι) :
    (A - C * diagonal weight * Cᵀ) i i = A i i - ∑ k, weight k * (C i k) ^ 2 := by
  rw [Matrix.sub_apply, weightedCovariance_apply]
  congr 1
  apply Finset.sum_congr rfl
  intro k _
  ring

variable [Fintype ι] [DecidableEq ι]

/-- The cross displacement transfers through the complete weighted
covariance, preserving both signs. -/
theorem weightedCovariance_displacement (C : Matrix ι κ R)
    (d v u : ι → R) (e highV highU weight : κ → R)
    (hCross : diagonal d * C - C * diagonal e = vecMulVec v highU - vecMulVec u highV) :
    let a := C.mulVec (fun k => weight k * highU k)
    let b := C.mulVec (fun k => weight k * highV k)
    diagonal d * (C * diagonal weight * Cᵀ) - (C * diagonal weight * Cᵀ) * diagonal d =
      (vecMulVec v a - vecMulVec a v) - (vecMulVec u b - vecMulVec b u) := by
  let a := C.mulVec (fun k => weight k * highU k)
  let b := C.mulVec (fun k => weight k * highV k)
  have hEntry (i : ι) (k : κ) :
      (d i - e k) * C i k = v i * highU k - u i * highV k := by
    have h := congrArg (fun B : Matrix ι κ R => B i k) hCross
    simp only [Matrix.sub_apply, Matrix.diagonal_mul, Matrix.mul_diagonal, vecMulVec_apply] at h
    simpa only [sub_mul, mul_comm (C i k)] using h
  change _ = (vecMulVec v a - vecMulVec a v) - (vecMulVec u b - vecMulVec b u)
  ext i j
  simp only [Matrix.sub_apply, Matrix.diagonal_mul, Matrix.mul_diagonal, weightedCovariance_apply,
    vecMulVec_apply]
  rw [Finset.mul_sum, Finset.sum_mul, ← Finset.sum_sub_distrib]
  calc
    _ = ∑ k, (((d i - e k) * C i k) * (weight k * C j k) -
        (C i k * weight k) * ((d j - e k) * C j k)) := by
      apply Finset.sum_congr rfl
      intro k _
      ring
    _ = _ := by
      simp_rw [hEntry]
      simp only [a, b, Matrix.mulVec, dotProduct, Finset.mul_sum, Finset.sum_mul,
        ← Finset.sum_sub_distrib]
      apply Finset.sum_congr rfl
      intro k _
      ring

/-- The paid retained block has two skew generator pairs. -/
theorem sub_weightedCovariance_displacement (A : Matrix ι ι R) (C : Matrix ι κ R)
    (d v u : ι → R) (e highV highU weight : κ → R)
    (hRetained : diagonal d * A - A * diagonal d = vecMulVec v u - vecMulVec u v)
    (hCross : diagonal d * C - C * diagonal e = vecMulVec v highU - vecMulVec u highV) :
    let a := C.mulVec (fun k => weight k * highU k)
    let b := C.mulVec (fun k => weight k * highV k)
    let paid := A - C * diagonal weight * Cᵀ
    diagonal d * paid - paid * diagonal d =
      (vecMulVec v (u - a) - vecMulVec (u - a) v) + (vecMulVec u b - vecMulVec b u) := by
  dsimp only
  have hCov := weightedCovariance_displacement C d v u e highV highU weight hCross
  dsimp only at hCov
  calc
    _ = (diagonal d * A - A * diagonal d) -
        (diagonal d * (C * diagonal weight * Cᵀ) - (C * diagonal weight * Cᵀ) * diagonal d) := by
      rw [Matrix.mul_sub, Matrix.sub_mul]
      abel
    _ = _ := by
      rw [hRetained, hCov]
      ext i j
      simp only [Matrix.sub_apply, Matrix.add_apply, vecMulVec_apply, Pi.sub_apply]
      ring

/-- Restrict a complete two-generator displacement to the retained and
receiving coordinates, then pay the weighted cross covariance. -/
theorem sub_weightedCovariance_displacement_of_sum
    (A : Matrix (ι ⊕ κ) (ι ⊕ κ) R) (d v u : ι ⊕ κ → R) (weight : κ → R)
    (hDisp : diagonal d * A - A * diagonal d = vecMulVec v u - vecMulVec u v) :
    let lowV := v ∘ Sum.inl
    let lowU := u ∘ Sum.inl
    let C := A.submatrix Sum.inl Sum.inr
    let a := C.mulVec (fun k => weight k * u (.inr k))
    let b := C.mulVec (fun k => weight k * v (.inr k))
    let D := diagonal (d ∘ Sum.inl)
    let paid := A.submatrix Sum.inl Sum.inl - C * diagonal weight * Cᵀ
    D * paid - paid * D =
      (vecMulVec lowV (lowU - a) - vecMulVec (lowU - a) lowV) +
        (vecMulVec lowU b - vecMulVec b lowU) := by
  refine sub_weightedCovariance_displacement (A.submatrix Sum.inl Sum.inl)
    (A.submatrix Sum.inl Sum.inr) (d ∘ Sum.inl) (v ∘ Sum.inl) (u ∘ Sum.inl)
    (d ∘ Sum.inr) (v ∘ Sum.inr) (u ∘ Sum.inr) weight ?_ ?_
  · ext i j
    have h := congrArg (fun B : Matrix (ι ⊕ κ) (ι ⊕ κ) R => B (.inl i) (.inl j)) hDisp
    simpa only [Matrix.sub_apply, Matrix.diagonal_mul, Matrix.mul_diagonal, Matrix.submatrix_apply,
      vecMulVec_apply, Function.comp_apply] using h
  · ext i k
    have h := congrArg (fun B : Matrix (ι ⊕ κ) (ι ⊕ κ) R => B (.inl i) (.inr k)) hDisp
    simpa only [Matrix.sub_apply, Matrix.diagonal_mul, Matrix.mul_diagonal, Matrix.submatrix_apply,
      vecMulVec_apply, Function.comp_apply] using h

end GRWTSK.Algebra.LinearAlgebra.FiniteWeightedCovarianceDisplacement
