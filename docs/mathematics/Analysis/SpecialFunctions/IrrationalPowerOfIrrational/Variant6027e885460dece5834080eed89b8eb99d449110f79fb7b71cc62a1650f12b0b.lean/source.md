# Complete source: GRWTSK.Analysis.SpecialFunctions.IrrationalPowerOfIrrational.Variant6027e885460dece5834080eed89b8eb99d449110f79fb7b71cc62a1650f12b0b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6061a15b832af1b6bee7945d83bd94cf669edc37` · SHA-256 `6027e885460dece5834080eed89b8eb99d449110f79fb7b71cc62a1650f12b0b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Seewoo Lee. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Seewoo Lee
-/
import Mathlib.Data.Real.Irrational
import Mathlib.Analysis.SpecialFunctions.Pow.NNReal

/-
# Irrational power of irrational numbers are not necessarily irrational.

Prove that there exist irrational numbers `a`, `b` such that `a^b` is rational.

We use the following famous argument (based on the law of excluded middle and irrationality of √2).
Consider `c = √2^√2`. If `c` is rational, we are done.
If `c` is irrational, then `c^√2 = 2` is rational, so we are done.
-/


open Real

namespace Counterexample

/--
There exist irrational `a`, `b` with rational `a^b`.
Note that the positivity assumption on `a` is imposed because of the definition of `rpow` for
negative bases. See `Real.rpow_def_of_neg` for more details.
-/
theorem not_irrational_rpow :
   ¬ ∀ a b : ℝ, Irrational a → Irrational b → 0 < a → Irrational (a ^ b) := by
  push_neg
  by_cases hc : Irrational (√2 ^ √2)
  · use (√2 ^ √2), √2, hc, irrational_sqrt_two, by positivity
    rw [← rpow_mul, mul_self_sqrt, rpow_two, sq_sqrt] <;> norm_num
  · use √2, √2, irrational_sqrt_two, irrational_sqrt_two, by positivity, hc

end Counterexample
```
