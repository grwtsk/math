# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Scheduler.Variantac82c217aa068dbc7c9c0f95d42de050a2b6708543429efaa4f4610c646e6d6b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `47170f4316127b48519abd34e95b683954cc5289` · SHA-256 `52471f9f35a775be87ed3ff435d4571c6de76d44842b5c28a8b93820cbf919b2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
```
