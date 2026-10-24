# Complete source: GRWTSK.Analysis.MeasureTheory.NCard.Variant9fc444c3fa4bda2d49b92ad96fc9007ce37e868fc5668a0178bd7965eb002b16

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0729e807c657505f6d1608bdba34635c5d887feb` · SHA-256 `9fc444c3fa4bda2d49b92ad96fc9007ce37e868fc5668a0178bd7965eb002b16`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Data.Set.Card
import Mathlib.MeasureTheory.MeasurableSpace.Constructions

/-!
# Measurability of `Set.encard` and `Set.ncard`

In this file we prove that `Set.encard` and `Set.ncard` are measurable functions,
provided that the ambient space is countable.
-/

open Set

variable {α : Type*} [Countable α]

@[measurability]
theorem measurable_encard : Measurable (Set.encard : Set α → ℕ∞) :=
  ENat.measurable_iff.2 fun _n ↦ Countable.measurableSet <| Countable.setOf_finite.mono fun _s hs ↦
    finite_of_encard_eq_coe hs

@[measurability]
theorem measurable_ncard : Measurable (Set.ncard : Set α → ℕ) :=
  Measurable.of_discrete.comp measurable_encard
```
