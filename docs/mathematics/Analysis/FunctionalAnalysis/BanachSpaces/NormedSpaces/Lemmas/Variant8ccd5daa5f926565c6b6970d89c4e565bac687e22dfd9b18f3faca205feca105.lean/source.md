# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Lemmas.Variant8ccd5daa5f926565c6b6970d89c4e565bac687e22dfd9b18f3faca205feca105

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d59da9ba860151442b0633a632ee144f4a6d5a16` · SHA-256 `8ccd5daa5f926565c6b6970d89c4e565bac687e22dfd9b18f3faca205feca105`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot
-/
import Mathlib.Analysis.Normed.Group.Uniform

/-!
# Further lemmas about normed groups

This file contains further lemmas about normed groups, requiring heavier imports than
`Mathlib/Analysis/Normed/Group/Basic.lean`.

## TODO

- Move lemmas from `Basic` to other places, including this file.

-/

variable {E : Type*} [SeminormedAddCommGroup E]
open NNReal Topology

theorem eventually_nnnorm_sub_lt (x₀ : E) {ε : ℝ≥0} (ε_pos : 0 < ε) :
    ∀ᶠ x in 𝓝 x₀, ‖x - x₀‖₊ < ε :=
  (continuousAt_id.sub continuousAt_const).nnnorm (gt_mem_nhds <| by simpa)

theorem eventually_norm_sub_lt (x₀ : E) {ε : ℝ} (ε_pos : 0 < ε) :
    ∀ᶠ x in 𝓝 x₀, ‖x - x₀‖ < ε :=
  (continuousAt_id.sub continuousAt_const).norm (gt_mem_nhds <| by simpa)
```
