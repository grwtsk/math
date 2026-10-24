# Complete source: GRWTSK.Topology.GeneralTopology.NhdsKer.Variantb42e2b5c598413e6cc669792c4e2f90b355e308d52914dc04725e6b88cb7f927

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `462ffd61abad46c6ac44c72f8ebabb6b9c10f64d` · SHA-256 `b42e2b5c598413e6cc669792c4e2f90b355e308d52914dc04725e6b88cb7f927`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
module

public import Mathlib.Tactic.Peel
public import Mathlib.Topology.Compactness.Compact
public import Mathlib.Topology.NhdsKer

/-!
# Compactness of the neighborhoods kernel of a set

In this file we prove that the neighborhoods kernel of a set
(defined as the intersection of all of its neighborhoods)
is a compact set if and only if the original set is a compact set.
-/

public section

variable {X : Type*} [TopologicalSpace X] {s : Set X}

theorem IsCompact.nhdsKer_iff : IsCompact (nhdsKer s) ↔ IsCompact s := by
  simp only [isCompact_iff_finite_subcover]
  congr! with ι U hUo
  simp only [(isOpen_iUnion hUo).nhdsKer_subset,
    (isOpen_iUnion fun i ↦ isOpen_iUnion fun _ ↦ hUo i).nhdsKer_subset]

protected alias ⟨IsCompact.of_nhdsKer, IsCompact.nhdsKer⟩ := IsCompact.nhdsKer_iff
```
