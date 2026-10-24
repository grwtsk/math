# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Append.Variant8fc743114829d9d4a8b9553b449f730bab6b68dd6a71cb516d6f0ed3f84af1e5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `87f7c6ffa5e9e887915ddb94ef0bf62b75126dee` · SHA-256 `69d37127260aea22fdc8c8f6ab10727391d778f1a3c02a758f595613e457bf9d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterMStepAppend.Varianta5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"a5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.IterMStepAppend.Varianta5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"a5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Lemmas/Combinators/Monadic/Append.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Combinators.Monadic.Append
public import Init.Data.Iterators.Consumers.Monadic.Collect
import Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect
import Init.Data.Iterators.Lemmas.Monadic.Basic
import Init.Data.List.Lemmas
import Init.Data.List.ToArray


namespace GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.IterMStepAppend.Varianta5e053956d9bcb4d11cff9b3358ee70501a8729422059b58ef9b89fa39bf0046

public section

namespace Std
open Std.Iterators Std.Iterators.Types

variable {α₁ α₂ β : Type w} {m : Type w → Type w'}

theorem IterM.step_append [Monad m] [Iterator α₁ m β] [Iterator α₂ m β]
    {it₁ : IterM (α := α₁) m β} {it₂ : IterM (α := α₂) m β} :
    (it₁.append it₂).step = (do
      match (← it₁.step).inflate with
      | .yield it₁' out h =>
        pure <| .deflate <| .yield (it₁'.append it₂) out (.fstYield h)
      | .skip it₁' h =>
        pure <| .deflate <| .skip (it₁'.append it₂) (.fstSkip h)
      | .done h =>
        pure <| .deflate <| .skip (IterM.Intermediate.appendSnd α₁ it₂) (.fstDone h)) := by
  simp only [append, Intermediate.appendSnd, step, Iterator.step]
  apply bind_congr; intro step
  cases step.inflate using PlausibleIterStep.casesOn <;> rfl

theorem IterM.Intermediate.step_appendSnd [Monad m] [Iterator α₁ m β] [Iterator α₂ m β]
    {it₂ : IterM (α := α₂) m β} :
    (IterM.Intermediate.appendSnd α₁ it₂).step = (do
      match (← it₂.step).inflate with
      | .yield it₂' out h =>
        pure <| .deflate <| .yield (IterM.Intermediate.appendSnd α₁ it₂') out (.sndYield h)
      | .skip it₂' h =>
        pure <| .deflate <| .skip (IterM.Intermediate.appendSnd α₁ it₂') (.sndSkip h)
      | .done h =>
        pure <| .deflate <| .done (.sndDone h)) := by
  simp only [Intermediate.appendSnd, step, Iterator.step]
  apply bind_congr; intro step
  cases step.inflate using PlausibleIterStep.casesOn <;> rfl

@[simp]
theorem IterM.toList_appendSnd [Monad m] [LawfulMonad m]
    [Iterator α₁ m β] [Iterator α₂ m β] [Finite α₁ m] [Finite α₂ m]
    {it₂ : IterM (α := α₂) m β} :
    (IterM.Intermediate.appendSnd α₁ it₂).toList = it₂.toList := by
  induction it₂ using IterM.inductSteps with | step it₂ ihy ihs
  rw [toList_eq_match_step (it := IterM.Intermediate.appendSnd α₁ it₂),
      toList_eq_match_step (it := it₂)]
  simp only [Intermediate.step_appendSnd, bind_assoc]
  apply bind_congr; intro step
  cases step.inflate using PlausibleIterStep.casesOn
  · simp [ihy ‹_›]
  · simp [ihs ‹_›]
  · simp

@[simp]
theorem IterM.toList_append [Monad m] [LawfulMonad m]
    [Iterator α₁ m β] [Iterator α₂ m β] [Finite α₁ m] [Finite α₂ m]
    {it₁ : IterM (α := α₁) m β} {it₂ : IterM (α := α₂) m β} :
    (it₁.append it₂).toList = (do
      let l₁ ← it₁.toList
      let l₂ ← it₂.toList
      pure (l₁ ++ l₂)) := by
  induction it₁ using IterM.inductSteps with | step it₁ ihy ihs
  rw [toList_eq_match_step (it := it₁.append it₂), toList_eq_match_step (it := it₁)]
  simp only [step_append, bind_assoc]
  apply bind_congr; intro step
  cases step.inflate using PlausibleIterStep.casesOn
  · simp [ihy ‹_›, - bind_pure_comp]
  · simp [ihs ‹_›]
  · simp [toList_appendSnd, - bind_pure_comp]

@[simp]
theorem IterM.toListRev_append [Monad m] [LawfulMonad m]
    [Iterator α₁ m β] [Iterator α₂ m β] [Finite α₁ m] [Finite α₂ m]
    {it₁ : IterM (α := α₁) m β} {it₂ : IterM (α := α₂) m β} :
    (it₁.append it₂).toListRev = (do
      let l₁ ← it₁.toListRev
      let l₂ ← it₂.toListRev
      pure (l₂ ++ l₁)) := by
  rw [toListRev_eq (it := it₁.append it₂), toList_append,
      toListRev_eq (it := it₁), toListRev_eq (it := it₂)]
  simp [map_bind, bind_pure_comp, List.reverse_append]

@[simp]
theorem IterM.toArray_append [Monad m] [LawfulMonad m]
    [Iterator α₁ m β] [Iterator α₂ m β] [Finite α₁ m] [Finite α₂ m]
    {it₁ : IterM (α := α₁) m β} {it₂ : IterM (α := α₂) m β} :
    (it₁.append it₂).toArray = (do
      let a₁ ← it₁.toArray
      let a₂ ← it₂.toArray
      pure (a₁ ++ a₂)) := by
  rw [← toArray_toList (it := it₁.append it₂), toList_append,
      ← toArray_toList (it := it₁), ← toArray_toList (it := it₂)]
  simp [map_bind, - bind_pure_comp, ← List.toArray_appendList, - toArray_toList]

end Std
```
