# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.VertexPlacement.Variante0496e20344775fcd8dbc8f31f77efd16b3e564214b044f4e4ba39c3b018ec52

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b335a6cca7416770b01179b726a6b053b99c5256` · SHA-256 `86743b5c4ec522771964a91fb2d78b785df72cc32e9d73a4c84df96efd762929`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InjectiveS1VertexPlacement.Variant1a47187e03a542fcbf19c34c06250917d9218b185508e89efb5e3047ae68095b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1a47187e03a542fcbf19c34c06250917d9218b185508e89efb5e3047ae68095b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.InjectiveS1VertexPlacement.Variant1a47187e03a542fcbf19c34c06250917d9218b185508e89efb5e3047ae68095b","mathematical_subject":"Foundations.Unclassified","original_sha256":"1a47187e03a542fcbf19c34c06250917d9218b185508e89efb5e3047ae68095b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/VertexPlacement.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.InjectiveMap


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InjectiveS1VertexPlacement.Variant1a47187e03a542fcbf19c34c06250917d9218b185508e89efb5e3047ae68095b

universe uVertex uEdge u1 u2

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane

/-- Injective placement of graph vertices in the opaque `S¹` point sort. -/
structure InjectiveS1VertexPlacement
    {Vertex : Type uVertex} {Edge : Type uEdge}
    (G : DirectedGraph Vertex Edge)
    (S1 : Sphere1Carrier.{u1}) where
  injection : InjectiveMapWitness Vertex S1.Point

/-- Signature-level injective placement of `S¹` points into `S²` points. -/
structure InjectiveS1ToS2Placement
    (S1 : Sphere1Carrier.{u1})
    (S2 : Sphere2Carrier.{u2}) where
  injection : InjectiveMapWitness S1.Point S2.Point

end FCRS.ControlledSpherical
```
