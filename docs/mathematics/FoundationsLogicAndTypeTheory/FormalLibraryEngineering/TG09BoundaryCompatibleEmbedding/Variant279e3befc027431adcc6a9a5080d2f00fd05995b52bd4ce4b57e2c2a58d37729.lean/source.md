# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TG09BoundaryCompatibleEmbedding.Variant279e3befc027431adcc6a9a5080d2f00fd05995b52bd4ce4b57e2c2a58d37729

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5f10d4500fcade731a568d69dffe1d4b0cd607be` · SHA-256 `e8a84fb2cfbd626f7e0171f55f929f6c137deaa3340f00233b100b9aa8bd8113`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg09BoundaryCompatibleEmbedding.Variant7b8370ddc3fab6ed4e7f6a3ac377525ca8cb69174ded9115c837698607653118","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7b8370ddc3fab6ed4e7f6a3ac377525ca8cb69174ded9115c837698607653118","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tg09BoundaryCompatibleEmbedding.Variant7b8370ddc3fab6ed4e7f6a3ac377525ca8cb69174ded9115c837698607653118","mathematical_subject":"Foundations.Unclassified","original_sha256":"7b8370ddc3fab6ed4e7f6a3ac377525ca8cb69174ded9115c837698607653118","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/TopologicalTheorems/TG09_BoundaryCompatibleEmbedding.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.TopologicalClaims


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg09BoundaryCompatibleEmbedding.Variant7b8370ddc3fab6ed4e7f6a3ac377525ca8cb69174ded9115c837698607653118

universe uVertex uEdge uInterval u1 u2 u3 uStage uPoint

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg09_boundaryCompatibleEmbedding
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : TG09Claim W :=
  W.selectedBoundaryCompatibility

end FCRS.ControlledSpherical.TopologicalTheorems
```
