# Complete source: GRWTSK.Algebra.LinearAlgebra.FeshbachHermitian.Variant86ebac8e4ba4f96aecb4932f204c5b6ac94c52c4222ad8303b22446ec0f38247

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5d2fac555622f683416ecb7e52128b71ec7f4362` · SHA-256 `646964f043b7fa1818f015b9c1ea0a281e28e61baf4b20df1a3b76fd4f51646b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.CompletionOfSquares.Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.CompletionOfSquares.Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/scratch/continuous-research-01a109fc/pass15/feshbach_review/pr267-source/FormalResearch/PositiveAtlas/FeshbachHermitian.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import FormalResearch.PositiveAtlas.FeshbachReconstruction
import Mathlib.LinearAlgebra.Matrix.PosDef

/-!
# Hermitian Feshbach sign transport

This module adapts Mathlib's exact Schur identities to the retained-first packet
`H = [[A, Cᴴ], [C, B]]` and the inverse convention `⅟B` used by the finite
reconstruction layer. The complement is explicitly invertible. Completion of
squares needs Hermitian `B`; the positivity equivalence additionally needs
positive definite `B`. No positivity premise is imposed on the full packet.

The identities preserve the Schur center `A - Cᴴ * ⅟B * C`. They transport sign
and do not establish positivity of a source-specific center, an all-scale bound,
or an infinite-dimensional spectral gap. The adapters are authored by the Codex
AI assistant; their mathematical proofs reuse the pinned Mathlib theorems.
-/


namespace GRWTSK.Algebra.LinearAlgebra.CompletionOfSquares.Variant6fbe205d4fc00e6d093cd8091ac2e23002577eaa2f59c43c42ed73819f3fdbf6

namespace FormalResearch.PositiveAtlas.FeshbachHermitian

open Matrix

variable {m n α : Type*}
variable [Fintype m] [Fintype n] [DecidableEq n]
variable [CommRing α] [StarRing α]

/-- Exact completion of squares for a retained-first Hermitian block packet.
Only the complementary block must be Hermitian and invertible for this algebraic
identity. Both the cross-block conjugation and the inverse are explicit. -/
theorem completion_of_squares
    (A : Matrix m m α) (C : Matrix n m α) (B : Matrix n n α)
    [Invertible B] (hB : B.IsHermitian) (x : m → α) (y : n → α) :
    star (Sum.elim x y) ⬝ᵥ (Matrix.fromBlocks A Cᴴ C B).mulVec (Sum.elim x y) =
      star x ⬝ᵥ (Feshbach.schur A Cᴴ C B).mulVec x +
        star (y + (⅟B * C).mulVec x) ⬝ᵥ B.mulVec (y + (⅟B * C).mulVec x) := by
  simpa only [Feshbach.schur, Matrix.conjTranspose_conjTranspose, Matrix.invOf_eq_nonsing_inv,
    Matrix.dotProduct_mulVec, add_comm] using
    Matrix.schur_complement_eq₂₂ A Cᴴ x y hB

omit [Fintype m] in
/-- The full block packet is Hermitian exactly when its Schur center is
Hermitian, provided that the complementary block is Hermitian. -/
theorem isHermitian_iff
    (A : Matrix m m α) (C : Matrix n m α) (B : Matrix n n α)
    [Invertible B] (hB : B.IsHermitian) :
    (Matrix.fromBlocks A Cᴴ C B).IsHermitian ↔
      (Feshbach.schur A Cᴴ C B).IsHermitian := by
  simpa only [Feshbach.schur, Matrix.conjTranspose_conjTranspose,
    Matrix.invOf_eq_nonsing_inv] using
    Matrix.IsHermitian.fromBlocks₂₂ A Cᴴ hB

section Positivity

variable [PartialOrder α] [StarOrderedRing α]

omit [Fintype m] in
variable [Finite m] in
/-- Positive definite complement blocks preserve, rather than create, the
positive semidefinite sign of the exact Schur center. -/
theorem posSemidef_iff
    (A : Matrix m m α) (C : Matrix n m α) (B : Matrix n n α)
    [Invertible B] (hB : B.PosDef) :
    (Matrix.fromBlocks A Cᴴ C B).PosSemidef ↔
      (Feshbach.schur A Cᴴ C B).PosSemidef := by
  let _ := Fintype.ofFinite m
  simpa only [Feshbach.schur, Matrix.conjTranspose_conjTranspose,
    Matrix.invOf_eq_nonsing_inv] using
    Matrix.PosDef.fromBlocks₂₂ A Cᴴ hB

end Positivity

end FormalResearch.PositiveAtlas.FeshbachHermitian
```
