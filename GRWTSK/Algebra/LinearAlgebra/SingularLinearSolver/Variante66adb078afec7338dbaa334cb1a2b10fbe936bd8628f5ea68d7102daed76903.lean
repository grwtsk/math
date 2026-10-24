-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.LinearRangeFactorization.Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.LinearRangeFactorization.Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/PositiveAtlas/SingularLinearSolver.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.ProvenanceRange
import Mathlib.Algebra.Module.Projective
import Mathlib.LinearAlgebra.FiniteDimensional.Basic

/-!
# Singular provenance linear solver

This module turns the pointwise range theorem into a genuine linear normal-equation
solver.

If the cross map B has range contained in the provenance map A, corestrict B to
range A. The range restriction of A is surjective. Because finite-dimensional
real vector spaces are free and therefore projective, that surjection admits a
linear section. Composing the section with the corestricted cross map gives a
linear solver S satisfying

  A ∘ S = B.

This eliminates the generalized-inverse range hypothesis from the positive
Schur construction.
-/


namespace GRWTSK.Algebra.LinearAlgebra.LinearRangeFactorization.Variant33cefd11771ee5707fcbab27691213181e45b8459b3f932a1a1fc32e6c294a5a

namespace FormalResearch.PositiveAtlas

universe u v

variable {ι : Type u} {κ : Type v}
variable [Fintype ι] [DecidableEq ι]
variable [Fintype κ] [DecidableEq κ]

/-- A linear factorization of B through A. -/
structure LinearRangeFactorization
    (A : (ι → ℝ) →ₗ[ℝ] (ι → ℝ))
    (B : (κ → ℝ) →ₗ[ℝ] (ι → ℝ)) where
  solve : (κ → ℝ) →ₗ[ℝ] (ι → ℝ)
  factor : A.comp solve = B

namespace LinearRangeFactorization

/-- Construct a linear factorization from a range inclusion. -/
noncomputable def ofRangeLe
    (A : (ι → ℝ) →ₗ[ℝ] (ι → ℝ))
    (B : (κ → ℝ) →ₗ[ℝ] (ι → ℝ))
    (h : LinearMap.range B ≤ LinearMap.range A) :
    LinearRangeFactorization A B := by
  let R := LinearMap.range A
  let BtoR : (κ → ℝ) →ₗ[ℝ] R :=
    B.codRestrict R (fun u => h (LinearMap.mem_range_self B u))
  letI : Module.Projective ℝ R :=
    Module.Projective.of_basis (Module.finBasis ℝ R)
  obtain ⟨section, hsection⟩ :=
    A.rangeRestrict.exists_rightInverse_of_surjective A.range_rangeRestrict
  refine
    { solve := section.comp BtoR
      factor := ?_ }
  ext u
  change A (section (BtoR u)) = B u
  have hsection_u := LinearMap.congr_fun hsection (BtoR u)
  exact congrArg Subtype.val hsection_u

@[simp]
theorem factor_apply
    {A : (ι → ℝ) →ₗ[ℝ] (ι → ℝ)}
    {B : (κ → ℝ) →ₗ[ℝ] (ι → ℝ)}
    (F : LinearRangeFactorization A B) (u : κ → ℝ) :
    A (F.solve u) = B u := by
  have h := LinearMap.congr_fun F.factor u
  simpa using h

end LinearRangeFactorization

/-- Positive block geometry canonically yields a linear provenance solver. -/
noncomputable def singularProvenanceFactorization
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q)
    (hB : ∀ p u,
      G.form (provenanceInclusion p) (autonomousInclusion u) =
        p ⬝ᵥ B.mulVec u) :
    LinearRangeFactorization A.mulVecLin B.mulVecLin :=
  LinearRangeFactorization.ofRangeLe A.mulVecLin B.mulVecLin <| by
    intro y hy
    rcases hy with ⟨u, rfl⟩
    exact cross_mem_provenance_range G A B hA hB u

/-- The constructed singular solver satisfies A(Su)=Bu. -/
theorem singularProvenanceFactorization_apply
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q)
    (hB : ∀ p u,
      G.form (provenanceInclusion p) (autonomousInclusion u) =
        p ⬝ᵥ B.mulVec u)
    (u : κ → ℝ) :
    A.mulVec ((singularProvenanceFactorization G A B hA hB).solve u) =
      B.mulVec u := by
  exact (singularProvenanceFactorization G A B hA hB).factor_apply u

/-- The singular PSD block therefore determines the abstract block Schur solver
without any generalized-inverse hypothesis. -/
noncomputable def singularBlockSchurSolver
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q)
    (hB : ∀ p u,
      G.form (provenanceInclusion p) (autonomousInclusion u) =
        p ⬝ᵥ B.mulVec u) :
    BlockSchurSolver G where
  solve := (singularProvenanceFactorization G A B hA hB).solve
  normal := by
    intro p u
    have hsolve := singularProvenanceFactorization_apply G A B hA hB u
    have hsub :
        G.form (provenanceInclusion p)
            (autonomousInclusion u -
              provenanceInclusion
                ((singularProvenanceFactorization G A B hA hB).solve u)) =
          G.form (provenanceInclusion p) (autonomousInclusion u) -
            G.form (provenanceInclusion p)
              (provenanceInclusion
                ((singularProvenanceFactorization G A B hA hB).solve u)) := by
      rw [sub_eq_add_neg, G.add_right]
      have hs := G.smul_right (-1 : ℝ) (provenanceInclusion p)
        (provenanceInclusion
          ((singularProvenanceFactorization G A B hA hB).solve u))
      simp at hs
      rw [hs]
      ring
    rw [hsub, hB, hA, hsolve]
    ring

/-- The singular Schur residual is positive semidefinite without choosing a
generalized inverse. -/
theorem singular_schur_nonnegative
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (A : Matrix ι ι ℝ) (B : Matrix ι κ ℝ)
    (hA : ∀ p q,
      G.form (provenanceInclusion p) (provenanceInclusion q) =
        p ⬝ᵥ A.mulVec q)
    (hB : ∀ p u,
      G.form (provenanceInclusion p) (autonomousInclusion u) =
        p ⬝ᵥ B.mulVec u)
    (u : κ → ℝ) :
    0 ≤ (singularBlockSchurSolver G A B hA hB).schurForm.form u u :=
  (singularBlockSchurSolver G A B hA hB).schurForm_nonnegative u

end FormalResearch.PositiveAtlas
