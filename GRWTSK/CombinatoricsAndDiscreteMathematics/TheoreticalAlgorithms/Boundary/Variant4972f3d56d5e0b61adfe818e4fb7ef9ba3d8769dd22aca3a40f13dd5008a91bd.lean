-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Placements.Variantb6fc8f6494c2e72b771766b66080dd13a98abfb3e26866755b0068b4311e551d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b6fc8f6494c2e72b771766b66080dd13a98abfb3e26866755b0068b4311e551d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Placements.Variantb6fc8f6494c2e72b771766b66080dd13a98abfb3e26866755b0068b4311e551d","mathematical_subject":"Computation.DataStructures","original_sha256":"b6fc8f6494c2e72b771766b66080dd13a98abfb3e26866755b0068b4311e551d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Poles/Boundary.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.PoleAssignment


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Placements.Variantb6fc8f6494c2e72b771766b66080dd13a98abfb3e26866755b0068b4311e551d

set_option autoImplicit false

namespace Think.Poles.Boundary

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.boundary

theorem placements_count :
    placements.length = 8 :=
  Think.SourceTree.boundaryPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Boundary
