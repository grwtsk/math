# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.ENNReal.Variant6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `136fd0ad8863ed45b3ff0744d4e3aaa3f743ab3f` · SHA-256 `6c31e0003d12e73141d33aead7b3efa4125af561138fe53595fdb3257a463fd5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Edward van de Meent. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Edward van de Meent
-/
import Mathlib.Data.Real.ENatENNReal
import Mathlib.Data.Set.Card
import Mathlib.Topology.Instances.ENNReal.Lemmas

/-!
# Infinite sums of ENNReal and Set.encard

This file provides lemmas relating sums of constants to the cardinality of the domain of these sums.

## TODO

+ Once we have a topology on `ENat`, provide an `ENat` valued version
+ Once we replace `PartENat` entirely with `ENat` (and replace `PartENat.card` with a `ENat.card`),
  provide versions which sum over the whole type.
-/

open Set Function

variable {α : Type*} (s : Set α)

namespace ENNReal

lemma tsum_set_one : ∑' _ : s, (1 : ℝ≥0∞) = s.encard := by
  obtain (hfin | hinf) := Set.finite_or_infinite s
  · lift s to Finset α using hfin
    simp [tsum_fintype]
  · have : Infinite s := infinite_coe_iff.mpr hinf
    rw [tsum_const_eq_top_of_ne_zero one_ne_zero, encard_eq_top hinf, ENat.toENNReal_top]

lemma tsum_set_const (c : ℝ≥0∞) : ∑' _ : s, c = s.encard * c := by
  simp [← tsum_set_one, ← ENNReal.tsum_mul_right]

@[deprecated (since := "2025-02-06")] alias tsum_set_one_eq := tsum_set_one
@[deprecated (since := "2025-02-06")] alias tsum_set_const_eq := tsum_set_const

@[simp]
lemma tsum_one : ∑' _ : α, (1 : ℝ≥0∞) = ENat.card α := by
  rw [← tsum_univ]; simpa [encard_univ] using tsum_set_one univ

@[simp]
lemma tsum_const (c : ℝ≥0∞) : ∑' _ : α, c = ENat.card α * c := by
  rw [← tsum_univ]; simpa [encard_univ] using tsum_set_const univ c

end ENNReal
```
