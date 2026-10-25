# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TakeWhile.Varianted03918a4c49c6f284e404fcd9db80ef58f82eb338b8cbde3933f343063075f6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7d30fbd98bc4c8ae66a0f46b19219c5701bf8482` · SHA-256 `ed03918a4c49c6f284e404fcd9db80ef58f82eb338b8cbde3933f343063075f6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Combinators.Monadic.TakeWhile
public import Std.Data.Iterators.Lemmas.Consumers.Monadic

@[expose] public section

namespace Std
open Std.Iterators

theorem IterM.step_takeWhileWithPostcondition {α m β} [Monad m] [Iterator α m β]
    {it : IterM (α := α) m β} {P} :
    (it.takeWhileWithPostcondition P).step = (do
      match (← it.step).inflate with
      | .yield it' out h => match ← (P out).operation with
        | ⟨.up true, h'⟩ => pure <| .deflate <| .yield (it'.takeWhileWithPostcondition P) out (.yield h h')
        | ⟨.up false, h'⟩ => pure <| .deflate <| .done (.rejected h h')
      | .skip it' h => pure <| .deflate <| .skip (it'.takeWhileWithPostcondition P) (.skip h)
      | .done h => pure <| .deflate <| .done (.done h)) := by
  simp only [takeWhileWithPostcondition, step, Iterator.step, IterM.internalState_mk]
  apply bind_congr
  intro step
  cases step.inflate using PlausibleIterStep.casesOn <;> rfl

theorem IterM.step_takeWhileM {α m β} [Monad m] [MonadAttach m] [LawfulMonad m] [Iterator α m β]
    {it : IterM (α := α) m β} {P} :
    (it.takeWhileM P).step = (do
      match (← it.step).inflate with
      | .yield it' out h => match ← MonadAttach.attach (P out) with
        | ⟨.up true, hP⟩ => pure <| .deflate <| .yield (it'.takeWhileM P) out (.yield h hP)
        | ⟨.up false, hP⟩ => pure <| .deflate <| .done (.rejected h hP)
      | .skip it' h => pure <| .deflate <| .skip (it'.takeWhileM P) (.skip h)
      | .done h => pure <| .deflate <| .done (.done h)) := by
  simp only [takeWhileM, step_takeWhileWithPostcondition]
  apply bind_congr
  intro step
  cases step.inflate using PlausibleIterStep.casesOn
  · simp only [Function.comp_apply, PostconditionT.operation_attachLift, PlausibleIterStep.yield,
    PlausibleIterStep.done]
    apply bind_congr
    rintro ⟨⟨x⟩, hx⟩
    cases x <;> rfl
  · simp
  · simp

theorem IterM.step_takeWhile {α m β} [Monad m] [LawfulMonad m] [Iterator α m β]
    {it : IterM (α := α) m β} {P} :
    (it.takeWhile P).step = (do
      match (← it.step).inflate with
      | .yield it' out h => match hP : P out with
        | true => pure <| .deflate <| .yield (it'.takeWhile P) out (.yield h (by simpa))
        | false => pure <| .deflate <| .done (.rejected h (by simpa))
      | .skip it' h => pure <| .deflate <| .skip (it'.takeWhile P) (.skip h)
      | .done h => pure <| .deflate <| .done (.done h)) := by
  simp only [takeWhile, step_takeWhileWithPostcondition]
  apply bind_congr
  intro step
  cases step.inflate using PlausibleIterStep.casesOn
  · simp only [Function.comp_apply, PlausibleIterStep.yield, PlausibleIterStep.done,
      PostconditionT.operation_pure, pure_bind]
    split <;> split <;> simp_all
  · simp
  · simp

end Std
```
