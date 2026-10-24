# Complete source: GRWTSK.Algebra.LinearAlgebra.SpectralObservation.Variantc30f24bd41e86269ae9efb5b98ca61870785fead31bb36afd25ae145c6ec0603

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `397ebf7b662590f51280ad43c3b464a6079444dd` · SHA-256 `c30f24bd41e86269ae9efb5b98ca61870785fead31bb36afd25ae145c6ec0603`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Rank
import Mathlib.Analysis.Complex.Basic

/-!
# Finite Gram observations

Every positive channel factors through one common finite feature matrix.
Signed analytic channels are not Gram channels. No analytic exponential is
replaced by a rational number in these statements.
-/

namespace FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SpectralObservation

open Matrix
open scoped Matrix ComplexOrder BigOperators

variable {m n : Type*} [Fintype m] [Fintype n]

/-- The finite feature Gram matrix, over an explicitly chosen star semiring. -/
def featureGram {R : Type*} [Semiring R] [StarRing R] (F : Matrix m n R) : Matrix n n R :=
  Fᴴ * F

/-- Exact complex norm-square identity for the quadratic form of a feature Gram matrix. -/
theorem complex_gram_norm_square (F : Matrix m n ℂ) (v : n → ℂ) :
    star v ⬝ᵥ (featureGram F *ᵥ v) = ∑ k, (Complex.normSq ((F *ᵥ v) k) : ℂ) := by
  rw [featureGram, ← mulVec_mulVec, dotProduct_mulVec, vecMul_conjTranspose, star_star]
  simp only [dotProduct, Pi.star_apply, Complex.normSq_eq_conj_mul_self]
  rfl

/-- The same finite identity specializes to a sum of real squares. -/
theorem real_gram_sum_squares (F : Matrix m n ℝ) (v : n → ℝ) :
    v ⬝ᵥ (featureGram F *ᵥ v) = ∑ k, ((F *ᵥ v) k) ^ 2 := by
  change star v ⬝ᵥ (featureGram F *ᵥ v) = _
  rw [featureGram, ← mulVec_mulVec, dotProduct_mulVec, vecMul_conjTranspose, star_star]
  simp [dotProduct, pow_two]

omit [Fintype n] in
variable [Finite n] in
/-- Complex feature Gram matrices are positive semidefinite in Mathlib's exact order. -/
theorem complex_gram_posSemidef (F : Matrix m n ℂ) : (featureGram F).PosSemidef :=
  posSemidef_conjTranspose_mul_self F

omit [Fintype n] in
variable [Finite n] in
/-- Real feature Gram matrices are positive semidefinite. -/
theorem real_gram_posSemidef (F : Matrix m n ℝ) : (featureGram F).PosSemidef :=
  posSemidef_conjTranspose_mul_self F

/-- Complex finite Gram rank cannot exceed the common feature dimension. -/
theorem complex_gram_rank_bound (F : Matrix m n ℂ) :
    (featureGram F).rank ≤ Fintype.card m :=
  (rank_mul_le_left Fᴴ F).trans (rank_le_card_width Fᴴ)

/-- Real finite Gram rank cannot exceed the common feature dimension. -/
theorem real_gram_rank_bound (F : Matrix m n ℝ) :
    (featureGram F).rank ≤ Fintype.card m :=
  (rank_mul_le_left Fᴴ F).trans (rank_le_card_width Fᴴ)

end FormalResearch.SpectralUnificationOfComputabilityAndAlgebraicSymmetry.SpectralObservation
```
