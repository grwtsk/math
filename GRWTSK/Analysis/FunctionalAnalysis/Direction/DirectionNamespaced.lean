-- corpus-organization-transform:v1
-- Mathematical subject: Analysis.FunctionalAnalysis
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Analysis.FunctionalAnalysis.Direction.Variant39f40d9ad90face2a22a18da088ca4321fff8086e87eac7dce6e83cb4345a806","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"39f40d9ad90face2a22a18da088ca4321fff8086e87eac7dce6e83cb4345a806","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Analysis.FunctionalAnalysis.SourceCorpus.Direction.Variant39f40d9ad90face2a22a18da088ca4321fff8086e87eac7dce6e83cb4345a806","mathematical_subject":"Analysis.FunctionalAnalysis","original_sha256":"39f40d9ad90face2a22a18da088ca4321fff8086e87eac7dce6e83cb4345a806","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Geometry/Kakeya/Direction.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.Analysis.InnerProductSpace.PiL2

/-!
# Euclidean directions for Kakeya geometry

Ambient dimension is a type index.  A direction is an actual unit vector, not
a string label or a display coordinate.
-/


namespace GRWTSK.Analysis.FunctionalAnalysis.Direction.Variant39f40d9ad90face2a22a18da088ca4321fff8086e87eac7dce6e83cb4345a806

namespace Mathematics.Geometry.Kakeya

/-- The canonical real Euclidean carrier in dimension `dimension`. -/
abbrev AmbientPoint (dimension : Nat) :=
  EuclideanSpace ℝ (Fin dimension)

/-- An oriented unit direction in the ambient Euclidean carrier. -/
structure Direction (dimension : Nat) where
  vector : AmbientPoint dimension
  unit : ‖vector‖ = 1

theorem Direction.nonzero {dimension : Nat}
    (direction : Direction dimension) :
    direction.vector ≠ 0 := by
  intro zero
  have unit := direction.unit
  rw [zero, norm_zero] at unit
  norm_num at unit

end Mathematics.Geometry.Kakeya
