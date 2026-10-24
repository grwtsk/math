# Complete source: GRWTSK.Topology.GeneralTopology.Compact.Variant8f2e57b6e2c6446c40a64599aa082df2f550efcfed565d2e6a652f7f61862d94

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `17e8f537c42d08ef4306d8fd24ac39fe07db3d7f` · SHA-256 `8f2e57b6e2c6446c40a64599aa082df2f550efcfed565d2e6a652f7f61862d94`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Mario Carneiro, Patrick Massot
-/
import Mathlib.Topology.Algebra.Group.Pointwise
import Mathlib.Topology.Sets.Compacts

/-!
# Additional results on topological groups

A result on topological groups that has been separated out
as it requires more substantial imports developing positive compacts.
-/


universe u
variable {G : Type u} [TopologicalSpace G] [Group G] [IsTopologicalGroup G]

/-- Every topological group in which there exists a compact set with nonempty interior
is locally compact. -/
@[to_additive
  "Every topological additive group
  in which there exists a compact set with nonempty interior is locally compact."]
theorem TopologicalSpace.PositiveCompacts.locallyCompactSpace_of_group
    (K : PositiveCompacts G) : LocallyCompactSpace G :=
  let ⟨_x, hx⟩ := K.interior_nonempty
  K.isCompact.locallyCompactSpace_of_mem_nhds_of_group (mem_interior_iff_mem_nhds.1 hx)
```
