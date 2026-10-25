# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TG11GeometricRefinementCoherence.Variant111c42295519e87652cb228d93c33715cad8e7ce98e3ec20a71e0a9b913b97cf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6f5b91a48f3f8e1319a4942670ed65c675a4a383` · SHA-256 `00f5d639a2dc345a576f2c450d3e7f20c342a3ca1ac13b62f9409c8af69bd6f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg11GeometricRefinementCoherence.Variantb5785334d110834babb7fe5ebb86f452d8249a183342511647f685c494ec2cb7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b5785334d110834babb7fe5ebb86f452d8249a183342511647f685c494ec2cb7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.Tg11GeometricRefinementCoherence.Variantb5785334d110834babb7fe5ebb86f452d8249a183342511647f685c494ec2cb7","mathematical_subject":"Foundations.Unclassified","original_sha256":"b5785334d110834babb7fe5ebb86f452d8249a183342511647f685c494ec2cb7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/TopologicalTheorems/TG11_GeometricRefinementCoherence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.TopologicalClaims


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Tg11GeometricRefinementCoherence.Variantb5785334d110834babb7fe5ebb86f452d8249a183342511647f685c494ec2cb7

universe uVertex uEdge uInterval u1 u2 u3 uStage uPoint

namespace FCRS.ControlledSpherical.TopologicalTheorems

open FCRS.ControlledPlane
open FCRS.ControlledSpherical
open FCRS.Topology

theorem tg11_geometricRefinementCoherence
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {I : ClosedInterval.{uInterval}}
    {S1 : Sphere1.{u1}} {S2 : Sphere2.{u2}} {S3 : Sphere3.{u3}}
    {Stage : Type uStage}
    (W : TopologicalGraphWitnessPackage.{
      uVertex, uEdge, uInterval, u1, u2, u3, uStage, uPoint}
      G I S1 S2 S3 Stage) : TG11Claim W where
  refinesReflexive := W.refinement.refines_refl
  refinesTransitive := W.refinement.refines_trans
  restrictionIdentity := W.refinement.restrict_identity
  restrictionComposition := W.refinement.restrict_composition
  embeddingCoherence := W.refinementCoherence

end FCRS.ControlledSpherical.TopologicalTheorems
```
