# Complete source: GRWTSK.Algebra.LinearAlgebra.PositiveLift.Varianta7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `561e649f5b6c5854d9a8bba1047a7cd94c90b8fd` · SHA-256 `a7568422408230c1ce736695e9385b4e642456f5d835b75ceea7a7e4e6761139`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import FormalResearch.PositiveAtlas.Grassmannian.FiniteCauchyBinet

/-!
# Finite positive lifts through rectangular Cauchy--Binet

This module isolates the algebra used by source-specific positive lifts.  A
rectangular factorization does not become positive by taking absolute values:
the increasing minors of the left and right factors must have compatible signs.

The theorem below is finite and exact.  Continuous Andreief identities and
source-specific sign regularity remain separate analytic obligations.
-/

namespace FormalResearch.PositiveAtlas.Grassmannian.PositiveLift

open FormalResearch.PositiveAtlas.Grassmannian.Toeplitz

noncomputable section

/-- Increasing maximal minors of a rectangular left factor are nonnegative. -/
def LeftOrderedNonnegative {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ) : Prop :=
  ∀ I : Fin k ↪o Fin N, 0 ≤ Matrix.det (A.submatrix id I)

/-- Increasing maximal minors of a rectangular right factor are nonnegative. -/
def RightOrderedNonnegative {k N : ℕ}
    (B : Matrix (Fin N) (Fin k) ℝ) : Prop :=
  ∀ I : Fin k ↪o Fin N, 0 ≤ Matrix.det (B.submatrix I id)

/-- Rectangular Cauchy--Binet is a positive lift when both ordered-minor
families have compatible nonnegative orientation. -/
theorem det_mul_nonnegative {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ)
    (B : Matrix (Fin N) (Fin k) ℝ)
    (hA : LeftOrderedNonnegative A)
    (hB : RightOrderedNonnegative B) :
    0 ≤ Matrix.det (A * B) := by
  have hs :
      0 ≤ ∑ f : Fin k → Fin N,
        Matrix.det (A.submatrix id f) *
          Matrix.det (B.submatrix f id) := by
    apply Finset.sum_nonneg
    intro f _hf
    exact intermediate_product_nonnegative A B hA hB f
  rw [← cauchyBinet_all_functions] at hs
  exact
    (mul_nonneg_iff_of_pos_left
      (by positivity : 0 < (k.factorial : ℝ))).mp hs

/-- The finite lifted matrix before any determinant is taken. -/
def matrix {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ)
    (B : Matrix (Fin N) (Fin k) ℝ) :
    Matrix (Fin k) (Fin k) ℝ :=
  A * B

/-- The named finite-lift wrapper exposes exactly the preceding theorem. -/
theorem matrix_det_nonnegative {k N : ℕ}
    (A : Matrix (Fin k) (Fin N) ℝ)
    (B : Matrix (Fin N) (Fin k) ℝ)
    (hA : LeftOrderedNonnegative A)
    (hB : RightOrderedNonnegative B) :
    0 ≤ Matrix.det (matrix A B) := by
  exact det_mul_nonnegative A B hA hB

end

end FormalResearch.PositiveAtlas.Grassmannian.PositiveLift
```
