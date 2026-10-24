# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Congruence.Variant9f78c5bb4bcf4a8286e4322b889972da34187bd38445f08582c9953900141d51

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cf84e6d5f724493874e01999caa8d7760a32c34b` · SHA-256 `533c4d668124664eb22aacd5c7ec61a46f3db377ce4400c461858f6feada5ea7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CongruenceSignature.Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.CongruenceSignature.Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Congruence.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Primitive

/-!
# Congruence channel

Segment and angle congruence are comparison relations.  Reflexivity,
symmetry, transitivity, and compatibility with other geometric channels are
separate propositions.
-/


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CongruenceSignature.Variant0c190efb895b45e1cc4ef5402d6c94c9e62397708a5ad52e1174ec1349df0a59

namespace Mathematics.Geometry

universe u

/-- Bare segment- and angle-congruence data. -/
structure CongruenceSignature (Point : Type u) where
  segmentCongruent : Segment Point → Segment Point → Prop
  angleCongruent : Angle Point → Angle Point → Prop

def SegmentCongruenceReflexive
    {Point : Type u}
    (congruence : CongruenceSignature Point) : Prop :=
  ∀ segment, congruence.segmentCongruent segment segment

def SegmentCongruenceSymmetric
    {Point : Type u}
    (congruence : CongruenceSignature Point) : Prop :=
  ∀ left right,
    congruence.segmentCongruent left right →
      congruence.segmentCongruent right left

def SegmentCongruenceTransitive
    {Point : Type u}
    (congruence : CongruenceSignature Point) : Prop :=
  ∀ first second third,
    congruence.segmentCongruent first second →
    congruence.segmentCongruent second third →
      congruence.segmentCongruent first third

def AngleCongruenceReflexive
    {Point : Type u}
    (congruence : CongruenceSignature Point) : Prop :=
  ∀ angle, congruence.angleCongruent angle angle

/-- Fixed semantic meaning of an equilateral labeled triangle. -/
def IsEquilateral
    {Point : Type u}
    (congruence : CongruenceSignature Point)
    (triangle : Triangle Point) : Prop :=
  congruence.segmentCongruent
      triangle.firstSecond
      triangle.firstThird ∧
    congruence.segmentCongruent
      triangle.firstSecond
      triangle.secondThird

end Mathematics.Geometry
```
