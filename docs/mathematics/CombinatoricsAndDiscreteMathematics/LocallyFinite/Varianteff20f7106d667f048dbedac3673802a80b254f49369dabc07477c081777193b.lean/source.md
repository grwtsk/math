# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.LocallyFinite.Varianteff20f7106d667f048dbedac3673802a80b254f49369dabc07477c081777193b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `24aa4c31f6ed0051908e3df3f942053002602177` · SHA-256 `7feb667d394ad0e67d74678b489743ac0c40e5b47b7c49b671a6586566491472`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.MulProdIcoEqProdIcc.Variant53fc589ef941160ac87792adf2a9a1cf0d8a187aacc7e1332c87c2b6fec3d9cd","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"53fc589ef941160ac87792adf2a9a1cf0d8a187aacc7e1332c87c2b6fec3d9cd","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.MulProdIcoEqProdIcc.Variant53fc589ef941160ac87792adf2a9a1cf0d8a187aacc7e1332c87c2b6fec3d9cd","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"53fc589ef941160ac87792adf2a9a1cf0d8a187aacc7e1332c87c2b6fec3d9cd","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Algebra/Order/BigOperators/Group/LocallyFinite.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2024 Yaël Dillies. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yaël Dillies
-/
module

public import Mathlib.Algebra.BigOperators.Group.Finset.Sigma
public import Mathlib.Algebra.Order.Interval.Finset.SuccPred
public import Mathlib.Data.Nat.SuccPred
public import Mathlib.Order.Disjointed
public import Mathlib.Order.Interval.Finset.Nat

/-!
# Big operators indexed by intervals

This file proves lemmas about `∏ x ∈ Ixx a b, f x` and `∑ x ∈ Ixx a b, f x`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.MulProdIcoEqProdIcc.Variant53fc589ef941160ac87792adf2a9a1cf0d8a187aacc7e1332c87c2b6fec3d9cd

public section

variable {α M : Type*} [CommMonoid M] {f : α → M} {a b : α}

namespace Finset
section PartialOrder
variable [PartialOrder α]

section LocallyFiniteOrder
variable [LocallyFiniteOrder α]

@[to_additive]
lemma mul_prod_Ico_eq_prod_Icc (h : a ≤ b) : f b * ∏ x ∈ Ico a b, f x = ∏ x ∈ Icc a b, f x := by
  rw [Icc_eq_cons_Ico h, prod_cons]

@[to_additive]
lemma prod_Ico_mul_eq_prod_Icc (h : a ≤ b) : (∏ x ∈ Ico a b, f x) * f b = ∏ x ∈ Icc a b, f x := by
  rw [mul_comm, mul_prod_Ico_eq_prod_Icc h]

@[to_additive]
lemma mul_prod_Ioc_eq_prod_Icc (h : a ≤ b) : f a * ∏ x ∈ Ioc a b, f x = ∏ x ∈ Icc a b, f x := by
  rw [Icc_eq_cons_Ioc h, prod_cons]

@[to_additive]
lemma prod_Ioc_mul_eq_prod_Icc (h : a ≤ b) : (∏ x ∈ Ioc a b, f x) * f a = ∏ x ∈ Icc a b, f x := by
  rw [mul_comm, mul_prod_Ioc_eq_prod_Icc h]

@[to_additive]
lemma mul_prod_Ioo_eq_prod_Ico (h : a < b) : f a * ∏ x ∈ Ioo a b, f x = ∏ x ∈ Ico a b, f x := by
  rw [Ico_eq_cons_Ioo h, prod_cons]

@[to_additive]
lemma prod_Ioo_mul_eq_prod_Ico (h : a < b) : (∏ x ∈ Ioo a b, f x) * f a = ∏ x ∈ Ico a b, f x := by
  rw [mul_comm, mul_prod_Ioo_eq_prod_Ico h]

@[to_additive]
lemma mul_prod_Ioo_eq_prod_Ioc (h : a < b) : f b * ∏ x ∈ Ioo a b, f x = ∏ x ∈ Ioc a b, f x := by
  rw [Ioc_eq_cons_Ioo h, prod_cons]

@[to_additive]
lemma prod_Ioo_mul_eq_prod_Ioc (h : a < b) : (∏ x ∈ Ioo a b, f x) * f b = ∏ x ∈ Ioc a b, f x := by
  rw [mul_comm, mul_prod_Ioo_eq_prod_Ioc h]

variable [AddMonoidWithOne α] [SuccAddOrder α]

@[to_additive]
theorem prod_eq_prod_Ico_succ_bot {a b : ℕ} (hab : a < b) (f : ℕ → M) :
    ∏ k ∈ Ico a b, f k = f a * ∏ k ∈ Ico (a + 1) b, f k := by
  have ha : a ∉ Ico (a + 1) b := by simp
  rw [← prod_insert ha, Finset.insert_Ico_add_one_left_eq_Ico hab]

end LocallyFiniteOrder

section LocallyFiniteOrderTop
variable [LocallyFiniteOrderTop α]

@[to_additive]
lemma mul_prod_Ioi_eq_prod_Ici (a : α) : f a * ∏ x ∈ Ioi a, f x = ∏ x ∈ Ici a, f x := by
  rw [Ici_eq_cons_Ioi, prod_cons]

@[to_additive]
lemma prod_Ioi_mul_eq_prod_Ici (a : α) : (∏ x ∈ Ioi a, f x) * f a = ∏ x ∈ Ici a, f x := by
  rw [mul_comm, mul_prod_Ioi_eq_prod_Ici]

end LocallyFiniteOrderTop

section LocallyFiniteOrderBot
variable [LocallyFiniteOrderBot α]

