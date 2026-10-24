-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.SetTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.LimitIndexCertificate.Variant02263164ac5267c6a58e279ed828bb1ba83f273fe320740d9296bdf38f672ee1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"02263164ac5267c6a58e279ed828bb1ba83f273fe320740d9296bdf38f672ee1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.SetTheory.SourceCorpus.LimitIndexCertificate.Variant02263164ac5267c6a58e279ed828bb1ba83f273fe320740d9296bdf38f672ee1","mathematical_subject":"Logic.SetTheory","original_sha256":"02263164ac5267c6a58e279ed828bb1ba83f273fe320740d9296bdf38f672ee1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/StratifiedBoundary/OrdinalTally/Limit.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.StratifiedBoundary.OrdinalTally.FundamentalSequence

/-!
# Limit-stratum admission

The stage sequence consists only of executable normal forms.  Its supremum is
the target of a separate registered countable limit; the target is never
reinserted into executable syntax.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.SetTheory.LimitIndexCertificate.Variant02263164ac5267c6a58e279ed828bb1ba83f273fe320740d9296bdf38f672ee1

namespace Mathematics.StratifiedBoundary.OrdinalTally

structure LimitIndexCertificate
    (registered : RegisteredCountableLimit) where
  stageIndex :
    Nat → ExecutableNormalForm
  stageMatchesFundamentalSequence :
    ∀ stage,
      (stageIndex stage).value =
        (registered.approximation stage).value
  monotone :
    Monotone
      (fun stage => (stageIndex stage).value)
  cofinal :
    ∀ {candidate},
      candidate < registered.target →
      ∃ stage,
        candidate ≤ (stageIndex stage).value

theorem limitIndex_has_declared_boundary
    {registered : RegisteredCountableLimit}
    (certificate :
      LimitIndexCertificate registered) :
    (⨆ stage : Nat,
      (certificate.stageIndex stage).value) =
        registered.target := by
  apply le_antisymm
  · apply Ordinal.iSup_le
    intro stage
    rw [certificate.stageMatchesFundamentalSequence]
    exact (registered.belowTarget stage).le
  · apply le_of_forall_lt
    intro candidate candidate_lt
    obtain ⟨stage, stage_ge⟩ :=
      certificate.cofinal candidate_lt
    exact stage_ge.trans
      (Ordinal.le_iSup
        (fun n : Nat =>
          (certificate.stageIndex n).value)
        stage)

end Mathematics.StratifiedBoundary.OrdinalTally
