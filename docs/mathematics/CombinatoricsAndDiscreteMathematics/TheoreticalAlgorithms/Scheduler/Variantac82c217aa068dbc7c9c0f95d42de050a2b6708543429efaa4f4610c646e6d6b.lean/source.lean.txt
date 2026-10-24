-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Placements.Variant9ed9a7e3da7abd10447af3bc87f0d0783798fe430146d25584f6a2cd660a89c1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9ed9a7e3da7abd10447af3bc87f0d0783798fe430146d25584f6a2cd660a89c1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Placements.Variant9ed9a7e3da7abd10447af3bc87f0d0783798fe430146d25584f6a2cd660a89c1","mathematical_subject":"Computation.DataStructures","original_sha256":"9ed9a7e3da7abd10447af3bc87f0d0783798fe430146d25584f6a2cd660a89c1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Poles/Scheduler.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.PoleAssignment


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Placements.Variant9ed9a7e3da7abd10447af3bc87f0d0783798fe430146d25584f6a2cd660a89c1

set_option autoImplicit false

namespace Think.Poles.Scheduler

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.scheduler

theorem placements_count :
    placements.length = 7 :=
  Think.SourceTree.schedulerPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Scheduler
