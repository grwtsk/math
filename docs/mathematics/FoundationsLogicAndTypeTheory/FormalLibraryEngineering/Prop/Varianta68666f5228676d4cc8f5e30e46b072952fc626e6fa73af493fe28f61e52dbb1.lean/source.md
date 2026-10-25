# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Prop.Varianta68666f5228676d4cc8f5e30e46b072952fc626e6fa73af493fe28f61e52dbb1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65d39ce639cf3a8c52376d67f4705a03708df0f1` · SHA-256 `a68666f5228676d4cc8f5e30e46b072952fc626e6fa73af493fe28f61e52dbb1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2016 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Yury Kudryashov
-/
module

import Mathlib.Tactic.ToDual
public import Mathlib.Tactic.ToDual

/-!
# Order definitions for propositions

This file defines orders on `Pi` and `Prop`.
-/

public section

instance Pi.hasLe {ι : Type*} {π : ι → Type*} [∀ i, LE (π i)] : LE (∀ i, π i) where
  le x y := ∀ i, x i ≤ y i

@[to_dual self]
theorem Pi.le_def {ι : Type*} {π : ι → Type*} [∀ i, LE (π i)] {x y : ∀ i, π i} :
    x ≤ y ↔ ∀ i, x i ≤ y i :=
  .rfl

/-- Propositions form a complete Boolean algebra, where the `≤` relation is given by implication. -/
instance Prop.le : LE Prop :=
  ⟨(· → ·)⟩

@[simp]
theorem le_Prop_eq : ((· ≤ ·) : Prop → Prop → Prop) = (· → ·) :=
  rfl
```
