# Complete source: GRWTSK.Topology.GeneralTopology.ZeroAtInfty.Variant3b4a83bf9d0a65e319a85bf48dff74836046b1802dfa4602a7c78d72c5bb5e03

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `825bb7c7941a62eaef82c780f8debbd9cfd603f6` · SHA-256 `3b4a83bf9d0a65e319a85bf48dff74836046b1802dfa4602a7c78d72c5bb5e03`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Moritz Doll. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Moritz Doll
-/

import Mathlib.Topology.ContinuousMap.ZeroAtInfty

/-!
# ZeroAtInftyContinuousMapClass in normed additive groups

In this file we give a characterization of the predicate `zero_at_infty` from
`ZeroAtInftyContinuousMapClass`. A continuous map `f` is zero at infinity if and only if
for every `ε > 0` there exists a `r : ℝ` such that for all `x : E` with `r < ‖x‖` it holds that
`‖f x‖ < ε`.
-/

open Topology Filter

variable {E F 𝓕 : Type*}
variable [SeminormedAddGroup E] [SeminormedAddCommGroup F]
variable [FunLike 𝓕 E F] [ZeroAtInftyContinuousMapClass 𝓕 E F]

theorem ZeroAtInftyContinuousMapClass.norm_le (f : 𝓕) (ε : ℝ) (hε : 0 < ε) :
    ∃ (r : ℝ), ∀ (x : E) (_hx : r < ‖x‖), ‖f x‖ < ε := by
  have h := zero_at_infty f
  rw [tendsto_zero_iff_norm_tendsto_zero, tendsto_def] at h
  specialize h (Metric.ball 0 ε) (Metric.ball_mem_nhds 0 hε)
  rcases Metric.closedBall_compl_subset_of_mem_cocompact h 0 with ⟨r, hr⟩
  use r
  intro x hr'
  suffices x ∈ (fun x ↦ ‖f x‖) ⁻¹' Metric.ball 0 ε by aesop
  apply hr
  aesop

variable [ProperSpace E]

theorem zero_at_infty_of_norm_le (f : E → F)
    (h : ∀ (ε : ℝ) (_hε : 0 < ε), ∃ (r : ℝ), ∀ (x : E) (_hx : r < ‖x‖), ‖f x‖ < ε) :
    Tendsto f (cocompact E) (𝓝 0) := by
  rw [tendsto_zero_iff_norm_tendsto_zero]
  intro s hs
  rw [mem_map, Metric.mem_cocompact_iff_closedBall_compl_subset 0]
  rw [Metric.mem_nhds_iff] at hs
  rcases hs with ⟨ε, hε, hs⟩
  rcases h ε hε with ⟨r, hr⟩
  use r
  intro
  aesop
```
