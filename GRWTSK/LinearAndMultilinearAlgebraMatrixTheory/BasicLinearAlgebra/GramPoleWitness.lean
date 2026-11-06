/-
Copyright (c) 2026 grwtsk contributors.
Released under the MIT license as described in the repository LICENSE.
Authors: grwtsk contributors
-/
import GRWTSK.LinearAndMultilinearAlgebraMatrixTheory.BasicLinearAlgebra.QuadraticCertificateCore
import Mathlib.Data.Matrix.Block

/-!
# Division-free Gram witness for a retained scalar pole

On a retained head and scalar pole, compare the entire bordered matrix with
the sum of the Gram for `[R,w]`, the padded slack Gram, the weighted squares
of `[I,t]`, and the weighted square of the scalar coordinate. The mixed
column is `Rᵀw + α t`, and the pole entry is `‖w‖² + α ‖t‖² + σ`. The
positive weight `α` is used directly, with no division or square root.

The adapter uses the existing exact checker. Its only constraints are
explicit square forms, so every real coordinate vector is admissible. A
checked witness concerns the entire finite target. Returning it to a
source form still requires a separate directional lower comparison.
-/

set_option autoImplicit false
open scoped BigOperators
open Matrix

namespace GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates

/-- A rational witness with an explicit Gram factor for the positive slack. -/
structure GramPoleWitness (ι ν η : Type*) where
  headRows : Matrix ν ι ℚ
  poleColumn : ν → ℚ
  remainder : ι → ℚ
  slackRows : Matrix η ι ℚ
  alpha : ℚ
  sigma : ℚ

namespace GramPoleWitness

variable {ι ν η : Type*}

private def square {κ : Type*} (row : κ → ℚ) : Matrix κ κ ℚ :=
  Matrix.vecMulVec row row

private def squareRow [DecidableEq ι] (W : GramPoleWitness ι ν η) :
    ι ⊕ Unit → ι ⊕ Unit → ℚ
  | .inl i, .inl j => if i = j then 1 else 0
  | .inl i, .inr _ => W.remainder i
  | .inr _, .inl _ => 0
  | .inr _, .inr _ => 1

/-- The only inequality constraints are explicit rank-one squares. -/
def problem [DecidableEq ι] (target : Matrix (ι ⊕ Unit) (ι ⊕ Unit) ℚ)
    (W : GramPoleWitness ι ν η) : Problem ℚ (ι ⊕ Unit) Empty (ι ⊕ Unit) where
  target := target
  equalities e := nomatch e
  inequalities k := square (squareRow W k)

/-- Assemble the two ordinary Gram blocks and the division-free multipliers. -/
def certificate (W : GramPoleWitness ι ν η) :
    Certificate ℚ (ι ⊕ Unit) Empty (ι ⊕ Unit) (ν ⊕ η) where
  gram := Matrix.fromBlocks W.headRows (Matrix.of fun k _ => W.poleColumn k) W.slackRows 0
  equalityMultipliers e := nomatch e
  inequalityMultipliers
    | .inl _ => W.alpha
    | .inr _ => W.sigma

variable [Fintype ι] [DecidableEq ι] [Fintype ν] [Fintype η]

/-- The strict head weight is the witness guard. The original checker tests
the complete target identity and all nonnegative multipliers. -/
def check (target : Matrix (ι ⊕ Unit) (ι ⊕ Unit) ℚ)
    (W : GramPoleWitness ι ν η) : Bool :=
  decide (0 < W.alpha) && QuadraticCertificates.check (W.problem target) W.certificate

/-- The division-free block identities assemble the exact finite target. -/
def borderedMatrix (W : GramPoleWitness ι ν η) : Matrix (ι ⊕ Unit) (ι ⊕ Unit) ℚ :=
  let head := W.headRows.transpose * W.headRows + W.alpha • 1 +
    W.slackRows.transpose * W.slackRows
  let mixed := W.headRows.transpose *ᵥ W.poleColumn + W.alpha • W.remainder
  let pole := W.poleColumn ⬝ᵥ W.poleColumn + W.alpha * (W.remainder ⬝ᵥ W.remainder) + W.sigma
  Matrix.fromBlocks head (Matrix.of fun i _ => mixed i) (Matrix.of fun _ i => mixed i)
    (Matrix.of fun _ _ => pole)

