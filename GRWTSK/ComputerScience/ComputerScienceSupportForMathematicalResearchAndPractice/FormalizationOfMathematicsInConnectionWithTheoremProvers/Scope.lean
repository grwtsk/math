import FormalResearch.PositiveAtlas.MaximalDefect

namespace FormalResearch.PositiveAtlas.MaximalDefect

/-- Finitely many defect values alone do not ensure a greatest maximizer
without an additional finiteness or ascending-chain condition on the carrier. -/
theorem finite_values_do_not_ensure_greatest_maximizer :
    ∃ f : ℕ → ℝ, (Set.range f).Finite ∧ Supermodular f ∧
      ¬ ∃ g, IsGreatest {x | IsMaximizer f x} g := by
  refine ⟨fun _ => 0, Set.finite_range_const, fun _ _ => le_rfl, ?_⟩
  intro ⟨g, hg⟩
  have hbad : g + 1 ≤ g := hg.2 (fun _ => le_rfl)
  exact Nat.not_succ_le_self g hbad

end FormalResearch.PositiveAtlas.MaximalDefect
