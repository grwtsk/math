# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Empty.Variantbb8297fdad9fcd20c4c263634a608ffe9ba151c37c9fcf3f4a67fa60c4cd3866

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a5819b61989ab197f9abea983ced046c7d4ddf8c` · SHA-256 `bb8297fdad9fcd20c4c263634a608ffe9ba151c37c9fcf3f4a67fa60c4cd3866`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Std.Data.Iterators.Lemmas.Producers.Monadic.Empty
public import Init.Data.Iterators.Lemmas.Consumers
public import Std.Data.Iterators.Producers.Empty

@[expose] public section

namespace Std

@[simp]
theorem Iter.toIterM_empty {β} :
    (Iter.empty β).toIterM = IterM.empty Id β :=
  rfl

@[simp]
theorem Iter.step_empty {β} :
    (Iter.empty β).step = ⟨.done, rfl⟩ := by
  simp [Iter.step]; rfl

@[simp]
theorem Iter.toList_empty {β} :
    (Iter.empty β).toList = [] := by
  simp [Iter.toList_eq_toList_toIterM]

@[simp]
theorem Iter.toListRev_empty {β} :
    (Iter.empty β).toListRev = [] := by
  simp [Iter.toListRev_eq_toListRev_toIterM]

@[simp]
theorem Iter.toArray_empty {β} :
    (Iter.empty β).toArray = #[] := by
  simp [Iter.toArray_eq_toArray_toIterM]

@[simp]
theorem Iter.forIn_empty {m β γ} [Monad m] [LawfulMonad m]
    {init : γ} {f} :
    ForIn.forIn (m := m) (Iter.empty β) init f = pure init := by
  simp [Iter.forIn_eq_match_step]

@[simp]
theorem Iter.foldM_empty {m β γ} [Monad m] [LawfulMonad m]
    {init : γ} {f} :
    (Iter.empty β).foldM (m := m) (init := init) f = pure init := by
  simp [Iter.foldM_eq_forIn]

@[simp]
theorem Iter.fold_empty {β γ} {init : γ} {f} :
    (Iter.empty β).fold (init := init) f = init := by
  simp [Iter.fold_eq_foldM]

end Std
```
