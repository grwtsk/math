# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.BigOperators.Variantafa1af9bee1d989d89d755ad5e7baccf375f3241b316655635abcf64c1ad0bdc

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9f61855959b053bdce3df2b1086478536492d1ec` · SHA-256 `92ecce81fe5b318ff63589d1e7d6a76f2d4d4836d550174929a2eb5e1cf4c210`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.CoeListProd.Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.CoeListProd.Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Algebra/Group/Submonoid/BigOperators.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Kenny Lau, Johan Commelin, Mario Carneiro, Kevin Buzzard,
Amelia Livingston, Yury Kudryashov
-/
import Mathlib.Algebra.Group.Submonoid.Basic
import Mathlib.Algebra.Group.Support
import Mathlib.Data.Finset.NoncommProd

/-!
# Submonoids: membership criteria for products and sums

In this file we prove various facts about membership in a submonoid:

* `list_prod_mem`, `multiset_prod_mem`, `prod_mem`: if each element of a collection belongs
  to a multiplicative submonoid, then so does their product;
* `list_sum_mem`, `multiset_sum_mem`, `sum_mem`: if each element of a collection belongs
  to an additive submonoid, then so does their sum;

## Tags
submonoid, submonoids
-/

-- We don't need ordered structures to establish basic membership facts for submonoids

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.CoeListProd.Variant113542e3097c1a11c49a1a61f305b50bff00aaabccbf0ee4da434f636d869eb3

assert_not_exists OrderedSemiring

variable {M A B : Type*}

section SubmonoidClass
variable [Monoid M] [SetLike B M] [SubmonoidClass B M] {x : M} {S : B}

namespace SubmonoidClass

@[to_additive (attr := norm_cast, simp)]
theorem coe_list_prod (l : List S) : (l.prod : M) = (l.map (↑)).prod :=
  map_list_prod (SubmonoidClass.subtype S : _ →* M) l

@[to_additive (attr := norm_cast, simp)]
theorem coe_multiset_prod {M} [CommMonoid M] [SetLike B M] [SubmonoidClass B M] (m : Multiset S) :
    (m.prod : M) = (m.map (↑)).prod :=
  (SubmonoidClass.subtype S : _ →* M).map_multiset_prod m

@[to_additive (attr := norm_cast, simp)]
theorem coe_finset_prod {ι M} [CommMonoid M] [SetLike B M] [SubmonoidClass B M] (f : ι → S)
    (s : Finset ι) : ↑(∏ i ∈ s, f i) = (∏ i ∈ s, f i : M) :=
  map_prod (SubmonoidClass.subtype S) f s

end SubmonoidClass

open SubmonoidClass

/-- Product of a list of elements in a submonoid is in the submonoid. -/
@[to_additive "Sum of a list of elements in an `AddSubmonoid` is in the `AddSubmonoid`."]
theorem list_prod_mem {l : List M} (hl : ∀ x ∈ l, x ∈ S) : l.prod ∈ S := by
  lift l to List S using hl
  rw [← coe_list_prod]
  exact l.prod.coe_prop

/-- Product of a multiset of elements in a submonoid of a `CommMonoid` is in the submonoid. -/
@[to_additive
      "Sum of a multiset of elements in an `AddSubmonoid` of an `AddCommMonoid` is
      in the `AddSubmonoid`."]
theorem multiset_prod_mem {M} [CommMonoid M] [SetLike B M] [SubmonoidClass B M] (m : Multiset M)
    (hm : ∀ a ∈ m, a ∈ S) : m.prod ∈ S := by
  lift m to Multiset S using hm
  rw [← coe_multiset_prod]
  exact m.prod.coe_prop

/-- Product of elements of a submonoid of a `CommMonoid` indexed by a `Finset` is in the
    submonoid. -/
@[to_additive
      "Sum of elements in an `AddSubmonoid` of an `AddCommMonoid` indexed by a `Finset`
      is in the `AddSubmonoid`."]
theorem prod_mem {M : Type*} [CommMonoid M] [SetLike B M] [SubmonoidClass B M] {ι : Type*}
    {t : Finset ι} {f : ι → M} (h : ∀ c ∈ t, f c ∈ S) : (∏ c ∈ t, f c) ∈ S :=
  multiset_prod_mem (t.1.map f) fun _x hx =>
    let ⟨i, hi, hix⟩ := Multiset.mem_map.1 hx
    hix ▸ h i hi

end SubmonoidClass

namespace Submonoid
section Monoid
variable [Monoid M] {x : M} (s : Submonoid M)

@[to_additive (attr := norm_cast)]
theorem coe_list_prod (l : List s) : (l.prod : M) = (l.map (↑)).prod :=
  map_list_prod s.subtype l

@[to_additive (attr := norm_cast)]
theorem coe_multiset_prod {M} [CommMonoid M] (S : Submonoid M) (m : Multiset S) :
    (m.prod : M) = (m.map (↑)).prod :=
  S.subtype.map_multiset_prod m

@[to_additive (attr := norm_cast)]
theorem coe_finset_prod {ι M} [CommMonoid M] (S : Submonoid M) (f : ι → S) (s : Finset ι) :
    ↑(∏ i ∈ s, f i) = (∏ i ∈ s, f i : M) :=
  map_prod S.subtype f s

/-- Product of a list of elements in a submonoid is in the submonoid. -/
@[to_additive "Sum of a list of elements in an `AddSubmonoid` is in the `AddSubmonoid`."]
theorem list_prod_mem {l : List M} (hl : ∀ x ∈ l, x ∈ s) : l.prod ∈ s := by
  lift l to List s using hl
  rw [← coe_list_prod]
  exact l.prod.coe_prop

/-- Product of a multiset of elements in a submonoid of a `CommMonoid` is in the submonoid. -/
@[to_additive
      "Sum of a multiset of elements in an `AddSubmonoid` of an `AddCommMonoid` is
      in the `AddSubmonoid`."]
theorem multiset_prod_mem {M} [CommMonoid M] (S : Submonoid M) (m : Multiset M)
    (hm : ∀ a ∈ m, a ∈ S) : m.prod ∈ S := by
  lift m to Multiset S using hm
  rw [← coe_multiset_prod]
  exact m.prod.coe_prop

@[to_additive]
theorem multiset_noncommProd_mem (S : Submonoid M) (m : Multiset M) (comm) (h : ∀ x ∈ m, x ∈ S) :
    m.noncommProd comm ∈ S := by
  induction m using Quotient.inductionOn with | h l => ?_
  simp only [Multiset.quot_mk_to_coe, Multiset.noncommProd_coe]
  exact Submonoid.list_prod_mem _ h

/-- Product of elements of a submonoid of a `CommMonoid` indexed by a `Finset` is in the
    submonoid. -/
@[to_additive
      "Sum of elements in an `AddSubmonoid` of an `AddCommMonoid` indexed by a `Finset`
      is in the `AddSubmonoid`."]
theorem prod_mem {M : Type*} [CommMonoid M] (S : Submonoid M) {ι : Type*} {t : Finset ι}
    {f : ι → M} (h : ∀ c ∈ t, f c ∈ S) : (∏ c ∈ t, f c) ∈ S :=
  S.multiset_prod_mem (t.1.map f) fun _ hx =>
    let ⟨i, hi, hix⟩ := Multiset.mem_map.1 hx
    hix ▸ h i hi

@[to_additive]
theorem noncommProd_mem (S : Submonoid M) {ι : Type*} (t : Finset ι) (f : ι → M) (comm)
    (h : ∀ c ∈ t, f c ∈ S) : t.noncommProd f comm ∈ S := by
  apply multiset_noncommProd_mem
  intro y
  rw [Multiset.mem_map]
  rintro ⟨x, ⟨hx, rfl⟩⟩
  exact h x hx

end Monoid

section CommMonoid
variable [CommMonoid M] {x : M}

@[to_additive]
lemma mem_closure_iff_exists_finset_subset {s : Set M} :
    x ∈ closure s ↔
      ∃ (f : M → ℕ) (t : Finset M), ↑t ⊆ s ∧ f.support ⊆ t ∧ ∏ a ∈ t, a ^ f a = x where
  mp hx := by
    classical
    induction hx using closure_induction with
    | one => exact ⟨0, ∅, by simp⟩
    | mem x hx =>
      simp only [Finset.mem_coe] at hx
      exact ⟨Pi.single x 1, {x}, by simp [hx, Pi.single_apply]⟩
    | mul x y _ _ hx hy =>
    obtain ⟨f, t, hts, hf, rfl⟩ := hx
    obtain ⟨g, u, hus, hg, rfl⟩ := hy
    refine ⟨f + g, t ∪ u, mod_cast Set.union_subset hts hus,
      (Function.support_add _ _).trans <| mod_cast Set.union_subset_union hf hg, ?_⟩
    simp only [Pi.add_apply, pow_add, Finset.prod_mul_distrib]
    congr 1 <;> symm
    · refine Finset.prod_subset Finset.subset_union_left ?_
      simp +contextual [Function.support_subset_iff'.1 hf]
    · refine Finset.prod_subset Finset.subset_union_right ?_
      simp +contextual [Function.support_subset_iff'.1 hg]
  mpr := by
    rintro ⟨n, t, hts, -, rfl⟩; exact prod_mem _ fun x hx ↦ pow_mem (subset_closure <| hts hx) _

@[to_additive]
lemma mem_closure_finset {s : Finset M} :
    x ∈ closure s ↔ ∃ f : M → ℕ, f.support ⊆ s ∧ ∏ a ∈ s, a ^ f a = x where
  mp := by
    rw [mem_closure_iff_exists_finset_subset]
    rintro ⟨f, t, hts, hf, rfl⟩
    refine ⟨f, hf.trans hts, .symm <| Finset.prod_subset hts ?_⟩
    simp +contextual [Function.support_subset_iff'.1 hf]
  mpr := by rintro ⟨n, -, rfl⟩; exact prod_mem _ fun x hx ↦ pow_mem (subset_closure hx) _

end CommMonoid
end Submonoid
```
