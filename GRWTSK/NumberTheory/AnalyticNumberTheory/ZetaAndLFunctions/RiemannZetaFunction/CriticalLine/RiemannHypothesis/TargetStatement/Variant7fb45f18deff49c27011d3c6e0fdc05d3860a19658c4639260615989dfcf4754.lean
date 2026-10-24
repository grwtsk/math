import Mathlib.NumberTheory.LSeries.RiemannZeta

/-!
# Independent statement comparator

This small statement repeats the pinned Mathlib target without importing any
project proof. Definitional comparison must succeed before the reformulation is
accepted. This is a proposition, never a declaration of a proof of RH.
-/

namespace FormalResearch.RiemannHypothesis.Target

/-- Exact quantifiers, trivial-zero exclusions, and pole exclusion of the fixed target. -/
def Statement : Prop :=
  ∀ s : ℂ, riemannZeta s = 0 → (¬ ∃ n : ℕ, s = -2 * (n + 1)) →
    s ≠ 1 → s.re = 1 / 2

/-- A stricter target or an omitted hypothesis cannot pass this definitional comparison. -/
theorem statement_eq_mathlib : Statement = _root_.RiemannHypothesis := rfl

end FormalResearch.RiemannHypothesis.Target
