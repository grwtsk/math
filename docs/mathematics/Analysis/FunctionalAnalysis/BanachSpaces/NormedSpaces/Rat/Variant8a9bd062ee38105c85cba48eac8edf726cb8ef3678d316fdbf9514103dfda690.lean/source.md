# Complete source: GRWTSK.Analysis.FunctionalAnalysis.BanachSpaces.NormedSpaces.Rat.Variant8a9bd062ee38105c85cba48eac8edf726cb8ef3678d316fdbf9514103dfda690

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5d0fad72af1fdfd87c3a92648c7e05070e3faf0` · SHA-256 `8a9bd062ee38105c85cba48eac8edf726cb8ef3678d316fdbf9514103dfda690`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Patrick Massot. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Patrick Massot, Johannes Hölzl, Yaël Dillies
-/

import Mathlib.Analysis.Normed.Group.Int
import Mathlib.Topology.Instances.Rat

/-! # ℚ as a normed group -/

namespace Rat

instance instNormedAddCommGroup : NormedAddCommGroup ℚ where
  norm r := ‖(r : ℝ)‖
  dist_eq r₁ r₂ := by simp only [Rat.dist_eq, norm, Rat.cast_sub]

@[norm_cast, simp 1001]
-- Porting note: increase priority to prevent the left-hand side from simplifying
theorem norm_cast_real (r : ℚ) : ‖(r : ℝ)‖ = ‖r‖ :=
  rfl

@[norm_cast, simp]
theorem _root_.Int.norm_cast_rat (m : ℤ) : ‖(m : ℚ)‖ = ‖m‖ := by
  rw [← Rat.norm_cast_real, ← Int.norm_cast_real]; congr 1

end Rat
```
