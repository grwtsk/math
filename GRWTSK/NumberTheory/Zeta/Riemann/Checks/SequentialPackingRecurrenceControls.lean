/- Copyright (c) 2026 R.A. Jacob Martone. MIT.
Human mathematical direction: R.A. Jacob Martone. Formalization assistance: OpenAI ChatGPT. -/
import GRWTSK.NumberTheory.Zeta.Riemann.SequentialPackingRecurrence
import Mathlib.Tactic

set_option autoImplicit false
noncomputable section

namespace GRWTSK.RiemannHypothesis.Checks.SequentialPackingRecurrenceControls

open GRWTSK.RiemannHypothesis

/-- Appending any new point cannot make the Gram-volume state negative. -/
theorem arbitrary_append_preserves_nonnegativity
    {P : ℕ → Prop} (state : ThreePointPackingState P)
    (newPoint : PackingPoint) (newSource : ℕ) (h : P newSource) :
    0 ≤ (state.advance newPoint newSource h).value :=
  state.advance_value_nonnegative newPoint newSource h

/-- The recurrence transports the two overlap points exactly. -/
theorem recurrence_has_two_point_memory
    {P : ℕ → Prop} (state : ThreePointPackingState P)
    (newPoint : PackingPoint) (newSource : ℕ) (h : P newSource) :
    (state.advance newPoint newSource h).first = state.second ∧
      (state.advance newPoint newSource h).second = state.third := by
  exact ⟨rfl, rfl⟩

end GRWTSK.RiemannHypothesis.Checks.SequentialPackingRecurrenceControls
