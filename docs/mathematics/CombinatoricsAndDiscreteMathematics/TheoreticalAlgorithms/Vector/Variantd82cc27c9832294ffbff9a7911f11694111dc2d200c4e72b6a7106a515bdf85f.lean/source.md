# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Vector.Variantd82cc27c9832294ffbff9a7911f11694111dc2d200c4e72b6a7106a515bdf85f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1680bae090571eeeb4ea745a2ce23e5f37cf200` · SHA-256 `d15c6070e6a6547d8fc07f0599ac071a62cfdf717c686dcfe82c8013ecffa04d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.VectorIterMEqIterFromIdxM.Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.DataStructures.SourceCorpus.VectorIterMEqIterFromIdxM.Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128","mathematical_subject":"Computation.DataStructures","original_sha256":"2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Data/Iterators/Lemmas/Producers/Monadic/Vector.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Lemmas.Producers.Monadic.Array
public import Std.Data.Iterators.Producers.Monadic.Vector
public import Std.Data.Iterators.Lemmas.Consumers.Monadic
public import Std.Data.Iterators.Lemmas.Producers.Monadic.List
public import Init.Data.Array.Lemmas
import Init.Data.List.Nat.TakeDrop
import Init.Data.List.TakeDrop
import Init.Omega
import Init.Data.Vector.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.VectorIterMEqIterFromIdxM.Variant2e43294d8a3dc5b08a9c8a1992c8ef2d743420771f649bdd868d672c1d47d128

set_option doc.verso true

open Std Std.Iterators

@[expose] public section

/-!
# Lemmas about vector iterators

This module provides lemmas about the interactions of {name}`Vector.iterM` with {name}`IterM.step`
and various
collectors.
-/

