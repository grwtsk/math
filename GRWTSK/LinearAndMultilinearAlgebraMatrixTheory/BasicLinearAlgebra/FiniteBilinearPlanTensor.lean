/- Copyright (c) 2026 grwtsk contributors. MIT. -/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.FiniteBilinearMatrixPlan
import OAI.LinearAlgebra.SpectralBooks.Tensor

/-! # Finite bilinear plans and cyclic matrix tensors

The finite plan indexes output coefficients by row and column. The spectral
tensor indexes its third slot by column and row. The swap preserves the
coefficient of every pair of input entries and keeps the original factors.
-/

namespace GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.FiniteBilinearMatrixPlan

open OAI.LinearAlgebra.SpectralBooks
open OAI.MatrixMultiplication.Foundation
open scoped BigOperators

variable {F : Type*} [Field F] {i j k r : ℕ}

private theorem matrixTensor_entry (x : Fin i × Fin k) (y : Fin k × Fin j)
    (z : Fin j × Fin i) :
    matrixTensor F k j i x y z = if x.1 = z.2 ∧ x.2 = y.1 ∧ y.2 = z.1 then 1 else 0 := by
  change (if x.2 = y.1 ∧ y.2 = z.1 ∧ z.2 = x.1 then 1 else 0) = _
  have order : (x.2 = y.1 ∧ y.2 = z.1 ∧ z.2 = x.1) =
      (x.1 = z.2 ∧ x.2 = y.1 ∧ y.2 = z.1) :=
    propext ⟨fun ⟨hxy, hyz, hzx⟩ => ⟨hzx.symm, hxy, hyz⟩,
      fun ⟨hxz, hxy, hyz⟩ => ⟨hxy, hyz, hxz.symm⟩⟩
  exact ite_cond_congr order

/-- The tensor identity of a correct plan in cyclic wire order. -/
theorem Plan.matrixTensor_decomposition {P : Plan F i j k r} (h : P.Correct) :
    matrixTensor F k j i =
      fun x y z => ∑ l, Tensor.rankOne (P.left l) (P.right l)
        (fun q : Fin j × Fin i => P.output l q.swap) x y z := by
  funext x y z
  rw [matrixTensor_entry]
  exact (h x y z.swap).symm

/-- Swapping the third factor back recovers the finite plan with the same rank index. -/
theorem matrixTensor_rankAtMost_iff_exists_plan :
    Tensor.RankAtMost (matrixTensor F k j i) r ↔ ∃ P : Plan F i j k r, P.Correct := by
  constructor
  · rintro ⟨u, v, w, decompose⟩
    refine ⟨⟨u, v, fun l z => w l z.swap⟩, ?_⟩
    intro x y z
    have entry := congrFun (congrFun (congrFun decompose x) y) z.swap
    rw [matrixTensor_entry] at entry
    exact entry.symm
  · rintro ⟨P, h⟩
    exact ⟨P.left, P.right, fun l z => P.output l z.swap, Plan.matrixTensor_decomposition h⟩

/-- A correct finite plan gives the same rank upper bound in the spectral tensor model. -/
theorem Plan.matrixTensor_rank_le {P : Plan F i j k r} (h : P.Correct) :
    tensorRank (matrixTensor F k j i) ≤ r :=
  tensorRank_le_of_rankAtMost
    ⟨P.left, P.right, fun l q => P.output l q.swap, Plan.matrixTensor_decomposition h⟩

end GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.FiniteBilinearMatrixPlan
