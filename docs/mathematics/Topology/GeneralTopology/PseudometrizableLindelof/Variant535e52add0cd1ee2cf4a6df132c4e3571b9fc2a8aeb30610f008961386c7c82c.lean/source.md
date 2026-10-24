# Complete source: GRWTSK.Topology.GeneralTopology.PseudometrizableLindelof.Variant535e52add0cd1ee2cf4a6df132c4e3571b9fc2a8aeb30610f008961386c7c82c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `303442447cbc5cd3d8f1eef1ef77f4f6410fe1e2` · SHA-256 `535e52add0cd1ee2cf4a6df132c4e3571b9fc2a8aeb30610f008961386c7c82c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Josha Dekker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Josha Dekker
-/

import Mathlib.Topology.Metrizable.Basic
import Mathlib.Topology.Compactness.Lindelof

/-!
# Second-countability of pseudometrizable Lindelöf spaces

Factored out from `Mathlib/Topology/Compactness/Lindelof.lean`
to avoid circular dependencies.
-/

variable {X : Type*} [TopologicalSpace X]

open Set Filter Topology TopologicalSpace

instance SecondCountableTopology.ofPseudoMetrizableSpaceLindelofSpace [PseudoMetrizableSpace X]
    [LindelofSpace X] : SecondCountableTopology X := by
  letI : PseudoMetricSpace X := TopologicalSpace.pseudoMetrizableSpacePseudoMetric X
  have h_dense (ε) (hpos : 0 < ε) : ∃ s : Set X, s.Countable ∧ ∀ x, ∃ y ∈ s, dist x y ≤ ε := by
    let U := fun (z : X) ↦ Metric.ball z ε
    obtain ⟨t, hct, huniv⟩ := LindelofSpace.elim_nhds_subcover U
      (fun _ ↦ (Metric.isOpen_ball).mem_nhds (Metric.mem_ball_self hpos))
    refine ⟨t, hct, fun z ↦ ?_⟩
    obtain ⟨y, ht, hzy⟩ : ∃ y ∈ t, z ∈ U y :=
      exists_set_mem_of_union_eq_top t (fun i ↦ U i) huniv z
    exact ⟨y, ht, (Metric.mem_ball.mp hzy).le⟩
  exact Metric.secondCountable_of_almost_dense_set h_dense
```
