-- corpus-organization-transform:v1
-- Mathematical subject: Algebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.IsField.Variantb82cff952f81abd7ebac0e65ea02ebfae09b09b5115443f2b99393136fc0f4de","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"b82cff952f81abd7ebac0e65ea02ebfae09b09b5115443f2b99393136fc0f4de","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.RingsAndFields.SourceCorpus.IsField.Variantb82cff952f81abd7ebac0e65ea02ebfae09b09b5115443f2b99393136fc0f4de","mathematical_subject":"Algebra.RingsAndFields","original_sha256":"b82cff952f81abd7ebac0e65ea02ebfae09b09b5115443f2b99393136fc0f4de","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Field/Equiv.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2023 Junyan Xu. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Junyan Xu
-/
import Mathlib.Algebra.Field.IsField
import Mathlib.Algebra.GroupWithZero.Equiv

/-!
# If a semiring is a field, any isomorphic semiring is also a field.

This is in a separate file to avoiding need to import `Field` in `Mathlib/Algebra/Ring/Equiv/.lean`
-/


namespace GRWTSK.Algebra.IsField.Variantb82cff952f81abd7ebac0e65ea02ebfae09b09b5115443f2b99393136fc0f4de

namespace MulEquiv

protected theorem isField {A : Type*} (B : Type*) [Semiring A] [Semiring B] (hB : IsField B)
    (e : A ≃* B) : IsField A where
  exists_pair_ne := have ⟨x, y, h⟩ := hB.exists_pair_ne; ⟨e.symm x, e.symm y, e.symm.injective.ne h⟩
  mul_comm := fun x y => e.injective <| by rw [map_mul, map_mul, hB.mul_comm]
  mul_inv_cancel := fun h => by
    obtain ⟨a', he⟩ := hB.mul_inv_cancel ((e.injective.ne h).trans_eq <| map_zero e)
    exact ⟨e.symm a', e.injective <| by rw [map_mul, map_one, e.apply_symm_apply, he]⟩

end MulEquiv