variable {m : Type w → Type w'} [Monad m] {β : Type w} {n : Nat}

theorem Vector.iterM_eq_iterFromIdxM {xs : Vector β n} :
    xs.iterM m = xs.iterFromIdxM m 0 :=
  rfl

theorem Std.Iterators.Vector.isPlausibleStep_iterFromIdxM_of_lt {xs : Vector β n} {pos : Nat}
    (h : pos < n) :
    (xs.iterFromIdxM m pos).IsPlausibleStep (.yield (xs.iterFromIdxM m (pos + 1)) xs[pos]) := by
  simp only [IterM.IsPlausibleStep, Iterator.IsPlausibleStep]
  refine ⟨rfl, rfl, ?_, rfl⟩
  simpa [Vector.iterFromIdxM, Array.iterFromIdxM] using h

theorem Std.Iterators.Vector.isPlausibleStep_iterFromIdxM_of_not_lt {xs : Vector β n} {pos : Nat}
    (h : ¬ pos < n) :
    (xs.iterFromIdxM m pos).IsPlausibleStep .done := by
  simp only [IterM.IsPlausibleStep, Iterator.IsPlausibleStep, Types.ArrayIterator.instIterator] -- TODO
  simpa [Vector.iterFromIdxM, Array.iterFromIdxM, Nat.not_lt] using h

theorem Std.Iterators.Vector.isPlausibleStep_iterM_of_pos {xs : Vector β n}
    (h : 0 < n) :
    (xs.iterM m).IsPlausibleStep (.yield (xs.iterFromIdxM m 1) xs[0]) := by
  simp only [Vector.iterM_eq_iterFromIdxM]
  exact isPlausibleStep_iterFromIdxM_of_lt h

theorem Std.Iterators.Vector.isPlausibleStep_iterM_of_not_pos {xs : Vector β n}
    (h : ¬ 0 < n) :
    (xs.iterM m).IsPlausibleStep .done := by
  simp only [Vector.iterM_eq_iterFromIdxM]
  exact isPlausibleStep_iterFromIdxM_of_not_lt h

@[simp, grind =]
theorem Vector.iterFromIdxM_toArray {xs : Vector β n} {pos : Nat} :
    xs.toArray.iterFromIdxM m pos = xs.iterFromIdxM m pos :=
  rfl

@[simp, grind =]
theorem Vector.iterM_toArray {xs : Vector β n} :
    xs.toArray.iterM m = xs.iterM m :=
  rfl

theorem Vector.step_iterFromIdxM {xs : Vector β n} {pos : Nat} :
    (xs.iterFromIdxM m pos).step = (pure <| .deflate <| if h : pos < n then
        .yield
          (xs.iterFromIdxM m (pos + 1))
          xs[pos]
          (Vector.isPlausibleStep_iterFromIdxM_of_lt h)
      else
        .done (Vector.isPlausibleStep_iterFromIdxM_of_not_lt h)) := by
  simp [← Vector.iterFromIdxM_toArray, Array.step_iterFromIdxM]

theorem Vector.step_iterM {xs : Vector β n} :
    (xs.iterM m).step = (pure <| .deflate <| if h : 0 < n then
        .yield
          (xs.iterFromIdxM m 1)
          xs[0]
          (Vector.isPlausibleStep_iterM_of_pos h)
      else
        .done (Vector.isPlausibleStep_iterM_of_not_pos h)) := by
  simp [← Vector.iterFromIdxM_toArray, ← Vector.iterM_toArray, Array.step_iterM]

section Equivalence

theorem Vector.iterFromIdxM_equiv_iterM_drop_toList {α : Type w} {xs : Vector α n}
    {m : Type w → Type w'} [Monad m] [LawfulMonad m] {pos : Nat} :
    (xs.iterFromIdxM m pos).Equiv ((xs.toList.drop pos).iterM m) := by
  simp only [← Vector.iterFromIdxM_toArray]
  apply Array.iterFromIdxM_equiv_iterM_drop_toList

theorem Vector.iterM_equiv_iterM_toList {α : Type w} {xs : Vector α n} {m : Type w → Type w'}
    [Monad m] [LawfulMonad m] :
    (xs.iterM m).Equiv (xs.toList.iterM m) := by
  simp only [← Vector.iterM_toArray]
  apply Array.iterM_equiv_iterM_toList

end Equivalence

@[simp, grind =]
theorem Vector.toList_iterFromIdxM [LawfulMonad m] {xs : Vector β n} {pos : Nat} :
    (xs.iterFromIdxM m pos).toList = pure (xs.toList.drop pos) := by
  simp [← Vector.iterFromIdxM_toArray, Vector.toList_toArray]

@[simp, grind =]
theorem Vector.toList_iterM [LawfulMonad m] {xs : Vector β n} :
    (xs.iterM m).toList = pure xs.toList := by
  simp [← Vector.iterM_toArray, Vector.toList_toArray]

@[simp, grind =]
theorem Vector.toArray_iterFromIdxM [LawfulMonad m] {xs : Vector β n} {pos : Nat} :
    (xs.iterFromIdxM m pos).toArray = pure (xs.toArray.extract pos n) := by
  simp [← Vector.iterFromIdxM_toArray]

@[simp, grind =]
theorem Vector.toArray_iterM [LawfulMonad m] {xs : Vector β n} :
    (xs.iterM m).toArray = pure xs.toArray := by
  simp [← Vector.iterM_toArray]

@[simp, grind =]
theorem Vector.toListRev_iterFromIdxM [LawfulMonad m] {xs : Vector β n} {pos : Nat} :
    (xs.iterFromIdxM m pos).toListRev = pure (xs.toList.drop pos).reverse := by
  simp [← Vector.iterFromIdxM_toArray, Vector.toList_toArray]

@[simp, grind =]
theorem Vector.toListRev_iterM [LawfulMonad m] {xs : Vector β n} :
    (xs.iterM m).toListRev = pure xs.toList.reverse := by
  simp [← Vector.iterM_toArray, Vector.toList_toArray]

@[simp, grind =]
theorem Vector.length_iterFromIdxM [LawfulMonad m] {xs : Vector β n} {pos : Nat} :
    (xs.iterFromIdxM m pos).length = pure (.up (n - pos)) := by
  simp [← IterM.up_length_toList_eq_length]

@[simp, grind =]
theorem Vector.length_iterM [LawfulMonad m] {xs : Vector β n} :
    (xs.iterM m).length = pure (.up n) := by
  simp [← IterM.up_length_toList_eq_length]
```
