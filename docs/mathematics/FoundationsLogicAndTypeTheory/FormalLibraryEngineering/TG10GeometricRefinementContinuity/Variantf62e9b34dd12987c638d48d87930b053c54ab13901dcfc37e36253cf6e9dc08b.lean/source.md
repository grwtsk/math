# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TG10GeometricRefinementContinuity.Variantf62e9b34dd12987c638d48d87930b053c54ab13901dcfc37e36253cf6e9dc08b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19c46b7ff2e871716f58be8e0396baf5a02669f1` · SHA-256 `0a003195c9594ce7ed7b0d3f70b3ba824882479b5cc02cdfa2e4b66ce00b49fa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg10GeometricRefinementContinuity.Variantfce060daa7ec31adc5819bae50280a648a264413720e0ce50057225d2f18d706","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"fce060daa7ec31adc5819bae50280a648a264413720e0ce50057225d2f18d706","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tg10GeometricRefinementContinuity.Variantfce060daa7ec31adc5819bae50280a648a264413720e0ce50057225d2f18d706","mathematical_subject":"Foundations.Unclassified","original_sha256":"fce060daa7ec31adc5819bae50280a648a264413720e0ce50057225d2f18d706","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/TopologicalTheorems/TG10_GeometricRefinementContinuity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.TopologicalClaims


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg10GeometricRefinementContinuity.Variantfce060daa7ec31adc5819bae50280a648a264413720e0ce50057225d2f18d706

universe uVertex uEdge uInterval u1 u2 u3 uStage uPoint

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg10_geometricRefinementContinuity
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : TG10Claim W := by
  intro next prev h
  exact W.refinement.restrictContinuous h

end FCRS.ControlledSpherical.TopologicalTheorems
```
