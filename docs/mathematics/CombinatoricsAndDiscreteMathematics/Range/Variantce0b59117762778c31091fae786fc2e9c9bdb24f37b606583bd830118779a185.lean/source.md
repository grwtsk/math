# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variantce0b59117762778c31091fae786fc2e9c9bdb24f37b606583bd830118779a185

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `954c092fa406183e18b75f3517beff7b8c160e0f` · SHA-256 `393e42778bb21acb0f8b3117747b165187dca7410a455658bb6224a2a18945e8`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Combinatorics.FiniteCombinatorics.SourceCorpus.Range.Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26","mathematical_subject":"Combinatorics.FiniteCombinatorics","original_sha256":"0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Finset/Range.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura, Jeremy Avigad, Minchao Wu, Mario Carneiro
-/
import Mathlib.Data.Finset.Insert
import Mathlib.Data.Multiset.Range
import Mathlib.Order.Interval.Set.Defs

/-!
# Finite sets made of a range of elements.

## Main declarations

### Finset constructions

* `Finset.range`: For any `n : ℕ`, `range n` is equal to `{0, 1, ... , n - 1} ⊆ ℕ`.
  This convention is consistent with other languages and normalizes `card (range n) = n`.
  Beware, `n` is not in `range n`.

## Tags

finite sets, finset

-/

-- Assert that we define `Finset` without the material on `List.sublists`.
-- Note that we cannot use `List.sublists` itself as that is defined very early.

namespace GRWTSK.CombinatoricsAndDiscreteMathematics.Range.Variant0355f2e0b8b30acbba3e4a17b4b2bc4635acb00fef2b5a1919636cb257e5ea26

assert_not_exists List.sublistsLen Multiset.powerset CompleteLattice OrderedCommMonoid

open Multiset Subtype Function

universe u

variable {α : Type*} {β : Type*} {γ : Type*}

namespace Finset

/-! ### range -/


section Range

open Nat

variable {n m l : ℕ}

/-- `range n` is the set of natural numbers less than `n`. -/
def range (n : ℕ) : Finset ℕ :=
  ⟨_, nodup_range n⟩

@[simp]
theorem range_val (n : ℕ) : (range n).1 = Multiset.range n :=
  rfl

@[simp]
theorem mem_range : m ∈ range n ↔ m < n :=
  Multiset.mem_range

@[simp, norm_cast]
theorem coe_range (n : ℕ) : (range n : Set ℕ) = Set.Iio n :=
  Set.ext fun _ => mem_range

@[simp]
theorem range_zero : range 0 = ∅ :=
  rfl

@[simp]
theorem range_one : range 1 = {0} :=
  rfl

theorem range_succ : range (succ n) = insert n (range n) :=
  eq_of_veq <| (Multiset.range_succ n).trans <| (ndinsert_of_notMem notMem_range_self).symm

theorem range_add_one : range (n + 1) = insert n (range n) :=
  range_succ

theorem notMem_range_self : n ∉ range n :=
  Multiset.notMem_range_self

@[deprecated (since := "2025-05-23")] alias not_mem_range_self := notMem_range_self

theorem self_mem_range_succ (n : ℕ) : n ∈ range (n + 1) :=
  Multiset.self_mem_range_succ n

@[simp]
theorem range_subset {n m} : range n ⊆ range m ↔ n ≤ m :=
  Multiset.range_subset

theorem range_mono : Monotone range := fun _ _ => range_subset.2

@[gcongr] alias ⟨_, _root_.GCongr.finset_range_subset_of_le⟩ := range_subset

theorem mem_range_succ_iff {a b : ℕ} : a ∈ Finset.range b.succ ↔ a ≤ b :=
  Finset.mem_range.trans Nat.lt_succ_iff

theorem mem_range_le {n x : ℕ} (hx : x ∈ range n) : x ≤ n :=
  (mem_range.1 hx).le

theorem mem_range_sub_ne_zero {n x : ℕ} (hx : x ∈ range n) : n - x ≠ 0 :=
  _root_.ne_of_gt <| Nat.sub_pos_of_lt <| mem_range.1 hx

@[simp]
theorem nonempty_range_iff : (range n).Nonempty ↔ n ≠ 0 :=
  ⟨fun ⟨k, hk⟩ => (k.zero_le.trans_lt <| mem_range.1 hk).ne',
   fun h => ⟨0, mem_range.2 <| Nat.pos_iff_ne_zero.2 h⟩⟩

@[aesop safe apply (rule_sets := [finsetNonempty])]
protected alias ⟨_, Aesop.range_nonempty⟩ := nonempty_range_iff

@[simp]
theorem range_eq_empty_iff : range n = ∅ ↔ n = 0 := by
  rw [← not_nonempty_iff_eq_empty, nonempty_range_iff, not_not]

@[aesop safe apply (rule_sets := [finsetNonempty])]
theorem nonempty_range_succ : (range <| n + 1).Nonempty :=
  nonempty_range_iff.2 n.succ_ne_zero

lemma range_nontrivial {n : ℕ} (hn : 1 < n) : (Finset.range n).Nontrivial := by
  rw [Finset.Nontrivial, Finset.coe_range]
  exact ⟨0, Nat.zero_lt_one.trans hn, 1, hn, Nat.zero_ne_one⟩

theorem exists_nat_subset_range (s : Finset ℕ) : ∃ n : ℕ, s ⊆ range n :=
  s.induction_on (by simp)
    fun a _ _ ⟨n, hn⟩ => ⟨max (a + 1) n, insert_subset (by simp) (hn.trans (by simp))⟩

end Range

end Finset

/-- Equivalence between the set of natural numbers which are `≥ k` and `ℕ`, given by `n → n - k`. -/
def notMemRangeEquiv (k : ℕ) : { n // n ∉ range k } ≃ ℕ where
  toFun i := i.1 - k
  invFun j := ⟨j + k, by simp⟩
  left_inv j := by
    rw [Subtype.ext_iff_val]
    apply Nat.sub_add_cancel
    simpa using j.2
  right_inv _ := Nat.add_sub_cancel_right _ _

@[simp]
theorem coe_notMemRangeEquiv (k : ℕ) :
    (notMemRangeEquiv k : { n // n ∉ range k } → ℕ) = fun (i : { n // n ∉ range k }) => i - k :=
  rfl

@[simp]
theorem coe_notMemRangeEquiv_symm (k : ℕ) :
    ((notMemRangeEquiv k).symm : ℕ → { n // n ∉ range k }) = fun j => ⟨j + k, by simp⟩ :=
  rfl
```
