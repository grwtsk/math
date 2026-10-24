# Complete source: GRWTSK.Algebra.LinearAlgebra.Symmetric.Variant2244cef7db1f7e726a9df0de9f4ce21fa100fd23d31ae490e333b59145ecef61

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `60a2d288b1f8b8a4337e6b0511b303acff849f95` · SHA-256 `7ba39ec86b8d8e141d191e73f80813f26a1256253ea9cc375b804fe4f6cb97b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.IsSymm.Variant7d24c3c5779b1da4dc0d9d72da419432ae751371e7df16a0f1ab7b601c1c54e7","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7d24c3c5779b1da4dc0d9d72da419432ae751371e7df16a0f1ab7b601c1c54e7","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.IsSymm.Variant7d24c3c5779b1da4dc0d9d72da419432ae751371e7df16a0f1ab7b601c1c54e7","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"7d24c3c5779b1da4dc0d9d72da419432ae751371e7df16a0f1ab7b601c1c54e7","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Matrix/Symmetric.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Lu-Ming Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lu-Ming Zhang
-/
import Mathlib.Data.Matrix.Basic
import Mathlib.Data.Matrix.Block

/-!
# Symmetric matrices

This file contains the definition and basic results about symmetric matrices.

## Main definition

* `Matrix.isSymm`: a matrix `A : Matrix n n α` is "symmetric" if `Aᵀ = A`.

## Tags

symm, symmetric, matrix
-/



namespace GRWTSK.Algebra.LinearAlgebra.IsSymm.Variant7d24c3c5779b1da4dc0d9d72da419432ae751371e7df16a0f1ab7b601c1c54e7

variable {α β n m R : Type*}

namespace Matrix

/-- A matrix `A : Matrix n n α` is "symmetric" if `Aᵀ = A`. -/
def IsSymm (A : Matrix n n α) : Prop :=
  Aᵀ = A

instance (A : Matrix n n α) [Decidable (Aᵀ = A)] : Decidable (IsSymm A) :=
  inferInstanceAs <| Decidable (_ = _)

theorem IsSymm.eq {A : Matrix n n α} (h : A.IsSymm) : Aᵀ = A :=
  h

/-- A version of `Matrix.ext_iff` that unfolds the `Matrix.transpose`. -/
theorem IsSymm.ext_iff {A : Matrix n n α} : A.IsSymm ↔ ∀ i j, A j i = A i j :=
  Matrix.ext_iff.symm

/-- A version of `Matrix.ext` that unfolds the `Matrix.transpose`. -/
theorem IsSymm.ext {A : Matrix n n α} : (∀ i j, A j i = A i j) → A.IsSymm :=
  Matrix.ext

theorem IsSymm.apply {A : Matrix n n α} (h : A.IsSymm) (i j : n) : A j i = A i j :=
  IsSymm.ext_iff.1 h i j

theorem isSymm_mul_transpose_self [Fintype n] [NonUnitalCommSemiring α] (A : Matrix n n α) :
    (A * Aᵀ).IsSymm :=
  transpose_mul _ _

theorem isSymm_transpose_mul_self [Fintype n] [NonUnitalCommSemiring α] (A : Matrix n n α) :
    (Aᵀ * A).IsSymm :=
  transpose_mul _ _

theorem isSymm_add_transpose_self [AddCommSemigroup α] (A : Matrix n n α) : (A + Aᵀ).IsSymm :=
  add_comm _ _

theorem isSymm_transpose_add_self [AddCommSemigroup α] (A : Matrix n n α) : (Aᵀ + A).IsSymm :=
  add_comm _ _

@[simp]
theorem isSymm_zero [Zero α] : (0 : Matrix n n α).IsSymm :=
  transpose_zero

@[simp]
theorem isSymm_one [DecidableEq n] [Zero α] [One α] : (1 : Matrix n n α).IsSymm :=
  transpose_one

theorem IsSymm.pow [CommSemiring α] [Fintype n] [DecidableEq n] {A : Matrix n n α} (h : A.IsSymm)
    (k : ℕ) :
    (A ^ k).IsSymm := by
  rw [IsSymm, transpose_pow, h]

@[simp]
theorem IsSymm.map {A : Matrix n n α} (h : A.IsSymm) (f : α → β) : (A.map f).IsSymm :=
  transpose_map.symm.trans (h.symm ▸ rfl)

@[simp]
theorem IsSymm.transpose {A : Matrix n n α} (h : A.IsSymm) : Aᵀ.IsSymm :=
  congr_arg _ h

@[simp]
theorem IsSymm.conjTranspose [Star α] {A : Matrix n n α} (h : A.IsSymm) : Aᴴ.IsSymm :=
  h.transpose.map _

@[simp]
theorem IsSymm.neg [Neg α] {A : Matrix n n α} (h : A.IsSymm) : (-A).IsSymm :=
  (transpose_neg _).trans (congr_arg _ h)

@[simp]
theorem IsSymm.add {A B : Matrix n n α} [Add α] (hA : A.IsSymm) (hB : B.IsSymm) : (A + B).IsSymm :=
  (transpose_add _ _).trans (hA.symm ▸ hB.symm ▸ rfl)

@[simp]
theorem IsSymm.sub {A B : Matrix n n α} [Sub α] (hA : A.IsSymm) (hB : B.IsSymm) : (A - B).IsSymm :=
  (transpose_sub _ _).trans (hA.symm ▸ hB.symm ▸ rfl)

@[simp]
theorem IsSymm.smul [SMul R α] {A : Matrix n n α} (h : A.IsSymm) (k : R) : (k • A).IsSymm :=
  (transpose_smul _ _).trans (congr_arg _ h)

@[simp]
theorem IsSymm.submatrix {A : Matrix n n α} (h : A.IsSymm) (f : m → n) : (A.submatrix f f).IsSymm :=
  (transpose_submatrix _ _ _).trans (h.symm ▸ rfl)

/-- The diagonal matrix `diagonal v` is symmetric. -/
@[simp]
theorem isSymm_diagonal [DecidableEq n] [Zero α] (v : n → α) : (diagonal v).IsSymm :=
  diagonal_transpose _

/-- A block matrix `A.fromBlocks B C D` is symmetric,
    if `A` and `D` are symmetric and `Bᵀ = C`. -/
theorem IsSymm.fromBlocks {A : Matrix m m α} {B : Matrix m n α} {C : Matrix n m α}
    {D : Matrix n n α} (hA : A.IsSymm) (hBC : Bᵀ = C) (hD : D.IsSymm) :
    (A.fromBlocks B C D).IsSymm := by
  have hCB : Cᵀ = B := by
    rw [← hBC]
    simp
  unfold Matrix.IsSymm
  rw [fromBlocks_transpose, hA, hCB, hBC, hD]

/-- This is the `iff` version of `Matrix.isSymm.fromBlocks`. -/
theorem isSymm_fromBlocks_iff {A : Matrix m m α} {B : Matrix m n α} {C : Matrix n m α}
    {D : Matrix n n α} : (A.fromBlocks B C D).IsSymm ↔ A.IsSymm ∧ Bᵀ = C ∧ Cᵀ = B ∧ D.IsSymm :=
  ⟨fun h =>
    ⟨(congr_arg toBlocks₁₁ h :), (congr_arg toBlocks₂₁ h :), (congr_arg toBlocks₁₂ h :),
      (congr_arg toBlocks₂₂ h :)⟩,
    fun ⟨hA, hBC, _, hD⟩ => IsSymm.fromBlocks hA hBC hD⟩

end Matrix
```
