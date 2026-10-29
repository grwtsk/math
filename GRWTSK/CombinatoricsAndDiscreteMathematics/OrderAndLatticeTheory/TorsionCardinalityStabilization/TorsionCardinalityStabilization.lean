import Mathematics.Homology.TorsionLedger
import Mathlib.Order.Monotone.Basic

/-!
# Cardinality stabilization under a uniform finite torsion bound

This elementary result isolates the combinatorial fact from stronger claims
about group structure, generators, transition maps, or Bockstein data.
-/

namespace Mathematics.Homology

/-- A uniformly bounded monotone sequence of finite cardinalities stabilizes. -/
theorem torsionCardinality_eventuallyConstant
    (cardinality : Nat → Nat) :
    Monotone cardinality →
    (∃ bound, ∀ stage, cardinality stage ≤ bound) →
      ∃ stableStage,
        ∀ stage, stableStage ≤ stage →
          cardinality stage = cardinality stableStage := by
  intro monotoneCardinality bounded
  obtain ⟨bound, boundedBy⟩ := bounded
  obtain ⟨value, stableStage, stable⟩ :=
    converges_of_monotone_of_bounded monotoneCardinality boundedBy
  exact ⟨stableStage, fun stage later ↦
    (stable stage later).trans (stable stableStage (le_refl _)).symm⟩

end Mathematics.Homology
