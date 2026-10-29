-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.RegisteredFundamentalSequence.Variant9bee7abe2e306431f6dda89fe72c17578619ea4904d6ffcaad3eea28afac41c4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9bee7abe2e306431f6dda89fe72c17578619ea4904d6ffcaad3eea28afac41c4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.RegisteredFundamentalSequence.Variant9bee7abe2e306431f6dda89fe72c17578619ea4904d6ffcaad3eea28afac41c4","mathematical_subject":"Foundations.Unclassified","original_sha256":"9bee7abe2e306431f6dda89fe72c17578619ea4904d6ffcaad3eea28afac41c4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Documents/N/formal/lean/Mathematics/StratifiedBoundary/OrdinalTally/FundamentalSequence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.OrdinalTally.NormalForm

/-!
# Registered fundamental sequences

Strictness and cofinality are premises attached to a registered identifier.
No arbitrary executable sequence is treated as a limit certificate.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.RegisteredFundamentalSequence.Variant9bee7abe2e306431f6dda89fe72c17578619ea4904d6ffcaad3eea28afac41c4

namespace Mathematics.StratifiedBoundary

structure RegisteredFundamentalSequence
    (Semantic : Type u)
    [LT Semantic]
    (profile : OrdinalNotationProfile Semantic) where
  sequenceId : FundamentalSequenceId
  limitCode : OrdinalTally
  approximant : Nat → OrdinalTally
  sourceEventRef : String
  authorityRef : String
  limitAdmitted : profile.admits limitCode
  approximantAdmitted :
    ∀ stage, profile.admits (approximant stage)
  strict :
    ∀ stage,
      profile.denotes (approximant stage) <
        profile.denotes (approximant (stage + 1))
  cofinal :
    ∀ bound,
      bound < profile.denotes limitCode →
        ∃ stage,
          bound < profile.denotes (approximant stage)

theorem registeredFundamentalSequence_strict
    {Semantic : Type u}
    [LT Semantic]
    {profile : OrdinalNotationProfile Semantic}
    (sequence :
      RegisteredFundamentalSequence Semantic profile)
    (stage : Nat) :
    profile.denotes (sequence.approximant stage) <
      profile.denotes (sequence.approximant (stage + 1)) :=
  sequence.strict stage

theorem registeredFundamentalSequence_cofinal
    {Semantic : Type u}
    [LT Semantic]
    {profile : OrdinalNotationProfile Semantic}
    (sequence :
      RegisteredFundamentalSequence Semantic profile)
    {bound : Semantic}
    (belowLimit :
      bound < profile.denotes sequence.limitCode) :
    ∃ stage,
      bound < profile.denotes (sequence.approximant stage) :=
  sequence.cofinal bound belowLimit

end Mathematics.StratifiedBoundary
