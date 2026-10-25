# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DirectedArc.Variant14130e2de26a8fce65090935fa7c93c2b7e36ec23112bcd1f115200d2778bd5f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e082250cbb48f7617cbe7f9de949e9596450c3f4` · SHA-256 `c691ac3e37ea4674de50f18a154375a8fbdd6b21593470bb5aea2a4d2c553e38`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DirectedArc.Variantf857d1c58822708008ae5638b399787cdd5acff98858fa275e822fc6bf8af012","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"f857d1c58822708008ae5638b399787cdd5acff98858fa275e822fc6bf8af012","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.DirectedArc.Variantf857d1c58822708008ae5638b399787cdd5acff98858fa275e822fc6bf8af012","mathematical_subject":"Foundations.Unclassified","original_sha256":"f857d1c58822708008ae5638b399787cdd5acff98858fa275e822fc6bf8af012","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/DirectedArc.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.Circle
import Mathematics.Geometry.Orientation

/-!
# Directed circular arcs

An arc carries exact endpoint-membership witnesses and an intrinsic direction.
Display-axis configuration is deliberately absent.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.DirectedArc.Variantf857d1c58822708008ae5638b399787cdd5acff98858fa275e822fc6bf8af012

namespace Mathematics.Geometry

/-- A directed arc on a positive-radius Euclidean circle. -/
structure DirectedArc where
  circle : PlaneCircle
  startPoint : PlanePoint
  endPoint : PlanePoint
  startOnCircle : circle.Contains startPoint
  endOnCircle : circle.Contains endPoint
  orientation : ArcOrientation

end Mathematics.Geometry
```
