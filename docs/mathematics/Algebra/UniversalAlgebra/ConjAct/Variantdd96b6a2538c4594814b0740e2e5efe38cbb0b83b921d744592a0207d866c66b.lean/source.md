# Complete source: GRWTSK.Algebra.UniversalAlgebra.ConjAct.Variantdd96b6a2538c4594814b0740e2e5efe38cbb0b83b921d744592a0207d866c66b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `08d434c0677852ff0e5431e82b746e0f190f63cd` · SHA-256 `dd96b6a2538c4594814b0740e2e5efe38cbb0b83b921d744592a0207d866c66b`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
import Mathlib.Algebra.Field.Defs
import Mathlib.Algebra.GroupWithZero.Action.ConjAct
import Mathlib.Algebra.GroupWithZero.Action.Defs

/-!
# Conjugation action on a field on itself
-/

namespace ConjAct

variable {K : Type*} [DivisionRing K]

instance distribMulAction₀ : DistribMulAction (ConjAct K) K :=
  { ConjAct.mulAction₀ with
    smul_zero := by simp [smul_def]
    smul_add := by simp [smul_def, mul_add, add_mul] }

end ConjAct
```
