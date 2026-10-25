# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Take.Variantc1578a506fe36bbbc0d0ad7ceced62e0e0498b6b8d7accfc4b5873e8ec4c2744

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0142bab74ffa589e8f550f8ec295e6840a1cb7a3` · SHA-256 `35fe67236c8f48d033bf3db989995221a2bba82f89021c545e448243e7fdc4ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TakeIsPlausibleStepTakeYield.Variant2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.TakeIsPlausibleStepTakeYield.Variant2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Init/Data/Iterators/Lemmas/Combinators/Monadic/Take.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Iterators.Combinators.Monadic.Take
public import Init.Data.Iterators.Consumers.Monadic.Collect
import Init.Data.Iterators.Lemmas.Consumers.Monadic.Collect
import Init.Data.Iterators.Lemmas.Monadic.Basic
import Init.Data.Nat.Lemmas


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TakeIsPlausibleStepTakeYield.Variant2b14d1d9dd4322ccdf1ab115feb21b10c4a8f915ab5c18c8e37cf8de9487295d

@[expose] public section

namespace Std
open Std.Iterators Std.Iterators.Types

namespace Iterators.Types

theorem Take.isPlausibleStep_take_yield [Monad m] [Iterator α m β] {n : Nat}
    {it : IterM (α := α) m β} (h : it.IsPlausibleStep (.yield it' out)) :
    (it.take (n + 1)).IsPlausibleStep (.yield (it'.take n) out) :=
  (.yield h (by simp [IterM.take]))

theorem Take.isPlausibleStep_take_skip [Monad m] [Iterator α m β] {n : Nat}
    {it : IterM (α := α) m β} (h : it.IsPlausibleStep (.skip it')) :
    (it.take (n + 1)).IsPlausibleStep (.skip (it'.take (n + 1))) :=
  (.skip h (by simp [IterM.take]))

end Iterators.Types

theorem IterM.step_take {α m β} [Monad m] [Iterator α m β] {n : Nat}
    {it : IterM (α := α) m β} :
    (it.take n).step = (match n with
      | 0 => pure <| .deflate <| .done (.depleted rfl)
      | k + 1 => do
        match (← it.step).inflate with
        | .yield it' out h => pure <| .deflate <| .yield (it'.take k) out (Take.isPlausibleStep_take_yield h)
        | .skip it' h => pure <| .deflate <| .skip (it'.take (k + 1)) (Take.isPlausibleStep_take_skip h)
        | .done h => pure <| .deflate <| .done (.done h)) := by
  simp only [take, step, Iterator.step, IterM.internalState_mk]
  cases n
  case zero => rfl
  case succ k =>
    apply bind_congr
    intro step
    cases step.inflate using PlausibleIterStep.casesOn <;> rfl

theorem IterM.toList_take_zero {α m β} [Monad m] [LawfulMonad m] [Iterator α m β]
    [Finite (Take α m) m]
    {it : IterM (α := α) m β} :
    (it.take 0).toList = pure [] := by
  rw [toList_eq_match_step]
  simp [step_take]

theorem IterM.step_toTake {α m β} [Monad m] [Iterator α m β] [Finite α m]
    {it : IterM (α := α) m β} :
    it.toTake.step = (do
        match (← it.step).inflate with
        | .yield it' out h => pure <| .deflate <| .yield it'.toTake out (.yield h Nat.zero_ne_one)
        | .skip it' h => pure <| .deflate <| .skip it'.toTake (.skip h Nat.zero_ne_one)
        | .done h => pure <| .deflate <| .done (.done h)) := by
  simp only [toTake, step, Iterator.step, IterM.internalState_mk]
  apply bind_congr
  intro step
  cases step.inflate using PlausibleIterStep.casesOn <;> rfl

@[simp]
theorem IterM.toList_toTake {α m β} [Monad m] [LawfulMonad m] [Iterator α m β] [Finite α m]
    {it : IterM (α := α) m β} :
    it.toTake.toList = it.toList := by
  induction it using IterM.inductSteps with | step it ihy ihs
  rw [toList_eq_match_step, toList_eq_match_step]
  simp only [step_toTake, bind_assoc]
  apply bind_congr; intro step
  cases step.inflate using PlausibleIterStep.casesOn
  · simp [ihy ‹_›]
  · simp [ihs ‹_›]
  · simp

end Std
```
