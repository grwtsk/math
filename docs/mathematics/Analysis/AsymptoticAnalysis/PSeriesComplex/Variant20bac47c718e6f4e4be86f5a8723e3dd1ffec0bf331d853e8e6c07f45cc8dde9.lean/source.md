# Complete source: GRWTSK.Analysis.AsymptoticAnalysis.PSeriesComplex.Variant20bac47c718e6f4e4be86f5a8723e3dd1ffec0bf331d853e8e6c07f45cc8dde9

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `7806c4f2f426f3ee916dec979f73c3eaab814e60` · SHA-256 `20bac47c718e6f4e4be86f5a8723e3dd1ffec0bf331d853e8e6c07f45cc8dde9`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 David Loeffler. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: David Loeffler
-/

import Mathlib.Analysis.PSeries
import Mathlib.Analysis.Normed.Module.FiniteDimension
import Mathlib.Data.Complex.FiniteDimensional

/-!
# Convergence of `p`-series (complex case)

Here we show convergence of `∑ n : ℕ, 1 / n ^ p` for complex `p`. This is done in a separate file
rather than in `Analysis.PSeries` in order to keep the prerequisites of the former relatively light.

## Tags

p-series, Cauchy condensation test
-/

lemma Complex.summable_one_div_nat_cpow {p : ℂ} :
    Summable (fun n : ℕ ↦ 1 / (n : ℂ) ^ p) ↔ 1 < re p := by
  rw [← Real.summable_one_div_nat_rpow, ← summable_nat_add_iff 1 (G := ℝ),
    ← summable_nat_add_iff 1 (G := ℂ), ← summable_norm_iff]
  simp only [norm_div, norm_one, ← ofReal_natCast, norm_cpow_eq_rpow_re_of_pos
    (Nat.cast_pos.mpr <| Nat.succ_pos _)]
```
