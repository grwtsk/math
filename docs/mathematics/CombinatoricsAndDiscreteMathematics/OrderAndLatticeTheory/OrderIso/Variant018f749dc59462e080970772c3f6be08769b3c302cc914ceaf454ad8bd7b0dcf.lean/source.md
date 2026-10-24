# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIso.Variant018f749dc59462e080970772c3f6be08769b3c302cc914ceaf454ad8bd7b0dcf

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `19e704a92ee1203280fc685a00d5eb521a05a34b` · SHA-256 `4f3f71219daba389668b2a72b41f85ea94253c57bd533de7f8faf5e96e67193a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIsoInv.Variantefa3df75c8d79b311b9ca86c65a964678955e60b1e98a020cc738196d4d92578","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"efa3df75c8d79b311b9ca86c65a964678955e60b1e98a020cc738196d4d92578","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.OrderTheory.SourceCorpus.OrderIsoInv.Variantefa3df75c8d79b311b9ca86c65a964678955e60b1e98a020cc738196d4d92578","mathematical_subject":"Algebra.OrderTheory","original_sha256":"efa3df75c8d79b311b9ca86c65a964678955e60b1e98a020cc738196d4d92578","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Group/OrderIso.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
module

public import Mathlib.Algebra.Group.Units.Equiv
public import Mathlib.Algebra.Order.Group.Unbundled.Basic
public import Mathlib.Order.Hom.Basic

/-!
# Inverse and multiplication as order isomorphisms in ordered groups

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.OrderAndLatticeTheory.OrderIsoInv.Variantefa3df75c8d79b311b9ca86c65a964678955e60b1e98a020cc738196d4d92578

@[expose] public section

universe u

variable {α : Type u}

section Group

variable [Group α]

section TypeclassesLeftRightLE

variable [LE α] [MulLeftMono α] [MulRightMono α] {a b : α}

section

variable (α)

/-- `x ↦ x⁻¹` as an order-reversing equivalence. -/
@[to_additive (attr := simps!) /-- `x ↦ -x` as an order-reversing equivalence. -/]
def OrderIso.inv : α ≃o αᵒᵈ where
  toEquiv := (Equiv.inv α).trans OrderDual.toDual
  map_rel_iff' {_ _} := inv_le_inv_iff (α := α)

end

@[to_additive neg_le]
theorem inv_le' : a⁻¹ ≤ b ↔ b⁻¹ ≤ a :=
  (OrderIso.inv α).symm_apply_le

alias ⟨inv_le_of_inv_le', _⟩ := inv_le'

attribute [to_additive neg_le_of_neg_le] inv_le_of_inv_le'

@[to_additive le_neg]
theorem le_inv' : a ≤ b⁻¹ ↔ b ≤ a⁻¹ :=
  (OrderIso.inv α).le_symm_apply

/-- `x ↦ a / x` as an order-reversing equivalence. -/
@[to_additive (attr := simps!) /-- `x ↦ a - x` as an order-reversing equivalence. -/]
def OrderIso.divLeft (a : α) : α ≃o αᵒᵈ where
  toEquiv := (Equiv.divLeft a).trans OrderDual.toDual
  map_rel_iff' {_ _} := div_le_div_iff_left (α := α) _

end TypeclassesLeftRightLE

end Group

alias ⟨le_inv_of_le_inv, _⟩ := le_inv'

attribute [to_additive] le_inv_of_le_inv

section Group

variable [Group α] [LE α]

section Right

variable [MulRightMono α] {a : α}

/-- `Equiv.mulRight` as an `OrderIso`. See also `OrderEmbedding.mulRight`. -/
@[to_additive (attr := simps! +simpRhs toEquiv apply)
  /-- `Equiv.addRight` as an `OrderIso`. See also `OrderEmbedding.addRight`. -/]
def OrderIso.mulRight (a : α) : α ≃o α where
  map_rel_iff' {_ _} := mul_le_mul_iff_right a
  toEquiv := Equiv.mulRight a

@[to_additive (attr := simp)]
theorem OrderIso.mulRight_symm (a : α) : (OrderIso.mulRight a).symm = OrderIso.mulRight a⁻¹ := by
  ext x
  rfl

/-- `x ↦ x / a` as an order isomorphism. -/
@[to_additive (attr := simps!) /-- `x ↦ x - a` as an order isomorphism. -/]
def OrderIso.divRight (a : α) : α ≃o α where
  toEquiv := Equiv.divRight a
  map_rel_iff' {_ _} := div_le_div_iff_right a

end Right

section Left

variable [MulLeftMono α]

/-- `Equiv.mulLeft` as an `OrderIso`. See also `OrderEmbedding.mulLeft`. -/
@[to_additive (attr := simps! +simpRhs toEquiv apply)
  /-- `Equiv.addLeft` as an `OrderIso`. See also `OrderEmbedding.addLeft`. -/]
def OrderIso.mulLeft (a : α) : α ≃o α where
  map_rel_iff' {_ _} := mul_le_mul_iff_left a
  toEquiv := Equiv.mulLeft a

@[to_additive (attr := simp)]
theorem OrderIso.mulLeft_symm (a : α) : (OrderIso.mulLeft a).symm = OrderIso.mulLeft a⁻¹ := by
  ext x
  rfl

end Left

end Group
```
