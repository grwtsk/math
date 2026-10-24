# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Array.Variant39dec4f1184f96a1253731b6b5a87f5514fa4751b926441df88decb0f72b8ee8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96c1d5720e6bf4cf43df6e58ff24567c91457567` · SHA-256 `d1fc764b04e53a4585a2c9f236c4dac4d513f18922957d192bffa4fe93f6036f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayIterMEqIterFromIdxM.Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"e54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.ArrayIterMEqIterFromIdxM.Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4","mathematical_subject":"Computation.DataStructures","original_sha256":"e54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Producers/Monadic/Array.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Producers.Monadic.Array
public import Std.Data.Iterators.Lemmas.Consumers.Monadic
public import Std.Data.Iterators.Lemmas.Producers.Monadic.List
public import Init.Data.Array.Lemmas
import Init.Data.List.Nat.TakeDrop
import Init.Data.List.TakeDrop
import Init.Omega


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.ArrayIterMEqIterFromIdxM.Variante54946da532a6f1f7d13eb4bda9793cb13d9131da6eadac3aea0c38e99586de4

@[expose] public section

/-!
# Lemmas about array iterators

This module provides lemmas about the interactions of `Array.iterM` with `IterM.step` and various
collectors.
-/

open Std Std.Iterators Std.Iterators.Types

