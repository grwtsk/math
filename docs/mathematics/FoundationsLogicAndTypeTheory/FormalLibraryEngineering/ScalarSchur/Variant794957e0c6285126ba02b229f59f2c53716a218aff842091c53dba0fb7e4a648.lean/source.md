# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScalarSchur.Variant794957e0c6285126ba02b229f59f2c53716a218aff842091c53dba0fb7e4a648

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1305a66e767750caa385609d0c11e4b1449f74c1` · SHA-256 `2f8be283f9d578825c5a0cc6e22784b7b7302803a63e908daeabc32ea178a2bf`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScalarBlockForm.Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.Unclassified.SourceCorpus.ScalarBlockForm.Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8","mathematical_subject":"Foundations.Unclassified","original_sha256":"68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/PositiveAtlas/ScalarSchur.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.ProvenanceProjection

/-!
# Scalar Schur provenance reduction

This module proves the first canonical finite-dimensional Phase-II construction.

For a symmetric two-coordinate block form

  a*x₁*y₁ + b*x₁*y₂ + b*x₂*y₁ + c*x₂*y₂,

with a nonzero provenance coefficient a, the least-squares provenance projector
uses coefficient b / a.  If the ambient block form is positive semidefinite, the
residual coefficient is the scalar Schur complement

  c - b^2 / a,

and is nonnegative.

This is the one-dimensional base case for a later matrix/pseudoinverse
formalization.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScalarBlockForm.Variant68f1e7aada7a540c281853bfaf54f6a934bc0c5dc8b171494a26584db89ef4f8

namespace FormalResearch.PositiveAtlas

/-- The symmetric scalar block bilinear form with provenance coordinate first
and autonomous coordinate second. -/
def scalarBlockForm (a b c : ℝ) (x y : ℝ × ℝ) : ℝ :=
  a * x.1 * y.1 + b * x.1 * y.2 + b * x.2 * y.1 + c * x.2 * y.2

/-- Package a positive semidefinite scalar block form as a Positive Atlas form. -/
def scalarBlockPositiveForm (a b c : ℝ)
    (hpos : ∀ x : ℝ × ℝ, 0 ≤ scalarBlockForm a b c x x) :
    PositiveForm (ℝ × ℝ) where
  form := scalarBlockForm a b c
  add_left x y z := by
    simp [scalarBlockForm]
    ring
  smul_left r x y := by
    simp [scalarBlockForm]
    ring
  add_right x y z := by
    simp [scalarBlockForm]
    ring
  smul_right r x y := by
    simp [scalarBlockForm]
    ring
  symmetric x y := by
    simp [scalarBlockForm]
    ring
  nonnegative := hpos

/-- The canonical one-dimensional provenance projection. -/
def scalarProvenanceProject (a b : ℝ) : (ℝ × ℝ) →ₗ[ℝ] (ℝ × ℝ) where
  toFun x := (x.1 + (b / a) * x.2, 0)
  map_add' x y := by
    ext <;> simp
    ring
  map_smul' r x := by
    ext <;> simp
    ring

@[simp]
theorem scalarProvenanceProject_apply (a b : ℝ) (x : ℝ × ℝ) :
    scalarProvenanceProject a b x = (x.1 + (b / a) * x.2, 0) :=
  rfl

/-- The canonical scalar projector is idempotent. -/
theorem scalarProvenanceProject_idempotent (a b : ℝ) (x : ℝ × ℝ) :
    scalarProvenanceProject a b (scalarProvenanceProject a b x) =
      scalarProvenanceProject a b x := by
  ext <;> simp [scalarProvenanceProject]

/-- For nonzero provenance coefficient a, the canonical projector is orthogonal
for the scalar block form. -/
theorem scalarProvenanceProject_orthogonal
    (a b c : ℝ) (ha : a ≠ 0) (x y : ℝ × ℝ) :
    scalarBlockForm a b c (scalarProvenanceProject a b x)
        (y - scalarProvenanceProject a b y) = 0 := by
  simp [scalarBlockForm, scalarProvenanceProject]
  field_simp [ha]
  ring

/-- A positive scalar block form with nonzero provenance coefficient determines
the canonical Phase-II provenance projector. -/
def scalarProvenanceProjector
    (a b c : ℝ) (ha : a ≠ 0)
    (hpos : ∀ x : ℝ × ℝ, 0 ≤ scalarBlockForm a b c x x) :
    ProvenanceProjector (scalarBlockPositiveForm a b c hpos) where
  project := scalarProvenanceProject a b
  idempotent := scalarProvenanceProject_idempotent a b
  orthogonal := by
    intro x y
    exact scalarProvenanceProject_orthogonal a b c ha x y

@[simp]
theorem scalarProvenanceResidual_apply
    (a b c : ℝ) (ha : a ≠ 0)
    (hpos : ∀ x : ℝ × ℝ, 0 ≤ scalarBlockForm a b c x x)
    (x : ℝ × ℝ) :
    (scalarProvenanceProjector a b c ha hpos).residualMap x =
      (-(b / a) * x.2, x.2) := by
  ext <;>
    simp [scalarProvenanceProjector, ProvenanceProjector.residualMap,
      scalarProvenanceProject]
  ring

/-- The canonical residual form is exactly the scalar Schur complement times the
product of autonomous coordinates. -/
theorem scalarResidualForm_eq_schur
    (a b c : ℝ) (ha : a ≠ 0)
    (hpos : ∀ x : ℝ × ℝ, 0 ≤ scalarBlockForm a b c x x)
    (x y : ℝ × ℝ) :
    (scalarProvenanceProjector a b c ha hpos).residualForm.form x y =
      (c - b ^ 2 / a) * x.2 * y.2 := by
  simp [ProvenanceProjector.residualForm, PositiveForm.pullback,
    scalarBlockPositiveForm, scalarBlockForm]
  rw [scalarProvenanceResidual_apply a b c ha hpos x,
    scalarProvenanceResidual_apply a b c ha hpos y]
  field_simp [ha]
  ring

/-- Positivity of the ambient two-coordinate block forces nonnegativity of its
scalar Schur complement. -/
theorem scalar_schur_complement_nonnegative
    (a b c : ℝ) (ha : a ≠ 0)
    (hpos : ∀ x : ℝ × ℝ, 0 ≤ scalarBlockForm a b c x x) :
    0 ≤ c - b ^ 2 / a := by
  have h :=
    (scalarProvenanceProjector a b c ha hpos).residualForm_nonnegative
      (0, 1)
  rw [scalarResidualForm_eq_schur a b c ha hpos (0, 1) (0, 1)] at h
  simpa using h

/-- The ambient quadratic form decomposes into the canonical explained
provenance energy and the Schur residual energy. -/
theorem scalar_quadratic_schur_decomposition
    (a b c : ℝ) (ha : a ≠ 0)
    (hpos : ∀ x : ℝ × ℝ, 0 ≤ scalarBlockForm a b c x x)
    (x : ℝ × ℝ) :
    scalarBlockForm a b c x x =
      (scalarProvenanceProjector a b c ha hpos).projectedForm.form x x +
        (c - b ^ 2 / a) * x.2 ^ 2 := by
  rw [(scalarProvenanceProjector a b c ha hpos).quadratic_decomposition x]
  rw [scalarResidualForm_eq_schur a b c ha hpos x x]
  ring

end FormalResearch.PositiveAtlas
```
