-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.Opposite.Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.Opposite.Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"e9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Group/Opposite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
import Mathlib.Algebra.Group.Opposite
import Mathlib.Algebra.Order.Monoid.Defs

/-!
# Order instances for `MulOpposite`/`AddOpposite`

This files transfers order instances and ordered monoid/group instances from `α` to `αᵐᵒᵖ` and
`αᵃᵒᵖ`.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.Opposite.Variante9f688eb33f4b0bdaaaf04c68bd825f2d90f51febad860c471285690f36ad79c

variable {α : Type*}

namespace MulOpposite
section Preorder
variable [Preorder α]

@[to_additive] instance : Preorder αᵐᵒᵖ := Preorder.lift unop

@[to_additive (attr := simp)] lemma unop_le_unop {a b : αᵐᵒᵖ} : a.unop ≤ b.unop ↔ a ≤ b := .rfl
@[to_additive (attr := simp)] lemma op_le_op {a b : α} : op a ≤ op b ↔ a ≤ b := .rfl

end Preorder

@[to_additive] instance [PartialOrder α] : PartialOrder αᵐᵒᵖ := PartialOrder.lift _ unop_injective

section OrderedCommMonoid
variable [CommMonoid α] [PartialOrder α]

@[to_additive] instance [IsOrderedMonoid α] : IsOrderedMonoid αᵐᵒᵖ where
  mul_le_mul_left a b hab c := mul_le_mul_right' (by simpa) c.unop

@[to_additive (attr := simp)] lemma unop_le_one {a : αᵐᵒᵖ} : unop a ≤ 1 ↔ a ≤ 1 := .rfl
@[to_additive (attr := simp)] lemma one_le_unop {a : αᵐᵒᵖ} : 1 ≤ unop a ↔ 1 ≤ a := .rfl
@[to_additive (attr := simp)] lemma op_le_one {a : α} : op a ≤ 1 ↔ a ≤ 1 := .rfl
@[to_additive (attr := simp)] lemma one_le_op {a : α} : 1 ≤ op a ↔ 1 ≤ a := .rfl

end OrderedCommMonoid

section OrderedAddCommMonoid
variable [AddCommMonoid α] [PartialOrder α]

instance [IsOrderedAddMonoid α] : IsOrderedAddMonoid αᵐᵒᵖ where
  add_le_add_left a b hab c := add_le_add_left (by simpa) c.unop

@[simp] lemma unop_nonpos {a : αᵐᵒᵖ} : unop a ≤ 0 ↔ a ≤ 0 := .rfl
@[simp] lemma unop_nonneg {a : αᵐᵒᵖ} : 0 ≤ unop a ↔ 0 ≤ a := .rfl
@[simp] lemma op_nonpos {a : α} : op a ≤ 0 ↔ a ≤ 0 := .rfl
@[simp] lemma op_nonneg {a : α} : 0 ≤ op a ↔ 0 ≤ a := .rfl

end OrderedAddCommMonoid

end MulOpposite

namespace AddOpposite
section OrderedCommMonoid
variable [CommMonoid α] [PartialOrder α]

instance [IsOrderedMonoid α] : IsOrderedMonoid αᵃᵒᵖ where
  mul_le_mul_left a b hab c := mul_le_mul_left' (by simpa) c.unop

@[simp] lemma unop_le_one {a : αᵃᵒᵖ} : unop a ≤ 1 ↔ a ≤ 1 := .rfl
@[simp] lemma one_le_unop {a : αᵃᵒᵖ} : 1 ≤ unop a ↔ 1 ≤ a := .rfl
@[simp] lemma op_le_one {a : α} : op a ≤ 1 ↔ a ≤ 1 := .rfl
@[simp] lemma one_le_op {a : α} : 1 ≤ op a ↔ 1 ≤ a := .rfl

end OrderedCommMonoid

end AddOpposite