variable {m : Type w → Type w'} [Monad m] {β : Type w}

theorem Array.iterM_eq_iterFromIdxM {array : Array β} :
    array.iterM m = array.iterFromIdxM m 0 :=
  rfl

theorem Array.step_iterFromIdxM {array : Array β} {pos : Nat} :
    (array.iterFromIdxM m pos).step = (pure <| .deflate <| if h : pos < array.size then
        .yield
          (array.iterFromIdxM m (pos + 1))
          array[pos]
          ⟨rfl, rfl, h, rfl⟩
      else
        .done (Nat.not_lt.mp h)) := by
  rfl

theorem Array.step_iterM {array : Array β} :
    (array.iterM m).step = (pure <| .deflate <| if h : 0 < array.size then
        .yield
          (array.iterFromIdxM m 1)
          array[0]
          ⟨rfl, rfl, h, rfl⟩
      else
        .done (Nat.not_lt.mp h)) := by
  rfl

section Equivalence

theorem Std.Iterators.Types.ArrayIterator.stepAsHetT_iterFromIdxM [LawfulMonad m] {array : Array β}
    {pos : Nat} :
    (array.iterFromIdxM m pos).stepAsHetT = (if _ : pos < array.size then
      pure (.yield (array.iterFromIdxM m (pos + 1)) array[pos])
    else
      pure .done) := by
  simp only [Array.iterFromIdxM, pure, HetT.ext_iff, Equivalence.property_step,
    IterM.IsPlausibleStep, instIterator, -- TODO
    Iterator.IsPlausibleStep, Equivalence.prun_step, ge_iff_le]
  refine ⟨?_, ?_⟩
  · ext step
    cases step
    · dsimp only
      split
      · simp only [HetT.property_pure, IterStep.yield.injEq, IterM.ext_iff, ArrayIterator.ext_iff]
        constructor
        · rintro ⟨rfl, h, h', rfl⟩
          exact ⟨⟨rfl, h.symm⟩, rfl⟩
        · rintro ⟨⟨rfl, h⟩, rfl⟩
          exact ⟨rfl, h.symm, ‹_›, rfl⟩
      · simp only [HetT.property_pure, reduceCtorEq, iff_false, not_and, not_exists]
        omega
    · dsimp only
      split <;> simp
    · dsimp only
      split <;> simp only [HetT.property_pure, reduceCtorEq, iff_false, Nat.not_le, iff_true] <;>
        omega
  · intro β f
    simp [IterM.step, Iterator.step]
    split <;> simp

theorem Array.iterFromIdxM_equiv_iterM_drop_toList {α : Type w} {array : Array α}
    {m : Type w → Type w'}
    [Monad m] [LawfulMonad m] {pos : Nat} :
    (array.iterFromIdxM m pos).Equiv ((array.toList.drop pos).iterM m) := by
  conv =>
    rhs
    rw [show pos = (array.iterFromIdxM m pos).internalState.pos from rfl]
    rw (occs := [2]) [show array = (array.iterFromIdxM m pos).internalState.array from rfl]
  generalize array.iterFromIdxM m pos = it
  apply IterM.Equiv.of_morphism
  intro it
  match it with
  | Array.iterFromIdxM array _ pos =>
    rw [ArrayIterator.stepAsHetT_iterFromIdxM, Types.ListIterator.stepAsHetT_iterM]
    simp [Array.iterFromIdxM]
    rw [show array = array.toList.toArray from Array.toArray_toList]
    generalize array.toList = l
    simp [Functor.map]
    split
    · rename_i heq
      rw [List.drop_eq_nil_iff] at heq
      rw [dif_neg (by omega)]
      simp [Pure.pure, HetT.pure_bind]
    · rename_i x xs heq
      have hlt : pos < l.length := by
        have := heq ▸ List.drop_eq_nil_iff
        simpa using this
      rw [dif_pos hlt]
      simp [Pure.pure]
      congr
      · rw [← List.drop_drop (i := 1) (j := pos), heq, List.drop_succ_cons, List.drop_zero]
      · have:= List.getElem_drop' (xs := l) (i := pos) (j := 0)
        simp only [Nat.add_zero, heq, List.getElem_cons_zero] at this
        exact (this hlt).symm

theorem Array.iterM_equiv_iterM_toList {α : Type w} {array : Array α} {m : Type w → Type w'}
    [Monad m] [LawfulMonad m] :
    (array.iterM m).Equiv (array.toList.iterM m) := by
  rw [Array.iterM_eq_iterFromIdxM]
  simpa using! iterFromIdxM_equiv_iterM_drop_toList

end Equivalence

@[simp, grind =]
theorem Array.toList_iterFromIdxM [LawfulMonad m] {array : Array β}
    {pos : Nat} :
    (array.iterFromIdxM m pos).toList = pure (array.toList.drop pos) := by
  simp [Array.iterFromIdxM_equiv_iterM_drop_toList.toList_eq]

@[simp, grind =]
theorem Array.toList_iterM [LawfulMonad m] {array : Array β} :
    (array.iterM m).toList = pure array.toList := by
  simp [Array.iterM_eq_iterFromIdxM, Array.toList_iterFromIdxM]

@[simp, grind =]
theorem Array.toArray_iterFromIdxM [LawfulMonad m] {array : Array β} {pos : Nat} :
    (array.iterFromIdxM m pos).toArray = pure (array.extract pos) := by
  simp [← IterM.toArray_toList, Array.toList_iterFromIdxM]
  rw (occs := [2]) [← Array.toArray_toList (xs := array)]
  rw [← List.toArray_drop]

@[simp, grind =]
theorem Array.toArray_iterM [LawfulMonad m] {array : Array β} :
    (array.iterM m).toArray = pure array := by
  simp [Array.iterM_eq_iterFromIdxM, Array.toArray_iterFromIdxM]

@[simp, grind =]
theorem Array.toListRev_iterFromIdxM [LawfulMonad m] {array : Array β} {pos : Nat} :
    (array.iterFromIdxM m pos).toListRev = pure (array.toList.drop pos).reverse := by
  simp [IterM.toListRev_eq, Array.toList_iterFromIdxM]

@[simp, grind =]
theorem Array.toListRev_iterM [LawfulMonad m] {array : Array β} :
    (array.iterM m).toListRev = pure array.toListRev := by
  simp [Array.iterM_eq_iterFromIdxM, Array.toListRev_iterFromIdxM]

@[simp, grind =]
theorem Array.length_iterFromIdxM [LawfulMonad m] {array : Array β} {pos : Nat} :
    (array.iterFromIdxM m pos).length = pure (.up (array.size - pos)) := by
  simp [← IterM.up_length_toList_eq_length]

@[simp, grind =]
theorem Array.length_iterM [LawfulMonad m] {array : Array β} :
    (array.iterM m).length = pure (.up array.size) := by
  simp [← IterM.up_length_toList_eq_length]
```
