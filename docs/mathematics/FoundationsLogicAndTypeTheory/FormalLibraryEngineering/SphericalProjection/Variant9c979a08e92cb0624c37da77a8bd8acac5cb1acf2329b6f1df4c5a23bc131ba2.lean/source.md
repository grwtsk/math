# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SphericalProjection.Variant9c979a08e92cb0624c37da77a8bd8acac5cb1acf2329b6f1df4c5a23bc131ba2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `44b487178b1f32d24437609896fe962a7f3115db` · SHA-256 `3fac64888cb7d35d67e47cab8a53d1a2031793ec011faf08eb018e069e927364`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SphereTarget.Variant68bfe0552915829c6399f41b029330edf3903fd824c32a15fea914ad96c33a1f","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68bfe0552915829c6399f41b029330edf3903fd824c32a15fea914ad96c33a1f","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.SphereTarget.Variant68bfe0552915829c6399f41b029330edf3903fd824c32a15fea914ad96c33a1f","mathematical_subject":"Foundations.Unclassified","original_sha256":"68bfe0552915829c6399f41b029330edf3903fd824c32a15fea914ad96c33a1f","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/SphericalProjection.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Folder.Geometry.TetrahedralSphereRefinement

/-!
# Folder.Geometry.SphericalProjection

Radiation role: research-boundary
BinaryMatrix spine: This module distinguishes carrier projection from vertex bijection.
Ontology: spherical_mesh_refinement
Pivot role: geometry
Zero typology: none
Contract boundary: contract
Composite stack role: canonical-path
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SphereTarget.Variant68bfe0552915829c6399f41b029330edf3903fd824c32a15fea914ad96c33a1f

namespace Folder
namespace Geometry

/-- Abstract sphere target. -/
structure SphereTarget where
  dimension : Nat
  targetLabel : String

/--
Projection from a full polyhedral carrier to the sphere.

This may be contractually bijective/homeomorphic on the carrier, not on the
finite vertex set.
-/
structure SphericalCarrierProjection where
  sourceMesh : SimplicialMesh
  targetSphere : SphereTarget
  projectionLabel : String
  carrierBijectiveContract : Prop

theorem spherical_carrier_projection_contract_if_supplied
    (P : SphericalCarrierProjection)
    (h : P.carrierBijectiveContract) :
    P.carrierBijectiveContract :=
  h

end Geometry
end Folder
```
