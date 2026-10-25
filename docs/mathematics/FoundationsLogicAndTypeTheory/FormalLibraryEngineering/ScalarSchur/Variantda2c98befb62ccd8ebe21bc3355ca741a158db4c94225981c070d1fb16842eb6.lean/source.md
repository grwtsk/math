# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ScalarSchur.Variantda2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e6019e8f3b1feb16eed941c53fd646231a45f58f` · SHA-256 `da2c98befb62ccd8ebe21bc3355ca741a158db4c94225981c070d1fb16842eb6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
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
noncomputable def scalarProvenanceProject (a b : ℝ) : (ℝ × ℝ) →ₗ[ℝ] (ℝ × ℝ) where
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
noncomputable def scalarProvenanceProjector
    (a b c : ℝ) (ha : a ≠ 0)
    (hpos : ∀ x : ℝ × ℝ, 0 ≤ scalarBlockForm a b c x x) :
    ProvenanceProjector (scalarBlockPositiveForm a b c hpos) where
  project := scalarProvenanceProject a b
  idempotent := scalarProvenanceProject_idempotent a b
  orthogonal := by
    intro x y
    exact scalarProvenanceProject_orthogonal a b c ha x y

theorem scalarProvenanceResidual_apply
    (a b c : ℝ) (ha : a ≠ 0)
    (hpos : ∀ x : ℝ × ℝ, 0 ≤ scalarBlockForm a b c x x)
    (x : ℝ × ℝ) :
    (scalarProvenanceProjector a b c ha hpos).residualMap x =
      (-(b / a) * x.2, x.2) := by
  ext <;>
    simp [scalarProvenanceProjector, ProvenanceProjector.residualMap,
      scalarProvenanceProject]

/-- The canonical residual form is exactly the scalar Schur complement times the
product of autonomous coordinates. -/
theorem scalarResidualForm_eq_schur
    (a b c : ℝ) (ha : a ≠ 0)
    (hpos : ∀ x : ℝ × ℝ, 0 ≤ scalarBlockForm a b c x x)
    (x y : ℝ × ℝ) :
    (scalarProvenanceProjector a b c ha hpos).residualForm.form x y =
      (c - b ^ 2 / a) * x.2 * y.2 := by
  change scalarBlockForm a b c
    ((scalarProvenanceProjector a b c ha hpos).residualMap x)
    ((scalarProvenanceProjector a b c ha hpos).residualMap y) = _
  rw [scalarProvenanceResidual_apply a b c ha hpos x,
    scalarProvenanceResidual_apply a b c ha hpos y]
  dsimp [scalarBlockForm]
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
  have h := (scalarProvenanceProjector a b c ha hpos).quadratic_decomposition x
  change scalarBlockForm a b c x x = _ at h
  rw [scalarResidualForm_eq_schur a b c ha hpos x x] at h
  simpa only [pow_two, mul_assoc] using h

end FormalResearch.PositiveAtlas
```
