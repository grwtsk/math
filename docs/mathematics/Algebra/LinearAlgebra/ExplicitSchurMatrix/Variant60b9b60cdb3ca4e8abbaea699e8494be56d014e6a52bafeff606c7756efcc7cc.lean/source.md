# Complete source: GRWTSK.Algebra.LinearAlgebra.ExplicitSchurMatrix.Variant60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fb912699b30bf6d9d0f7435247a4870ed689f9eb` · SHA-256 `60b9b60cdb3ca4e8abbaea699e8494be56d014e6a52bafeff606c7756efcc7cc`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.MatrixBlockSchur
import Mathlib.LinearAlgebra.Matrix.Symmetric

/-!
# Explicit Schur matrix

This module normalizes the matrix-coordinate Positive Atlas residual into the
conventional Schur matrix

  C - Bᵀ Ainv B.

The ambient PositiveForm is symmetric, so the compatible provenance matrix A is
symmetric. A two-sided inverse of A is therefore symmetric as well. This closes
the final transpose issue in the coordinate residual from MatrixBlockSchur and
identifies the positive residual form with the conventional Schur matrix.
-/

namespace FormalResearch.PositiveAtlas

universe u v

variable {ι : Type u} {κ : Type v}
variable [Fintype ι] [DecidableEq ι]
variable [Fintype κ] [DecidableEq κ]

namespace MatrixBlockRealization

variable {G : PositiveForm ((ι → ℝ) × (κ → ℝ))}

/-- Compatibility with a symmetric ambient positive form forces the provenance
matrix to be symmetric. -/
theorem provenanceMatrix_isSymm (D : MatrixBlockRealization G) :
    D.provenanceMatrix.IsSymm := by
  apply Matrix.IsSymm.ext
  intro i j
  let ei : ι → ℝ := Pi.single i 1
  let ej : ι → ℝ := Pi.single j 1
  have h :=
    G.symmetric (provenanceInclusion ei) (provenanceInclusion ej)
  rw [D.provenance_block, D.provenance_block] at h
  simp [ei, ej, Matrix.mulVec_single_one] at h
  exact h.symm

/-- A two-sided inverse of the symmetric provenance matrix is symmetric. -/
theorem inverseProvenanceMatrix_isSymm (D : MatrixBlockRealization G) :
    D.inverseProvenanceMatrix.IsSymm := by
  show D.inverseProvenanceMatrix.transpose = D.inverseProvenanceMatrix
  have hleft :
      D.inverseProvenanceMatrix.transpose * D.provenanceMatrix = 1 := by
    calc
      D.inverseProvenanceMatrix.transpose * D.provenanceMatrix =
          D.inverseProvenanceMatrix.transpose * D.provenanceMatrix.transpose := by
            rw [D.provenanceMatrix_isSymm.eq]
      _ = (D.provenanceMatrix * D.inverseProvenanceMatrix).transpose := by
            rw [Matrix.transpose_mul]
      _ = 1 := by
            rw [D.mul_inverse]
            simp
  calc
    D.inverseProvenanceMatrix.transpose =
        D.inverseProvenanceMatrix.transpose * 1 := by simp
    _ =
        D.inverseProvenanceMatrix.transpose *
          (D.provenanceMatrix * D.inverseProvenanceMatrix) := by
            rw [D.mul_inverse]
    _ =
        (D.inverseProvenanceMatrix.transpose * D.provenanceMatrix) *
          D.inverseProvenanceMatrix := by
            rw [Matrix.mul_assoc]
    _ = D.inverseProvenanceMatrix := by
          rw [hleft]
          simp

/-- The conventional explicit Schur matrix. -/
def schurMatrix (D : MatrixBlockRealization G) : Matrix κ κ ℝ :=
  D.autonomousMatrix -
    D.crossMatrix.transpose * D.inverseProvenanceMatrix * D.crossMatrix

/-- The matrix correction term agrees exactly with the provenance-energy term
used by the previously formalized coordinate Schur residual. -/
theorem schurCorrection_pairing
    (D : MatrixBlockRealization G) (u v : κ → ℝ) :
    u ⬝ᵥ
        (D.crossMatrix.transpose * D.inverseProvenanceMatrix *
          D.crossMatrix).mulVec v =
      (D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u)) ⬝ᵥ
        D.crossMatrix.mulVec v := by
  rw [Matrix.mulVec_mulVec, Matrix.mulVec_mulVec]
  rw [Matrix.dotProduct_transpose_mulVec]
  rw [dotProduct_comm]
  rw [D.inverseProvenanceMatrix_isSymm.dotProduct_mulVec_comm]
  rw [dotProduct_comm]

/-- The abstract positive residual form is exactly the bilinear form represented
by the conventional Schur matrix. -/
theorem schurForm_eq_schurMatrix
    (D : MatrixBlockRealization G) (u v : κ → ℝ) :
    D.blockSchurSolver.schurForm.form u v =
      u ⬝ᵥ D.schurMatrix.mulVec v := by
  rw [D.schur_eq_matrix_coordinates]
  rw [schurMatrix, Matrix.sub_mulVec, dotProduct_sub]
  rw [D.schurCorrection_pairing]

/-- The conventional Schur matrix is positive semidefinite as a quadratic form. -/
theorem schurMatrix_nonnegative
    (D : MatrixBlockRealization G) (u : κ → ℝ) :
    0 ≤ u ⬝ᵥ D.schurMatrix.mulVec u := by
  rw [← D.schurForm_eq_schurMatrix u u]
  exact D.blockSchurSolver.schurForm_nonnegative u

/-- The autonomous block energy decomposes into the explained provenance energy
and the conventional Schur-matrix residual. -/
theorem autonomous_energy_eq_explained_add_schurMatrix
    (D : MatrixBlockRealization G) (u : κ → ℝ) :
    u ⬝ᵥ D.autonomousMatrix.mulVec u =
      (D.inverseProvenanceMatrix.mulVec (D.crossMatrix.mulVec u)) ⬝ᵥ
          D.crossMatrix.mulVec u +
        u ⬝ᵥ D.schurMatrix.mulVec u := by
  rw [← D.schurForm_eq_schurMatrix u u]
  exact D.matrix_autonomous_energy_decomposition u

end MatrixBlockRealization

end FormalResearch.PositiveAtlas
```
