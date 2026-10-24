# Complete source: GRWTSK.Analysis.DualNumber.Variantd4e6ce804273f950a9ead7a5dfc28fee7a3eca6736aea375853e92671bb645f0

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `76d8d8fe8257c059aaa17ed72702bc0ab0d346f5` · SHA-256 `d4e6ce804273f950a9ead7a5dfc28fee7a3eca6736aea375853e92671bb645f0`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.DualNumber
import Mathlib.Analysis.NormedSpace.TrivSqZeroExt

#align_import analysis.normed_space.dual_number from "leanprover-community/mathlib"@"806c0bb86f6128cfa2f702285727518eb5244390"

/-!
# Results on `DualNumber R` related to the norm

These are just restatements of similar statements about `TrivSqZeroExt R M`.

## Main results

* `exp_eps`

-/


namespace DualNumber

open TrivSqZeroExt

variable (𝕜 : Type*) {R : Type*}

variable [IsROrC 𝕜] [NormedCommRing R] [NormedAlgebra 𝕜 R]

variable [TopologicalRing R] [CompleteSpace R] [T2Space R]

@[simp]
theorem exp_eps : exp 𝕜 (eps : DualNumber R) = 1 + eps :=
  exp_inr _ _
#align dual_number.exp_eps DualNumber.exp_eps

@[simp]
theorem exp_smul_eps (r : R) : exp 𝕜 (r • eps : DualNumber R) = 1 + r • eps := by
  rw [eps, ← inr_smul, exp_inr, Nat.cast_one]
#align dual_number.exp_smul_eps DualNumber.exp_smul_eps

end DualNumber
```
