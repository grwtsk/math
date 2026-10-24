# Complete source: GRWTSK.Analysis.FunctionalAnalysis.Plane.Variantf07c95df1f04e3cb242efdf71bc481c4295b8c305683189353d7df623861fdb7

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fa8d29c938075dc071252a6abb40338165344f3e` · SHA-256 `11259c1abae50355448307bf4048ed9d56c640cfd545065615531d8d2286ada3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.PlanePoint.Variantff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"ff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.PlanePoint.Variantff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"ff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Plane.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.PiL2

/-!
# Real Euclidean plane

The affine carrier is Mathlib's canonical two-dimensional Euclidean space.
Cartesian display coordinates are constructors and projections of that carrier,
not a second point structure.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.PlanePoint.Variantff625ea610b2a18aadb3a7d285638f827839ad8211c41ccfb9de9e2d375da191

namespace Mathematics.Geometry

/-- The real Euclidean plane with its canonical inner-product metric. -/
abbrev PlanePoint := EuclideanSpace ℝ (Fin 2)

namespace PlanePoint

/-- Construct a plane point from two Cartesian coordinates. -/
def cartesian (horizontal vertical : ℝ) : PlanePoint :=
  !₂[horizontal, vertical]

@[simp] theorem cartesian_horizontal (horizontal vertical : ℝ) :
    cartesian horizontal vertical 0 = horizontal := by
  simp [cartesian]

@[simp] theorem cartesian_vertical (horizontal vertical : ℝ) :
    cartesian horizontal vertical 1 = vertical := by
  simp [cartesian]

end PlanePoint

end Mathematics.Geometry
```
