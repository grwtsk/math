# Complete source: GRWTSK.Topology.MetricTopology.PNat.Variant3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `acb1eb18686b1d4bef81315cd46af15f895fbc95` · SHA-256 `3cac526a3251afa03fcfb55d7c8f28e489cca5df6e40561c7e11f7d4a23d2fbe`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/
import Mathlib.Topology.Instances.Nat

/-!
# Topology on the positive natural numbers

The structure of a metric space on `ℕ+` is introduced in this file, induced from `ℝ`.
-/

noncomputable section

open Metric

namespace PNat

instance : MetricSpace ℕ+ := inferInstanceAs (MetricSpace { n : ℕ // 0 < n })

theorem dist_eq (x y : ℕ+) : dist x y = |(↑x : ℝ) - ↑y| := rfl

@[simp, norm_cast]
theorem dist_coe (x y : ℕ+) : dist (↑x : ℕ) (↑y : ℕ) = dist x y := rfl

theorem isUniformEmbedding_coe : IsUniformEmbedding ((↑) : ℕ+ → ℕ) := isUniformEmbedding_subtype_val

instance : DiscreteTopology ℕ+ := inferInstanceAs (DiscreteTopology { n : ℕ // 0 < n })

instance : ProperSpace ℕ+ where
  isCompact_closedBall n r := by
    change IsCompact (((↑) : ℕ+ → ℕ) ⁻¹' closedBall (↑n : ℕ) r)
    rw [Nat.closedBall_eq_Icc]
    exact ((Set.finite_Icc _ _).preimage PNat.coe_injective.injOn).isCompact

instance : NoncompactSpace ℕ+ :=
  noncompactSpace_of_neBot <| by simp only [Filter.cocompact_eq_cofinite, Filter.cofinite_neBot]

end PNat
```