/-- The original checker accepts the exact assembled block target with the
declared signs. Entrywise expansion keeps both mixed blocks. -/
theorem check_borderedMatrix (W : GramPoleWitness ι ν η)
    (hα : 0 < W.alpha) (hσ : 0 ≤ W.sigma) : W.check W.borderedMatrix = true := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq]
  refine ⟨hα, ?_⟩
  apply decide_eq_true
  refine ⟨?_, ?_⟩
  · intro k
    cases k with
    | inl _ => exact hα.le
    | inr _ => exact hσ
  · ext i j
    cases i <;> cases j <;>
      simp [problem, certificate, borderedMatrix, square, squareRow, Matrix.mul_apply,
        Matrix.mulVec, dotProduct, Fintype.sum_sum_type, Matrix.fromBlocks,
        Matrix.vecMulVec_apply, Matrix.sum_apply, Matrix.smul_apply, Matrix.one_apply,
        mul_ite, ite_mul, Finset.mul_sum, mul_comm, eq_comm] <;>
      ring

/-- The supplied squares hold on the whole real head-and-pole space. -/
theorem check_sound (target : Matrix (ι ⊕ Unit) (ι ⊕ Unit) ℚ)
    (W : GramPoleWitness ι ν η) (h : W.check target = true) (x : ι ⊕ Unit → ℝ) :
    0 ≤ quadratic (fun i j => (target i j : ℝ)) x := by
  simp only [check, Bool.and_eq_true, decide_eq_true_eq] at h
  apply checked_realizeRat_nonneg (W.problem target) W.certificate h.2 x
  refine ⟨(fun e => nomatch e), ?_⟩
  intro k
  let row : ι ⊕ Unit → ℝ := fun j => (squareRow W k j : ℝ)
  change 0 ≤ quadratic (fun i j => ((square (squareRow W k)) i j : ℝ)) x
  have he : (fun i j => ((square (squareRow W k)) i j : ℝ)) =
      Matrix.vecMulVec row row := by
    ext i j
    simp [row, square, Matrix.vecMulVec_apply]
  rw [he]
  let R : Matrix Unit (ι ⊕ Unit) ℝ := Matrix.of fun _ j => row j
  have hgram : Matrix.vecMulVec row row = R.transpose * R := by
    ext i j
    simp [R, Matrix.mul_apply, Matrix.vecMulVec_apply]
  rw [hgram]
  exact gram_nonnegative R x

section Regression

private def fixture : GramPoleWitness (Fin 1) (Fin 1) (Fin 1) where
  headRows := !![1]
  poleColumn := ![1 / 2]
  remainder := ![2]
  slackRows := !![1 / 3]
  alpha := 1 / 2
  sigma := 1 / 4

/-- The independent entries exercise the slack, the mixed pole column, and
both nonunit multipliers in the executable rational checker. -/
theorem check_mixed_pole_regression :
    fixture.check (Matrix.fromBlocks (!![29 / 18]) (Matrix.of fun _ _ => 3 / 2)
      (Matrix.of fun _ _ => 3 / 2) (Matrix.of fun _ _ => 5 / 2)) = true := by
  have he : fixture.borderedMatrix =
      Matrix.fromBlocks (!![29 / 18]) (Matrix.of fun _ _ => 3 / 2)
        (Matrix.of fun _ _ => 3 / 2) (Matrix.of fun _ _ => 5 / 2) := by
    ext (i | i) (j | j) <;> try fin_cases i <;> try fin_cases j <;>
      norm_num [fixture, borderedMatrix, Matrix.fromBlocks, Matrix.mul_apply,
        Matrix.mulVec, dotProduct, Matrix.one_apply]
  rw [← he]
  exact check_borderedMatrix fixture (by norm_num [fixture]) (by norm_num [fixture])

end Regression

end GramPoleWitness

end GRWTSK.Algebra.LinearAlgebra.QuadraticCertificates
