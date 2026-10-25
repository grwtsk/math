# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TG07TopologicalPlanarWitness.Variant05242fe8fdb434be4d4874c30a1c25f0b6e7693d1e0c511078f2aa26197856b0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `db1c5ea214017b191a72b07a90303ff9772d7247` · SHA-256 `1575b73c2eec004319769265b84cfee7eec345859cb46dcc54bd207b83aa10f5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg07TopologicalPlanarWitness.Variant865ed4a57124e6dbde4bceada2f78ef162ca12b771ebe36d46d2ad00545ae9bf","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"865ed4a57124e6dbde4bceada2f78ef162ca12b771ebe36d46d2ad00545ae9bf","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tg07TopologicalPlanarWitness.Variant865ed4a57124e6dbde4bceada2f78ef162ca12b771ebe36d46d2ad00545ae9bf","mathematical_subject":"Foundations.Unclassified","original_sha256":"865ed4a57124e6dbde4bceada2f78ef162ca12b771ebe36d46d2ad00545ae9bf","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/TopologicalTheorems/TG07_TopologicalPlanarWitness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.TopologicalClaims


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg07TopologicalPlanarWitness.Variant865ed4a57124e6dbde4bceada2f78ef162ca12b771ebe36d46d2ad00545ae9bf

universe uVertex uEdge uInterval u1 u2 u3 uStage uPoint

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg07_topologicalPlanarWitness
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : TG07Claim W := by
  intro hSelected
  rcases hSelected with ⟨E, _hE⟩
  exact ⟨E⟩

end FCRS.ControlledSpherical.TopologicalTheorems
```
