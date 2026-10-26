/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors.
Upstream Mathlib and existing GRWTSK source retain their licenses. -/
import GRWTSK.Algebra.LinearAlgebra.FiniteBoundaryReturnTrace
import GRWTSK.Algebra.LinearAlgebra.FiniteTraceError

set_option autoImplicit false
noncomputable section

/-!
# Source-identified finite return and trace residuals

Unlike a separately supplied return matrix, both matrices in each comparison
are the coordinate images of genuine, endpoint-typed real linear ports.
The exact noncommutative two-port defect retains both sources of error.

The quantitative theorem consumes bounds on the actual powered diagonal
entries; those bounds must be derived or certified separately. It is a bound
on a scalar trace difference, not a matrix nuclear norm.
-/

namespace GRWTSK.Algebra.LinearAlgebra.FiniteBoundaryReturn

open GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace

universe u v
variable {I : Type u} {J : Type v}
variable [Fintype I] [DecidableEq I] [Fintype J] [DecidableEq J]

namespace System

/-- Exact residual from changing both the descent and the independently
selected boundary return. No cross term is silently discarded. -/
theorem complexReturnOperator_sub
    (S T : System (I → ℝ) (J → ℝ)) :
    S.complexReturnOperator - T.complexReturnOperator =
      (S.complexBoundaryReturn - T.complexBoundaryReturn) *
          S.complexDescent +
        T.complexBoundaryReturn *
          (S.complexDescent - T.complexDescent) := by
  change
    S.complexBoundaryReturn * S.complexDescent -
        T.complexBoundaryReturn * T.complexDescent =
      (S.complexBoundaryReturn - T.complexBoundaryReturn) *
          S.complexDescent +
        T.complexBoundaryReturn *
          (S.complexDescent - T.complexDescent)
  simp only [sub_mul, mul_sub]
  abel

/-- Exact moment residual at an arbitrary finite walk length, preserving the
whole powered difference of the *same* two source-derived return operators. -/
theorem source_closedWalkMoment_sub
    (S T : System (I → ℝ) (J → ℝ)) (n : ℕ) :
    closedWalkMoment S.complexReturnOperator n -
        closedWalkMoment T.complexReturnOperator n =
      Matrix.trace (S.complexReturnOperator ^ n -
        T.complexReturnOperator ^ n) := by
  rw [closedWalkMoment_eq_trace, closedWalkMoment_eq_trace]
  exact (Matrix.trace_sub _ _).symm

/-- Complete finite scalar-trace error bound from separately supplied
diagonal-error certificates for the true source-derived matrix powers. -/
theorem source_closedWalkMoment_error_le
    (S T : System (I → ℝ) (J → ℝ)) (n : ℕ)
    (error : I → ℝ)
    (hentry : ∀ i,
      ‖(S.complexReturnOperator ^ n) i i -
          (T.complexReturnOperator ^ n) i i‖ ≤ error i) :
    ‖closedWalkMoment S.complexReturnOperator n -
        closedWalkMoment T.complexReturnOperator n‖ ≤
      ∑ i, error i := by
  rw [closedWalkMoment_eq_trace, closedWalkMoment_eq_trace]
  exact trace_difference_le_sum_diagonal _ _ error hentry

/-- Both source ports being unchanged is enough for exact finite trace
identity, irrespective of differences in unused endpoint operators. -/
theorem complexReturnOperator_eq_of_ports_eq
    (S T : System (I → ℝ) (J → ℝ))
    (hdescent : S.descent = T.descent)
    (hreturn : S.boundaryReturn = T.boundaryReturn) :
    S.complexReturnOperator = T.complexReturnOperator := by
  simp [complexReturnOperator, complexDescent, complexBoundaryReturn,
    hdescent, hreturn]

theorem source_closedWalkMoment_eq_of_ports_eq
    (S T : System (I → ℝ) (J → ℝ))
    (hdescent : S.descent = T.descent)
    (hreturn : S.boundaryReturn = T.boundaryReturn)
    (n : ℕ) :
    closedWalkMoment S.complexReturnOperator n =
      closedWalkMoment T.complexReturnOperator n := by
  rw [S.complexReturnOperator_eq_of_ports_eq T hdescent hreturn]

end System

end GRWTSK.Algebra.LinearAlgebra.FiniteBoundaryReturn
