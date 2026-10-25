# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Small.Variant1ee05f7ee78029e3077646674461db9f9df1c150a4115961d4199388550e0cb9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `78757f1b20025c91ecd9d20642809cb84e044414` · SHA-256 `1ee05f7ee78029e3077646674461db9f9df1c150a4115961d4199388550e0cb9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

public import Mathlib.Basic.Countable.Defs
public import Mathlib.Logic.Small.Basic

/-!
# All countable types are small.

That is, any countable type is equivalent to a type in any universe.
-/

public section

universe w v

instance (priority := 100) Countable.toSmall (α : Type v) [Countable α] : Small.{w} α :=
  let ⟨_, hf⟩ := exists_injective_nat α
  small_of_injective hf

theorem Uncountable.of_not_small {α : Type v} (h : ¬ Small.{w} α) : Uncountable α := by
  rw [uncountable_iff_not_countable]
  exact mt (@Countable.toSmall α) h
```
