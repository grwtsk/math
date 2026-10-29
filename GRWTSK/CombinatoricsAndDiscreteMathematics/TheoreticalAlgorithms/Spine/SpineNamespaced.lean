-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Spine.Variant405bef6c3b8246d265b07e66506fdba8c3d587b0faee545181401acb8c663150","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"405bef6c3b8246d265b07e66506fdba8c3d587b0faee545181401acb8c663150","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Spine.Variant405bef6c3b8246d265b07e66506fdba8c3d587b0faee545181401acb8c663150","mathematical_subject":"Computation.DataStructures","original_sha256":"405bef6c3b8246d265b07e66506fdba8c3d587b0faee545181401acb8c663150","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit1/Bit1/Bit0/Bit1/Bit1/Bit1/Bit0/Bit1/Bit1/M506970656c696e652f43656e7465722f5370696e652e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit0.Bit0.Bit0.Bit1.Bit0.Bit0.M506970656c696e652f50686173654f726465722e6c65616e


/- source-tree-label: STL1|L|addr=110111011|role=proof_code_atom|slug=pipeline-center-spine|owner=canonical_owner|core=Pipeline/Center/Spine.lean|leaf=M506970656c696e652f43656e7465722f5370696e652e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Spine.Variant405bef6c3b8246d265b07e66506fdba8c3d587b0faee545181401acb8c663150

set_option autoImplicit false

namespace Think.Pipeline.Center

def spine : List Think.PhaseId :=
  Think.centerSpine

theorem spine_count :
    spine.length = 61 := by
  rfl

theorem spine_complete (p : Think.PhaseId) :
    p ∈ spine := by
  exact Think.centerSpine_complete p

theorem spine_nodup :
    spine.Nodup := by
  exact Think.centerSpine_nodup

end Think.Pipeline.Center
