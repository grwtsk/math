# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Powerset.Variantf7880b133c9e67056e3bbbed64e206e36b9222ca91775916c62acad3f49b6a3a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1479fdc7ff37013535e9437fa63b55553397f9f5` · SHA-256 `b1ca5b1b6d15b14a10cf6ae61ddbce1f58f1867d27607c23d42f46315a08d14b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.ProdPowersetInsert.Variante4e9d2ab2874dd91f59e0676b9bf77acf11a9b5bafe8f95d92d7ffea6ae14732","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e4e9d2ab2874dd91f59e0676b9bf77acf11a9b5bafe8f95d92d7ffea6ae14732","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.ProdPowersetInsert.Variante4e9d2ab2874dd91f59e0676b9bf77acf11a9b5bafe8f95d92d7ffea6ae14732","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"e4e9d2ab2874dd91f59e0676b9bf77acf11a9b5bafe8f95d92d7ffea6ae14732","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/BigOperators/Group/Finset/Powerset.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl
-/
import Mathlib.Algebra.BigOperators.Group.Finset.Basic
import Mathlib.Data.Finset.Powerset

/-!
# Big operators

In this file we prove theorems about products and sums over a `Finset.powerset`.

-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.ProdPowersetInsert.Variante4e9d2ab2874dd91f59e0676b9bf77acf11a9b5bafe8f95d92d7ffea6ae14732

variable {α β γ : Type*}

variable {s : Finset α} {a : α}

namespace Finset

variable [CommMonoid β]

/-- A product over all subsets of `s ∪ {x}` is obtained by multiplying the product over all subsets
of `s`, and over all subsets of `s` to which one adds `x`. -/
@[to_additive "A sum over all subsets of `s ∪ {x}` is obtained by summing the sum over all subsets
of `s`, and over all subsets of `s` to which one adds `x`."]
lemma prod_powerset_insert [DecidableEq α] (ha : a ∉ s) (f : Finset α → β) :
    ∏ t ∈ (insert a s).powerset, f t =
      (∏ t ∈ s.powerset, f t) * ∏ t ∈ s.powerset, f (insert a t) := by
  rw [powerset_insert, prod_union, prod_image]
  · exact insert_erase_invOn.2.injOn.mono fun t ht ↦ notMem_mono (mem_powerset.1 ht) ha
  · aesop (add simp [disjoint_left, insert_subset_iff])

/-- A product over all subsets of `s ∪ {x}` is obtained by multiplying the product over all subsets
of `s`, and over all subsets of `s` to which one adds `x`. -/
@[to_additive "A sum over all subsets of `s ∪ {x}` is obtained by summing the sum over all subsets
of `s`, and over all subsets of `s` to which one adds `x`."]
lemma prod_powerset_cons (ha : a ∉ s) (f : Finset α → β) :
    ∏ t ∈ (s.cons a ha).powerset, f t = (∏ t ∈ s.powerset, f t) *
      ∏ t ∈ s.powerset.attach, f (cons a t <| notMem_mono (mem_powerset.1 t.2) ha) := by
  classical
  simp_rw [cons_eq_insert]
  rw [prod_powerset_insert ha, prod_attach _ fun t ↦ f (insert a t)]

/-- A product over `powerset s` is equal to the double product over sets of subsets of `s` with
`#s = k`, for `k = 1, ..., #s`. -/
@[to_additive "A sum over `powerset s` is equal to the double sum over sets of subsets of `s` with
`#s = k`, for `k = 1, ..., #s`"]
lemma prod_powerset (s : Finset α) (f : Finset α → β) :
    ∏ t ∈ powerset s, f t = ∏ j ∈ range (#s + 1), ∏ t ∈ powersetCard j s, f t := by
  rw [powerset_card_disjiUnion, prod_disjiUnion]

/-- A product over `Finset.powersetCard` which only depends on the size of the sets is constant. -/
@[to_additive
"A sum over `Finset.powersetCard` which only depends on the size of the sets is constant."]
lemma prod_powersetCard (n : ℕ) (s : Finset α) (f : ℕ → β) :
    ∏ t ∈ powersetCard n s, f #t = f n ^ (#s).choose n := by
  rw [prod_eq_pow_card, card_powersetCard]; rintro a ha; rw [(mem_powersetCard.1 ha).2]

end Finset
```
