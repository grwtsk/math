# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIso.Variante9f72bc7c1fb372bb338e4b4edc1819b94fb2bf25fe7d5ccc61632a0f0125f4e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9bbd9919b077771add1d61d9fb3ff193202a21d8` · SHA-256 `64107d3fe489f1a7c026f1f825b217e551e9eb98e6b0b386632df6b144b2b743`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIsoInv.Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"cb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.OrderIsoInv.Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8","mathematical_subject":"Algebra.OrderTheory","original_sha256":"cb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/mathlib/Mathlib/Algebra/Order/Group/OrderIso.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
import Mathlib.Algebra.Order.Group.Defs
import Mathlib.Algebra.Hom.Equiv.Units.Basic


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIsoInv.Variantcb27535886cb5890b3b6ed8b14ad100418315ba8fb0d5d3d602f00add2b580b8

#align_import algebra.order.group.order_iso from "leanprover-community/mathlib"@"6632ca2081e55ff5cf228ca63011979a0efb495b"

/-!
# Inverse and multiplication as order isomorphisms in ordered groups

-/

open Function

universe u

variable {α : Type u}

section Group

variable [Group α]

section TypeclassesLeftRightLE

variable [LE α] [CovariantClass α α (· * ·) (· ≤ ·)] [CovariantClass α α (swap (· * ·)) (· ≤ ·)]
  {a b c d : α}

section

variable (α)

/-- `x ↦ x⁻¹` as an order-reversing equivalence. -/
@[to_additive (attr := simps!) "`x ↦ -x` as an order-reversing equivalence."]
def OrderIso.inv : α ≃o αᵒᵈ where
  toEquiv := (Equiv.inv α).trans OrderDual.toDual
  map_rel_iff' {_ _} := @inv_le_inv_iff α _ _ _ _ _ _
#align order_iso.inv OrderIso.inv
#align order_iso.neg OrderIso.neg
#align order_iso.inv_apply OrderIso.inv_apply
#align order_iso.inv_symm_apply OrderIso.inv_symm_apply

end

@[to_additive neg_le]
theorem inv_le' : a⁻¹ ≤ b ↔ b⁻¹ ≤ a :=
  (OrderIso.inv α).symm_apply_le
#align inv_le' inv_le'
#align neg_le neg_le

alias ⟨inv_le_of_inv_le', _⟩ := inv_le'
#align inv_le_of_inv_le' inv_le_of_inv_le'

attribute [to_additive neg_le_of_neg_le] inv_le_of_inv_le'
#align neg_le_of_neg_le neg_le_of_neg_le

@[to_additive le_neg]
theorem le_inv' : a ≤ b⁻¹ ↔ b ≤ a⁻¹ :=
  (OrderIso.inv α).le_symm_apply
#align le_inv' le_inv'
#align le_neg le_neg

/-- `x ↦ a / x` as an order-reversing equivalence. -/
@[to_additive (attr := simps!) "`x ↦ a - x` as an order-reversing equivalence."]
def OrderIso.divLeft (a : α) : α ≃o αᵒᵈ where
  toEquiv := (Equiv.divLeft a).trans OrderDual.toDual
  map_rel_iff' {_ _} := @div_le_div_iff_left α _ _ _ _ _ _ _
#align order_iso.div_left OrderIso.divLeft
#align order_iso.sub_left OrderIso.subLeft

end TypeclassesLeftRightLE

end Group

alias ⟨le_inv_of_le_inv, _⟩ := le_inv'
#align le_inv_of_le_inv le_inv_of_le_inv

attribute [to_additive] le_inv_of_le_inv
#align le_neg_of_le_neg le_neg_of_le_neg

section Group

variable [Group α] [LE α]

section Right

variable [CovariantClass α α (swap (· * ·)) (· ≤ ·)] {a b c d : α}

/-- `Equiv.mulRight` as an `OrderIso`. See also `OrderEmbedding.mulRight`. -/
@[to_additive (attr := simps! (config := { simpRhs := true }) toEquiv apply)
  "`Equiv.addRight` as an `OrderIso`. See also `OrderEmbedding.addRight`."]
def OrderIso.mulRight (a : α) : α ≃o α where
  map_rel_iff' {_ _} := mul_le_mul_iff_right a
  toEquiv := Equiv.mulRight a
#align order_iso.mul_right OrderIso.mulRight
#align order_iso.add_right OrderIso.addRight
#align order_iso.mul_right_apply OrderIso.mulRight_apply
#align order_iso.mul_right_to_equiv OrderIso.mulRight_toEquiv

@[to_additive (attr := simp)]
theorem OrderIso.mulRight_symm (a : α) : (OrderIso.mulRight a).symm = OrderIso.mulRight a⁻¹ := by
  ext x
  rfl
#align order_iso.mul_right_symm OrderIso.mulRight_symm
#align order_iso.add_right_symm OrderIso.addRight_symm

/-- `x ↦ x / a` as an order isomorphism. -/
@[to_additive (attr := simps!) "`x ↦ x - a` as an order isomorphism."]
def OrderIso.divRight (a : α) : α ≃o α where
  toEquiv := Equiv.divRight a
  map_rel_iff' {_ _} := div_le_div_iff_right a
#align order_iso.div_right OrderIso.divRight
#align order_iso.sub_right OrderIso.subRight

end Right

section Left

variable [CovariantClass α α (· * ·) (· ≤ ·)]

/-- `Equiv.mulLeft` as an `OrderIso`. See also `OrderEmbedding.mulLeft`. -/
@[to_additive (attr := simps! (config := { simpRhs := true }) toEquiv apply)
  "`Equiv.addLeft` as an `OrderIso`. See also `OrderEmbedding.addLeft`."]
def OrderIso.mulLeft (a : α) : α ≃o α where
  map_rel_iff' {_ _} := mul_le_mul_iff_left a
  toEquiv := Equiv.mulLeft a
#align order_iso.mul_left OrderIso.mulLeft
#align order_iso.add_left OrderIso.addLeft
#align order_iso.mul_left_apply OrderIso.mulLeft_apply
#align order_iso.add_left_apply OrderIso.addLeft_apply
#align order_iso.add_left_to_equiv OrderIso.addLeft_toEquiv

@[to_additive (attr := simp)]
theorem OrderIso.mulLeft_symm (a : α) : (OrderIso.mulLeft a).symm = OrderIso.mulLeft a⁻¹ := by
  ext x
  rfl
#align order_iso.mul_left_symm OrderIso.mulLeft_symm
#align order_iso.add_left_symm OrderIso.addLeft_symm

end Left

end Group
```
