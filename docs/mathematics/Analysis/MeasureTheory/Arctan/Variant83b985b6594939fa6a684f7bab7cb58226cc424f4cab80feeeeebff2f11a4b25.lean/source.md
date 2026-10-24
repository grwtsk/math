# Complete source: GRWTSK.Analysis.MeasureTheory.Arctan.Variant83b985b6594939fa6a684f7bab7cb58226cc424f4cab80feeeeebff2f11a4b25

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1aab3310c886a3c1471367b9b5fd785418673959` · SHA-256 `83b985b6594939fa6a684f7bab7cb58226cc424f4cab80feeeeebff2f11a4b25`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2020 Yury Kudryashov. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Yury Kudryashov
-/
import Mathlib.Analysis.SpecialFunctions.Trigonometric.Arctan
import Mathlib.MeasureTheory.Constructions.BorelSpace.Basic

/-!
# Measurability of arctan

-/


namespace Real

@[measurability]
theorem measurable_arctan : Measurable arctan :=
  continuous_arctan.measurable

end Real

section RealComposition

open Real

variable {α : Type*} {m : MeasurableSpace α} {f : α → ℝ}

@[measurability, fun_prop]
theorem Measurable.arctan (hf : Measurable f) : Measurable fun x => arctan (f x) :=
  measurable_arctan.comp hf

end RealComposition
```
