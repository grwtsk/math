# Complete source: GRWTSK.Topology.GeneralTopology.RCLike.Variant9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ae94e8c85478b336909d7480bb78501e8597c556` · SHA-256 `9087d0d28b3979a96b4244b230883473e73f253f94f4a94250a17c7cac521639`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Xavier Généreux. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Xavier Généreux, Patrick Massot
-/
import Mathlib.Analysis.SpecificLimits.Basic
import Mathlib.Analysis.RCLike.Basic

/-!
# A collection of specific limit computations for `RCLike`

-/

open Set Algebra Filter
open scoped Topology

namespace RCLike

variable (𝕜 : Type*) [RCLike 𝕜]

theorem tendsto_inverse_atTop_nhds_zero_nat :
    Tendsto (fun n : ℕ => (n : 𝕜)⁻¹) atTop (𝓝 0) := by
  convert tendsto_algebraMap_inverse_atTop_nhds_zero_nat 𝕜
  simp

theorem tendsto_ofReal_cobounded_cobounded :
    Tendsto ofReal (Bornology.cobounded ℝ) (Bornology.cobounded 𝕜) :=
  tendsto_norm_atTop_iff_cobounded.mp (mod_cast tendsto_norm_cobounded_atTop)

theorem tendsto_ofReal_atTop_cobounded :
    Tendsto ofReal atTop (Bornology.cobounded 𝕜) :=
  tendsto_norm_atTop_iff_cobounded.mp (mod_cast tendsto_abs_atTop_atTop)

theorem tendsto_ofReal_atBot_cobounded :
    Tendsto ofReal atBot (Bornology.cobounded 𝕜) :=
  tendsto_norm_atTop_iff_cobounded.mp (mod_cast tendsto_abs_atBot_atTop)

variable {𝕜}

theorem tendsto_add_mul_div_add_mul_atTop_nhds (a b c : 𝕜) {d : 𝕜} (hd : d ≠ 0) :
    Tendsto (fun k : ℕ ↦ (a + c * k) / (b + d * k)) atTop (𝓝 (c / d)) := by
  apply Filter.Tendsto.congr'
  case f₁ => exact fun k ↦ (a * (↑k)⁻¹ + c) / (b * (↑k)⁻¹ + d)
  · refine (eventually_ne_atTop 0).mp (Eventually.of_forall ?_)
    intro h hx
    field_simp [hx]
  · apply Filter.Tendsto.div _ _ hd
    all_goals
      apply zero_add (_ : 𝕜) ▸ Filter.Tendsto.add_const _ _
      apply mul_zero (_ : 𝕜) ▸ Filter.Tendsto.const_mul _ _
      exact tendsto_inverse_atTop_nhds_zero_nat 𝕜

end RCLike
```
