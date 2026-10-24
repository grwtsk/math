# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PoleCover.Variant09c362332901949782c7e6f1aa0a2f8437708695fdf82e6ff8af3ba520465d3e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5e2287e50465106f24f1cbb2a4f0c6c5a373f98c` · SHA-256 `2c94c261f950fdf2b01d1fd8638375b2811a67859502f785f632db5539ae3055`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PoleChart.Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.PoleChart.Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec","mathematical_subject":"Computation.DataStructures","original_sha256":"9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/MemoryCore/PoleCover.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.MemoryCore.Compact


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.PoleChart.Variant9f0efff30ec77af76a526658b65e40099c9ef62ad12ef5b2eb2091c564f66fec

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow.MemoryCore

structure PoleChart where
  poleLabel : String
  compact : CompactPatch
  support : List MemoryVertex
  residueMapLabel : String
deriving Repr

structure PoleCover where
  compact : CompactPatch
  charts : List PoleChart
  compactConservative : Prop
  residueComplete : Prop
  overlapCompatible : Prop

def PoleCover.compactDeterminedByPoles (C : PoleCover) : Prop :=
  C.compactConservative ∧ C.residueComplete ∧ C.overlapCompatible

def polesFormCompactConservativeResidueCover (C : PoleCover) : Prop :=
  C.compactConservative ∧ C.residueComplete

theorem compact_determined_requires_conservative_cover
    (C : PoleCover)
    (h : C.compactDeterminedByPoles) :
    polesFormCompactConservativeResidueCover C := by
  exact And.intro h.1 h.2.1

theorem conservative_residue_cover_with_overlaps_determines_compact
    (C : PoleCover)
    (hCover : polesFormCompactConservativeResidueCover C)
    (hOverlap : C.overlapCompatible) :
    C.compactDeterminedByPoles := by
  exact And.intro hCover.1 (And.intro hCover.2 hOverlap)

end Think.RadoProjectedModularHeatflow.MemoryCore
```
