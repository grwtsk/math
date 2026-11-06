/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.NumberTheory.ZetaAndLFunctionsAnalyticTheory.WeilRadiusTwoSchurDisplacement

/-!
# One-pivot Schur recurrence from displacement generators

At a nonzero scalar pivot, the exact Schur correction subtracts the
outer product of the pivot column divided by the pivot. Its diagonal
therefore subtracts the square of each column entry divided by that
pivot. The transpose of the elimination embedding subtracts the same
column times each generator's pivot value divided by the pivot. A
distinct pair of displacement nodes recovers its matrix entry by
division of the corresponding generator difference.

The recurrence uses the diagonal, the displacement nodes and the two
generators. A zero pivot or equal displacement nodes require separate
handling. Independent mathematical review and novelty assessment are
pending.
-/

set_option autoImplicit false

namespace GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSchurPivot

open Matrix RadiusTwoSchurDisplacement

variable {κ R : Type*} [Field R]

/-- Recover the matrix entry when the two displacement nodes are distinct. -/
def displacementEntry {α : Type*} (d v u : α → R) (i j : α) : R :=
  (v i * u j - u i * v j) / (d i - d j)

theorem entry_eq_displacementEntry {α : Type*} [Fintype α] [DecidableEq α]
    (A : Matrix α α R) (d v u : α → R)
    (hDisp : diagonal d * A - A * diagonal d = vecMulVec v u - vecMulVec u v)
    {i j : α} (hNodes : d i ≠ d j) :
    A i j = displacementEntry d v u i j := by
  have h := congrArg (fun B : Matrix α α R => B i j) hDisp
  simp only [Matrix.sub_apply, Matrix.diagonal_mul, Matrix.mul_diagonal, Matrix.vecMulVec_apply] at h
  apply (eq_div_iff (sub_ne_zero.mpr hNodes)).2
  calc
    _ = d i * A i j - A i j * d j := by ring
    _ = _ := h

/-- The entry of the eliminated coordinate. -/
def pivotValue (A : Matrix (Unit ⊕ κ) (Unit ⊕ κ) R) : R := A (.inl ()) (.inl ())

/-- The retained part of the pivot column. -/
def pivotColumn (A : Matrix (Unit ⊕ κ) (Unit ⊕ κ) R) (i : κ) : R := A (.inr i) (.inl ())

/-- The exact scalar Schur matrix, used as the specification of the recurrence. -/
def scalarSchur (A : Matrix (Unit ⊕ κ) (Unit ⊕ κ) R) : Matrix κ κ R :=
  fun i j => A (.inr i) (.inr j) - pivotColumn A i * pivotColumn A j / pivotValue A

/-- The symmetric Schur update preserves symmetry for the next pivot. -/
theorem scalarSchur_isSymm (A : Matrix (Unit ⊕ κ) (Unit ⊕ κ) R) (hSymm : A.IsSymm) :
    (scalarSchur A).IsSymm := by
  refine Matrix.IsSymm.ext fun i j => ?_
  simp only [scalarSchur, hSymm.apply (.inr i) (.inr j), mul_comm (pivotColumn A j)]

/-- Update one retained diagonal entry from the pivot and its column. -/
def updateDiagonal (a : R) (c diagonal : κ → R) (i : κ) : R :=
  diagonal i - (c i) ^ 2 / a

/-- Update a generator by the transpose of the scalar elimination embedding. -/
def updateGenerator (a : R) (c : κ → R) (g : Unit ⊕ κ → R) (i : κ) : R :=
  g (.inr i) - c i * g (.inl ()) / a

private def pivotTop (A : Matrix (Unit ⊕ κ) (Unit ⊕ κ) R) : Matrix Unit κ R :=
  fun _ j => -(pivotColumn A j / pivotValue A)

variable [Fintype κ] [DecidableEq κ]

