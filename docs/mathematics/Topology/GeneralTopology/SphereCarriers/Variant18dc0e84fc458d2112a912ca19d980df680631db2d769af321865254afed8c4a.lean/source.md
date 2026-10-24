# Complete source: GRWTSK.Topology.GeneralTopology.SphereCarriers.Variant18dc0e84fc458d2112a912ca19d980df680631db2d769af321865254afed8c4a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a422154245a7d44b593278312a6cda5cb37ed46e` · SHA-256 `0286aeb6671bd8eb77b1c685001c0a6b6085a4eed72a403fbaee4fda1acf17aa`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.Sphere1Carrier.Variantc78aec7ad734955e0ddcd01791cdb2cc364910a1112824e4b786afff825facca","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c78aec7ad734955e0ddcd01791cdb2cc364910a1112824e4b786afff825facca","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.Sphere1Carrier.Variantc78aec7ad734955e0ddcd01791cdb2cc364910a1112824e4b786afff825facca","mathematical_subject":"Topology.GeneralTopology","original_sha256":"c78aec7ad734955e0ddcd01791cdb2cc364910a1112824e4b786afff825facca","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/SphereCarriers.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.Foundations


namespace GRWTSK.Topology.GeneralTopology.Sphere1Carrier.Variantc78aec7ad734955e0ddcd01791cdb2cc364910a1112824e4b786afff825facca

universe u1 u2 u3

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane

/-- Opaque signature-level carrier playing the role of `S¹`. -/
structure Sphere1Carrier where
  Point : Type u1
  compactnessAssertion : Prop

/-- Opaque signature-level carrier playing the role of `S²`. -/
structure Sphere2Carrier where
  Point : Type u2
  compactnessAssertion : Prop

/-- Opaque signature-level carrier playing the role of `S³`. -/
structure Sphere3Carrier where
  Point : Type u3
  compactnessAssertion : Prop

/--
View the existing controlled-plane carrier as the spherical layer's opaque
`S²` carrier.  This is only a signature-level relabelling: its point type and
compactness assertion are reused definitionally, and no sphere topology is
introduced.
-/
def Sphere2Carrier.ofCarrier2D
    (P : Carrier2D.{u2}) : Sphere2Carrier.{u2} where
  Point := P.Point
  compactnessAssertion := P.compactnessAssertion

def CompactSphere1 (S : Sphere1Carrier) : Prop :=
  S.compactnessAssertion

def CompactSphere2 (S : Sphere2Carrier) : Prop :=
  S.compactnessAssertion

def CompactSphere3 (S : Sphere3Carrier) : Prop :=
  S.compactnessAssertion

end FCRS.ControlledSpherical
```
