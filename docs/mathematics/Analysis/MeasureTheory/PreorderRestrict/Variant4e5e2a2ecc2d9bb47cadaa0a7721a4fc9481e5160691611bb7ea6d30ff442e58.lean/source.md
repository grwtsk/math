# Complete source: GRWTSK.Analysis.MeasureTheory.PreorderRestrict.Variant4e5e2a2ecc2d9bb47cadaa0a7721a4fc9481e5160691611bb7ea6d30ff442e58

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `245776759ccb947b4625da466e07c8a6b2d00ca5` · SHA-256 `4e5e2a2ecc2d9bb47cadaa0a7721a4fc9481e5160691611bb7ea6d30ff442e58`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Etienne Marion. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Etienne Marion
-/
module

public import Mathlib.MeasureTheory.MeasurableSpace.Constructions
public import Mathlib.Order.Restriction

/-!
# Measurability of the restriction function for functions indexed by a preorder

We prove that the map which restricts a function `f : (i : α) → X i` to elements `≤ a` is
measurable.
-/

public section

namespace Preorder

variable {α : Type*} [Preorder α] {X : α → Type*} [∀ a, MeasurableSpace (X a)]

@[fun_prop]
theorem measurable_restrictLe (a : α) : Measurable (restrictLe (π := X) a) :=
    Set.measurable_restrict _

@[fun_prop]
theorem measurable_restrictLe₂ {a b : α} (hab : a ≤ b) : Measurable (restrictLe₂ (π := X) hab) :=
  Set.measurable_restrict₂ _

variable [LocallyFiniteOrderBot α]

@[fun_prop]
theorem measurable_frestrictLe (a : α) : Measurable (frestrictLe (π := X) a) :=
  Finset.measurable_restrict _

@[fun_prop]
theorem measurable_frestrictLe₂ {a b : α} (hab : a ≤ b) : Measurable (frestrictLe₂ (π := X) hab) :=
  Finset.measurable_restrict₂ _

end Preorder
```
