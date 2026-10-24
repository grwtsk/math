# Complete source: GRWTSK.Topology.GeneralTopology.Separation.Variant6789f671266bf77ac3533278b1864f1c5f805ed7183d5eb643d44b3633206bb2

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `0d727180d99a3f8c92bf135f52fca1a2b9665866` · SHA-256 `6789f671266bf77ac3533278b1864f1c5f805ed7183d5eb643d44b3633206bb2`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Dagur Asgeirsson. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Dagur Asgeirsson
-/
import Mathlib.Topology.Separation.Hausdorff
import Mathlib.Topology.Connected.TotallyDisconnected
/-!

# Separation and (dis)connectedness properties of topological spaces.

This file provides an instance `T2Space X` given `TotallySeparatedSpace X`.

## TODO
* Move the last part of `Topology/Separation` to this file.
-/


variable {X : Type*} [TopologicalSpace X]

section TotallySeparated

/-- A totally separated space is T2. -/
instance TotallySeparatedSpace.t2Space [TotallySeparatedSpace X] : T2Space X where
  t2 x y h := by
    obtain ⟨u, v, h₁, h₂, h₃, h₄, _, h₅⟩ := isTotallySeparated_univ trivial trivial h
    exact ⟨u, v, h₁, h₂, h₃, h₄, h₅⟩

end TotallySeparated
```
