# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.FinRange.Variant1d7448b1cf6d49852c5891e94edb819a1a72cd3b794c2985e675907669aa8e2a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec90a4941f4ce0e99491815d95e6613a418c240d` · SHA-256 `de5313fa301cbe4adeaeb138f49725d02f2051185bd5fcf82849ac1f63923c23`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.MathematicalLogic
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CountFinRange.Variant7e7bbea5337f6b370add308e70dc6936368ec7028a0cb7d9da9eb68b114559b8","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"7e7bbea5337f6b370add308e70dc6936368ec7028a0cb7d9da9eb68b114559b8","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Logic.Foundations.SourceCorpus.CountFinRange.Variant7e7bbea5337f6b370add308e70dc6936368ec7028a0cb7d9da9eb68b114559b8","mathematical_subject":"Logic.Foundations","original_sha256":"7e7bbea5337f6b370add308e70dc6936368ec7028a0cb7d9da9eb68b114559b8","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/Mathlib/Data/List/FinRange.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2018 Mario Carneiro. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Mario Carneiro, Kenny Lau, Kim Morrison, Alex Keizer
-/
module

public import Mathlib.Data.List.Nodup
public import Mathlib.Data.Fin.Tuple.Basic

/-!
# Lists of elements of `Fin n`

This file develops some results on `finRange n`.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.CountFinRange.Variant7e7bbea5337f6b370add308e70dc6936368ec7028a0cb7d9da9eb68b114559b8

public section

assert_not_exists Monoid

universe u

namespace List

variable {α : Type u}


@[simp]
lemma count_finRange {n : ℕ} (a : Fin n) : count a (finRange n) = 1 := by
  simp [List.Nodup.count (nodup_finRange n)]

@[simp] theorem idxOf_finRange {k : ℕ} (i : Fin k) : (finRange k).idxOf i = i := by
  simpa using (nodup_finRange k).idxOf_getElem i

theorem ofFn_eq_pmap {n} {f : Fin n → α} :
    ofFn f = pmap (fun i hi => f ⟨i, hi⟩) (range n) fun _ => mem_range.1 := by
  ext
  grind

theorem ofFn_id (n) : ofFn id = finRange n :=
  (rfl)

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
  simpa [mem_map, mem_finRange] using! σ.surjective

/-- The list obtained from a permutation of a tuple `f` is permutation equivalent to
the list obtained from `f`. -/
theorem Equiv.Perm.ofFn_comp_perm {n : ℕ} {α : Type u} (σ : Equiv.Perm (Fin n)) (f : Fin n → α) :
    ofFn (f ∘ σ) ~ ofFn f := by
  rw [ofFn_eq_map, ofFn_eq_map, ← map_map]
  exact σ.map_finRange_perm.map f
```
