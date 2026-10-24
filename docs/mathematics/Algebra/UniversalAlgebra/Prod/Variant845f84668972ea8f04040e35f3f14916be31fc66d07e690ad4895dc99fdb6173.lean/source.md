# Complete source: GRWTSK.Algebra.UniversalAlgebra.Prod.Variant845f84668972ea8f04040e35f3f14916be31fc66d07e690ad4895dc99fdb6173

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9538dd5fb2b5806d4d77bdceac68a2b9f739efaf` · SHA-256 `845f84668972ea8f04040e35f3f14916be31fc66d07e690ad4895dc99fdb6173`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2018 Simon Hudon. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Anne Baanen
-/
import Mathlib.Algebra.NoZeroSMulDivisors.Defs
import Mathlib.Algebra.Notation.Prod

/-!
# Prod instances for NoZeroSMulDivisors

This file defines a NoZeroSMulDivisors instance for the binary product of actions.
-/

variable {R M N : Type*}

namespace Prod

instance noZeroSMulDivisors [Zero R] [Zero M] [Zero N]
    [SMulWithZero R M] [SMulWithZero R N] [NoZeroSMulDivisors R M] [NoZeroSMulDivisors R N] :
    NoZeroSMulDivisors R (M × N) where
  eq_zero_or_eq_zero_of_smul_eq_zero {c xy} h := by simpa [Prod.ext_iff, or_and_left] using h

end Prod
```
