# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variant29c5c4e82c60245aa7c5cfb46185ae5a00129529a18d9711e17597e211831f7c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e3c4bd73e6271da11f8b855f037133c180a60672` · SHA-256 `59840a768770fe6ac0e5e2f690e82e53aa8aae7a66e4241a04609a978426f410`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"c15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.Range.Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"c15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/Multiset/Range.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2015 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro
-/
import Mathlib.Data.Multiset.UnionInter

/-! # `Multiset.range n` gives `{0, 1, ..., n-1}` as a multiset. -/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Range.Variantc15f4bc437d4e9e4ca1d4cf225470f75bba987d54fb40f31ea7be3e100f92b47

assert_not_exists Monoid

open List Nat

namespace Multiset

-- range
/-- `range n` is the multiset lifted from the list `range n`,
  that is, the set `{0, 1, ..., n-1}`. -/
def range (n : ℕ) : Multiset ℕ :=
  List.range n

theorem coe_range (n : ℕ) : ↑(List.range n) = range n :=
  rfl

@[simp]
theorem range_zero : range 0 = 0 :=
  rfl

@[simp]
theorem range_succ (n : ℕ) : range (succ n) = n ::ₘ range n := by
  rw [range, List.range_succ, ← coe_add, Multiset.add_comm, range, coe_singleton, singleton_add]

@[simp]
theorem card_range (n : ℕ) : card (range n) = n :=
  length_range

theorem range_subset {m n : ℕ} : range m ⊆ range n ↔ m ≤ n :=
  List.range_subset

@[simp]
theorem mem_range {m n : ℕ} : m ∈ range n ↔ m < n :=
  List.mem_range

theorem notMem_range_self {n : ℕ} : n ∉ range n :=
  List.not_mem_range_self

@[deprecated (since := "2025-05-23")] alias not_mem_range_self := notMem_range_self

theorem self_mem_range_succ (n : ℕ) : n ∈ range (n + 1) :=
  List.self_mem_range_succ

theorem range_add (a b : ℕ) : range (a + b) = range a + (range b).map (a + ·) :=
  congr_arg ((↑) : List ℕ → Multiset ℕ) List.range_add

theorem range_disjoint_map_add (a : ℕ) (m : Multiset ℕ) :
    Disjoint (range a) (m.map (a + ·)) := by
  rw [disjoint_left]
  intro x hxa hxb
  rw [range, mem_coe, List.mem_range] at hxa
  obtain ⟨c, _, rfl⟩ := mem_map.1 hxb
  exact (Nat.le_add_right _ _).not_lt hxa

theorem range_add_eq_union (a b : ℕ) : range (a + b) = range a ∪ (range b).map (a + ·) := by
  rw [range_add, add_eq_union_iff_disjoint]
  apply range_disjoint_map_add

section Nodup

theorem nodup_range (n : ℕ) : Nodup (range n) :=
  List.nodup_range

theorem range_le {m n : ℕ} : range m ≤ range n ↔ m ≤ n :=
  (le_iff_subset (nodup_range _)).trans range_subset

end Nodup

end Multiset
```
