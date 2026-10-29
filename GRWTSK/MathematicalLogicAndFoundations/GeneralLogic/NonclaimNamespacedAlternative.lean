-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nonclaim.Variantcb41429a73eb9ab0e5e6c9a1ba839861fc901f706e6d7f197a0ffdc067ad5dda","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb41429a73eb9ab0e5e6c9a1ba839861fc901f706e6d7f197a0ffdc067ad5dda","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Nonclaim.Variantcb41429a73eb9ab0e5e6c9a1ba839861fc901f706e6d7f197a0ffdc067ad5dda","mathematical_subject":"Foundations.Unclassified","original_sha256":"cb41429a73eb9ab0e5e6c9a1ba839861fc901f706e6d7f197a0ffdc067ad5dda","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit0/Bit0/Bit1/Bit0/Bit0/Bit0/Bit0/M506970656c696e652f4e6f6e636c61696d2e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit1.Bit0.Bit1.Bit0.Bit0.Bit1.Bit1.Bit1.M506970656c696e652f417574686f726974792e6c65616e
import Think.Bit0.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.Bit1.M506970656c696e652f526573696475652e6c65616e


/- source-tree-label: STL1|L|addr=10010000|role=proof_code_atom|slug=pipeline-nonclaim|owner=canonical_owner|core=Pipeline/Nonclaim.lean|leaf=M506970656c696e652f4e6f6e636c61696d2e6c65616e.lean -/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Nonclaim.Variantcb41429a73eb9ab0e5e6c9a1ba839861fc901f706e6d7f197a0ffdc067ad5dda

set_option autoImplicit false

namespace Think.Pipeline

structure Nonclaim where
  phase : Think.PhaseId
  statement : String

def nonclaimAuthorityLabel (n : Nonclaim) : AuthorityLabel :=
  { phase := n.phase
    authority := AuthorityClass.refused }

def noPoleAuthorityUpgrade (n : Nonclaim) : Prop :=
  n.phase ∈ Think.centerSpine ∧
    (nonclaimAuthorityLabel n).authority = AuthorityClass.refused ∧
    ∀ r ∈ Think.pipelineResidues, r.target = FWR.Target.CenterWeightedPipeline

theorem noPoleAuthorityUpgrade_certified (n : Nonclaim) :
    noPoleAuthorityUpgrade n := by
  exact ⟨Think.centerSpine_complete n.phase, rfl, Think.pipelineResidues_targets_correct⟩

end Think.Pipeline
