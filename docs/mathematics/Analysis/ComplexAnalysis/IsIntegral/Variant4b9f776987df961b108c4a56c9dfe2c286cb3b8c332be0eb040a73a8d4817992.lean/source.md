# Complete source: GRWTSK.Analysis.ComplexAnalysis.IsIntegral.Variant4b9f776987df961b108c4a56c9dfe2c286cb3b8c332be0eb040a73a8d4817992

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `939434a7a666dbd22162fbec130e13fb22577a76` · SHA-256 `4b9f776987df961b108c4a56c9dfe2c286cb3b8c332be0eb040a73a8d4817992`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yuyang Zhao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yuyang Zhao
-/

import Mathlib.Analysis.Complex.Basic
import Mathlib.RingTheory.IntegralClosure.IsIntegral.Basic

/-!
# Integral elements of ℂ

This file proves that `Complex.I` is integral over ℤ and ℚ.
-/

open Polynomial

namespace Complex

theorem isIntegral_int_I : IsIntegral ℤ I := by
  refine ⟨X ^ 2 + C 1, monic_X_pow_add_C _ two_ne_zero, ?_⟩
  rw [eval₂_add, eval₂_X_pow, eval₂_C, I_sq, eq_intCast, Int.cast_one, neg_add_cancel]

theorem isIntegral_rat_I : IsIntegral ℚ I :=
  isIntegral_int_I.tower_top

end Complex
```
