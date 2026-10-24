# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Cluster.Variant456a5ab98b14df6399e29549da6bcceb8adb71bbfa4db25fe2628e116ab43129

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `37a674291cae89cb8d7809ff96112774fd50227f` · SHA-256 `8c0e3e9fcf62a062fd5b51bbeee49d74f0c3d7130a4fc13f3293eed4d95bf595`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Placements.Variant0b232c5b763781d5b26f6b38efd8f13fa7c95b473de0f8519c79050ede9afdc0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0b232c5b763781d5b26f6b38efd8f13fa7c95b473de0f8519c79050ede9afdc0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Placements.Variant0b232c5b763781d5b26f6b38efd8f13fa7c95b473de0f8519c79050ede9afdc0","mathematical_subject":"Computation.DataStructures","original_sha256":"0b232c5b763781d5b26f6b38efd8f13fa7c95b473de0f8519c79050ede9afdc0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Poles/Cluster.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.PoleAssignment


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Placements.Variant0b232c5b763781d5b26f6b38efd8f13fa7c95b473de0f8519c79050ede9afdc0

set_option autoImplicit false

namespace Think.Poles.Cluster

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.cluster

theorem placements_count :
    placements.length = 5 :=
  Think.SourceTree.clusterPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Cluster
```
