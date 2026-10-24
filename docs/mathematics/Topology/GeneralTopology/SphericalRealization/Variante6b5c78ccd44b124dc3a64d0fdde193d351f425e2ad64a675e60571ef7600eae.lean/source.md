# Complete source: GRWTSK.Topology.GeneralTopology.SphericalRealization.Variante6b5c78ccd44b124dc3a64d0fdde193d351f425e2ad64a675e60571ef7600eae

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2f2209c8c4a9eb0b82a12dcf57bbe09cb33f2800` · SHA-256 `a4fa7a36e2b0a59bb2d4ca5860a3bd4ae5d639c3c0efe71aa7383711b89858e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.InjectiveS3Realization.Variant724f90acff6afa8b4ca96a144c71e1cb7ff55d19eae5db90241b58cc844e5724","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"724f90acff6afa8b4ca96a144c71e1cb7ff55d19eae5db90241b58cc844e5724","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.GeneralTopology.SourceCorpus.InjectiveS3Realization.Variant724f90acff6afa8b4ca96a144c71e1cb7ff55d19eae5db90241b58cc844e5724","mathematical_subject":"Topology.GeneralTopology","original_sha256":"724f90acff6afa8b4ca96a144c71e1cb7ff55d19eae5db90241b58cc844e5724","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/22/Reflexive/formal/lean/fcrs/FCRS/ControlledSpherical/SphericalRealization.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FCRS.ControlledSpherical.S2Realization


namespace GRWTSK.Topology.GeneralTopology.InjectiveS3Realization.Variant724f90acff6afa8b4ca96a144c71e1cb7ff55d19eae5db90241b58cc844e5724

universe uVertex uEdge uGraph u2 u3

namespace FCRS.ControlledSpherical

open FCRS.ControlledPlane

/--
An injective map from an opaque graph-realization point sort into the opaque
`S³` point sort.  It is not a graph-topological embedding theorem.
-/
structure InjectiveS3Realization
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization.{uVertex, uEdge, uGraph} G)
    (S3 : Sphere3Carrier.{u3}) where
  injection : InjectiveMapWitness R.Point S3.Point

def HasInjectiveS3RealizationWitness
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization.{uVertex, uEdge, uGraph} G)
    (S3 : Sphere3Carrier.{u3}) : Prop :=
  Nonempty (InjectiveS3Realization R S3)

/-- Supplied positive choice between exact signature-level carrier injections. -/
inductive SphericalRealizationChoice
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    (R : GraphRealization.{uVertex, uEdge, uGraph} G)
    (S2 : Sphere2Carrier.{u2})
    (S3 : Sphere3Carrier.{u3}) where
  | sphere2 : InjectiveS2Realization R S2 →
      SphericalRealizationChoice R S2 S3
  | sphere3 : InjectiveS3Realization R S3 →
      SphericalRealizationChoice R S2 S3

def SphericalRealizationChoice.dimension
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {R : GraphRealization.{uVertex, uEdge, uGraph} G}
    {S2 : Sphere2Carrier.{u2}} {S3 : Sphere3Carrier.{u3}} :
    SphericalRealizationChoice R S2 S3 → SelectedRealizationDimension
  | .sphere2 _ => .two
  | .sphere3 _ => .three

/-- Compactness assertion for the carrier of the selected branch only. -/
def SelectedSphericalCarrierCompact
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {R : GraphRealization.{uVertex, uEdge, uGraph} G}
    {S2 : Sphere2Carrier.{u2}} {S3 : Sphere3Carrier.{u3}} :
    SphericalRealizationChoice R S2 S3 → Prop
  | .sphere2 _ => CompactSphere2 S2
  | .sphere3 _ => CompactSphere3 S3

/--
Choose the `S²` branch when supplied, otherwise the supplied `S³` branch.
`none` means only that no witness was supplied; it proves no impossibility.
-/
def chooseInjectiveSphericalRealization
    {Vertex : Type uVertex} {Edge : Type uEdge}
    {G : DirectedGraph Vertex Edge}
    {R : GraphRealization.{uVertex, uEdge, uGraph} G}
    {S2 : Sphere2Carrier.{u2}} {S3 : Sphere3Carrier.{u3}}
    (h2 : Option (InjectiveS2Realization R S2))
    (h3 : Option (InjectiveS3Realization R S3)) :
    Option (SphericalRealizationChoice R S2 S3) :=
  match h2, h3 with
  | some e2, _ => some (.sphere2 e2)
  | none, some e3 => some (.sphere3 e3)
  | none, none => none

end FCRS.ControlledSpherical
```
