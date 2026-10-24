# Complete source: GRWTSK.Topology.GeneralTopology.Map.Variant1a123b3d5a45228388661c9b7084bc63ff53e814807683dc6877bd08e6b7efdd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1188f116add6b7aea534278ae425617ae725d495` · SHA-256 `1a123b3d5a45228388661c9b7084bc63ff53e814807683dc6877bd08e6b7efdd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2017 Johannes Hölzl. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Johannes Hölzl, Jeremy Avigad, Yury Kudryashov, Patrick Massot
-/
module

public import Mathlib.Order.Filter.AtTopBot.Defs
public import Mathlib.Order.Filter.Map
public import Mathlib.Order.Filter.Tendsto
public import Mathlib.Order.Interval.Set.OrderIso

/-!
# Map and comap of `Filter.atTop` and `Filter.atBot`
-/

public section

assert_not_exists Finset

variable {α β γ : Type*}

open Set

namespace OrderIso

open Filter

variable [Preorder α] [Preorder β]

@[to_dual (attr := simp)]
theorem comap_atTop (e : α ≃o β) : comap e atTop = atTop := by
  simp [atTop, ← e.surjective.iInf_comp]

@[to_dual (attr := simp)]
theorem map_atTop (e : α ≃o β) : map (e : α → β) atTop = atTop := by
  rw [← e.comap_atTop, map_comap_of_surjective e.surjective]

@[to_dual]
theorem tendsto_atTop (e : α ≃o β) : Tendsto e atTop atTop :=
  e.map_atTop.le

@[to_dual (attr := simp)]
theorem tendsto_atTop_iff {l : Filter γ} {f : γ → α} (e : α ≃o β) :
    Tendsto (fun x => e (f x)) l atTop ↔ Tendsto f l atTop := by
  rw [← e.comap_atTop, tendsto_comap_iff, Function.comp_def]

end OrderIso
```
