# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Drop.Variant752909e158671c4a3a39f80c9e48381c42c3f19a164028632b153d04c9c9a2dd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ce72f0d27b8049906b349f3731c757f00130602c` · SHA-256 `752909e158671c4a3a39f80c9e48381c42c3f19a164028632b153d04c9c9a2dd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Combinators.Monadic.Drop
public import Init.Data.Iterators.Lemmas.Consumers.Monadic

@[expose] public section

namespace Std

theorem IterM.step_drop {α m β} [Monad m] [Iterator α m β] {n : Nat}
    {it : IterM (α := α) m β} :
    (it.drop n).step = (do
      match (← it.step).inflate with
      | .yield it' out h =>
        match h' : n with
        | 0 => pure <| .deflate <| .yield (it'.drop 0) out (.yield h (h' ▸ rfl))
        | k + 1 => pure <| .deflate <| .skip (it'.drop k) (.drop h (h' ▸ rfl))
      | .skip it' h => pure <| .deflate <| .skip (it'.drop n) (.skip h)
      | .done h => pure <| .deflate <| .done (.done h)) := by
  simp only [drop, step, Iterator.step, IterM.internalState_mk, Nat.succ_eq_add_one]
  apply bind_congr
  intro step
  cases step.inflate using PlausibleIterStep.casesOn
  · cases n <;> rfl
  · rfl
  · rfl

end Std
```
