# Complete source: GRWTSK.Analysis.ComplexAnalysis.IsIntegral.Variantd16847dd96e57d1b6667434ebab66ef7c45e07fca5f136b875dafdbd526a8680

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9dd32909a83bf33fa48205a2b22dcb58415bfe69` · SHA-256 `d16847dd96e57d1b6667434ebab66ef7c45e07fca5f136b875dafdbd526a8680`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Yuyang Zhao. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yuyang Zhao, Snir Broshi
-/
module

public import Mathlib.Basic.Complex.Basic
public import Mathlib.RingTheory.IntegralClosure.IsIntegral.Defs

import Mathlib.Algebra.Polynomial.Monic

/-!
# Integral elements of ℂ

This file proves that `Complex.I` is integral over any commutative ring `R` when `ℂ` is an
`R`-algebra.
-/

public section

open Polynomial

namespace Complex

theorem isIntegral_I (R : Type*) [CommRing R] [Algebra R ℂ] : IsIntegral R I :=
  ⟨X ^ 2 + C 1, monic_X_pow_add_C _ two_ne_zero, by simp⟩

@[deprecated (since := "2026-08-06")] alias isIntegral_int_I := isIntegral_I

@[deprecated (since := "2026-08-06")] alias isIntegral_rat_I := isIntegral_I

end Complex
```
