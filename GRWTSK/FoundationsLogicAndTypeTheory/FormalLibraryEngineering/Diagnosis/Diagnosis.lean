import Mathematics.Mutation.Signature
import Mathematics.ProofStrategy.FrontierAntichain

/-!
# Inverse diagnosis and ambiguity-preserving explanation antichains

Exact matching can return several incomparable explanations.  Normalization
removes strict supersets but never chooses one incomparable member.
-/

namespace Mathematics.Mutation

open Mathematics.ProofStrategy

abbrev Explanation :=
  Requirement ObstructionKind

abbrev ExplanationFamily :=
  FrontierFamily ObstructionKind

noncomputable def minimalExplanations
    (family : ExplanationFamily) :
    ExplanationFamily :=
  normalizeFrontier family

noncomputable def inverseProblem
    (candidateExplanations : ExplanationFamily) :
    ExplanationFamily :=
  minimalExplanations candidateExplanations

def ExplanationCovers
    (predicted observed : Finset StableId) : Prop :=
  observed ⊆ predicted

structure ExactMutationMatch where
  obstruction : ObstructionKind
  predictedSupport : Finset StableId
  observedSupport : Finset StableId
  sound :
    ExplanationCovers predictedSupport observedSupport

theorem inverse_exact_match_sound
    (exactMatch : ExactMutationMatch) :
    exactMatch.observedSupport ⊆ exactMatch.predictedSupport :=
  exactMatch.sound

def discriminatingPower
    {Hypothesis Experiment Outcome : Type}
    [DecidableEq Hypothesis]
    [DecidableEq Outcome]
    (hypotheses : Finset Hypothesis)
    (predict : Experiment → Hypothesis → Outcome)
    (experiment : Experiment) :
    Nat :=
  ((hypotheses.product hypotheses).filter fun pair =>
      pair.1 ≠ pair.2 ∧
        predict experiment pair.1 ≠ predict experiment pair.2).card

theorem minimal_explanations_form_antichain
    (family : ExplanationFamily)
    (left : Explanation)
    (leftMember : left ∈ minimalExplanations family)
    (right : Explanation)
    (rightMember : right ∈ minimalExplanations family)
    (leftSubset : left ⊆ right) :
    right ⊆ left := by
  classical
  change left ∈ normalizeFrontier family at leftMember
  change right ∈ normalizeFrontier family at rightMember
  simp only [normalizeFrontier, Finset.mem_filter] at leftMember rightMember
  exact rightMember.2.2 left leftMember.1 leftSubset

end Mathematics.Mutation
