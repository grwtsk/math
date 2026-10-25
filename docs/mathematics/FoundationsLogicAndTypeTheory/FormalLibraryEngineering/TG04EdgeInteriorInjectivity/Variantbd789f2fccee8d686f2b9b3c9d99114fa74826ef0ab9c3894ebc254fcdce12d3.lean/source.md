# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TG04EdgeInteriorInjectivity.Variantbd789f2fccee8d686f2b9b3c9d99114fa74826ef0ab9c3894ebc254fcdce12d3

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `42c5a77fd9648568baa556f1d34f5a8ea28a600f` · SHA-256 `75aeae228d209182d5b3de9f4d1c168f96df95f845b5eb833146323d724010e0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg04EdgeInteriorInjectivity.Variant81be529fce534bd5fbcc2f4bbb0a2863977c3165cc911971dad9d36ea9aea250","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81be529fce534bd5fbcc2f4bbb0a2863977c3165cc911971dad9d36ea9aea250","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tg04EdgeInteriorInjectivity.Variant81be529fce534bd5fbcc2f4bbb0a2863977c3165cc911971dad9d36ea9aea250","mathematical_subject":"Foundations.Unclassified","original_sha256":"81be529fce534bd5fbcc2f4bbb0a2863977c3165cc911971dad9d36ea9aea250","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/TopologicalTheorems/TG04_EdgeInteriorInjectivity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.TopologicalClaims


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg04EdgeInteriorInjectivity.Variant81be529fce534bd5fbcc2f4bbb0a2863977c3165cc911971dad9d36ea9aea250

universe uVertex uEdge uInterval

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg04_edgeInteriorInjectivity
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (I : ClosedInterval.{uInterval}) : TG04Claim G I := by
  intro e t u ht hu hEq
  exact edgePath_injective_on_interior ht hu hEq

end FCRS.ControlledSpherical.TopologicalTheorems
```
