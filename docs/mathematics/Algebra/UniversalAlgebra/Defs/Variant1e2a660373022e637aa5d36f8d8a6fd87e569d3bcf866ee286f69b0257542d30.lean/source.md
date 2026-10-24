# Complete source: GRWTSK.Algebra.UniversalAlgebra.Defs.Variant1e2a660373022e637aa5d36f8d8a6fd87e569d3bcf866ee286f69b0257542d30

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bcc13d10fda7d6ea308575cff84f4990f83bcdc4` · SHA-256 `f370282cba021e1f6cd1755be109abf59e37361010b9c29e285ada06ae00233f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.UniversalAlgebra
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.UniversalAlgebra.IsOrderedMonoidToIsOrderedCancelMonoidPrime.Variant78f2c9d9c20dfd4fc86f2dbf728ca5d3a08c8f206332bcc17798ce1ec274d674","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"78f2c9d9c20dfd4fc86f2dbf728ca5d3a08c8f206332bcc17798ce1ec274d674","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.GeneralAlgebra.SourceCorpus.IsOrderedMonoidToIsOrderedCancelMonoidPrime.Variant78f2c9d9c20dfd4fc86f2dbf728ca5d3a08c8f206332bcc17798ce1ec274d674","mathematical_subject":"Algebra.GeneralAlgebra","original_sha256":"78f2c9d9c20dfd4fc86f2dbf728ca5d3a08c8f206332bcc17798ce1ec274d674","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/Group/Defs.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2016 Jeremy Avigad. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jeremy Avigad, Leonardo de Moura, Mario Carneiro, Johannes Hölzl
-/
module

public import Mathlib.Algebra.Order.Group.Unbundled.Basic
public import Mathlib.Algebra.Order.Monoid.Defs
public import Mathlib.Algebra.Order.Sub.Defs

/-!
# Ordered groups

This file defines bundled ordered groups and develops a few basic results.

## Implementation details

Unfortunately, the number of `'` appended to lemmas in this file
may differ between the multiplicative and the additive version of a lemma.
The reason is that we did not want to change existing names in the library.
-/


namespace GRWTSK.Algebra.UniversalAlgebra.IsOrderedMonoidToIsOrderedCancelMonoidPrime.Variant78f2c9d9c20dfd4fc86f2dbf728ca5d3a08c8f206332bcc17798ce1ec274d674

public section

/-
`NeZero` theory should not be needed at this point in the ordered algebraic hierarchy.
-/
assert_not_imported Mathlib.Algebra.NeZero

universe u

variable {α : Type u}

alias OrderedCommGroup.le_of_mul_le_mul_left := le_of_mul_le_mul_left'

attribute [to_additive] OrderedCommGroup.le_of_mul_le_mul_left

alias OrderedCommGroup.lt_of_mul_lt_mul_left := lt_of_mul_lt_mul_left'

attribute [to_additive] OrderedCommGroup.lt_of_mul_lt_mul_left

-- See note [lower instance priority]
@[to_additive IsOrderedAddMonoid.toIsOrderedCancelAddMonoid]
instance (priority := 100) IsOrderedMonoid.toIsOrderedCancelMonoid
    [CommGroup α] [Preorder α] [IsOrderedMonoid α] : IsOrderedCancelMonoid α where
  le_of_mul_le_mul_left a b c bc := by simpa using mul_le_mul_right bc a⁻¹
  le_of_mul_le_mul_right a b c bc := by simpa using mul_le_mul_right bc a⁻¹

/-- Assuming `α` equipped with `LinearOrder` is `CancelCommMonoid` and `IsOrderedMonoid`, it is
also `IsOrderedCancelMonoid`.

