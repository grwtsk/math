# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Primitive.Variant9aa5794bc66807c58d3203937bd33dd9db56484999e21eb2ebedc25ceb0b1415

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3ae8c7590c447db9e8fe1379fb1a23851c97ffc4` · SHA-256 `153cfc30da612de8d2b3da4eaf2f6792e00de68709cc91d389febf6e22875a94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Segment.Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.Segment.Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Primitive.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Core.Id

/-!
# Typed Euclidean primitives

These are incidence-free data shapes.  No metric, order, congruence, parallel,
or continuity law is smuggled into the point tuples.
-/


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Segment.Variant588df62d8d712b9d54bfcff44f83c7133818959608c614a20b08e3226d6b731b

namespace Mathematics.Geometry

universe u

/-- An oriented pair of points.  Orientation is data, not a claim of order. -/
structure Segment (Point : Type u) where
  start : Point
  finish : Point

namespace Segment

/-- Reverse the presentation orientation of a segment. -/
def reverse {Point : Type u} (segment : Segment Point) : Segment Point where
  start := segment.finish
  finish := segment.start

@[simp] theorem reverse_start {Point : Type u} (segment : Segment Point) :
    segment.reverse.start = segment.finish := rfl

@[simp] theorem reverse_finish {Point : Type u} (segment : Segment Point) :
    segment.reverse.finish = segment.start := rfl

@[simp] theorem reverse_reverse {Point : Type u} (segment : Segment Point) :
    segment.reverse.reverse = segment := by
  cases segment
  rfl

end Segment

/-- Three labeled points; nondegeneracy must be supplied separately. -/
structure Triangle (Point : Type u) where
  first : Point
  second : Point
  third : Point

namespace Triangle

def firstSecond {Point : Type u} (triangle : Triangle Point) : Segment Point :=
  ⟨triangle.first, triangle.second⟩

def firstThird {Point : Type u} (triangle : Triangle Point) : Segment Point :=
  ⟨triangle.first, triangle.third⟩

def secondThird {Point : Type u} (triangle : Triangle Point) : Segment Point :=
  ⟨triangle.second, triangle.third⟩

end Triangle

/-- Three labeled points defining an angle presentation. -/
structure Angle (Point : Type u) where
  firstRayPoint : Point
  vertex : Point
  secondRayPoint : Point

end Mathematics.Geometry
```