@[to_additive]
lemma mul_prod_Iio_eq_prod_Iic (a : α) : f a * ∏ x ∈ Iio a, f x = ∏ x ∈ Iic a, f x := by
  rw [Iic_eq_cons_Iio, prod_cons]

@[to_additive]
lemma prod_Iio_mul_eq_prod_Iic (a : α) : (∏ x ∈ Iio a, f x) * f a = ∏ x ∈ Iic a, f x := by
  rw [mul_comm, mul_prod_Iio_eq_prod_Iic]

end LocallyFiniteOrderBot

end PartialOrder

section LinearOrder
variable [LinearOrder α]

section LocallyFiniteOrder
variable [LocallyFiniteOrder α] [AddMonoidWithOne α] [SuccAddOrder α] [NoMaxOrder α]

@[to_additive (dont_translate := α) sum_Ico_add_eq_sum_Ico_add_one]
lemma prod_Ico_mul_eq_prod_Ico_add_one (hab : a ≤ b) (f : α → M) :
    (∏ x ∈ Ico a b, f x) * f b = ∏ x ∈ Ico a (b + 1), f x := by
  rw [← Finset.insert_Ico_right_eq_Ico_add_one hab, prod_insert right_notMem_Ico, mul_comm]

end LocallyFiniteOrder

section LocallyFiniteOrderBot
variable [LocallyFiniteOrderBot α]

@[to_additive (dont_translate := α)]
lemma prod_Iio_add_one_comm [Add α] [One α] [SuccAddOrder α] [NoMaxOrder α]
    (a : α) (f : α → M) : ∏ i < a + 1, f i = f a * (∏ i < a, f i) := by
  simp [Iio_add_one_eq_Iic, ← Iio_insert, Finset.prod_insert]

@[to_additive (dont_translate := α) (attr := simp)]
lemma prod_Iio_add_one [Add α] [One α] [SuccAddOrder α] [NoMaxOrder α]
    (a : α) (f : α → M) : ∏ i < a + 1, f i = (∏ i < a, f i) * f a := by
  simp_rw [prod_Iio_add_one_comm, mul_comm]

@[to_additive (dont_translate := α)]
lemma prod_Iic_add_one_comm [Add α] [One α] [SuccAddOrder α] [NoMaxOrder α]
    (a : α) (f : α → M) : ∏ i ≤ a + 1, f i = f (a + 1) * (∏ i ≤ a, f i) := by
  simp only [← Iio_insert, mem_Iio, lt_self_iff_false, not_false_eq_true, prod_insert,
    prod_Iio_add_one_comm]

@[to_additive (dont_translate := α) (attr := simp)]
lemma prod_Iic_add_one [Add α] [One α] [SuccAddOrder α] [NoMaxOrder α]
    (a : α) (f : α → M) : ∏ i ≤ a + 1, f i = (∏ i ≤ a, f i) * f (a + 1) := by
  simp_rw [prod_Iic_add_one_comm, mul_comm]

end LocallyFiniteOrderBot

section LocallyFiniteOrderTopBot
variable [Fintype α] [LocallyFiniteOrderTop α] [LocallyFiniteOrderBot α]

@[to_additive]
lemma prod_prod_Ioi_mul_eq_prod_prod_off_diag (f : α → α → M) :
    ∏ i, ∏ j ∈ Ioi i, f j i * f i j = ∏ i, ∏ j ∈ {i}ᶜ, f j i := by
  simp_rw [← Ioi_disjUnion_Iio, prod_disjUnion, prod_mul_distrib]
  congr 1
  rw [prod_sigma', prod_sigma']
  refine prod_nbij' (fun i ↦ ⟨i.2, i.1⟩) (fun i ↦ ⟨i.2, i.1⟩) ?_ ?_ ?_ ?_ ?_ <;> simp

end LocallyFiniteOrderTopBot

end LinearOrder

set_option backward.isDefEq.respectTransparency false in
/-- Given a sequence of finite sets `s₀ ⊆ s₁ ⊆ s₂ ⋯`, the product of `gᵢ` over `i ∈ sₙ` is equal
to `∏_{i ∈ s₀} gᵢ` * `∏_{j < n, i ∈ sⱼ₊₁ \ sⱼ} gᵢ`. -/
@[to_additive /-- Given a sequence of finite sets `s₀ ⊆ s₁ ⊆ s₂ ⋯`, the sum of `gᵢ` over `i ∈ sₙ` is
equal to `∑_{i ∈ s₀} gᵢ` + `∑_{j < n, i ∈ sⱼ₊₁ \ sⱼ} gᵢ`.-/]
lemma prod_eq_prod_range_sdiff
    {α β : Type*} [DecidableEq α] [CommMonoid β] (s : ℕ → Finset α) (hs : Monotone s)
    (g : α → β) (n : ℕ) :
    ∏ i ∈ s n, g i = (∏ i ∈ s 0, g i) * ∏ i ∈ range n, ∏ j ∈ s (i + 1) \ s i, g j := by
  conv_lhs => rw [← hs.partialSups_eq, ← disjiUnion_Iic_disjointed, Iic_eq_Icc,
    prod_disjiUnion, Nat.bot_eq_zero, ← Nat.range_succ_eq_Icc_zero, prod_range_succ', mul_comm]
  congrm (∏ x ∈ ?_, g x) * ∏ k ∈ range n, ∏ x ∈ s (k + 1) \ ?_, g x
  · simp
  · change (Iic k).sup (s ∘ id) = s k
    rw [← apply_sup_eq_sup_comp_of_nonempty hs nonempty_Iic, sup_Iic]

end Finset
```
