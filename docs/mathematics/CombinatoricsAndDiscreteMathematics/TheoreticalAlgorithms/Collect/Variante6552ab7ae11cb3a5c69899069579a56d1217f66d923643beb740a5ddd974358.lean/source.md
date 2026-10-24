# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Collect.Variante6552ab7ae11cb3a5c69899069579a56d1217f66d923643beb740a5ddd974358

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `de346b9b9be3384054909349d1aa915ee0883250` · SHA-256 `41c8e930f79909750b3dec00b78bd0351c3e3b26736652ce6bde87d7db9dcdd1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterMRunToListMkPrime.Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterMRunToListMkPrime.Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Lemmas/Consumers/Collect.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Consumers.Access
import all Init.Data.Iterators.Consumers.Access
import all Init.Data.Iterators.Consumers.Collect
import all Init.Data.Iterators.Consumers.Total
import all Init.Data.Iterators.Consumers.Monadic.Total
public import Init.Data.Iterators.Consumers.Collect
import Init.Data.Array.Bootstrap
import Init.Data.Array.Lemmas
import Init.Data.Iterators.Lemmas.Basic
import Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect
import Init.Data.Option.Lemmas


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterMRunToListMkPrime.Variant937752164c3888ea35e5e0653a996f9bab117a7c42fbe0147f71fb365537ef40

public section

namespace Std
open Std.Iterators

@[simp]
theorem IterM.run_toList_mk' {α : Type u} {β : Type u} [Std.Iterator α Id β] (a : α) :
    (Std.IterM.mk (m := Id) a).toList.run = (Std.Iter.mk a).toList := rfl

theorem Iter.toArray_eq_toArray_toIterM {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.toArray = it.toIterM.toArray.run :=
  (rfl)

theorem Iter.toList_eq_toList_toIterM {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.toList = it.toIterM.toList.run :=
  (rfl)

theorem Iter.toListRev_eq_toListRev_toIterM {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.toListRev = it.toIterM.toListRev.run :=
  (rfl)

@[simp]
theorem Iter.toArray_ensureTermination {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.ensureTermination.toArray = it.toArray :=
  (rfl)

@[simp]
theorem Iter.toList_ensureTermination {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.ensureTermination.toList = it.toList :=
  (rfl)

@[simp]
theorem Iter.toListRev_ensureTermination_eq_toListRev {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} : it.ensureTermination.toListRev = it.toListRev :=
  (rfl)

@[simp]
theorem IterM.toArray_toIter {α β} [Iterator α Id β] [Finite α Id]
    {it : IterM (α := α) Id β} :
    it.toIter.toArray = it.toArray.run :=
  (rfl)

@[simp]
theorem IterM.toList_toIter {α β} [Iterator α Id β] [Finite α Id]
    {it : IterM (α := α) Id β} :
    it.toIter.toList = it.toList.run :=
  (rfl)

@[simp]
theorem IterM.toListRev_toIter {α β} [Iterator α Id β] [Finite α Id]
    {it : IterM (α := α) Id β} :
    it.toIter.toListRev = it.toListRev.run :=
  (rfl)

@[simp]
theorem Iter.toList_toArray {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.toArray.toList = it.toList := by
  simp [toArray_eq_toArray_toIterM, toList_eq_toList_toIterM, ← IterM.toList_toArray]

theorem Iter.toList_toArray_ensureTermination {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.ensureTermination.toArray.toList = it.toList := by
  simp

@[cbv_eval ←, simp]
theorem Iter.toArray_toList {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.toList.toArray = it.toArray := by
  simp [toArray_eq_toArray_toIterM, toList_eq_toList_toIterM, ← IterM.toArray_toList]

theorem Iter.toArray_toList_ensureTermination {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.ensureTermination.toList.toArray = it.toArray := by
  simp

@[simp]
theorem Iter.reverse_toListRev [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.toListRev.reverse = it.toList := by
  simp [toListRev_eq_toListRev_toIterM, toList_eq_toList_toIterM, ← IterM.reverse_toListRev]

theorem Iter.reverse_toListRev_ensureTermination [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.ensureTermination.toListRev.reverse = it.toList := by
  simp

@[cbv_eval]
theorem Iter.toListRev_eq {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.toListRev = it.toList.reverse := by
  simp [Iter.toListRev_eq_toListRev_toIterM, Iter.toList_eq_toList_toIterM, IterM.toListRev_eq]

theorem Iter.toListRev_ensureTermination {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.ensureTermination.toListRev = it.toList.reverse := by
  simp [toListRev_eq]

theorem Iter.toArray_eq_match_step {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.toArray = match it.step.val with
      | .yield it' out => #[out] ++ it'.toArray
      | .skip it' => it'.toArray
      | .done => #[] := by
  simp only [Iter.toArray_eq_toArray_toIterM, Iter.step]
  rw [IterM.toArray_eq_match_step, Id.run_bind]
  generalize it.toIterM.step.run = step
  cases step.inflate using PlausibleIterStep.casesOn <;> simp

theorem Iter.toArray_ensureTermination_eq_match_step {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.ensureTermination.toArray = match it.step.val with
      | .yield it' out => #[out] ++ it'.toArray
      | .skip it' => it'.toArray
      | .done => #[] := by
  rw [toArray_ensureTermination, toArray_eq_match_step]

theorem Iter.toList_eq_match_step {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.toList = match it.step.val with
      | .yield it' out => out :: it'.toList
      | .skip it' => it'.toList
      | .done => [] := by
  rw [← Iter.toList_toArray, Iter.toArray_eq_match_step]
  split <;> simp [Iter.toList_toArray]

theorem Iter.toList_ensureTermination_eq_match_step {α β} [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} :
    it.ensureTermination.toList = match it.step.val with
      | .yield it' out => out :: it'.toList
      | .skip it' => it'.toList
      | .done => [] := by
  rw [toList_ensureTermination, toList_eq_match_step]

theorem Iter.toListRev_eq_match_step {α β} [Iterator α Id β] [Finite α Id] {it : Iter (α := α) β} :
    it.toListRev = match it.step.val with
      | .yield it' out => it'.toListRev ++ [out]
      | .skip it' => it'.toListRev
      | .done => [] := by
  rw [Iter.toListRev_eq_toListRev_toIterM, IterM.toListRev_eq_match_step, Iter.step, Id.run_bind]
  generalize it.toIterM.step.run = step
  cases step.inflate using PlausibleIterStep.casesOn <;> simp

theorem Iter.toListRev_ensureTermination_eq_match_step {α β} [Iterator α Id β] [Finite α Id] {it : Iter (α := α) β} :
    it.ensureTermination.toListRev = match it.step.val with
      | .yield it' out => it'.toListRev ++ [out]
      | .skip it' => it'.toListRev
      | .done => [] := by
  rw [toListRev_ensureTermination_eq_toListRev, toListRev_eq_match_step]

theorem Iter.getElem?_toList_eq_atIdxSlow? {α β}
    [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} {k : Nat} :
    it.toList[k]? = it.atIdxSlow? k := by
  induction it using Iter.inductSteps generalizing k with | step it ihy ihs
  rw [toList_eq_match_step, atIdxSlow?, WellFounded.extrinsicFix₂_eq_apply]
  · obtain ⟨step, h⟩ := it.step
    cases step
    · cases k <;> simp [ihy h, atIdxSlow?]
    · simp [ihs h, atIdxSlow?]
    · simp
  · apply InvImage.wf
    exact WellFoundedRelation.wf

theorem Iter.toList_eq_of_atIdxSlow?_eq {α₁ α₂ β}
    [Iterator α₁ Id β] [Finite α₁ Id]
    [Iterator α₂ Id β] [Finite α₂ Id]
    {it₁ : Iter (α := α₁) β} {it₂ : Iter (α := α₂) β}
    (h : ∀ k, it₁.atIdxSlow? k = it₂.atIdxSlow? k) :
    it₁.toList = it₂.toList := by
  ext; simp [getElem?_toList_eq_atIdxSlow?, h]

theorem Iter.isPlausibleIndirectOutput_of_mem_toList
    [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} {b : β} :
    b ∈ it.toList → it.IsPlausibleIndirectOutput b := by
  induction it using Iter.inductSteps with | step it ihy ihs
  rw [toList_eq_match_step]
  cases it.step using PlausibleIterStep.casesOn
  case yield it' out h =>
    simp only [List.mem_cons]
    rintro h'
    cases h' <;> rename_i h'
    · cases h'
      exact .direct ⟨_, h⟩
    · specialize ihy h h'
      exact IsPlausibleIndirectOutput.indirect ⟨_, rfl, h⟩ ihy
  case skip it' h =>
    simp only
    intro h'
    specialize ihs h h'
    exact IsPlausibleIndirectOutput.indirect ⟨_, rfl, h⟩ ihs
  case done h =>
    simp

theorem Iter.isPlausibleIndirectOutput_of_mem_toListRev
    [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} {b : β} :
    b ∈ it.toListRev → it.IsPlausibleIndirectOutput b := by
  intro h
  apply isPlausibleIndirectOutput_of_mem_toList
  simpa [toListRev_eq] using h

theorem Iter.isPlausibleIndirectOutput_of_mem_toArray
    [Iterator α Id β] [Finite α Id]
    {it : Iter (α := α) β} {b : β} :
    b ∈ it.toArray → it.IsPlausibleIndirectOutput b := by
  intro h
  apply isPlausibleIndirectOutput_of_mem_toList
  rw [← Array.mem_toList_iff] at h
  simpa [toList_toArray] using h

end Std
```
