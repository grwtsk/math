# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TG08TopologicalSpatialWitness.Variantdf3c06eb44da6e5d86fa9134c8c17dc3ab9c94d70c08c6566b9d2ac3d9e70fd6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0dad7dd33102ec472849722062d4e8cd44562a88` · SHA-256 `1ee70b512a143396c53337f9c3a551faf898ae35a2331800bfcde15a1a30077c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg08TopologicalSpatialWitness.Variantf7a6eb4097895bf22944a492f91e78e50abd14f7dda4d606056e6ba631c30d47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f7a6eb4097895bf22944a492f91e78e50abd14f7dda4d606056e6ba631c30d47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tg08TopologicalSpatialWitness.Variantf7a6eb4097895bf22944a492f91e78e50abd14f7dda4d606056e6ba631c30d47","mathematical_subject":"Foundations.Unclassified","original_sha256":"f7a6eb4097895bf22944a492f91e78e50abd14f7dda4d606056e6ba631c30d47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/TopologicalTheorems/TG08_TopologicalSpatialWitness.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.TopologicalClaims


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg08TopologicalSpatialWitness.Variantf7a6eb4097895bf22944a492f91e78e50abd14f7dda4d606056e6ba631c30d47

universe uVertex uEdge uInterval u1 u2 u3 uStage uPoint

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg08_topologicalSpatialWitness
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : TG08Claim W := by
  intro hSelected
  rcases hSelected with ⟨E, _hE⟩
  exact ⟨E⟩

end FCRS.ControlledSpherical.TopologicalTheorems
```
