-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Placements.Variantbe398237caaf412488b5215a64100f1e6f6d854d7905761045d75b07056d176e","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"be398237caaf412488b5215a64100f1e6f6d854d7905761045d75b07056d176e","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Placements.Variantbe398237caaf412488b5215a64100f1e6f6d854d7905761045d75b07056d176e","mathematical_subject":"Computation.DataStructures","original_sha256":"be398237caaf412488b5215a64100f1e6f6d854d7905761045d75b07056d176e","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Poles/Lowering.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.PoleAssignment


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Placements.Variantbe398237caaf412488b5215a64100f1e6f6d854d7905761045d75b07056d176e

set_option autoImplicit false

namespace Think.Poles.Lowering

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.lowering

theorem placements_count :
    placements.length = 4 :=
  Think.SourceTree.loweringPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Lowering
