# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Circle.Variant46f6716d4af95de9b923a721f1f3481b01605bb99e5d9b849684815a2f6abe83

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `456985c033945a66cc19da674deb4fee28d70678` · SHA-256 `c52cb95350500ac3bdcaf0a97c9b1fc7ebe6c237a5da0351830168d66707c5ea`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PlaneCircle.Variant03173206a54974ee1e7f2e743ee6c0f63b6beff1dfdbeba801425d5490eeed78","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"03173206a54974ee1e7f2e743ee6c0f63b6beff1dfdbeba801425d5490eeed78","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.PlaneCircle.Variant03173206a54974ee1e7f2e743ee6c0f63b6beff1dfdbeba801425d5490eeed78","mathematical_subject":"Foundations.Unclassified","original_sha256":"03173206a54974ee1e7f2e743ee6c0f63b6beff1dfdbeba801425d5490eeed78","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Circle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.SquaredDistance

/-!
# Positive-radius Euclidean circles

The positivity witness is structural.  Membership is the exact squared-distance
equation, with no floating-point tolerance or rendering interpretation.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PlaneCircle.Variant03173206a54974ee1e7f2e743ee6c0f63b6beff1dfdbeba801425d5490eeed78

namespace Mathematics.Geometry

/-- A positive-radius circle in the canonical real Euclidean plane. -/
structure PlaneCircle where
  center : PlanePoint
  radius : ℝ
  radiusPositive : 0 < radius

namespace PlaneCircle

/-- Exact circle membership in squared-distance form. -/
def Contains (circle : PlaneCircle) (point : PlanePoint) : Prop :=
  planeSquaredDistance circle.center point = circle.radius ^ 2

theorem contains_has_positive_radius
    {circle : PlaneCircle}
    {point : PlanePoint}
    (_ : circle.Contains point) :
    0 < circle.radius :=
  circle.radiusPositive

end PlaneCircle

end Mathematics.Geometry
```
