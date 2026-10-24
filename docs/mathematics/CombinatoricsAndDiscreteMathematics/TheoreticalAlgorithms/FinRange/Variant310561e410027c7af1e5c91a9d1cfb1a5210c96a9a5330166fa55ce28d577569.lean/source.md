# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinRange.Variant310561e410027c7af1e5c91a9d1cfb1a5210c96a9a5330166fa55ce28d577569

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ef9ee13b50e257a891ee77207a6995de68b870a4` · SHA-256 `6ce18da163cd545e45f9670e38c747b33c35d1b1adc3fa9313f9cd79eea9c395`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinRangeEqPmapRange.Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.FinRangeEqPmapRange.Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974","mathematical_subject":"Computation.DataStructures","original_sha256":"4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/spectral-proof-of-RH/lean/mathlib4/Mathlib/Data/List/FinRange.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kenny Lau, Kim Morrison, Alex Keizer
-/
import Mathlib.Data.List.OfFn
import Batteries.Data.List.Perm
import Mathlib.Data.List.Nodup

/-!
# Lists of elements of `Fin n`

This file develops some results on `finRange n`.
-/


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.FinRangeEqPmapRange.Variant4bb651e0c03ac13cb4bdf1fc2fb208339754ac858b7f70df718f3471a600a974

assert_not_exists Monoid

universe u

namespace List

variable {α : Type u}


theorem finRange_eq_pmap_range (n : ℕ) : finRange n = (range n).pmap Fin.mk (by simp) := by
  apply List.ext_getElem <;> simp [finRange]

@[simp]
theorem mem_finRange {n : ℕ} (a : Fin n) : a ∈ finRange n := by
  rw [finRange_eq_pmap_range]
  exact mem_pmap.2
    ⟨a.1, mem_range.2 a.2, by
      cases a
      rfl⟩

theorem nodup_finRange (n : ℕ) : (finRange n).Nodup := by
  rw [finRange_eq_pmap_range]
  exact (Pairwise.pmap nodup_range _) fun _ _ _ _ => @Fin.ne_of_val_ne _ ⟨_, _⟩ ⟨_, _⟩

@[simp]
theorem finRange_eq_nil {n : ℕ} : finRange n = [] ↔ n = 0 := by
  rw [← length_eq_zero_iff, length_finRange]

theorem pairwise_lt_finRange (n : ℕ) : Pairwise (· < ·) (finRange n) := by
  rw [finRange_eq_pmap_range]
  exact List.pairwise_lt_range.pmap (by simp) (by simp)

theorem pairwise_le_finRange (n : ℕ) : Pairwise (· ≤ ·) (finRange n) := by
  rw [finRange_eq_pmap_range]
  exact List.pairwise_le_range.pmap (by simp) (by simp)

@[simp]
lemma count_finRange {n : ℕ} (a : Fin n) : count a (finRange n) = 1 := by
  simp [count_eq_of_nodup (nodup_finRange n)]

theorem get_finRange {n : ℕ} {i : ℕ} (h) :
    (finRange n).get ⟨i, h⟩ = ⟨i, length_finRange (n := n) ▸ h⟩ := by
  simp

@[simp]
theorem finRange_map_get (l : List α) : (finRange l.length).map l.get = l :=
  List.ext_get (by simp) (by simp)

@[simp]
theorem finRange_map_getElem (l : List α) : (finRange l.length).map (l[·.1]) = l :=
  finRange_map_get l

@[simp] theorem idxOf_finRange {k : ℕ} (i : Fin k) : (finRange k).idxOf i = i := by
  simpa using idxOf_getElem (nodup_finRange k) i

@[deprecated (since := "2025-01-30")] alias indexOf_finRange := idxOf_get

@[simp]
theorem map_coe_finRange (n : ℕ) : ((finRange n) : List (Fin n)).map (Fin.val) = List.range n := by
  apply List.ext_getElem <;> simp

theorem finRange_succ_eq_map (n : ℕ) : finRange n.succ = 0 :: (finRange n).map Fin.succ := by
  apply map_injective_iff.mpr Fin.val_injective
  rw [map_cons, map_coe_finRange, range_succ_eq_map, Fin.val_zero, ← map_coe_finRange, map_map,
    map_map]
  simp only [Function.comp_def, Fin.val_succ]

theorem ofFn_eq_pmap {n} {f : Fin n → α} :
    ofFn f = pmap (fun i hi => f ⟨i, hi⟩) (range n) fun _ => mem_range.1 := by
  rw [pmap_eq_map_attach]
  exact ext_getElem (by simp) fun i hi1 hi2 => by simp [List.getElem_ofFn hi1]

theorem ofFn_id (n) : ofFn id = finRange n :=
  rfl

theorem ofFn_eq_map {n} {f : Fin n → α} : ofFn f = (finRange n).map f := by
  rw [← ofFn_id, map_ofFn, Function.comp_id]

theorem nodup_ofFn_ofInjective {n} {f : Fin n → α} (hf : Function.Injective f) :
    Nodup (ofFn f) := by
  rw [ofFn_eq_pmap]
  exact nodup_range.pmap fun _ _ _ _ H => Fin.val_eq_of_eq <| hf H

theorem nodup_ofFn {n} {f : Fin n → α} : Nodup (ofFn f) ↔ Function.Injective f := by
  refine ⟨?_, nodup_ofFn_ofInjective⟩
  refine Fin.consInduction ?_ (fun x₀ xs ih => ?_) f
  · intro _
    exact Function.injective_of_subsingleton _
  · intro h
    rw [Fin.cons_injective_iff]
    simp_rw [ofFn_succ, Fin.cons_succ, nodup_cons, Fin.cons_zero, mem_ofFn] at h
    exact h.imp_right ih

end List

open List

theorem Equiv.Perm.map_finRange_perm {n : ℕ} (σ : Equiv.Perm (Fin n)) :
    map σ (finRange n) ~ finRange n := by
  rw [perm_ext_iff_of_nodup ((nodup_finRange n).map σ.injective) <| nodup_finRange n]
  simpa [mem_map, mem_finRange] using σ.surjective

/-- The list obtained from a permutation of a tuple `f` is permutation equivalent to
the list obtained from `f`. -/
theorem Equiv.Perm.ofFn_comp_perm {n : ℕ} {α : Type u} (σ : Equiv.Perm (Fin n)) (f : Fin n → α) :
    ofFn (f ∘ σ) ~ ofFn f := by
  rw [ofFn_eq_map, ofFn_eq_map, ← map_map]
  exact σ.map_finRange_perm.map f
```
