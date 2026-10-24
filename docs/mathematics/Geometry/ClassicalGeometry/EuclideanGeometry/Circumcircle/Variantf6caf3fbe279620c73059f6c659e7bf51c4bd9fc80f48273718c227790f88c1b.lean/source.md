# Complete source: GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.Circumcircle.Variantf6caf3fbe279620c73059f6c659e7bf51c4bd9fc80f48273718c227790f88c1b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3c9c0519ee923b6839d504f8fce607b15976e0e7` · SHA-256 `ac1ecc84ead1b9bbd3a1af44fbde08aa82df6e03cecc565e528687ec8ccb8fe8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Geometry.ClassicalGeometry.EuclideanGeometry
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CircumcircleDatum.Variante7f434a4c6b21914a8fb8c3c6f7d6497b85e6f56194e0edba7075cb384a8f4f3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e7f434a4c6b21914a8fb8c3c6f7d6497b85e6f56194e0edba7075cb384a8f4f3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Geometry.EuclideanGeometry.SourceCorpus.CircumcircleDatum.Variante7f434a4c6b21914a8fb8c3c6f7d6497b85e6f56194e0edba7075cb384a8f4f3","mathematical_subject":"Geometry.EuclideanGeometry","original_sha256":"e7f434a4c6b21914a8fb8c3c6f7d6497b85e6f56194e0edba7075cb384a8f4f3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Circumcircle.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Circle
import Mathematics.Geometry.Primitive

/-!
# Circumcircle data

A circumcircle witness reuses the canonical triangle presentation and circle
carrier.  It asserts membership only; noncollinearity and uniqueness require
separate hypotheses.
-/


namespace GRWTSK.Geometry.ClassicalGeometry.EuclideanGeometry.CircumcircleDatum.Variante7f434a4c6b21914a8fb8c3c6f7d6497b85e6f56194e0edba7075cb384a8f4f3

namespace Mathematics.Geometry

/-- Three labeled points together with a circle containing all three. -/
structure CircumcircleDatum where
  triangle : Triangle PlanePoint
  circle : PlaneCircle
  firstOnCircle : circle.Contains triangle.first
  secondOnCircle : circle.Contains triangle.second
  thirdOnCircle : circle.Contains triangle.third

end Mathematics.Geometry
```
