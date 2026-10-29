-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExactMutationMatch.Variant35f6b30f200dfd7768bce10d977b76c4309a7fbcbbf046dde30f8f3457da74b0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"35f6b30f200dfd7768bce10d977b76c4309a7fbcbbf046dde30f8f3457da74b0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ExactMutationMatch.Variant35f6b30f200dfd7768bce10d977b76c4309a7fbcbbf046dde30f8f3457da74b0","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"35f6b30f200dfd7768bce10d977b76c4309a7fbcbbf046dde30f8f3457da74b0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Mutation/Diagnosis.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Mutation.Signature
import Mathematics.ProofStrategy.FrontierAntichain

/-!
# Inverse diagnosis and ambiguity-preserving explanation antichains

Exact matching can return several incomparable explanations.  Normalization
removes strict supersets but never chooses one incomparable member.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExactMutationMatch.Variant35f6b30f200dfd7768bce10d977b76c4309a7fbcbbf046dde30f8f3457da74b0

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
