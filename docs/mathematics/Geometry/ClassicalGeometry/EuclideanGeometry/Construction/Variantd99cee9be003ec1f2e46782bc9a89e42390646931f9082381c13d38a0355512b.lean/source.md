# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Construction.Variantd99cee9be003ec1f2e46782bc9a89e42390646931f9082381c13d38a0355512b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `29a9f10fc8b1233e9774aa7ca8da068355d8c675` · SHA-256 `4197fe5b9565726209858e439b39e65c8fdc9427ab542d13023ee10f044ff55d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SegmentCopyConstructor.Variant3fb53e682290dacbb45f1d87a66717b7725672c4866dc0dab3281e20e242854c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3fb53e682290dacbb45f1d87a66717b7725672c4866dc0dab3281e20e242854c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.SegmentCopyConstructor.Variant3fb53e682290dacbb45f1d87a66717b7725672c4866dc0dab3281e20e242854c","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"3fb53e682290dacbb45f1d87a66717b7725672c4866dc0dab3281e20e242854c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Construction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Congruence
import Mathematics.Geometry.Order

/-!
# Construction channel

Each constructor has one fixed geometric specification.  There is no generic
caller-selected predicate whose witness could be mistaken for authority.
-/


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.SegmentCopyConstructor.Variant3fb53e682290dacbb45f1d87a66717b7725672c4866dc0dab3281e20e242854c

namespace Mathematics.Geometry

universe u

/-- Exact copying of a supplied segment from a supplied starting point. -/
structure SegmentCopyConstructor
    (Point : Type u)
    (congruence : CongruenceSignature Point) where
  endpoint : Point → Segment Point → Point
  copiedSegmentCongruent :
    ∀ origin model,
      congruence.segmentCongruent
        ⟨origin, endpoint origin model⟩
        model

/-- Exact construction data for an equilateral triangle on a base segment. -/
structure EquilateralTriangleConstructor
    (Point : Type u)
    (congruence : CongruenceSignature Point) where
  apex : Segment Point → Point
  firstSideCongruent :
    ∀ base,
      congruence.segmentCongruent
        base
        ⟨base.start, apex base⟩
  secondSideCongruent :
    ∀ base,
      congruence.segmentCongruent
        base
        ⟨base.finish, apex base⟩

/-- Exact bisection data, with order and congruence obligations kept visible. -/
structure SegmentBisectionConstructor
    (Point : Type u)
    (order : OrderSignature Point)
    (congruence : CongruenceSignature Point) where
  midpoint : Segment Point → Point
  midpointBetween :
    ∀ segment,
      order.between
        segment.start
        (midpoint segment)
        segment.finish
  halvesCongruent :
    ∀ segment,
      congruence.segmentCongruent
        ⟨segment.start, midpoint segment⟩
        ⟨midpoint segment, segment.finish⟩

end Mathematics.Geometry
```
