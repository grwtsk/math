-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.LinearAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.LinearAlgebra.UniqueEquiv.Variantb01056463ee9c49d0a5c279153290fc8264dde8273cb3f8aaf6ee5f022a478e5","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b01056463ee9c49d0a5c279153290fc8264dde8273cb3f8aaf6ee5f022a478e5","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.LinearAlgebra.SourceCorpus.UniqueEquiv.Variantb01056463ee9c49d0a5c279153290fc8264dde8273cb3f8aaf6ee5f022a478e5","mathematical_subject":"Algebra.LinearAlgebra","original_sha256":"b01056463ee9c49d0a5c279153290fc8264dde8273cb3f8aaf6ee5f022a478e5","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/LinearAlgebra/Matrix/Unique.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Yunzhou Xie. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yunzhou Xie
-/
import Mathlib.Data.Matrix.Basic

/-!
# One by one matrices

This file proves that one by one matrices over a base are equivalent to the base itself under the
canonical map that sends a one by one matrix `!![a]` to `a`.

## Main results
- `Matrix.uniqueRingEquiv`
- `Matrix.uniqueAlgEquiv`

## Tags
Matrix, Unique, AlgEquiv
-/


namespace GRWTSK.Algebra.LinearAlgebra.UniqueEquiv.Variantb01056463ee9c49d0a5c279153290fc8264dde8273cb3f8aaf6ee5f022a478e5

namespace Matrix

variable {m n A R : Type*} [Unique m] [Unique n]

/-- The isomorphism between the type of all one by one matrices and the base type. -/
@[simps]
def uniqueEquiv : Matrix m n A ≃ A where
  toFun M := M default default
  invFun a := .of fun _ _ => a
  left_inv M := by ext i j; simp [Subsingleton.elim i default, Subsingleton.elim j default]
  right_inv a := by simp

/-- The obvious additive isomorphism between M₁(A) and A, if A has an addition. -/
@[simps!]
def uniqueAddEquiv [Add A] : Matrix m n A ≃+ A where
  __ := uniqueEquiv
  map_add' := by simp

/-- `M₁(A)` is linearly equivalent to `A` as an `R`-module where `R` is a semiring. -/
@[simps]
def uniqueLinearEquiv [Semiring R] [AddCommMonoid A] [Module R A] : Matrix m n A ≃ₗ[R] A where
  __ := uniqueAddEquiv
  map_smul' := by simp

/-- `M₁(A)` and `A` are equivalent as rings. -/
@[simps!]
def uniqueRingEquiv [NonUnitalNonAssocSemiring A] : Matrix m m A ≃+* A where
  __ := uniqueAddEquiv
  map_mul' := by simp [mul_apply]

/-- `M₁(A)` is equivalent to `A` as an `R`-algebra. -/
@[simps!]
def uniqueAlgEquiv [Semiring A] [CommSemiring R] [Algebra R A] : Matrix m m A ≃ₐ[R] A where
  __ := uniqueRingEquiv
  commutes' r := by aesop

end Matrix
