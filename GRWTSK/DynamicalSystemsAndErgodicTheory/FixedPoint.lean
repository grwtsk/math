import Mathlib.Dynamics.FixedPoints.Basic
import Mathematics.Relaxation.Operator

/-! # Finite termination at an exact fixed point -/

namespace Mathematics.Relaxation

/-- Exact fixed point for one specific relaxation operator. -/
structure FixedPoint (operator : Operator) where
  state : State
  fixed : Function.IsFixedPt operator.step state

namespace Operator

/--
Every trajectory reaches an exact fixed point after finitely many steps,
because every nonfixed step strictly lowers a natural-valued measure.
-/
theorem eventually_fixed
    (operator : Operator)
    (initial : State) :
    ∃ iteration,
      Function.IsFixedPt operator.step
        ((operator.step^[iteration]) initial) := by
  induction measureEquation : operator.energy.measure initial using
      Nat.strong_induction_on generalizing initial with
  | h measure inductionHypothesis =>
      by_cases fixed : operator.step initial = initial
      · exact ⟨0, by simpa [Function.IsFixedPt] using fixed⟩
      · have decreases :
            operator.energy.measure (operator.step initial) < measure := by
          simpa [measureEquation] using operator.strict_descent initial fixed
        obtain ⟨iteration, eventually⟩ :=
          inductionHypothesis
            (operator.energy.measure (operator.step initial))
            decreases
            (operator.step initial)
            rfl
        refine ⟨iteration + 1, ?_⟩
        simpa [Function.iterate_succ_apply] using eventually

/-- The termination witness packages directly as an exact fixed point. -/
theorem reaches_fixed_point
    (operator : Operator)
    (initial : State) :
    Nonempty (FixedPoint operator) := by
  obtain ⟨iteration, fixed⟩ := operator.eventually_fixed initial
  exact ⟨⟨(operator.step^[iteration]) initial, fixed⟩⟩

/-- Every finite iterate preserves all hard constraints. -/
theorem iterates_preserve_constraints
    (operator : Operator)
    (initial : State)
    (initialValid :
      SatisfiesAll operator.constraints initial) :
    ∀ iteration,
      SatisfiesAll operator.constraints
        ((operator.step^[iteration]) initial) := by
  intro iteration
  induction iteration with
  | zero =>
      simpa using initialValid
  | succ iteration inductionHypothesis =>
      rw [Function.iterate_succ_apply']
      exact
        operator.constraints_preserved
          ((operator.step^[iteration]) initial)
          inductionHypothesis

/-- Every finite iterate preserves the exact immutable work package. -/
theorem iterates_preserve_scope
    (operator : Operator)
    (initial : State) :
    ∀ iteration,
      ((operator.step^[iteration]) initial).workPackage =
        initial.workPackage := by
  intro iteration
  induction iteration with
  | zero => rfl
  | succ iteration inductionHypothesis =>
      rw [Function.iterate_succ_apply']
      exact
        (operator.source_preserved
          ((operator.step^[iteration]) initial)).2.trans
          inductionHypothesis

end Operator

end Mathematics.Relaxation
