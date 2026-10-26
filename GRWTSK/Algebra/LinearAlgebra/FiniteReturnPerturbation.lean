/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors.
Imported finite matrix and Mathlib results retain original licenses. -/
import GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace

set_option autoImplicit false

/-!
# Exact finite-return perturbation accounting

The selected descent and boundary-return matrices have independent errors.
Power error is propagated in the correct noncommutative order. All identities
are algebraic; a norm bound requires a separately selected matrix norm and
corresponding submultiplicative estimates. No unproved small-error assumption
is stored in a record.
-/

namespace GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace

universe u
variable {V : Type u} [Fintype V] [DecidableEq V]

/-- The full matrix residual caused by replacing both parts of a return. -/
theorem ReturnMatrix.operator_sub
    (S T : ReturnMatrix V) :
    S.operator - T.operator =
      (S.boundaryReturn - T.boundaryReturn) * S.descent +
        T.boundaryReturn * (S.descent - T.descent) := by
  simp only [ReturnMatrix.operator, sub_mul, mul_sub]
  abel

/-- Retaining the exact boundary return leaves only the descent defect. -/
theorem ReturnMatrix.operator_sub_of_same_return
    (S T : ReturnMatrix V)
    (hreturn : S.boundaryReturn = T.boundaryReturn) :
    S.operator - T.operator =
      S.boundaryReturn * (S.descent - T.descent) := by
  rw [S.operator_sub T, hreturn]
  simp

/-- Retaining the exact descent leaves only the boundary-return defect. -/
theorem ReturnMatrix.operator_sub_of_same_descent
    (S T : ReturnMatrix V)
    (hdescent : S.descent = T.descent) :
    S.operator - T.operator =
      (S.boundaryReturn - T.boundaryReturn) * S.descent := by
  rw [S.operator_sub T, hdescent]
  simp

/-- Noncommutative first-order recurrence for the difference of two finite
matrix powers. It needs neither commutation nor spectral diagonalization. -/
theorem matrix_power_sub_succ (A B : Matrix V V ℂ) (n : ℕ) :
    A ^ (n + 1) - B ^ (n + 1) =
      (A ^ n - B ^ n) * A + B ^ n * (A - B) := by
  simp only [pow_succ, sub_mul, mul_sub]
  abel

/-- The first moment discrepancy is exactly the trace of the full operator
difference, including all terms in the return perturbation identity. -/
theorem ReturnMatrix.firstMoment_sub
    (S T : ReturnMatrix V) :
    closedWalkMoment S.operator 1 - closedWalkMoment T.operator 1 =
      Matrix.trace (S.operator - T.operator) := by
  rw [closedWalkMoment_eq_trace, closedWalkMoment_eq_trace]
  simp

/-- At every length, the two finite closed-walk moment sequences differ by
the trace of the exact matrix-power residual. -/
theorem ReturnMatrix.closedWalkMoment_sub
    (S T : ReturnMatrix V) (n : ℕ) :
    closedWalkMoment S.operator n - closedWalkMoment T.operator n =
      Matrix.trace (S.operator ^ n - T.operator ^ n) := by
  rw [closedWalkMoment_eq_trace, closedWalkMoment_eq_trace]
  exact (Matrix.trace_sub (S.operator ^ n) (T.operator ^ n)).symm

end GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace
