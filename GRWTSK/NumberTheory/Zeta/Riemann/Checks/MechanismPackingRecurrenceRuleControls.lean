/- Copyright (c) 2026 grwtsk contributors. MIT.
Human mathematical direction: grwtsk contributors. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.MechanismPackingRecurrenceRule
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.MechanismPackingRecurrenceRuleControls

open GRWTSK.RiemannHypothesis

/-- Once a source-bound recurrence program exists, every stage is positive
without any additional analytic positivity field. -/
theorem recurrence_program_has_no_stage_positivity_obligation
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (program : SourceBoundPackingRecurrenceProgram Source Local)
    (n : ℕ) :
    0 ≤ program.valueAt n :=
  program.valueAt_nonnegative n

/-- Adjacent generated states reuse the previous two geometric points exactly. -/
theorem recurrence_program_has_exact_two_point_memory
    {Source Local : Type*}
    [AddCommGroup Source] [AddCommGroup Local]
    [Module ℝ Source] [Module ℝ Local]
    [TopologicalSpace Source] [TopologicalSpace Local]
    (program : SourceBoundPackingRecurrenceProgram Source Local)
    (n : ℕ) :
    (program.stateAt (n + 1)).first = (program.stateAt n).second ∧
      (program.stateAt (n + 1)).second = (program.stateAt n).third := by
  exact ⟨rfl, rfl⟩

end GRWTSK.RiemannHypothesis.Checks.MechanismPackingRecurrenceRuleControls
