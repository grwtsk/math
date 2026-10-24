# Complete source: GRWTSK.Topology.GeneralTopology.PreorderRestrict.Variant001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f1aaee2396490044301db7d753a7c40a043e3f75` · SHA-256 `001dbb2c380c4604ca5860be2056ef25ab15703f0ff739dcd8280ecfe3095935`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Etienne Marion. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Etienne Marion
-/
import Mathlib.Order.Restriction
import Mathlib.Topology.Constructions

/-!
# Continuity of the restriction function for functions indexed by a preorder

We prove that the map which restricts a function `f : (i : α) → X i` to elements `≤ a` is
continuous.
-/

namespace Preorder

variable {α : Type*} [Preorder α] {X : α → Type*} [∀ i, TopologicalSpace (X i)]

@[continuity, fun_prop]
theorem continuous_restrictLe (a : α) : Continuous (restrictLe (π := X) a) :=
  Pi.continuous_restrict _

@[continuity, fun_prop]
theorem continuous_restrictLe₂ {a b : α} (hab : a ≤ b) : Continuous (restrictLe₂ (π := X) hab) :=
  Pi.continuous_restrict₂ _

variable [LocallyFiniteOrderBot α]

@[continuity, fun_prop]
theorem continuous_frestrictLe (a : α) : Continuous (frestrictLe (π := X) a) :=
  Finset.continuous_restrict _

@[continuity, fun_prop]
theorem continuous_frestrictLe₂ {a b : α} (hab : a ≤ b) :
    Continuous (frestrictLe₂ (π := X) hab) :=
  Finset.continuous_restrict₂ _

end Preorder
```
