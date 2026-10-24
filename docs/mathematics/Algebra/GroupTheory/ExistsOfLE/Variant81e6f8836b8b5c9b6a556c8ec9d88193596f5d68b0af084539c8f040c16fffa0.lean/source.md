# Complete source: GRWTSK.Algebra.GroupTheory.ExistsOfLE.Variant81e6f8836b8b5c9b6a556c8ec9d88193596f5d68b0af084539c8f040c16fffa0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e9db2f0cc381c3f8ca980e7f8bc6cd52e1c7d46c` · SHA-256 `2a4a3f2ac1b5e1ce854a32cd5a503b55f1a8afb6c5374daa24aca4563d321c5d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.ExistsAddOfLE.Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"d6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.ExistsAddOfLE.Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9","mathematical_subject":"Algebra.Groups","original_sha256":"d6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Order/Monoid/Unbundled/ExistsOfLE.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2021 Peter Nelson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Peter Nelson, Yaël Dillies
-/
import Mathlib.Algebra.Order.Monoid.Unbundled.Basic
import Mathlib.Order.MinMax

/-!
# Unbundled and weaker forms of canonically ordered monoids

This file provides a Prop-valued mixin for monoids satisfying a one-sided cancellativity property,
namely that there is some `c` such that `b = a + c` if `a ≤ b`. This is particularly useful for
generalising statements from groups/rings/fields that don't mention negation or subtraction to
monoids/semirings/semifields.
-/


namespace GRWTSK.Algebra.GroupTheory.ExistsAddOfLE.Variantd6fb510e6f7de952633cda6d7b5461ce58acda2acbec7441a48b87a26926d9e9

universe u
variable {α : Type u}

/-- An `OrderedAddCommMonoid` with one-sided 'subtraction' in the sense that
if `a ≤ b`, then there is some `c` for which `a + c = b`. This is a weaker version
of the condition on canonical orderings defined by `CanonicallyOrderedAddCommMonoid`. -/
class ExistsAddOfLE (α : Type u) [Add α] [LE α] : Prop where
  /-- For `a ≤ b`, there is a `c` so `b = a + c`. -/
  exists_add_of_le : ∀ {a b : α}, a ≤ b → ∃ c : α, b = a + c

/-- An `OrderedCommMonoid` with one-sided 'division' in the sense that
if `a ≤ b`, there is some `c` for which `a * c = b`. This is a weaker version
of the condition on canonical orderings defined by `CanonicallyOrderedCommMonoid`. -/
@[to_additive]
class ExistsMulOfLE (α : Type u) [Mul α] [LE α] : Prop where
  /-- For `a ≤ b`, `a` left divides `b` -/
  exists_mul_of_le : ∀ {a b : α}, a ≤ b → ∃ c : α, b = a * c

export ExistsMulOfLE (exists_mul_of_le)
export ExistsAddOfLE (exists_add_of_le)

-- See note [lower instance priority]
@[to_additive]
instance (priority := 100) Group.existsMulOfLE (α : Type u) [Group α] [LE α] : ExistsMulOfLE α :=
  ⟨fun {a b} _ => ⟨a⁻¹ * b, (mul_inv_cancel_left _ _).symm⟩⟩

section MulOneClass
variable [MulOneClass α] [Preorder α] [ExistsMulOfLE α] {a b : α}

@[to_additive] lemma exists_one_le_mul_of_le [MulLeftReflectLE α] (h : a ≤ b) :
    ∃ c, 1 ≤ c ∧ a * c = b := by
  obtain ⟨c, rfl⟩ := exists_mul_of_le h; exact ⟨c, one_le_of_le_mul_right h, rfl⟩

@[to_additive] lemma exists_one_lt_mul_of_lt' [MulLeftReflectLT α] (h : a < b) :
    ∃ c, 1 < c ∧ a * c = b := by
  obtain ⟨c, rfl⟩ := exists_mul_of_le h.le; exact ⟨c, one_lt_of_lt_mul_right h, rfl⟩

@[to_additive] lemma le_iff_exists_one_le_mul [MulLeftMono α]
    [MulLeftReflectLE α] : a ≤ b ↔ ∃ c, 1 ≤ c ∧ a * c = b :=
  ⟨exists_one_le_mul_of_le, by rintro ⟨c, hc, rfl⟩; exact le_mul_of_one_le_right' hc⟩

@[to_additive] lemma lt_iff_exists_one_lt_mul [MulLeftStrictMono α]
    [MulLeftReflectLT α] : a < b ↔ ∃ c, 1 < c ∧ a * c = b :=
  ⟨exists_one_lt_mul_of_lt', by rintro ⟨c, hc, rfl⟩; exact lt_mul_of_one_lt_right' _ hc⟩

end MulOneClass

section ExistsMulOfLE

variable [LinearOrder α] [DenselyOrdered α] [Monoid α] [ExistsMulOfLE α]
  [MulLeftReflectLT α] {a b : α}

@[to_additive]
theorem le_of_forall_one_lt_le_mul (h : ∀ ε : α, 1 < ε → a ≤ b * ε) : a ≤ b :=
  le_of_forall_gt_imp_ge_of_dense fun x hxb => by
    obtain ⟨ε, rfl⟩ := exists_mul_of_le hxb.le
    exact h _ (one_lt_of_lt_mul_right hxb)

@[to_additive]
theorem le_of_forall_one_lt_lt_mul' (h : ∀ ε : α, 1 < ε → a < b * ε) : a ≤ b :=
  le_of_forall_one_lt_le_mul fun ε hε => (h ε hε).le

@[to_additive]
theorem le_iff_forall_one_lt_lt_mul' [MulLeftStrictMono α] :
    a ≤ b ↔ ∀ ε, 1 < ε → a < b * ε :=
  ⟨fun h _ => lt_mul_of_le_of_one_lt h, le_of_forall_one_lt_lt_mul'⟩

@[to_additive]
theorem le_iff_forall_one_lt_le_mul [MulLeftStrictMono α] :
    a ≤ b ↔ ∀ ε, 1 < ε → a ≤ b * ε :=
  ⟨fun h _ hε ↦ lt_mul_of_le_of_one_lt h hε |>.le, le_of_forall_one_lt_le_mul⟩

end ExistsMulOfLE
```
