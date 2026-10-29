import Mathematics.ProofStrategy.FrontierAntichain

/-!
# Exact minimal route cutsets
-/

namespace Mathematics.ProofStrategy

universe u

def HitsEveryFrontier
    {Obligation : Type u}
    [DecidableEq Obligation]
    (frontiers : FrontierFamily Obligation)
    (cutset : Requirement Obligation) : Prop :=
  ∀ frontier ∈ frontiers,
    ∃ obligation, obligation ∈ cutset ∧ obligation ∈ frontier

structure MinimalCutset
    {Obligation : Type u}
    [DecidableEq Obligation]
    (frontiers : FrontierFamily Obligation) where
  cutset : Requirement Obligation
  hits : HitsEveryFrontier frontiers cutset
  indispensable :
    ∀ obligation ∈ cutset,
      ¬ HitsEveryFrontier frontiers (cutset.erase obligation)

theorem minimalCutset_nonempty_of_nonempty_frontier
    {Obligation : Type u}
    [DecidableEq Obligation]
    {frontiers : FrontierFamily Obligation}
    (frontiers_nonempty : frontiers.Nonempty)
    (certificate : MinimalCutset frontiers) :
    certificate.cutset.Nonempty := by
  rcases frontiers_nonempty with ⟨frontier, frontier_member⟩
  rcases certificate.hits frontier frontier_member with
    ⟨obligation, obligation_in_cutset, _⟩
  exact ⟨obligation, obligation_in_cutset⟩

end Mathematics.ProofStrategy
