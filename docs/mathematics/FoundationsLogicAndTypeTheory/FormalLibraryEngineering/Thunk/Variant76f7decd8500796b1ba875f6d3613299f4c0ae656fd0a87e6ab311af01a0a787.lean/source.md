# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Thunk.Variant76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2a314f96db0908c4d47d78cb459da4b6e6d442e1` · SHA-256 `76f7decd8500796b1ba875f6d3613299f4c0ae656fd0a87e6ab311af01a0a787`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Simon Hudon
-/
import Mathlib.Mathport.Rename
import Std.Tactic.Ext

/-!
# Basic facts about `Thunk`.
-/

set_option autoImplicit true

namespace Thunk

#align thunk.mk Thunk.mk

-- Porting note: Added `Thunk.ext` to get `ext` tactic to work.
@[ext]
theorem ext {α : Type u} {a b : Thunk α} (eq : a.get = b.get) : a = b := by
  have ⟨_⟩ := a
  have ⟨_⟩ := b
  congr
  exact funext fun _ ↦ eq

instance {α : Type u} [DecidableEq α] : DecidableEq (Thunk α) := by
  intro a b
  have : a = b ↔ a.get = b.get := ⟨by intro x; rw [x], by intro; ext; assumption⟩
  rw [this]
  infer_instance

/-- The product of two thunks. -/
def prod (a : Thunk α) (b : Thunk β) : Thunk (α × β) := Thunk.mk fun _ => (a.get, b.get)

@[simp] theorem prod_get_fst : (prod a b).get.1 = a.get := rfl
@[simp] theorem prod_get_snd : (prod a b).get.2 = b.get := rfl

end Thunk
```
