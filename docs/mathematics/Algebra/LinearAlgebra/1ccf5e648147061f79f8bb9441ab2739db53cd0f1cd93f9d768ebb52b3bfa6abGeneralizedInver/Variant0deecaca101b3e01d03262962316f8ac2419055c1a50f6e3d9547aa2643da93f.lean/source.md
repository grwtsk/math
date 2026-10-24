# Complete source: GRWTSK.Algebra.LinearAlgebra.1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6abGeneralizedInver.Variant0deecaca101b3e01d03262962316f8ac2419055c1a50f6e3d9547aa2643da93f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7e22e88db53aecf58b9e4829b8725c1bb09123be` · SHA-256 `0a84a5a9b9376aaabe7f2742a7ce199abeb3646e9e626a226d393e0ec05a2b01`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.GeneralizedInverseBlockRealization.Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.GeneralizedInverseBlockRealization.Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.publication/20261007/ignored-unit/source/other-research/1c/1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab--GeneralizedInverseSchur.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.ExplicitSchurMatrix

/-!
# Generalized-inverse Schur reduction

This module begins the singular positive-semidefinite provenance-block case.

A generalized-inverse block realization records a provenance matrix A, cross
matrix B, autonomous matrix C, and a symmetric generalized inverse Aplus.  The
essential range condition is stated explicitly:

  A * Aplus * B = B

on autonomous inputs.

That condition is exactly what is required for Aplus * B to solve the provenance
normal equations.  The resulting residual is represented by

  C - Bᵀ * Aplus * B

and is positive semidefinite because it is the residual form of the ambient
positive geometry.

No theorem here asserts existence of a Moore--Penrose inverse.  A later module
may instantiate this contract from an actual Moore--Penrose construction.
-/


namespace GRWTSK.Algebra.LinearAlgebra.GeneralizedInverseBlockRealization.Variant1ccf5e648147061f79f8bb9441ab2739db53cd0f1cd93f9d768ebb52b3bfa6ab

namespace FormalResearch.PositiveAtlas

universe u v

variable {ι : Type u} {κ : Type v}
variable [Fintype ι]
variable [Fintype κ]

/-- Finite-coordinate data for a singular provenance block equipped with a
generalized inverse that reproduces the cross block. -/
structure GeneralizedInverseBlockRealization
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ))) where
  provenanceMatrix : Matrix ι ι ℝ
  crossMatrix : Matrix ι κ ℝ
  autonomousMatrix : Matrix κ κ ℝ
  generalizedInverse : Matrix ι ι ℝ
  generalizedInverse_isSymm : generalizedInverse.IsSymm
  cross_in_range : ∀ u : κ → ℝ,
    provenanceMatrix.mulVec
        (generalizedInverse.mulVec (crossMatrix.mulVec u)) =
      crossMatrix.mulVec u
  provenance_block : ∀ p q,
    G.form (provenanceInclusion p) (provenanceInclusion q) =
      p ⬝ᵥ provenanceMatrix.mulVec q
  cross_block : ∀ p u,
    G.form (provenanceInclusion p) (autonomousInclusion u) =
      p ⬝ᵥ crossMatrix.mulVec u
  autonomous_block : ∀ u v,
    G.form (autonomousInclusion u) (autonomousInclusion v) =
      u ⬝ᵥ autonomousMatrix.mulVec v

namespace GeneralizedInverseBlockRealization

variable {G : PositiveForm ((ι → ℝ) × (κ → ℝ))}

/-- The generalized-inverse normal-equation solver Aplus * B. -/
def solve (D : GeneralizedInverseBlockRealization G) :
    (κ → ℝ) →ₗ[ℝ] (ι → ℝ) :=
  D.generalizedInverse.mulVecLin.comp D.crossMatrix.mulVecLin

@[simp]
theorem solve_apply (D : GeneralizedInverseBlockRealization G) (u : κ → ℝ) :
    D.solve u = D.generalizedInverse.mulVec (D.crossMatrix.mulVec u) :=
  rfl

/-- Multiplication by A reproduces the cross block on the admitted range. -/
theorem provenance_mulVec_solve
    (D : GeneralizedInverseBlockRealization G) (u : κ → ℝ) :
    D.provenanceMatrix.mulVec (D.solve u) = D.crossMatrix.mulVec u := by
  exact D.cross_in_range u

