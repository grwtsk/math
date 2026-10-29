/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors.
Mathlib matrix and trace results retain their upstream authorship and licenses. -/
import Mathlib

set_option autoImplicit false

/-!
# Finite return matrices, weighted closed walks, and exact trace moments

All sums are finite. Recursive weighted walks give the actual matrix powers,
including length zero, with the multiplication order fixed at each step.
A boundary-return matrix is an independent input; no cycle is manufactured from
an acyclic descent graph. A finite determinant is not an infinite Fredholm
determinant and is not identified with a zeta function.
-/

namespace GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace

universe u
variable {V : Type u} [Fintype V] [DecidableEq V]

/-- Total weight of length-n walks from i to j. Each successor chooses the
last intermediate vertex; multiplication order agrees with Matrix.mul. -/
def walkWeight (T : Matrix V V ℂ) : ℕ → V → V → ℂ
  | 0, i, j => if i = j then 1 else 0
  | n + 1, i, j => ∑ k, walkWeight T n i k * T k j

@[simp]
theorem walkWeight_zero (T : Matrix V V ℂ) (i j : V) :
    walkWeight T 0 i j = if i = j then 1 else 0 := rfl

@[simp]
theorem walkWeight_succ (T : Matrix V V ℂ) (n : ℕ) (i j : V) :
    walkWeight T (n + 1) i j = ∑ k, walkWeight T n i k * T k j := rfl

/-- Recursive finite walk summation computes the corresponding matrix power
entry, not merely a numerical approximation to it. -/
theorem walkWeight_eq_pow (T : Matrix V V ℂ) (n : ℕ) :
    ∀ i j : V, walkWeight T n i j = (T ^ n) i j := by
  induction n with
  | zero =>
      intro i j
      simp [walkWeight]
  | succ n ih =>
      intro i j
      calc
        walkWeight T (n + 1) i j =
            ∑ k, walkWeight T n i k * T k j := rfl
        _ = ∑ k, (T ^ n) i k * T k j := by
          apply Finset.sum_congr rfl
          intro k _
          rw [ih i k]
        _ = (T ^ (n + 1)) i j := by
          simp [pow_succ, Matrix.mul_apply]

/-- The total weight of all based closed walks of the declared length. -/
def closedWalkMoment (T : Matrix V V ℂ) (n : ℕ) : ℂ :=
  ∑ i, walkWeight T n i i

/-- Exact finite based-closed-walk trace identity, with no geometric trace
or infinite determinant interpretation. -/
theorem closedWalkMoment_eq_trace (T : Matrix V V ℂ) (n : ℕ) :
    closedWalkMoment T n = Matrix.trace (T ^ n) := by
  unfold closedWalkMoment Matrix.trace
  apply Finset.sum_congr rfl
  intro i _
  simpa only [Matrix.diag_apply] using (walkWeight_eq_pow T n i i)

/-- At length zero each vertex contributes its identity walk. -/
theorem closedWalkMoment_zero (T : Matrix V V ℂ) :
    closedWalkMoment T 0 = (Fintype.card V : ℂ) := by
  rw [closedWalkMoment_eq_trace]
  simp

/-- A finite descent matrix with an independently specified boundary return.
The operator is always boundaryReturn * descent, in that order. -/
structure ReturnMatrix (V : Type u) [Fintype V] [DecidableEq V] where
  descent : Matrix V V ℂ
  boundaryReturn : Matrix V V ℂ

namespace ReturnMatrix

def operator (S : ReturnMatrix V) : Matrix V V ℂ :=
  S.boundaryReturn * S.descent

theorem operator_entry (S : ReturnMatrix V) (i j : V) :
    S.operator i j = ∑ k, S.boundaryReturn i k * S.descent k j := by
  simp [operator, Matrix.mul_apply]

/-- Closed-walk moments for the *same* selected finite return matrix. -/
theorem closedWalkMoment_operator (S : ReturnMatrix V) (n : ℕ) :
    closedWalkMoment S.operator n = Matrix.trace (S.operator ^ n) :=
  closedWalkMoment_eq_trace S.operator n

/-- Finite determinant polynomial, with its normalization explicit. -/
def determinant (S : ReturnMatrix V) (z : ℂ) : ℂ :=
  Matrix.det (1 - z • S.operator)

theorem determinant_zero (S : ReturnMatrix V) : S.determinant 0 = 1 := by
  simp [determinant]

end ReturnMatrix

end GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace
