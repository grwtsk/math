/-
Copyright (c) 2026 grwtsk contributors. MIT.
Authors: grwtsk contributors.
-/
import Mathlib.LinearAlgebra.Matrix.Determinant.Basic
import Mathlib.Basic.Real.Basic
import Mathlib.Tactic.FinCases
import Mathlib.Tactic.Ring

/-! # The four-site component at the second Weil-window slope change

The reflected chain has equal outer edge weights and a separate inner weight.
Its characteristic determinant determines the contribution of this component.
-/
namespace GRWTSK.NumberTheory.XiWeilFourSiteWall

/-- Weighted adjacency of the four-site chain. -/
def adjacency (u v : ℝ) : Matrix (Fin 4) (Fin 4) ℝ :=
  !![0, u, 0, 0; u, 0, v, 0; 0, v, 0, u; 0, 0, u, 0]

/-- Characteristic determinant with the actual scalar identity and adjacency. -/
theorem det_pencil (x u v : ℝ) :
    (x • (1 : Matrix (Fin 4) (Fin 4) ℝ) - adjacency u v).det =
      (x^2-u^2)^2-v^2*x^2 := by
  have hp : x • (1 : Matrix (Fin 4) (Fin 4) ℝ) - adjacency u v =
      !![x, -u, 0, 0; -u, x, -v, 0; 0, -v, x, -u; 0, 0, -u, x] := by
    ext i j
    fin_cases i <;> fin_cases j <;> simp [adjacency]
  rw [hp, Matrix.det_succ_row_zero]
  simp [Fin.sum_univ_succ, Matrix.det_fin_three, Matrix.submatrix_apply, Fin.succAbove]
  ring

end GRWTSK.NumberTheory.XiWeilFourSiteWall
