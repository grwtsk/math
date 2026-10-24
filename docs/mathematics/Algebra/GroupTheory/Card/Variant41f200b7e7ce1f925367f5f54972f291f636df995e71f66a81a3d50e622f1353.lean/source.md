# Complete source: GRWTSK.Algebra.GroupTheory.Card.Variant41f200b7e7ce1f925367f5f54972f291f636df995e71f66a81a3d50e622f1353

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6a3149f1e6ceb01da98549d58f815d89a3acf434` · SHA-256 `22ca0b68a17ffa72d28ccace7317a0b4869a498c21b639375ffb9734dd0e63d9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: Algebra.GroupTheory
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.Algebra.GroupTheory.CardEqCardQuotientMulCardSubgroup.Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Algebra.Groups.SourceCorpus.CardEqCardQuotientMulCardSubgroup.Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade","mathematical_subject":"Algebra.Groups","original_sha256":"e0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/GroupTheory/Coset/Card.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mitchell Rowett. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mitchell Rowett, Kim Morrison
-/
import Mathlib.GroupTheory.Coset.Basic
import Mathlib.SetTheory.Cardinal.Finite

/-!
# Lagrange's theorem: the order of a subgroup divides the order of the group.

* `Subgroup.card_subgroup_dvd_card`: Lagrange's theorem (for multiplicative groups);
  there is an analogous version for additive groups

-/


namespace GRWTSK.Algebra.GroupTheory.CardEqCardQuotientMulCardSubgroup.Variante0623542ebe64b448fa15988e7cbc1386222d646c3b6394355502f4726320ade

assert_not_exists Field

open scoped Pointwise

namespace Subgroup

variable {α : Type*} [Group α]

@[to_additive AddSubgroup.card_eq_card_quotient_mul_card_addSubgroup]
theorem card_eq_card_quotient_mul_card_subgroup (s : Subgroup α) :
    Nat.card α = Nat.card (α ⧸ s) * Nat.card s := by
  rw [← Nat.card_prod]; exact Nat.card_congr Subgroup.groupEquivQuotientProdSubgroup

@[to_additive]
lemma card_mul_eq_card_subgroup_mul_card_quotient (s : Subgroup α) (t : Set α) :
    Nat.card (t * s : Set α) = Nat.card s * Nat.card (t.image (↑) : Set (α ⧸ s)) := by
  rw [← Nat.card_prod, Nat.card_congr]
  apply Equiv.trans _ (QuotientGroup.preimageMkEquivSubgroupProdSet _ _)
  rw [QuotientGroup.preimage_image_mk]
  convert Equiv.refl ↑(t * s)
  aesop (add simp [Set.mem_mul])

/-- **Lagrange's Theorem**: The order of a subgroup divides the order of its ambient group. -/
@[to_additive "**Lagrange's Theorem**: The order of an additive subgroup divides the order of its
ambient additive group."]
theorem card_subgroup_dvd_card (s : Subgroup α) : Nat.card s ∣ Nat.card α := by
  classical simp [card_eq_card_quotient_mul_card_subgroup s, @dvd_mul_left ℕ]

@[to_additive]
theorem card_quotient_dvd_card (s : Subgroup α) : Nat.card (α ⧸ s) ∣ Nat.card α := by
  simp [card_eq_card_quotient_mul_card_subgroup s, @dvd_mul_right ℕ]

variable {H : Type*} [Group H]

@[to_additive]
theorem card_dvd_of_injective (f : α →* H) (hf : Function.Injective f) :
    Nat.card α ∣ Nat.card H := by
  classical calc
      Nat.card α = Nat.card (f.range : Subgroup H) := Nat.card_congr (Equiv.ofInjective f hf)
      _ ∣ Nat.card H := card_subgroup_dvd_card _

@[to_additive]
theorem card_dvd_of_le {H K : Subgroup α} (hHK : H ≤ K) : Nat.card H ∣ Nat.card K :=
  card_dvd_of_injective (inclusion hHK) (inclusion_injective hHK)

@[to_additive]
theorem card_comap_dvd_of_injective (K : Subgroup H) (f : α →* H)
    (hf : Function.Injective f) : Nat.card (K.comap f) ∣ Nat.card K :=
  calc Nat.card (K.comap f) = Nat.card ((K.comap f).map f) :=
      Nat.card_congr (equivMapOfInjective _ _ hf).toEquiv
    _ ∣ Nat.card K := card_dvd_of_le (map_comap_le _ _)

end Subgroup
```
