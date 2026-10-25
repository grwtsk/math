-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositiveGram.Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.PositiveGram.Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/~/2026/08/10/Surface/Mathematics/Homology/GramField.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathematics.Homology.CohomologyLattice
import Mathlib.Tactic

/-!
# Positive Gram forms

The cohomology Gram form controls Voronoi rounding.  A fiber Gram field
controls geometric lengths in a local system.  They share this positive-form
interface but remain distinct values with distinct certificates.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.PositiveGram.Variant4ab1b50cd553d36d856225b5868e69db485be209501bc67348c4f5d2a6af8049

namespace Mathematics.Homology

universe u

noncomputable section

/-- A symmetric positive-definite real bilinear form. -/
structure PositiveGram (V : Type u)
    [AddCommGroup V] [Module ℝ V] where
  form : V →ₗ[ℝ] V →ₗ[ℝ] ℝ
  symmetric : ∀ left right, form left right = form right left
  positive : ∀ vector, vector ≠ 0 → 0 < form vector vector
  certificate : ObjectAddress

namespace PositiveGram

variable
    {V : Type u} [AddCommGroup V] [Module ℝ V]
    (gram : PositiveGram V)

def squaredNorm (vector : V) : ℝ :=
  gram.form vector vector

def squaredDistance (left right : V) : ℝ :=
  gram.squaredNorm (left - right)

theorem squaredNorm_nonnegative (vector : V) :
    0 ≤ gram.squaredNorm vector := by
  by_cases zero : vector = 0
  · simp [squaredNorm, zero]
  · exact le_of_lt (gram.positive vector zero)

theorem squaredNorm_eq_zero_iff (vector : V) :
    gram.squaredNorm vector = 0 ↔ vector = 0 := by
  constructor
  · intro zeroNorm
    by_contra nonzero
    have positive : 0 < gram.squaredNorm vector := by
      simpa [squaredNorm] using gram.positive vector nonzero
    exact (ne_of_gt positive) zeroNorm
  · rintro rfl
    simp [squaredNorm]

theorem squaredDistance_self (vector : V) :
    gram.squaredDistance vector vector = 0 := by
  simp [squaredDistance, squaredNorm]

end PositiveGram

/-- A base-indexed metric field; no topology or torsion is inferred from it. -/
abbrev GramField
    (Base : Type*) (Fiber : Type u)
    [AddCommGroup Fiber] [Module ℝ Fiber] :=
  Base → PositiveGram Fiber

end

end Mathematics.Homology
