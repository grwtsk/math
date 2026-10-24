-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.NullOrthogonal.Variant2fc9352aa4471d17c65aca3edb5b10421eb75f449ee8b7c3114bccd5178f3e98","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2fc9352aa4471d17c65aca3edb5b10421eb75f449ee8b7c3114bccd5178f3e98","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.NullOrthogonal.Variant2fc9352aa4471d17c65aca3edb5b10421eb75f449ee8b7c3114bccd5178f3e98","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"2fc9352aa4471d17c65aca3edb5b10421eb75f449ee8b7c3114bccd5178f3e98","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/PositiveAtlas/NullCrossAnnihilation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.GeneralizedInverseSchur

/-!
# Null provenance directions annihilate cross coupling

For a positive semidefinite symmetric bilinear form, a null vector is orthogonal
to every vector.  In the Positive Atlas provenance split this implies that every
null provenance direction annihilates the provenance/autonomous cross block.

This is the key singular-block fact needed before replacing an explicit range
hypothesis by a theorem.  In finite coordinates it gives

  A p = 0  ->  p^T B u = 0

for every autonomous input u.

The result is proved directly from positivity and does not use a generalized
inverse or a Moore--Penrose construction.
-/


namespace GRWTSK.Algebra.LinearAlgebra.NullOrthogonal.Variant2fc9352aa4471d17c65aca3edb5b10421eb75f449ee8b7c3114bccd5178f3e98

namespace FormalResearch.PositiveAtlas

universe u

variable {V : Type u} [AddCommGroup V] [Module ℝ V]

namespace PositiveForm

/-- A null direction of a positive semidefinite symmetric bilinear form is
orthogonal to every vector. -/
theorem null_orthogonal
    (G : PositiveForm V) {x : V} (hx : G.form x x = 0) (y : V) :
    G.form x y = 0 := by
  by_contra hxy
  let b : ℝ := G.form x y
  let c : ℝ := G.form y y
  let t : ℝ := -(c + 1) / (2 * b)
  have hb : b ≠ 0 := by
    simpa [b] using hxy
  have hc : 0 ≤ c := by
    simpa [c] using G.nonnegative y
  have hsymm : G.form y x = G.form x y := G.symmetric y x
  have hexpand :
      G.form (t • x + y) (t • x + y) =
        t * t * G.form x x +
          t * G.form x y +
          t * G.form y x +
          G.form y y := by
    rw [G.add_left, G.add_right, G.add_right]
    simp only [G.smul_left, G.smul_right]
    ring
  have hnonneg := G.nonnegative (t • x + y)
  rw [hexpand, hx, hsymm] at hnonneg
  have ht :
      t * G.form x y + t * G.form x y + G.form y y = -1 := by
    change t * b + t * b + c = -1
    field_simp [t, hb]
    ring
  rw [ht] at hnonneg
  linarith

/-- By symmetry, null directions are orthogonal in the second argument as well. -/
theorem orthogonal_null
    (G : PositiveForm V) (x : V) {y : V} (hy : G.form y y = 0) :
    G.form x y = 0 := by
  rw [G.symmetric]
  exact G.null_orthogonal hy x

end PositiveForm

universe v

variable {P : Type u} {U : Type v}
variable [AddCommGroup P] [Module ℝ P]
variable [AddCommGroup U] [Module ℝ U]

/-- A null provenance direction has zero cross coupling with every autonomous
direction. -/
theorem provenance_null_cross_zero
    (G : PositiveForm (P × U)) (p : P) (u : U)
    (hp : G.form (provenanceInclusion p) (provenanceInclusion p) = 0) :
    G.form (provenanceInclusion p) (autonomousInclusion u) = 0 :=
  G.null_orthogonal hp (autonomousInclusion u)

universe w z

variable {ι : Type w} {κ : Type z}
variable [Fintype ι] [DecidableEq ι]
variable [Fintype κ] [DecidableEq κ]

/-- In finite coordinates, a vector in the kernel of the provenance matrix is
orthogonal to every cross-block column. -/
theorem matrix_kernel_cross_orthogonal
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q)
    (hB : ∀ p u,
      G.form (provenanceInclusion p) (autonomousInclusion u) =
        p ⬝ᵥ B.mulVec u)
    (p : ι → ℝ) (hp : A.mulVec p = 0) (u : κ → ℝ) :
    p ⬝ᵥ B.mulVec u = 0 := by
  have hpnull :
      G.form (provenanceInclusion p) (provenanceInclusion p) = 0 := by
    rw [hA, hp]
    simp
  rw [← hB]
  exact provenance_null_cross_zero G p u hpnull

/-- Equivalently, every provenance-kernel vector annihilates the full cross
linear map. -/
theorem matrix_kernel_annihilates_cross
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q)
    (hB : ∀ p u,
      G.form (provenanceInclusion p) (autonomousInclusion u) =
        p ⬝ᵥ B.mulVec u)
    (p : ι → ℝ) (hp : A.mulVec p = 0) :
    ∀ u : κ → ℝ, p ⬝ᵥ B.mulVec u = 0 :=
  matrix_kernel_cross_orthogonal G A B hA hB p hp

end FormalResearch.PositiveAtlas
