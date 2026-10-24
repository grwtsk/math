# Complete source: GRWTSK.Algebra.Basic.Variant82fd7f1b80dda36fc3392f340e670d0d194468b754da9c708563ac29243f7537

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3084287e53f37743fdcaee5d0e31cafde7dde824` · SHA-256 `82fd7f1b80dda36fc3392f340e670d0d194468b754da9c708563ac29243f7537`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Eric Wieser. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Eric Wieser
-/
module

public import Mathlib.RingTheory.Congruence.Basic

variable {R R' : Type*}

namespace RingCon

variable [Add R] [Mul R] [Add R'] [Mul R']

open scoped Function

-- This probably needs the RingCon version of `Setoid.comap_surjective`
proof_wanted comap_ringConGen_equiv
    {F} [FunLike F R' R] [MulHomClass F R' R] [AddHomClass F R' R] [EquivLike F R' R]
    (r : R → R → Prop) (f : F) :
    (ringConGen r).comap f = ringConGen (r on f)

end RingCon
```
