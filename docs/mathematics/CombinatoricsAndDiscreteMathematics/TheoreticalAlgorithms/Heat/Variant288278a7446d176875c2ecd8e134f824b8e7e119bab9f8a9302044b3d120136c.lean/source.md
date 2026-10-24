# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Heat.Variant288278a7446d176875c2ecd8e134f824b8e7e119bab9f8a9302044b3d120136c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `aabd62e532ea5c94d9a2f58e76970a53795ffab9` · SHA-256 `888dec12c05618c325fc00be56a6b7a02ff6a7aa682c5192830dfcfbee81078e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HeatGraphPolicy.Variant69ecb08b99cc6ab794e3f34e9c845b18eed0bafc416a3385153b9eafe56037d0","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"69ecb08b99cc6ab794e3f34e9c845b18eed0bafc416a3385153b9eafe56037d0","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.HeatGraphPolicy.Variant69ecb08b99cc6ab794e3f34e9c845b18eed0bafc416a3385153b9eafe56037d0","mathematical_subject":"Computation.DataStructures","original_sha256":"69ecb08b99cc6ab794e3f34e9c845b18eed0bafc416a3385153b9eafe56037d0","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Head/Think_retired/formal/Quarantine/SourceOverlap/formal/Think/SourceTree/Legacy/RadoProjectedModularHeatflow/Heat.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Think.SourceTree.Legacy.RadoProjectedModularHeatflow.Projection


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.HeatGraphPolicy.Variant69ecb08b99cc6ab794e3f34e9c845b18eed0bafc416a3385153b9eafe56037d0

set_option autoImplicit false

namespace Think.RadoProjectedModularHeatflow

structure HeatGraphPolicy where
  usesTreeEdges : Bool
  usesPhasePoleEdges : Bool
  usesTargetWitnessEdges : Bool
  usesAggregatorEdges : Bool
deriving DecidableEq, Repr

def selectedHeatGraph : HeatGraphPolicy :=
  { usesTreeEdges := true
    usesPhasePoleEdges := true
    usesTargetWitnessEdges := true
    usesAggregatorEdges := true }

def dominantHeatCluster : List String :=
  [ "formal/Think/Pipeline"
  , "formal/Think/Pipeline/Center"
  , "formal/Think/Pipeline/Phases"
  , "formal/Think/Poles"
  , "formal/Think/Residues"
  , "formal/Think/SourceTree"
  ]

theorem dominantHeatCluster_count :
    dominantHeatCluster.length = 6 := by
  rfl

end Think.RadoProjectedModularHeatflow
```
