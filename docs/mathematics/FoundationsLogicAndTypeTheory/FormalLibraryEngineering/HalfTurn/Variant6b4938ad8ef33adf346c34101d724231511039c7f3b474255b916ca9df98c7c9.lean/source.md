# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HalfTurn.Variant6b4938ad8ef33adf346c34101d724231511039c7f3b474255b916ca9df98c7c9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2b989a6e3439b99fd5a1f24696cea52fef3f4ae8` · SHA-256 `f1bea182d911f68c1d80650770ec3a438a81f6fa3497d59b4b527f2c4d9dbe2c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HalfTurn.Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.HalfTurn.Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5","mathematical_subject":"Foundations.Unclassified","original_sha256":"38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/HalfTurn.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Geometry.SquaredDistance

/-!
# Affine half-turn

The half-turn is expressed by canonical vector operations on the Euclidean
plane.  Involution and metric preservation are proved, not runtime assumptions.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HalfTurn.Variant38ae5f49b16bc489097c004bf1d0ec385ddeeb4caaf269305e85d022ec17bbe5

namespace Mathematics.Geometry

/-- The affine half-turn about a designated center. -/
def halfTurn (center point : PlanePoint) : PlanePoint :=
  (2 : ℝ) • center - point

@[simp] theorem halfTurn_involutive (center point : PlanePoint) :
    halfTurn center (halfTurn center point) = point := by
  ext coordinate
  simp [halfTurn]

theorem halfTurn_difference (center point : PlanePoint) :
    center - halfTurn center point = -(center - point) := by
  ext coordinate
  simp [halfTurn]
  ring

theorem halfTurn_preserves_centered_squaredDistance
    (center point : PlanePoint) :
    planeSquaredDistance center (halfTurn center point) =
      planeSquaredDistance center point := by
  simp only [planeSquaredDistance, halfTurn_difference]
  simp [norm_sub_rev]

end Mathematics.Geometry
```
