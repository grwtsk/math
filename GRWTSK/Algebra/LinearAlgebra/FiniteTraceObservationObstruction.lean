/- Copyright (c) 2026 grwtsk contributors. MIT.
Mathematical source attribution: grwtsk contributors.
Imported Mathlib and existing GRWTSK results retain upstream licenses. -/
import GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace

set_option autoImplicit false

/-!
# Finite trace observation is not full matrix reconstruction

A nonzero strictly upper-triangular two-state transition has the same
trace of every nonnegative power as the zero transition, including the
length-zero identity trace.  Hence even a complete list of finite trace
moments does not recover the selected matrix without additional hypotheses.
This counterexample does not concern the particular arithmetic source
or assert a zeta-zero property.
-/

namespace GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace

/-- One nonzero off-diagonal transition with no positive-length closed walks. -/
def nilpotentTwo : Matrix (Fin 2) (Fin 2) ℂ :=
  fun i j => if i = 0 ∧ j = 1 then 1 else 0

theorem nilpotentTwo_ne_zero :
    nilpotentTwo ≠ (0 : Matrix (Fin 2) (Fin 2) ℂ) := by
  intro h
  have h01 := congrArg
    (fun M : Matrix (Fin 2) (Fin 2) ℂ => M 0 1) h
  norm_num [nilpotentTwo] at h01

theorem nilpotentTwo_trace_zero : Matrix.trace nilpotentTwo = 0 := by
  simp [Matrix.trace, Matrix.diag_apply, Fin.sum_univ_two, nilpotentTwo]

theorem nilpotentTwo_square_zero : nilpotentTwo ^ 2 = 0 := by
  rw [pow_two]
  ext i j
  fin_cases i <;> fin_cases j <;>
    norm_num [nilpotentTwo, Matrix.mul_apply, Fin.sum_univ_two]

theorem nilpotentTwo_pow_succ_succ_zero (n : ℕ) :
    nilpotentTwo ^ (n + 2) = 0 := by
  induction n with
  | zero =>
      simpa using nilpotentTwo_square_zero
  | succ n ih =>
      have hn : Nat.succ n + 2 = (n + 2) + 1 := by omega
      rw [hn, pow_succ, ih, zero_mul]

/-- All finite traces agree with the zero matrix; neither the first
moment nor the entire trace-moment sequence identifies the operator. -/
theorem nilpotentTwo_trace_pow_eq_zero_trace_pow (n : ℕ) :
    Matrix.trace (nilpotentTwo ^ n) =
      Matrix.trace ((0 : Matrix (Fin 2) (Fin 2) ℂ) ^ n) := by
  cases n with
  | zero =>
      rfl
  | succ n =>
      cases n with
      | zero =>
          simpa using nilpotentTwo_trace_zero
      | succ n =>
          have hpow :
              nilpotentTwo ^ (Nat.succ (Nat.succ n)) = 0 := by
            convert nilpotentTwo_pow_succ_succ_zero n using 1 <;> omega
          simp [hpow]

/-- Exact finite based-walk moments can coincide at *every* length for
distinct transition matrices. -/
theorem nilpotentTwo_closedWalkMoment_eq_zero (n : ℕ) :
    closedWalkMoment nilpotentTwo n =
      closedWalkMoment (0 : Matrix (Fin 2) (Fin 2) ℂ) n := by
  rw [closedWalkMoment_eq_trace, closedWalkMoment_eq_trace]
  exact nilpotentTwo_trace_pow_eq_zero_trace_pow n

/-- One concrete finite obstruction to reconstructing the full matrix from
all scalar trace moments alone. -/
theorem exists_trace_indistinguishable_distinct :
    ∃ A B : Matrix (Fin 2) (Fin 2) ℂ,
      A ≠ B ∧
        ∀ n : ℕ, closedWalkMoment A n = closedWalkMoment B n := by
  refine ⟨nilpotentTwo, 0, nilpotentTwo_ne_zero, ?_⟩
  exact nilpotentTwo_closedWalkMoment_eq_zero

end GRWTSK.Algebra.LinearAlgebra.FiniteClosedWalkTrace
