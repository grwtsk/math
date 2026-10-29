-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompressedStep.Variant850104245fbc54486cf924f2d3ae09441a49559a00e37cbc1d51a7d8b4a823eb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"850104245fbc54486cf924f2d3ae09441a49559a00e37cbc1d51a7d8b4a823eb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.CompressedStep.Variant850104245fbc54486cf924f2d3ae09441a49559a00e37cbc1d51a7d8b4a823eb","mathematical_subject":"Computation.DataStructures","original_sha256":"850104245fbc54486cf924f2d3ae09441a49559a00e37cbc1d51a7d8b4a823eb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit0/Bit0/Bit0/Bit1/Bit1/M506970656c696e652f43656e7465722f436f6d7072657373656453657175656e63652e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit1.Bit1.Bit0.Bit1.Bit1.Bit1.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f5370696e652e6c65616e


/- source-tree-label: STL1|L|addr=0000011|role=proof_code_atom|slug=pipeline-center-compressedsequence|owner=canonical_owner|core=Pipeline/Center/CompressedSequence.lean|leaf=M506970656c696e652f43656e7465722f436f6d7072657373656453657175656e63652e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.CompressedStep.Variant850104245fbc54486cf924f2d3ae09441a49559a00e37cbc1d51a7d8b4a823eb

set_option autoImplicit false

namespace Think.Pipeline.Center

abbrev CompressedStep := Think.SpineStep

def compressedSequence : List CompressedStep :=
  FWR.Pipeline.CenterWeighted.compressedSpine

theorem compressedSequence_count :
    compressedSequence.length = 20 := by
  rfl

end Think.Pipeline.Center