private theorem scalarSchur_elimination (A : Matrix (Unit ⊕ κ) (Unit ⊕ κ) R)
    (hSymm : A.IsSymm) (hPivot : pivotValue A ≠ 0) :
    A * fromRows (pivotTop A) (1 : Matrix κ κ R) = fromRows 0 (scalarSchur A) := by
  ext k j
  rcases k with ⟨⟩ | i
  · simp only [Matrix.mul_apply, Fintype.sum_sum_type, Fintype.sum_unique,
      fromRows_apply_inl, fromRows_apply_inr, Matrix.zero_apply, Matrix.one_apply, mul_ite,
      mul_one, mul_zero, Finset.sum_ite_eq', Finset.mem_univ, ite_true, pivotTop,
      hSymm.apply (.inr j) (.inl ())]
    change pivotValue A * -(pivotColumn A j / pivotValue A) + pivotColumn A j = 0
    field_simp
    ring
  · simp only [Matrix.mul_apply, Fintype.sum_sum_type, Fintype.sum_unique,
      fromRows_apply_inl, fromRows_apply_inr, Matrix.one_apply, mul_ite, mul_one, mul_zero,
      Finset.sum_ite_eq', Finset.mem_univ, ite_true, pivotTop, scalarSchur]
    change pivotColumn A i * -(pivotColumn A j / pivotValue A) + A (.inr i) (.inr j) =
      A (.inr i) (.inr j) - pivotColumn A i * pivotColumn A j / pivotValue A
    ring

private theorem transpose_pivot_mulVec (A : Matrix (Unit ⊕ κ) (Unit ⊕ κ) R)
    (g : Unit ⊕ κ → R) :
    (fromRows (pivotTop A) (1 : Matrix κ κ R))ᵀ.mulVec g =
      updateGenerator (pivotValue A) (pivotColumn A) g := by
  rw [transpose_fromRows, fromCols_mulVec, transpose_one, one_mulVec]
  funext i
  simp only [Pi.add_apply, Matrix.mulVec, dotProduct, Fintype.sum_unique, Matrix.transpose_apply,
    pivotTop, Function.comp_apply, updateGenerator]
  ring

/-- The retained Schur matrix has the same two-generator displacement
with both generators updated through the scalar pivot. -/
theorem scalarSchur_displacement (A : Matrix (Unit ⊕ κ) (Unit ⊕ κ) R)
    (hSymm : A.IsSymm) (hPivot : pivotValue A ≠ 0) (d v u : Unit ⊕ κ → R)
    (hDisp : diagonal d * A - A * diagonal d = vecMulVec v u - vecMulVec u v) :
    let D := diagonal (fun i => d (.inr i))
    let v' := updateGenerator (pivotValue A) (pivotColumn A) v
    let u' := updateGenerator (pivotValue A) (pivotColumn A) u
    D * scalarSchur A - scalarSchur A * D = vecMulVec v' u' - vecMulVec u' v' := by
  dsimp only
  rw [schur_displacement A hSymm d (pivotTop A) (scalarSchur A)
    (scalarSchur_elimination A hSymm hPivot), hDisp]
  have hProject (g : Unit ⊕ κ → R) :
      g ᵥ* fromRows (pivotTop A) (1 : Matrix κ κ R) =
        updateGenerator (pivotValue A) (pivotColumn A) g := by
    simpa only [transpose_transpose] using
      (vecMul_transpose (fromRows (pivotTop A) (1 : Matrix κ κ R))ᵀ g).trans
        (transpose_pivot_mulVec A g)
  simp only [Matrix.mul_sub, Matrix.sub_mul, mul_vecMulVec, vecMulVec_mul, hProject,
    transpose_pivot_mulVec]

/-- Reconstruct the pivot column from the old generators, then recover the
new Schur diagonal and every entry at distinct retained displacement nodes. -/
theorem scalarSchur_recurrence (A : Matrix (Unit ⊕ κ) (Unit ⊕ κ) R)
    (hSymm : A.IsSymm) (hPivot : pivotValue A ≠ 0) (d v u : Unit ⊕ κ → R)
    (hDisp : diagonal d * A - A * diagonal d = vecMulVec v u - vecMulVec u v)
    (hNodes : ∀ i : κ, d (.inr i) ≠ d (.inl ())) :
    let c := fun i : κ => displacementEntry d v u (.inr i) (.inl ())
    let D := diagonal (fun i => d (.inr i))
    let v' := updateGenerator (pivotValue A) c v
    let u' := updateGenerator (pivotValue A) c u
    (∀ i : κ, scalarSchur A i i =
      updateDiagonal (pivotValue A) c (fun j => A (.inr j) (.inr j)) i) ∧
    (D * scalarSchur A - scalarSchur A * D = vecMulVec v' u' - vecMulVec u' v') ∧
    (∀ i j : κ, d (.inr i) ≠ d (.inr j) →
      scalarSchur A i j = displacementEntry (d ∘ Sum.inr) v' u' i j) := by
  let c := fun i : κ => displacementEntry d v u (.inr i) (.inl ())
  have hColumn : pivotColumn A = c := by
    funext i
    exact entry_eq_displacementEntry A d v u hDisp (hNodes i)
  have h := scalarSchur_displacement A hSymm hPivot d v u hDisp
  dsimp only at h
  rw [hColumn] at h
  refine ⟨?_, h, ?_⟩
  · intro i
    simp only [scalarSchur, updateDiagonal, pow_two, hColumn, c]
  · intro i j hDistinct
    exact entry_eq_displacementEntry (scalarSchur A) _ _ _ h hDistinct

end GRWTSK.NumberTheory.WeilQuadraticForm.RadiusTwoSchurPivot
