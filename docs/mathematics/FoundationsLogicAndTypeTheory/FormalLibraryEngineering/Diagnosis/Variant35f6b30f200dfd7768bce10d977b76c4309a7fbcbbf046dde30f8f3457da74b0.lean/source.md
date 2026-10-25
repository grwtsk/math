# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Diagnosis.Variant35f6b30f200dfd7768bce10d977b76c4309a7fbcbbf046dde30f8f3457da74b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `609f64fe9b4fad8b13f0b0f0c26a2d836ba098dc` · SHA-256 `35f6b30f200dfd7768bce10d977b76c4309a7fbcbbf046dde30f8f3457da74b0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
