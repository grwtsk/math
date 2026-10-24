# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Carrier.Variant3b06cdc625e632422c72a1b3dc8a4e6b6b14a329b06c99aca85f3c05c3efc0b2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b642aa74613e1ce8e46f3ff5baba6a5960befb51` · SHA-256 `e7df1ebdc93cae074ad5741e29f9e7622d019c2ec83809d7b1829410179c0463`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Placements.Variantd6ff76f04de9b7a1d66591b46225ea515101fba82a32e7ff7665f9c00cc5a72b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6ff76f04de9b7a1d66591b46225ea515101fba82a32e7ff7665f9c00cc5a72b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.Placements.Variantd6ff76f04de9b7a1d66591b46225ea515101fba82a32e7ff7665f9c00cc5a72b","mathematical_subject":"Computation.DataStructures","original_sha256":"d6ff76f04de9b7a1d66591b46225ea515101fba82a32e7ff7665f9c00cc5a72b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/Poles/Carrier.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.PoleAssignment


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Placements.Variantd6ff76f04de9b7a1d66591b46225ea515101fba82a32e7ff7665f9c00cc5a72b

set_option autoImplicit false

namespace Think.Poles.Carrier

def placements : List Think.SourceTree.PhasePlacement :=
  Think.SourceTree.placementsForPole Think.SourceTree.Pole.carrier

theorem placements_count :
    placements.length = 4 :=
  Think.SourceTree.carrierPole_count

theorem placements_centerControlled :
    ∀ q ∈ placements, q.phase ∈ Think.centerSpine := by
  intro q _hq
  exact Think.SourceTree.center_spine_controls_all_poles q

end Think.Poles.Carrier
```
