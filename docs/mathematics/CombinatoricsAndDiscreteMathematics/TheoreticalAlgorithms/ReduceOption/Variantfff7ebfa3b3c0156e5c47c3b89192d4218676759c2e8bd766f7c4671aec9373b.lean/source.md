# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReduceOption.Variantfff7ebfa3b3c0156e5c47c3b89192d4218676759c2e8bd766f7c4671aec9373b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `18c57b76876f7a1aab20ee68d75f53cfd08fbf67` · SHA-256 `f2ae8a45178318da9a9aedd5d86ad796b6d68e1fdc29fd108f5ce669b5831d30`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReduceOptionConsOfSome.Variante70fdb04cbd174bed65e191cfb2f432c4d1f8655585f149afda8556fdb1a25a2","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e70fdb04cbd174bed65e191cfb2f432c4d1f8655585f149afda8556fdb1a25a2","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.MixedSubjects.SourceCorpus.ReduceOptionConsOfSome.Variante70fdb04cbd174bed65e191cfb2f432c4d1f8655585f149afda8556fdb1a25a2","mathematical_subject":"Foundations.MixedSubjects","original_sha256":"e70fdb04cbd174bed65e191cfb2f432c4d1f8655585f149afda8556fdb1a25a2","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/ReduceOption.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2020 Yakov Pechersky. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yakov Pechersky, Anthony DeRossi
-/
import Mathlib.Data.List.Basic

/-!
# Properties of `List.reduceOption`

In this file we prove basic lemmas about `List.reduceOption`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ReduceOptionConsOfSome.Variante70fdb04cbd174bed65e191cfb2f432c4d1f8655585f149afda8556fdb1a25a2

namespace List

variable {α β : Type*}

@[simp]
theorem reduceOption_cons_of_some (x : α) (l : List (Option α)) :
    reduceOption (some x :: l) = x :: l.reduceOption := by
  simp only [reduceOption, filterMap, id, eq_self_iff_true, and_self_iff]

@[simp]
theorem reduceOption_cons_of_none (l : List (Option α)) :
    reduceOption (none :: l) = l.reduceOption := by simp only [reduceOption, filterMap, id]

@[simp]
theorem reduceOption_nil : @reduceOption α [] = [] :=
  rfl

@[simp]
theorem reduceOption_map {l : List (Option α)} {f : α → β} :
    reduceOption (map (Option.map f) l) = map f (reduceOption l) := by
  induction' l with hd tl hl
  · simp only [reduceOption_nil, map_nil]
  · cases hd <;>
      simpa [Option.map_some, map, eq_self_iff_true, reduceOption_cons_of_some] using hl

