/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoDisplacement
import Mathlib.Data.Matrix.ColumnRowPartitioned
import Mathlib.LinearAlgebra.Matrix.Symmetric

/-!
# Schur displacement for the radius-two physical core

An elimination embedding has identity on the retained coordinates and
sends the eliminated rows of the matrix product to zero. Multiplication
by the original diagonal then acts on the surviving rows by its
retained diagonal. Transposition gives the opposite product and hence
the displaced Schur matrix. In the literal parity-conjugated core, the
two source vectors project by the transpose of the same embedding.
An added diagonal commutes with the displacement diagonal. This keeps
the formula available when the high-middle comparison changes the
physical shift.

Symmetry is essential. For `A = [[1,2],[3,4]]`, `E = (-2,1)ᵀ` and
`D = diag(1,2)`, the retained commutator is zero and the projected
commutator equals `-2`.

This comparison is exact for a supplied elimination. Inverse pivots,
a numerical high-middle enclosure and its sign remain separate.
Independent mathematical review and novelty assessment are pending.
-/

set_option autoImplicit false
noncomputable section

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSchurDisplacement

open Matrix RadiusTwoDisplacement
open OddResidualSourceComparison (literalCoreEntry)

variable {ι κ R : Type*} [Fintype ι] [Fintype κ] [DecidableEq ι] [DecidableEq κ]

/-- An exact right inverse of the eliminated block supplies the Schur
elimination equation. -/
theorem fromBlocks_mul_elimination [CommRing R]
    (A : Matrix ι ι R) (B : Matrix ι κ R) (C : Matrix κ ι R) (F : Matrix κ κ R)
    (G : Matrix ι ι R) (hG : A * G = 1) :
    fromBlocks A B C F * fromRows (-(G * B)) (1 : Matrix κ κ R) =
      fromRows 0 (F - C * G * B) := by
  rw [fromBlocks_mul_fromRows]
  simp only [Matrix.mul_neg, Matrix.mul_one, ← Matrix.mul_assoc, hG, Matrix.one_mul, neg_add_cancel]
  rw [sub_eq_add_neg, add_comm (-(C * G * B)) F]

/-- Displacement by a diagonal passes to its retained block under exact
symmetric Schur elimination. -/
theorem schur_displacement [CommRing R]
    (A : Matrix (ι ⊕ κ) (ι ⊕ κ) R) (hA : A.IsSymm) (d : ι ⊕ κ → R)
    (top : Matrix ι κ R) (S : Matrix κ κ R)
    (hElim : A * fromRows top (1 : Matrix κ κ R) = fromRows 0 S) :
    let E := fromRows top (1 : Matrix κ κ R)
    let D₂ := diagonal (fun j => d (.inr j))
    D₂ * S - S * D₂ = Eᵀ * (diagonal d * A - A * diagonal d) * E := by
  let E := fromRows top (1 : Matrix κ κ R)
  let D₂ := diagonal (fun j => d (.inr j))
  change D₂ * S - S * D₂ = Eᵀ * (diagonal d * A - A * diagonal d) * E
  have hAE : A * E = fromRows 0 S := hElim
  have hCompress : Eᵀ * (A * E) = S := by
    rw [hAE]
    simp [E, transpose_fromRows, fromCols_mul_fromRows]
  have hS : Sᵀ = S := by
    calc
      Sᵀ = (Eᵀ * (A * E))ᵀ := congrArg Matrix.transpose hCompress.symm
      _ = Eᵀ * (A * E) := by simp only [transpose_mul, transpose_transpose, hA.eq, Matrix.mul_assoc]
      _ = S := hCompress
  have hDiag : diagonal d * fromRows (0 : Matrix ι κ R) S = fromRows 0 (D₂ * S) := by
    ext i j
    cases i <;> simp [D₂, diagonal_mul]
  have hFirst : Eᵀ * (diagonal d * (A * E)) = D₂ * S := by
    rw [hAE, hDiag]
    simp [E, transpose_fromRows, fromCols_mul_fromRows]
  have hSecond : Eᵀ * (A * (diagonal d * E)) = S * D₂ := by
    simpa only [D₂, transpose_mul, transpose_transpose, diagonal_transpose, hA.eq, hS,
      Matrix.mul_assoc] using congrArg Matrix.transpose hFirst
  simp only [Matrix.sub_mul, Matrix.mul_sub, Matrix.mul_assoc, hFirst, hSecond]

