# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Euclidean.Variant0a884035c7ea577df4b627046c6bc846d95a46e69db08b8a5725d257bc03472c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ad8c267032b181477a3374e8ab3667fbc11d1770` · SHA-256 `8ccb4149901695a497514b7d165e7c3afd8b49b934d8c565b2d8cedc1df4c96e`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Point.Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.Point.Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/TestProject/BitMatrix/Geometry/Euclidean.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Data.Real.Basic
import Mathlib.Tactic.Ring

/-!
# Euclidean runtime vocabulary

Small exact semantic records for the finite two-dimensional geometry exposed by
the client. They specify the mathematical objects; they do not prove that a
floating-point JavaScript implementation realizes them.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Point.Variant4e2379377c9ff95507b952ec8f7cda9198696a02ff44cb8388a3fcf9e908be66

namespace BitMatrix.Geometry.Euclidean

/-- A point of the real affine plane. -/
structure Point where
  x : ℝ
  y : ℝ

/-- Squared Euclidean distance, avoiding an unnecessary square root. -/
def squaredDistance (left right : Point) : ℝ :=
  (left.x - right.x) ^ 2 + (left.y - right.y) ^ 2

/-- A positive-radius Euclidean circle. -/
structure Circle where
  center : Point
  radius : ℝ
  radiusPositive : 0 < radius

/-- Circle membership in squared-distance form. -/
def Circle.Contains (circle : Circle) (point : Point) : Prop :=
  squaredDistance circle.center point = circle.radius ^ 2

/-- Three points together with a circle containing all three. -/
structure CircumcircleDatum where
  first : Point
  second : Point
  third : Point
  circle : Circle
  firstOnCircle : circle.Contains first
  secondOnCircle : circle.Contains second
  thirdOnCircle : circle.Contains third

/-- Display orientation is configuration, not geometric orientation. -/
inductive YAxisDirection where
  | up
  | down
  deriving DecidableEq, Repr

/-- Orientation of a directed circular arc. -/
inductive ArcOrientation where
  | clockwise
  | counterclockwise
  deriving DecidableEq, Repr

/-- A directed arc retains its circle, endpoints, and orientation. -/
structure DirectedArc where
  circle : Circle
  startPoint : Point
  endPoint : Point
  startOnCircle : circle.Contains startPoint
  endOnCircle : circle.Contains endPoint
  orientation : ArcOrientation

/-- Winding is integral; floating-point angle accumulation is only a runtime representation. -/
abbrev WindingNumber := ℤ

/-- The affine half-turn about a designated center. -/
def halfTurn (center point : Point) : Point where
  x := 2 * center.x - point.x
  y := 2 * center.y - point.y

@[simp]
theorem halfTurn_involutive (center point : Point) :
    halfTurn center (halfTurn center point) = point := by
  cases center
  cases point
  simp [halfTurn]

end BitMatrix.Geometry.Euclidean
```