omit [Fintype ι] [Fintype κ] in
private theorem form_sub_right
    (H : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (x y z : (ι → ℝ) × (κ → ℝ)) :
    H.form x (y - z) = H.form x y - H.form x z := by
  rw [sub_eq_add_neg, H.add_right]
  have h := H.smul_right (-1 : ℝ) x z
  simp only [neg_smul, one_smul, neg_mul, one_mul] at h
  rw [h]
  ring

/-- The generalized-inverse solver satisfies the same provenance normal
equations as the invertible-block solver. -/
def blockSchurSolver (D : GeneralizedInverseBlockRealization G) :
    BlockSchurSolver G where
  solve := D.solve
  normal := by
    intro p u
    rw [form_sub_right]
    rw [D.cross_block, D.provenance_block]
    rw [D.provenance_mulVec_solve]
    ring

@[simp]
theorem blockSchurSolver_solve (D : GeneralizedInverseBlockRealization G) :
    D.blockSchurSolver.solve = D.solve :=
  rfl

/-- The generalized Schur matrix C - Bᵀ Aplus B. -/
def generalizedSchurMatrix
    (D : GeneralizedInverseBlockRealization G) : Matrix κ κ ℝ :=
  D.autonomousMatrix -
    D.crossMatrix.transpose * D.generalizedInverse * D.crossMatrix

/-- The matrix correction pairing agrees with the provenance energy produced by
the generalized-inverse solver. -/
theorem generalizedSchurCorrection_pairing
    (D : GeneralizedInverseBlockRealization G) (u v : κ → ℝ) :
    u ⬝ᵥ
        (D.crossMatrix.transpose * D.generalizedInverse *
          D.crossMatrix).mulVec v =
      (D.generalizedInverse.mulVec (D.crossMatrix.mulVec u)) ⬝ᵥ
        D.crossMatrix.mulVec v := by
  rw [← Matrix.mulVec_mulVec, ← Matrix.mulVec_mulVec]
  rw [Matrix.dotProduct_transpose_mulVec]
  calc
    _ = D.crossMatrix.mulVec u ⬝ᵥ
        D.generalizedInverse.mulVec (D.crossMatrix.mulVec v) :=
      dotProduct_comm _ _
    _ = D.crossMatrix.mulVec v ⬝ᵥ
        D.generalizedInverse.mulVec (D.crossMatrix.mulVec u) := by
      simpa only [D.generalizedInverse_isSymm.eq] using
        Matrix.dotProduct_transpose_mulVec D.generalizedInverse
          (D.crossMatrix.mulVec u) (D.crossMatrix.mulVec v)
    _ = _ := dotProduct_comm _ _

/-- The positive residual form is exactly the generalized Schur-matrix form. -/
theorem schurForm_eq_generalizedSchurMatrix
    (D : GeneralizedInverseBlockRealization G) (u v : κ → ℝ) :
    D.blockSchurSolver.schurForm.form u v =
      u ⬝ᵥ D.generalizedSchurMatrix.mulVec v := by
  rw [D.blockSchurSolver.schurForm_eq_sub]
  rw [D.autonomous_block, D.provenance_block]
  rw [D.blockSchurSolver_solve, D.provenance_mulVec_solve v, D.solve_apply]
  rw [generalizedSchurMatrix, Matrix.sub_mulVec, dotProduct_sub]
  rw [D.generalizedSchurCorrection_pairing]

/-- The generalized Schur matrix is positive semidefinite as a quadratic form. -/
theorem generalizedSchurMatrix_nonnegative
    (D : GeneralizedInverseBlockRealization G) (u : κ → ℝ) :
    0 ≤ u ⬝ᵥ D.generalizedSchurMatrix.mulVec u := by
  rw [← D.schurForm_eq_generalizedSchurMatrix u u]
  exact D.blockSchurSolver.schurForm_nonnegative u

/-- Pure autonomous energy decomposes into explained generalized-inverse
provenance energy and the positive generalized Schur residual. -/
theorem autonomous_energy_decomposition
    (D : GeneralizedInverseBlockRealization G) (u : κ → ℝ) :
    u ⬝ᵥ D.autonomousMatrix.mulVec u =
      (D.generalizedInverse.mulVec (D.crossMatrix.mulVec u)) ⬝ᵥ
          D.crossMatrix.mulVec u +
        u ⬝ᵥ D.generalizedSchurMatrix.mulVec u := by
  rw [← D.schurForm_eq_generalizedSchurMatrix u u]
  rw [← D.solve_apply u, ← D.provenance_mulVec_solve u]
  rw [← D.provenance_block, ← D.autonomous_block]
  exact D.blockSchurSolver.autonomous_energy_decomposition u

end GeneralizedInverseBlockRealization

end FormalResearch.PositiveAtlas
```
