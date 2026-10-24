# Complete source: GRWTSK.Topology.GeneralTopology.Indicator.Variantfcdb83a38042daf21bb515a15827e2d0e26ef142f22f5c90c33467be2123e534

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c50de8a94c52a45e3b906cf41c0e130e20d2becc` · SHA-256 `fcdb83a38042daf21bb515a15827e2d0e26ef142f22f5c90c33467be2123e534`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 PFR contributors. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: PFR contributors
-/
import Mathlib.Algebra.Group.Indicator
import Mathlib.Topology.Piecewise
import Mathlib.Topology.Clopen

/-!
# Continuity of indicator functions
-/

open Set
open scoped Topology

variable {α β : Type*} [TopologicalSpace α] [TopologicalSpace β] {f : α → β} {s : Set α} [One β]

@[to_additive]
lemma continuous_mulIndicator (hs : ∀ a ∈ frontier s, f a = 1) (hf : ContinuousOn f (closure s)) :
    Continuous (mulIndicator s f) := by
  classical exact continuous_piecewise hs hf continuousOn_const

@[to_additive]
protected lemma Continuous.mulIndicator (hs : ∀ a ∈ frontier s, f a = 1) (hf : Continuous f) :
    Continuous (mulIndicator s f) := by
  classical exact hf.piecewise hs continuous_const

@[to_additive]
theorem ContinuousOn.continuousAt_mulIndicator (hf : ContinuousOn f (interior s)) {x : α}
    (hx : x ∉ frontier s) :
    ContinuousAt (s.mulIndicator f) x := by
  rw [← Set.mem_compl_iff, compl_frontier_eq_union_interior] at hx
  obtain h | h := hx
  · have hs : interior s ∈ 𝓝 x := mem_interior_iff_mem_nhds.mp (by rwa [interior_interior])
    exact ContinuousAt.congr (hf.continuousAt hs) <| Filter.eventuallyEq_iff_exists_mem.mpr
      ⟨interior s, hs, Set.eqOn_mulIndicator.symm.mono interior_subset⟩
  · exact ContinuousAt.congr continuousAt_const <| Filter.eventuallyEq_iff_exists_mem.mpr
      ⟨sᶜ, mem_interior_iff_mem_nhds.mp h, Set.eqOn_mulIndicator'.symm⟩

@[to_additive]
lemma IsClopen.continuous_mulIndicator (hs : IsClopen s) (hf : Continuous f) :
    Continuous (s.mulIndicator f) :=
  hf.mulIndicator (by simp [isClopen_iff_frontier_eq_empty.mp hs])
```
