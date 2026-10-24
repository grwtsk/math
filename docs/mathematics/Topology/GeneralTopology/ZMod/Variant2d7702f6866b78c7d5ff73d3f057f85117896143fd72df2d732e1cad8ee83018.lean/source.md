# Complete source: GRWTSK.Topology.GeneralTopology.ZMod.Variant2d7702f6866b78c7d5ff73d3f057f85117896143fd72df2d732e1cad8ee83018

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `63390413d1a64d307332094a0fd1dc899d957fe1` · SHA-256 `2d7702f6866b78c7d5ff73d3f057f85117896143fd72df2d732e1cad8ee83018`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/
import Mathlib.Topology.Order
import Mathlib.Data.ZMod.Defs

/-!
# Topology on `ZMod N`

We equip `ZMod N` with the discrete topology.
-/

namespace ZMod

variable {N : ℕ}

/-- The discrete topology (every set is open). -/
instance : TopologicalSpace (ZMod N) := ⊥

instance : DiscreteTopology (ZMod N) := ⟨rfl⟩

end ZMod
```
