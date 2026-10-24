# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.DimOne.Variantb1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7a44d5aecd97e3c1dba0306b5a73f593f41dc4f4` · SHA-256 `b1b337c4131b891723efd29aa33c6327d9da35d0c31905c3818c865cbfb9d78f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Sébastien Gouëzel. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sébastien Gouëzel, Yury Kudryashov
-/
module

public import Mathlib.Analysis.Calculus.TangentCone.Defs
import Mathlib.Analysis.Calculus.TangentCone.Basic
import Mathlib.Analysis.Normed.Group.Uniform
public import Mathlib.Analysis.Normed.Field.Basic

/-!
# Unique differentiability property of a set in the base field

In this file we prove that a set in the base field has the unique differentiability property at `x`
iff `x` is an accumulation point of the set, see `uniqueDiffWithinAt_iff_accPt`.
-/

public section

open Filter Set
open scoped Topology

variable {𝕜 : Type*} [NormedDivisionRing 𝕜]

/-- The tangent cone at a non-isolated point in dimension 1 is the whole space. -/
theorem tangentConeAt_eq_univ {s : Set 𝕜} {x : 𝕜} (hx : AccPt x (𝓟 s)) :
    tangentConeAt 𝕜 s x = univ := by
  refine eq_univ_of_forall fun y ↦ ?_
  apply mem_tangentConeAt_of_frequently (𝓝[≠] x) (fun z ↦ y / (z - x)) (· - x)
  · exact Continuous.tendsto' (by fun_prop) _ _ (by simp) |>.mono_left inf_le_left
  · simpa [accPt_iff_frequently_nhdsNE] using hx
  · apply tendsto_nhds_of_eventually_eq
    refine eventually_mem_nhdsWithin.mono fun z hz ↦ ?_
    have : z - x ≠ 0 := by simpa [sub_eq_zero] using hz
    simp [div_mul_cancel₀ _ this]

/-- In one dimension, a point is a point of unique differentiability of a set
iff it is an accumulation point of the set. -/
theorem uniqueDiffWithinAt_iff_accPt {s : Set 𝕜} {x : 𝕜} :
    UniqueDiffWithinAt 𝕜 s x ↔ AccPt x (𝓟 s) :=
  ⟨UniqueDiffWithinAt.accPt, fun h ↦
    ⟨by simp [tangentConeAt_eq_univ h], mem_closure_iff_clusterPt.mpr h.clusterPt⟩⟩

alias ⟨_, AccPt.uniqueDiffWithinAt⟩ := uniqueDiffWithinAt_iff_accPt
```
