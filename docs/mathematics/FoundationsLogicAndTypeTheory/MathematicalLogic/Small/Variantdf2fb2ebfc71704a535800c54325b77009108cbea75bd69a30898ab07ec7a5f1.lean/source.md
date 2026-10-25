# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.MathematicalLogic.Small.Variantdf2fb2ebfc71704a535800c54325b77009108cbea75bd69a30898ab07ec7a5f1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3d293b8d32b1bb0b55451122e2549b98486ac00b` · SHA-256 `df2fb2ebfc71704a535800c54325b77009108cbea75bd69a30898ab07ec7a5f1`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2021 Kim Morrison. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
import Mathlib.Logic.Small.Basic
import Mathlib.Data.Countable.Defs

/-!
# All countable types are small.

That is, any countable type is equivalent to a type in any universe.
-/

universe w v

instance (priority := 100) Countable.toSmall (α : Type v) [Countable α] : Small.{w} α :=
  let ⟨_, hf⟩ := exists_injective_nat α
  small_of_injective hf

theorem Uncountable.of_not_small {α : Type v} (h : ¬ Small.{w} α) : Uncountable α := by
  rw [uncountable_iff_not_countable]
  exact mt (@Countable.toSmall α) h
```
