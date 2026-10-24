# Complete source: GRWTSK.Algebra.LinearAlgebra.SpectralObservation.Variantbfeec00a7d289297f0735d2fc212a24c2e3e445e7abbae2e739972388ad75ef0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7b6acbfb6dde82a529570e38c27fc074cde32e21` · SHA-256 `7cf8432b2fb1b96552ad93880292dfaf24eb6b21200ebc7aa935cc66fce1afc7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.FeatureGram.Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.FeatureGram.Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/pr151-repair-20260921T175258Z/candidate-snapshots/c2165bf58cfe7079ba78bd7f98623fb758d0d84525c0918f1eba27105e3dba85/FormalResearch/SUCAS/SpectralObservation.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Mathlib.LinearAlgebra.Matrix.PosDef
import Mathlib.LinearAlgebra.Matrix.Rank
import Mathlib.Analysis.Complex.Basic

/-!
# Finite Gram observations

Every positive channel factors through one common finite feature matrix.
Signed analytic channels are not Gram channels. No analytic exponential is
replaced by a rational number in these statements.
-/


namespace GRWTSK.Algebra.LinearAlgebra.FeatureGram.Variant5944dcae4eed91360b332bf114d4d6e248544625f98e1ab4d0041fe5b381dc38

namespace FormalResearch.SUCAS.SpectralObservation

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

end FormalResearch.SUCAS.SpectralObservation
```
