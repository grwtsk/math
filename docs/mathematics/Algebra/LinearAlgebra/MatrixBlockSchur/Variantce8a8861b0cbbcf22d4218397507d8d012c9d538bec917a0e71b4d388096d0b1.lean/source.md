# Complete source: GRWTSK.Algebra.LinearAlgebra.MatrixBlockSchur.Variantce8a8861b0cbbcf22d4218397507d8d012c9d538bec917a0e71b4d388096d0b1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `443abe4d8d54da00b92a154c5f116945dacf34dd` · SHA-256 `b69c3daa1ef4335a19ca88deb82b127c509299973974b7130e06ba9f6243fd90`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.MatrixBlockRealization.Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.MatrixBlockRealization.Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal.worktrees/rh-target-sufficiency/FormalResearch/PositiveAtlas/MatrixBlockSchur.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.InvertibleBlockSchur
import Mathlib.LinearAlgebra.Matrix.ToLin

/-!
# Matrix block Schur reduction

This module specializes the Positive Atlas provenance reduction to concrete
finite coordinate spaces.

A matrix block realization records the provenance matrix A, cross matrix B,
autonomous matrix C, and a two-sided inverse witness for A.  The compatibility
fields identify those matrices with the corresponding blocks of an ambient
PositiveForm.  From this data the module constructs the explicit solver

  Ainv * B,

proves the block normal equations, and identifies the Schur residual in matrix
coordinates.

The final matrix-product normalization C - Bᵀ Ainv B is left to a subsequent
module; this file establishes the coordinate formula required for that step.
-/


namespace GRWTSK.Algebra.LinearAlgebra.MatrixBlockRealization.Variant9baa5520b663ca341aa44f699783a76c4dcaa3da1bb42b17ffa8b6e68ec53259

namespace FormalResearch.PositiveAtlas

universe u v

variable {ι : Type u} {κ : Type v}
variable [Fintype ι] [DecidableEq ι]
variable [Fintype κ] [DecidableEq κ]

/-- A concrete finite-coordinate realization of an ambient positive block form. -/
structure MatrixBlockRealization
    (G : PositiveForm ((ι → ℝ) × (κ → ℝ))) where
  provenanceMatrix : Matrix ι ι ℝ
  crossMatrix : Matrix ι κ ℝ
  autonomousMatrix : Matrix κ κ ℝ
  inverseProvenanceMatrix : Matrix ι ι ℝ
  mul_inverse : provenanceMatrix * inverseProvenanceMatrix = 1
  inverse_mul : inverseProvenanceMatrix * provenanceMatrix = 1
  provenance_block : ∀ p q,
    G.form (provenanceInclusion p) (provenanceInclusion q) =
      p ⬝ᵥ provenanceMatrix.mulVec q
  cross_block : ∀ p u,
    G.form (provenanceInclusion p) (autonomousInclusion u) =
      p ⬝ᵥ crossMatrix.mulVec u
  autonomous_block : ∀ u v,
    G.form (autonomousInclusion u) (autonomousInclusion v) =
      u ⬝ᵥ autonomousMatrix.mulVec v

namespace MatrixBlockRealization

variable {G : PositiveForm ((ι → ℝ) × (κ → ℝ))}

/-- The explicit matrix normal-equation solver Ainv * B. -/
def solve (D : MatrixBlockRealization G) :
    (κ → ℝ) →ₗ[ℝ] (ι → ℝ) :=
  D.inverseProvenanceMatrix.mulVecLin.comp D.crossMatrix.mulVecLin

@[simp]
theorem solve_apply (D : MatrixBlockRealization G) (u : κ → ℝ) :
    D.solve u =
      D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u) :=
  rfl

/-- Multiplication by A sends the explicit solver back to the cross block. -/
theorem provenance_mulVec_solve (D : MatrixBlockRealization G) (u : κ → ℝ) :
    D.provenanceMatrix.mulVec (D.solve u) =
      D.crossMatrix.mulVec u := by
  rw [solve_apply]
  rw [Matrix.mulVec_mulVec]
  rw [D.mul_inverse]
  exact Matrix.one_mulVec (D.crossMatrix.mulVec u)

private theorem form_sub_right
    (H : PositiveForm ((ι → ℝ) × (κ → ℝ)))
    (x y z : (ι → ℝ) × (κ → ℝ)) :
    H.form x (y - z) = H.form x y - H.form x z := by
  rw [sub_eq_add_neg, H.add_right]
  have h := H.smul_right (-1 : ℝ) x z
  simp at h
  rw [h]
  ring

/-- The explicit matrix solver satisfies the block normal equations. -/
def blockSchurSolver (D : MatrixBlockRealization G) :
    BlockSchurSolver G where
  solve := D.solve
  normal := by
    intro p u
    rw [form_sub_right]
    rw [D.cross_block, D.provenance_block]
    rw [D.provenance_mulVec_solve]
    ring

@[simp]
theorem blockSchurSolver_solve (D : MatrixBlockRealization G) :
    D.blockSchurSolver.solve = D.solve :=
  rfl

/-- The coordinate Schur residual is the autonomous matrix pairing minus the
energy of the explicit provenance correction. -/
theorem schur_eq_matrix_coordinates
    (D : MatrixBlockRealization G) (u v : κ → ℝ) :
    D.blockSchurSolver.schurForm.form u v =
      u ⬝ᵥ D.autonomousMatrix.mulVec v -
        (D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u)) ⬝ᵥ
          D.crossMatrix.mulVec v := by
  rw [D.blockSchurSolver.schurForm_eq_sub]
  rw [D.autonomous_block, D.provenance_block]
  rw [D.solve_apply, D.provenance_mulVec_solve v]

/-- The explicit matrix Schur subtraction is nonnegative on the diagonal. -/
theorem matrix_schur_diagonal_nonnegative
    (D : MatrixBlockRealization G) (u : κ → ℝ) :
    0 ≤
      u ⬝ᵥ D.autonomousMatrix.mulVec u -
        (D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u)) ⬝ᵥ
          D.crossMatrix.mulVec u := by
  rw [← D.schur_eq_matrix_coordinates u u]
  exact D.blockSchurSolver.schurForm_nonnegative u

/-- The pure autonomous block energy decomposes into explained provenance energy
plus the positive matrix Schur residual. -/
theorem matrix_autonomous_energy_decomposition
    (D : MatrixBlockRealization G) (u : κ → ℝ) :
    u ⬝ᵥ D.autonomousMatrix.mulVec u =
      (D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u)) ⬝ᵥ
          D.crossMatrix.mulVec u +
        D.blockSchurSolver.schurForm.form u u := by
  linarith [D.schur_eq_matrix_coordinates u u]

end MatrixBlockRealization

end FormalResearch.PositiveAtlas
```
