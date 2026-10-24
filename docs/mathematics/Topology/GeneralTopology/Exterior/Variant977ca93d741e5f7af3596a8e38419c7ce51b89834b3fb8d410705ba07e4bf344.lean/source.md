# Complete source: GRWTSK.Topology.GeneralTopology.Exterior.Variant977ca93d741e5f7af3596a8e38419c7ce51b89834b3fb8d410705ba07e4bf344

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7161e4997a766fc938dabebb0a5d12b0f06e4fd8` · SHA-256 `977ca93d741e5f7af3596a8e38419c7ce51b89834b3fb8d410705ba07e4bf344`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Tactic.Peel
import Mathlib.Topology.Compactness.Compact
import Mathlib.Topology.Exterior

/-!
# Compactness of the exterior of a set

In this file we prove that the exterior of a set
(defined as the intersection of all of its neighborhoods)
is a compact set if and only if the original set is a compact set.
-/

variable {X : Type*} [TopologicalSpace X] {s : Set X}

theorem IsCompact.exterior_iff : IsCompact (exterior s) ↔ IsCompact s := by
  simp only [isCompact_iff_finite_subcover]
  peel with ι U hUo
  simp only [(isOpen_iUnion hUo).exterior_subset,
    (isOpen_iUnion fun i ↦ isOpen_iUnion fun _ ↦ hUo i).exterior_subset]

protected alias ⟨IsCompact.of_exterior, IsCompact.exterior⟩ := IsCompact.exterior_iff
```
