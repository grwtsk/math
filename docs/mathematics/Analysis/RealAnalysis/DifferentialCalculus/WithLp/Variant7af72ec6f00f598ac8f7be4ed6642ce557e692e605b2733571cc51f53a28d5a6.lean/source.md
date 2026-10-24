# Complete source: GRWTSK.Analysis.RealAnalysis.DifferentialCalculus.WithLp.Variant7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `f03a44b07b49812a4c411b5d9b7868fd2430331a` · SHA-256 `7af72ec6f00f598ac8f7be4ed6642ce557e692e605b2733571cc51f53a28d5a6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Anatole Dedecker. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anatole Dedecker, Eric Wieser
-/
import Mathlib.Analysis.Calculus.ContDiff.Operations
import Mathlib.Analysis.Normed.Lp.PiLp

/-!
# Derivatives on `WithLp`
-/

section PiLp

open ContinuousLinearMap

variable {𝕜 ι : Type*} {E : ι → Type*} {H : Type*}
variable [NontriviallyNormedField 𝕜] [NormedAddCommGroup H] [∀ i, NormedAddCommGroup (E i)]
  [∀ i, NormedSpace 𝕜 (E i)] [NormedSpace 𝕜 H] [Fintype ι] (p) [Fact (1 ≤ p)]
  {n : WithTop ℕ∞} {f : H → PiLp p E} {f' : H →L[𝕜] PiLp p E} {t : Set H} {y : H}

theorem contDiffWithinAt_piLp :
    ContDiffWithinAt 𝕜 n f t y ↔ ∀ i, ContDiffWithinAt 𝕜 n (fun x => f x i) t y := by
  rw [← (PiLp.continuousLinearEquiv p 𝕜 E).comp_contDiffWithinAt_iff, contDiffWithinAt_pi]
  rfl

@[fun_prop]
theorem contDiffWithinAt_piLp' (hf : ∀ i, ContDiffWithinAt 𝕜 n (fun x => f x i) t y) :
    ContDiffWithinAt 𝕜 n f t y :=
  (contDiffWithinAt_piLp p).2 hf

@[fun_prop]
theorem contDiffWithinAt_piLp_apply {i : ι} {t : Set (PiLp p E)} {y : PiLp p E} :
    ContDiffWithinAt 𝕜 n (fun f : PiLp p E => f i) t y :=
  (contDiffWithinAt_piLp p).1 contDiffWithinAt_id i

theorem contDiffAt_piLp :
    ContDiffAt 𝕜 n f y ↔ ∀ i, ContDiffAt 𝕜 n (fun x => f x i) y := by
  rw [← (PiLp.continuousLinearEquiv p 𝕜 E).comp_contDiffAt_iff, contDiffAt_pi]
  rfl

@[fun_prop]
theorem contDiffAt_piLp' (hf : ∀ i, ContDiffAt 𝕜 n (fun x => f x i) y) :
    ContDiffAt 𝕜 n f y :=
  (contDiffAt_piLp p).2 hf

@[fun_prop]
theorem contDiffAt_piLp_apply {i : ι} {y : PiLp p E} :
    ContDiffAt 𝕜 n (fun f : PiLp p E => f i) y :=
  (contDiffAt_piLp p).1 contDiffAt_id i

theorem contDiffOn_piLp :
    ContDiffOn 𝕜 n f t ↔ ∀ i, ContDiffOn 𝕜 n (fun x => f x i) t := by
  rw [← (PiLp.continuousLinearEquiv p 𝕜 E).comp_contDiffOn_iff, contDiffOn_pi]
  rfl

@[fun_prop]
theorem contDiffOn_piLp' (hf : ∀ i, ContDiffOn 𝕜 n (fun x => f x i) t) :
    ContDiffOn 𝕜 n f t :=
  (contDiffOn_piLp p).2 hf

@[fun_prop]
theorem contDiffOn_piLp_apply {i : ι} {t : Set (PiLp p E)} :
    ContDiffOn 𝕜 n (fun f : PiLp p E => f i) t :=
  (contDiffOn_piLp p).1 contDiffOn_id i

theorem contDiff_piLp : ContDiff 𝕜 n f ↔ ∀ i, ContDiff 𝕜 n fun x => f x i := by
  rw [← (PiLp.continuousLinearEquiv p 𝕜 E).comp_contDiff_iff, contDiff_pi]
  rfl

@[fun_prop]
theorem contDiff_piLp' (hf : ∀ i, ContDiff 𝕜 n (fun x => f x i)) :
    ContDiff 𝕜 n f :=
  (contDiff_piLp p).2 hf

@[fun_prop]
theorem contDiff_piLp_apply {i : ι} :
    ContDiff 𝕜 n (fun f : PiLp p E => f i) :=
  (contDiff_piLp p).1 contDiff_id i

end PiLp
```