/-- The parity-conjugated core is symmetric on all positive modes. -/
theorem parityCoreMatrix_isSymm {α : Type*} (mode : α → ℕ) (hmode : ∀ i, 0 < mode i) :
    (parityCoreMatrix mode).IsSymm := by
  change (parityCoreMatrix mode)ᵀ = parityCoreMatrix mode
  ext i j
  change parityCoreEntry (mode j) (mode i) = parityCoreEntry (mode i) (mode j)
  by_cases h : mode i = mode j
  · rw [h]
  · have hCast : (mode i : ℝ) ≠ mode j := by exact_mod_cast h
    have hi : 0 < (mode i : ℝ) := by exact_mod_cast hmode i
    have hj : 0 < (mode j : ℝ) := by exact_mod_cast hmode j
    have hDiff : (mode i : ℝ) ^ 2 - (mode j : ℝ) ^ 2 ≠ 0 := by
      rw [show (mode i : ℝ) ^ 2 - (mode j : ℝ) ^ 2 =
        ((mode i : ℝ) - mode j) * ((mode i : ℝ) + mode j) by ring]
      exact mul_ne_zero (sub_ne_zero.mpr hCast) (add_pos hi hj).ne'
    apply mul_left_cancel₀ hDiff
    calc
      _ = -(((mode j : ℝ) ^ 2 - (mode i : ℝ) ^ 2) * parityCoreEntry (mode j) (mode i)) := by ring
      _ = _ := by
        rw [parityCoreEntry_displacement (hmode j) (hmode i),
          parityCoreEntry_displacement (hmode i) (hmode j)]
        ring

/-- For distinct mode labels, changing the physical shift is exactly a
scalar diagonal correction in the parity-conjugated coordinates. -/
theorem parityCoreMatrix_shift {α : Type*} [DecidableEq α]
    (mode : α → ℕ) (hmode : Function.Injective mode) (β : ℝ) :
    parityCoreMatrix mode + diagonal (fun _ => (-1 / 2 : ℝ) - β) =
      fun i j => (-1 : ℝ) ^ (mode i + mode j) *
        (literalCoreEntry 2 (mode i) (mode j) - (if mode i = mode j then β else 0)) := by
  ext i j
  change parityCoreEntry (mode i) (mode j) +
    (diagonal (fun _ => (-1 / 2 : ℝ) - β) : Matrix α α ℝ) i j = _
  by_cases h : i = j
  · subst j
    have hSign : (-1 : ℝ) ^ (mode i + mode i) = 1 := by
      rw [← two_mul, pow_mul]
      norm_num
    simp [parityCoreEntry, hSign]
  · have hm : mode i ≠ mode j := fun hEq => h (hmode hEq)
    simp [parityCoreEntry, diagonal_apply_ne _ h, hm]

/-- The literal source vectors still project after any diagonal correction
to the physical core. -/
theorem parityCoreMatrix_add_diagonal_schur_displacement
    (mode : ι ⊕ κ → ℕ) (hmode : ∀ i, 0 < mode i)
    (correction : ι ⊕ κ → ℝ) (top : Matrix ι κ ℝ) (S : Matrix κ κ ℝ)
    (hElim : (parityCoreMatrix mode + diagonal correction) * fromRows top (1 : Matrix κ κ ℝ) =
      fromRows 0 S) :
    let E := fromRows top (1 : Matrix κ κ ℝ)
    let D₂ := diagonal (fun j => (mode (.inr j) : ℝ) ^ 2)
    let v := Eᵀ.mulVec (fun i => (mode i : ℝ))
    let u := Eᵀ.mulVec (fun i => displacementSignal (mode i))
    D₂ * S - S * D₂ = vecMulVec v u - vecMulVec u v := by
  let d := fun i => (mode i : ℝ) ^ 2
  let A := parityCoreMatrix mode + diagonal correction
  have hSymm : A.IsSymm := by
    change (parityCoreMatrix mode + diagonal correction)ᵀ = _
    rw [transpose_add, (parityCoreMatrix_isSymm mode hmode).eq, diagonal_transpose]
  have hDisplacement : diagonal d * A - A * diagonal d =
      vecMulVec (fun i => (mode i : ℝ)) (fun i => displacementSignal (mode i)) -
      vecMulVec (fun i => displacementSignal (mode i)) (fun i => (mode i : ℝ)) := by
    dsimp only [A]
    rw [Matrix.mul_add, Matrix.add_mul, (commute_diagonal d correction).eq,
      add_sub_add_right_eq_sub]
    exact parityCoreMatrix_displacement mode hmode
  dsimp only
  rw [schur_displacement A hSymm d top S hElim, hDisplacement]
  simp only [Matrix.mul_sub, Matrix.sub_mul, mul_vecMulVec, vecMulVec_mul,
    ← vecMul_transpose (fromRows top (1 : Matrix κ κ ℝ))ᵀ, transpose_transpose]

/-- The squared-mode displacement of the literal shifted core after Schur
elimination is the difference of two projected outer products. -/
theorem parityCoreMatrix_schur_displacement
    (mode : ι ⊕ κ → ℕ) (hmode : ∀ i, 0 < mode i)
    (top : Matrix ι κ ℝ) (S : Matrix κ κ ℝ)
    (hElim : parityCoreMatrix mode * fromRows top (1 : Matrix κ κ ℝ) = fromRows 0 S) :
    let E := fromRows top (1 : Matrix κ κ ℝ)
    let D₂ := diagonal (fun j => (mode (.inr j) : ℝ) ^ 2)
    let v := Eᵀ.mulVec (fun i => (mode i : ℝ))
    let u := Eᵀ.mulVec (fun i => displacementSignal (mode i))
    D₂ * S - S * D₂ = vecMulVec v u - vecMulVec u v :=
  parityCoreMatrix_add_diagonal_schur_displacement mode hmode 0 top S (by simpa using hElim)

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSchurDisplacement
