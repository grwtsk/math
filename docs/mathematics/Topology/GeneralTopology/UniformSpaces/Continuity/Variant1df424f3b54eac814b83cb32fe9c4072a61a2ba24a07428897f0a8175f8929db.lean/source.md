# Complete source: GRWTSK.Topology.GeneralTopology.UniformSpaces.Continuity.Variant1df424f3b54eac814b83cb32fe9c4072a61a2ba24a07428897f0a8175f8929db

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1a47bbd0827175dc545359e87ec0123236a52d04` · SHA-256 `b6a8179eddc912c265c38d05ddce4f6ac9021b12c8a2bc7ebd2fb01e4f4aa9f7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Topology.GeneralTopology.UniformSpaces
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Topology.GeneralTopology.UniformSpaces.ContinuitySignature.Variant9b7f75fc85f5ee39b4ca2b090820b6d3a5fb8b305e0f7d61f1cf492682b364cb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9b7f75fc85f5ee39b4ca2b090820b6d3a5fb8b305e0f7d61f1cf492682b364cb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Topology.UniformSpaces.SourceCorpus.ContinuitySignature.Variant9b7f75fc85f5ee39b4ca2b090820b6d3a5fb8b305e0f7d61f1cf492682b364cb","mathematical_subject":"Topology.UniformSpaces","original_sha256":"9b7f75fc85f5ee39b4ca2b090820b6d3a5fb8b305e0f7d61f1cf492682b364cb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Continuity.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Primitive

/-!
# Continuity channel

This signature exposes exactly which sequences are called Cauchy and which
points are proposed as their limits.  Completeness and uniqueness are
separate assumptions; neither follows from incidence or order by definition.
-/


namespace GRWTSK.Topology.GeneralTopology.UniformSpaces.ContinuitySignature.Variant9b7f75fc85f5ee39b4ca2b090820b6d3a5fb8b305e0f7d61f1cf492682b364cb

namespace Mathematics.Geometry

universe u

/-- Bare sequential continuity data for a point carrier. -/
structure ContinuitySignature (Point : Type u) where
  cauchy : (Nat → Point) → Prop
  convergesTo : (Nat → Point) → Point → Prop

/-- Every declared Cauchy sequence has a represented limit. -/
def SequentialCompleteness
    {Point : Type u}
    (continuity : ContinuitySignature Point) : Prop :=
  ∀ sequence,
    continuity.cauchy sequence →
      ∃ limit, continuity.convergesTo sequence limit

/-- A represented sequence has at most one declared limit. -/
def SequentialLimitUniqueness
    {Point : Type u}
    (continuity : ContinuitySignature Point) : Prop :=
  ∀ sequence first second,
    continuity.convergesTo sequence first →
    continuity.convergesTo sequence second →
      first = second

end Mathematics.Geometry
```
