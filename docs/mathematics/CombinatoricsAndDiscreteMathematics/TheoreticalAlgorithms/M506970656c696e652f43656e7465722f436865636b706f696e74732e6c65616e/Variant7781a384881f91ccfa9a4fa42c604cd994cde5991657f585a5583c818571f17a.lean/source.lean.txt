-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Checkpoint.Variant4815cda9e61e91cdeb2eb9b1f58259ecb8f2e09a5a0a274de12d63bb997e7816","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4815cda9e61e91cdeb2eb9b1f58259ecb8f2e09a5a0a274de12d63bb997e7816","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Checkpoint.Variant4815cda9e61e91cdeb2eb9b1f58259ecb8f2e09a5a0a274de12d63bb997e7816","mathematical_subject":"Computation.DataStructures","original_sha256":"4815cda9e61e91cdeb2eb9b1f58259ecb8f2e09a5a0a274de12d63bb997e7816","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Think/Bit0/Bit0/Bit1/Bit1/Bit1/Bit1/Bit0/Bit1/Bit0/M506970656c696e652f43656e7465722f436865636b706f696e74732e6c65616e.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.Bit0.Bit0.Bit0.Bit0.Bit0.Bit1.Bit1.M506970656c696e652f43656e7465722f436f6d7072657373656453657175656e63652e6c65616e


/- source-tree-label: STL1|L|addr=001111010|role=proof_code_atom|slug=pipeline-center-checkpoints|owner=canonical_owner|core=Pipeline/Center/Checkpoints.lean|leaf=M506970656c696e652f43656e7465722f436865636b706f696e74732e6c65616e.lean -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Checkpoint.Variant4815cda9e61e91cdeb2eb9b1f58259ecb8f2e09a5a0a274de12d63bb997e7816

set_option autoImplicit false

namespace Think.Pipeline.Center

abbrev Checkpoint := FWR.Pipeline.CenterWeighted.Checkpoint

def strictCheckpoints : List Checkpoint :=
  FWR.Pipeline.CenterWeighted.strictCheckpoints

def checkpointResidue (c : Checkpoint) : Think.Residue :=
  c.residue

theorem strictCheckpoints_count :
    strictCheckpoints.length = 9 := by
  rfl

end Think.Pipeline.Center
