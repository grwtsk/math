# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Mem.Variant95a9bb7bafa2d0216e71c5b4e8eed0318ed53ff994630992aa08467db8926ec4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `80665e84571f035e07abd6a137ceb1542f01b3fb` · SHA-256 `6fbcc3a43c398fcfe1772b7159f63d180e532179e49d38a7f8a00b91b121302f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GetMem.Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.GetMem.Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c","mathematical_subject":"Computation.DataStructures","original_sha256":"8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/Vector/Mem.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Devon Tuma. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Devon Tuma
-/
module

public import Mathlib.Data.Vector.Basic

/-!
# Theorems about membership of elements in vectors

This file contains theorems for membership in a `v.toList` for a vector `v`.
Having the length available in the type allows some of the lemmas to be
  simpler and more general than the original version for lists.
In particular we can avoid some assumptions about types being `Inhabited`,
  and make more general statements about `head` and `tail`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.GetMem.Variant8f67e704e9cb7117a44c0ea3e1be8c72fe53ecaaf435b7d6fd708034d839c21c

public section

namespace List

namespace Vector

variable {α β : Type*} {n : ℕ} (a a' : α)

@[simp]
theorem get_mem (i : Fin n) (v : Vector α n) : v.get i ∈ v.toList := List.get_mem _ _

theorem mem_iff_get (v : Vector α n) : a ∈ v.toList ↔ ∃ i, v.get i = a := by
  simp only [List.mem_iff_get, Fin.exists_iff, Vector.get_eq_get_toList]
  exact
    ⟨fun ⟨i, hi, h⟩ => ⟨i, by rwa [toList_length] at hi, h⟩, fun ⟨i, hi, h⟩ =>
      ⟨i, by rwa [toList_length], h⟩⟩

theorem notMem_nil : a ∉ (Vector.nil : Vector α 0).toList := by
  simp

theorem notMem_zero (v : Vector α 0) : a ∉ v.toList :=
  (Vector.eq_nil v).symm ▸ notMem_nil a

theorem mem_cons_iff (v : Vector α n) : a' ∈ (a ::ᵥ v).toList ↔ a' = a ∨ a' ∈ v.toList := by
  rw [Vector.toList_cons, List.mem_cons]

theorem mem_succ_iff (v : Vector α (n + 1)) : a ∈ v.toList ↔ a = v.head ∨ a ∈ v.tail.toList := by
  obtain ⟨a', v', h⟩ := exists_eq_cons v
  simp_rw [h, Vector.mem_cons_iff, Vector.head_cons, Vector.tail_cons]

theorem mem_cons_self (v : Vector α n) : a ∈ (a ::ᵥ v).toList :=
  (Vector.mem_iff_get a (a ::ᵥ v)).2 ⟨0, Vector.get_cons_zero a v⟩

@[simp]
theorem head_mem (v : Vector α (n + 1)) : v.head ∈ v.toList :=
  (Vector.mem_iff_get v.head v).2 ⟨0, Vector.get_zero v⟩

theorem mem_cons_of_mem (v : Vector α n) (ha' : a' ∈ v.toList) : a' ∈ (a ::ᵥ v).toList :=
  (Vector.mem_cons_iff a a' v).2 (Or.inr ha')

theorem mem_of_mem_tail (v : Vector α n) (ha : a ∈ v.tail.toList) : a ∈ v.toList := by
  induction n with
  | zero => exact False.elim (Vector.notMem_zero a v.tail ha)
  | succ n _ => exact (mem_succ_iff a v).2 (Or.inr ha)

theorem mem_map_iff (b : β) (v : Vector α n) (f : α → β) :
    b ∈ (v.map f).toList ↔ ∃ a : α, a ∈ v.toList ∧ f a = b := by
  rw [Vector.toList_map, List.mem_map]

theorem notMem_map_zero (b : β) (v : Vector α 0) (f : α → β) : b ∉ (v.map f).toList := by
  simpa only [Vector.eq_nil v, Vector.map_nil, Vector.toList_nil] using List.not_mem_nil

theorem mem_map_succ_iff (b : β) (v : Vector α (n + 1)) (f : α → β) :
    b ∈ (v.map f).toList ↔ f v.head = b ∨ ∃ a : α, a ∈ v.tail.toList ∧ f a = b := by
  rw [mem_succ_iff, head_map, tail_map, mem_map_iff, @eq_comm _ b]

end Vector

end List
```