theorem reduceOption_append (l l' : List (Option α)) :
    (l ++ l').reduceOption = l.reduceOption ++ l'.reduceOption :=
  filterMap_append

@[simp]
theorem reduceOption_replicate_none {n : ℕ} : (replicate n (@none α)).reduceOption = [] := by
  dsimp [reduceOption]
  rw [filterMap_replicate_of_none (id_def _)]

theorem reduceOption_eq_nil_iff (l : List (Option α)) :
    l.reduceOption = [] ↔ ∃ n, l = replicate n none := by
  dsimp [reduceOption]
  rw [filterMap_eq_nil_iff]
  constructor
  · intro h
    exact ⟨l.length, eq_replicate_of_mem h⟩
  · intro ⟨_, h⟩
    simp_rw [h, mem_replicate]
    tauto

theorem reduceOption_eq_singleton_iff (l : List (Option α)) (a : α) :
    l.reduceOption = [a] ↔ ∃ m n, l = replicate m none ++ some a :: replicate n none := by
  dsimp [reduceOption]
  constructor
  · intro h
    rw [filterMap_eq_cons_iff] at h
    obtain ⟨l₁, _, l₂, h, hl₁, ⟨⟩, hl₂⟩ := h
    rw [filterMap_eq_nil_iff] at hl₂
    apply eq_replicate_of_mem at hl₁
    apply eq_replicate_of_mem at hl₂
    rw [h, hl₁, hl₂]
    use l₁.length, l₂.length
  · intro ⟨_, _, h⟩
    simp only [h, filterMap_append, filterMap_cons_some, filterMap_replicate_of_none, id_eq,
      nil_append, Option.some.injEq]

theorem reduceOption_eq_append_iff (l : List (Option α)) (l'₁ l'₂ : List α) :
    l.reduceOption = l'₁ ++ l'₂ ↔
      ∃ l₁ l₂, l = l₁ ++ l₂ ∧ l₁.reduceOption = l'₁ ∧ l₂.reduceOption = l'₂ := by
  dsimp [reduceOption]
  exact filterMap_eq_append_iff

theorem reduceOption_eq_concat_iff (l : List (Option α)) (l' : List α) (a : α) :
    l.reduceOption = l'.concat a ↔
      ∃ l₁ l₂, l = l₁ ++ some a :: l₂ ∧ l₁.reduceOption = l' ∧ l₂.reduceOption = [] := by
  rw [concat_eq_append]
  constructor
  · intro h
    rw [reduceOption_eq_append_iff] at h
    obtain ⟨l₁, _, h, hl₁, hl₂⟩ := h
    rw [reduceOption_eq_singleton_iff] at hl₂
    obtain ⟨m, n, hl₂⟩ := hl₂
    use l₁ ++ replicate m none, replicate n none
    simp_rw [h, reduceOption_append, reduceOption_replicate_none, append_assoc, append_nil, hl₁,
      hl₂, and_self]
  · intro ⟨_, _, h, hl₁, hl₂⟩
    rw [h, reduceOption_append, reduceOption_cons_of_some, hl₁, hl₂]

theorem reduceOption_length_eq {l : List (Option α)} :
    l.reduceOption.length = (l.filter Option.isSome).length := by
  induction' l with hd tl hl
  · simp_rw [reduceOption_nil, filter_nil, length]
  · cases hd <;> simp [hl]

theorem length_eq_reduceOption_length_add_filter_none {l : List (Option α)} :
    l.length = l.reduceOption.length + (l.filter Option.isNone).length := by
  simp_rw [reduceOption_length_eq, l.length_eq_length_filter_add Option.isSome, Option.not_isSome]

theorem reduceOption_length_le (l : List (Option α)) : l.reduceOption.length ≤ l.length := by
  rw [length_eq_reduceOption_length_add_filter_none]
  apply Nat.le_add_right

theorem reduceOption_length_eq_iff {l : List (Option α)} :
    l.reduceOption.length = l.length ↔ ∀ x ∈ l, Option.isSome x := by
  rw [reduceOption_length_eq, List.length_filter_eq_length_iff]

theorem reduceOption_length_lt_iff {l : List (Option α)} :
    l.reduceOption.length < l.length ↔ none ∈ l := by
  rw [Nat.lt_iff_le_and_ne, and_iff_right (reduceOption_length_le l), Ne,
    reduceOption_length_eq_iff]
  induction l <;> simp
  rw [@eq_comm _ none, ← Option.not_isSome_iff_eq_none, Decidable.imp_iff_not_or]

theorem reduceOption_singleton (x : Option α) : [x].reduceOption = x.toList := by cases x <;> rfl

theorem reduceOption_concat (l : List (Option α)) (x : Option α) :
    (l.concat x).reduceOption = l.reduceOption ++ x.toList := by
  induction' l with hd tl hl generalizing x
  · cases x <;> simp [Option.toList]
  · simp only [concat_eq_append, reduceOption_append] at hl
    cases hd <;> simp [hl, reduceOption_append]

theorem reduceOption_concat_of_some (l : List (Option α)) (x : α) :
    (l.concat (some x)).reduceOption = l.reduceOption.concat x := by
  simp only [reduceOption_nil, concat_eq_append, reduceOption_append, reduceOption_cons_of_some]

theorem reduceOption_mem_iff {l : List (Option α)} {x : α} : x ∈ l.reduceOption ↔ some x ∈ l := by
  simp only [reduceOption, id, mem_filterMap, exists_eq_right]

theorem reduceOption_getElem?_iff {l : List (Option α)} {x : α} :
    (∃ i : ℕ, l[i]? = some (some x)) ↔ ∃ i : ℕ, l.reduceOption[i]? = some x := by
  rw [← mem_iff_getElem?, ← mem_iff_getElem?, reduceOption_mem_iff]

@[deprecated (since := "2025-02-21")]
alias reduceOption_get?_iff := reduceOption_getElem?_iff

end List
```
