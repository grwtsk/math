-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Contains.Variant8c9094eb82d18786616646143819ba07a215cd7a30b17675e5a194f7806539e9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8c9094eb82d18786616646143819ba07a215cd7a30b17675e5a194f7806539e9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Contains.Variant8c9094eb82d18786616646143819ba07a215cd7a30b17675e5a194f7806539e9","mathematical_subject":"Computation.DataStructures","original_sha256":"8c9094eb82d18786616646143819ba07a215cd7a30b17675e5a194f7806539e9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Residues/Containment.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.Residues.Ledger


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Contains.Variant8c9094eb82d18786616646143819ba07a215cd7a30b17675e5a194f7806539e9

set_option autoImplicit false

namespace Think.Residues

def contains (r : Think.Residue) : Prop :=
  r ∈ ledger

theorem contained_target (r : Think.Residue) :
    contains r -> r.target = FWR.Target.CenterWeightedPipeline := by
  intro h
  unfold contains ledger allPipelineResidues at h
  rw [Think.pipelineResidues] at h
  rcases List.mem_append.mp h with hp | hc
  · exact Think.phaseResidues_targets_correct r hp
  · exact Think.checkpointResidues_targets_correct r hc

end Think.Residues