TODO: make it an `instance`. To avoid slowdown, it was not an instance when it was submitted. See
https://github.com/leanprover-community/mathlib4/pull/32828. -/
@[to_additive IsOrderedAddMonoid.toIsOrderedCancelAddMonoid'
  /-- Assuming `α` equipped with `LinearOrder` is `AddCancelCommMonoid` and `IsAddOrderedMonoid`, it
  is also `IsAddOrderedCancelMonoid`.

  TODO: make it an `instance`. To avoid slowdown, it was not an instance when it was submitted. See
  https://github.com/leanprover-community/mathlib4/pull/32828. -/]
theorem IsOrderedMonoid.toIsOrderedCancelMonoid'
    [CancelCommMonoid α] [LinearOrder α] [IsOrderedMonoid α] : IsOrderedCancelMonoid α where
  le_of_mul_le_mul_left _ _ _ h := le_of_mul_le_mul_left' h

/-!
### Linearly ordered commutative groups
-/
/- `LinearOrderedCommGroup` and `LinearOrderedAddCommGroup` no longer exist,
but we still use the namespaces.

TODO: everything in these namespaces should be renamed; even if these typeclasses still existed,
it's unconventional to put theorems in namespaces named after them. -/
insert_to_additive_translation LinearOrderedCommGroup LinearOrderedAddCommGroup

section LinearOrderedCommGroup

variable [CommGroup α] [LinearOrder α] [IsOrderedMonoid α] {a : α}

@[to_additive eq_zero_of_neg_eq]
theorem eq_one_of_inv_eq' (h : a⁻¹ = a) : a = 1 :=
  match lt_trichotomy a 1 with
  | Or.inl h₁ =>
    have : 1 < a := h ▸ one_lt_inv_of_inv h₁
    absurd h₁ this.asymm
  | Or.inr (Or.inl h₁) => h₁
  | Or.inr (Or.inr h₁) =>
    have : a < 1 := h ▸ inv_lt_one'.mpr h₁
    absurd h₁ this.asymm

@[to_additive exists_zero_lt]
theorem exists_one_lt' [Nontrivial α] : ∃ a : α, 1 < a := by
  obtain ⟨y, hy⟩ := Decidable.exists_ne (1 : α)
  obtain h | h := hy.lt_or_gt
  · exact ⟨y⁻¹, one_lt_inv'.mpr h⟩
  · exact ⟨y, h⟩

-- see Note [lower instance priority]
@[to_additive]
instance (priority := 100) LinearOrderedCommGroup.to_noMaxOrder [Nontrivial α] : NoMaxOrder α :=
  ⟨by
    obtain ⟨y, hy⟩ : ∃ a : α, 1 < a := exists_one_lt'
    exact fun a => ⟨a * y, lt_mul_of_one_lt_right' a hy⟩⟩

-- see Note [lower instance priority]
@[to_additive]
instance (priority := 100) LinearOrderedCommGroup.to_noMinOrder [Nontrivial α] : NoMinOrder α :=
  ⟨by
    obtain ⟨y, hy⟩ : ∃ a : α, 1 < a := exists_one_lt'
    exact fun a => ⟨a / y, (div_lt_self_iff a).mpr hy⟩⟩

@[to_additive (attr := simp)]
theorem inv_le_self_iff : a⁻¹ ≤ a ↔ 1 ≤ a := by simp [inv_le_iff_one_le_mul']

@[to_additive (attr := simp)]
theorem inv_lt_self_iff : a⁻¹ < a ↔ 1 < a := by simp [inv_lt_iff_one_lt_mul]

@[to_additive (attr := simp)]
theorem le_inv_self_iff : a ≤ a⁻¹ ↔ a ≤ 1 := by contrapose!; exact inv_lt_self_iff

@[to_additive (attr := simp)]
theorem lt_inv_self_iff : a < a⁻¹ ↔ a < 1 := by contrapose!; exact inv_le_self_iff

end LinearOrderedCommGroup

section NormNumLemmas

/- The following lemmas are stated so that the `norm_num` tactic can use them with the
expected signatures. -/
variable [CommGroup α] [PartialOrder α] [IsOrderedMonoid α] {a b : α}

@[to_additive (attr := gcongr) neg_le_neg]
theorem inv_le_inv' : a ≤ b → b⁻¹ ≤ a⁻¹ :=
  inv_le_inv_iff.mpr

@[to_additive (attr := gcongr) neg_lt_neg]
theorem inv_lt_inv' : a < b → b⁻¹ < a⁻¹ :=
  inv_lt_inv_iff.mpr

--  The additive version is also a `linarith` lemma.
@[to_additive]
theorem inv_lt_one_of_one_lt : 1 < a → a⁻¹ < 1 :=
  inv_lt_one_iff_one_lt.mpr

--  The additive version is also a `linarith` lemma.
@[to_additive]
theorem inv_le_one_of_one_le : 1 ≤ a → a⁻¹ ≤ 1 :=
  inv_le_one'.mpr

@[to_additive neg_nonneg_of_nonpos]
theorem one_le_inv_of_le_one : a ≤ 1 → 1 ≤ a⁻¹ :=
  one_le_inv'.mpr

end NormNumLemmas
```
