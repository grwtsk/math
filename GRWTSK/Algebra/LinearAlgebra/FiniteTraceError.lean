/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors.
Mathlib trace and norm identities retain upstream authorship and licenses. -/
import GRWTSK.Algebra.LinearAlgebra.FiniteReturnPerturbation

set_option autoImplicit false
noncomputable section

/-!
# Quantitative finite trace-error transfer

A supplied *diagonal* entrywise error budget bounds a finite trace
observable by its complete finite sum. At moment n the budget must cover the
actual n-th powers of the chosen matrices; a first-moment or entrywise
operator estimate cannot be silently reused for all powers.

These are bounds on the absolute value of scalar finite-trace differences,
not matrix trace-class (nuclear) norms, eigenvalue enclosures, determinant
zero certificates, or a limiting Fredholm result.
-/

namespace GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace

universe u
variable {V : Type u} [Fintype V] [DecidableEq V]

/-- A finite trace difference is controlled by the *sum* of the actual
diagonal-entry errors. No dimension factor is hidden in an unnamed constant. -/
theorem trace_difference_le_sum_diagonal
    (A B : Matrix V V ℂ) (error : V → ℝ)
    (hentry : ∀ i, ‖A i i - B i i‖ ≤ error i) :
    ‖Matrix.trace A - Matrix.trace B‖ ≤ ∑ i, error i := by
  calc
    ‖Matrix.trace A - Matrix.trace B‖ =
        ‖∑ i, (A i i - B i i)‖ := by
          simp [Matrix.trace, Matrix.diag_apply, Finset.sum_sub_distrib]
    _ ≤ ∑ i, ‖A i i - B i i‖ := norm_sum_le _ _
    _ ≤ ∑ i, error i := by
          apply Finset.sum_le_sum
          intro i _
          exact hentry i

/-- Exact finite closed-walk moment uncertainty from certified diagonal
errors of the same selected matrix powers. -/
theorem ReturnMatrix.closedWalkMoment_difference_le
    (S T : ReturnMatrix V) (n : ℕ) (error : V → ℝ)
    (hentry : ∀ i,
      ‖(S.operator ^ n) i i - (T.operator ^ n) i i‖ ≤ error i) :
    ‖closedWalkMoment S.operator n - closedWalkMoment T.operator n‖ ≤
      ∑ i, error i := by
  rw [closedWalkMoment_eq_trace, closedWalkMoment_eq_trace]
  exact trace_difference_le_sum_diagonal
    (S.operator ^ n) (T.operator ^ n) error hentry

/-- First moment specialization, requiring only the directly computed
finite return matrices, without a powered-matrix supplier. -/
theorem ReturnMatrix.firstMoment_difference_le
    (S T : ReturnMatrix V) (error : V → ℝ)
    (hentry : ∀ i,
      ‖S.operator i i - T.operator i i‖ ≤ error i) :
    ‖closedWalkMoment S.operator 1 - closedWalkMoment T.operator 1‖ ≤
      ∑ i, error i := by
  apply S.closedWalkMoment_difference_le T 1 error
  intro i
  simpa using hentry i

end GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace
