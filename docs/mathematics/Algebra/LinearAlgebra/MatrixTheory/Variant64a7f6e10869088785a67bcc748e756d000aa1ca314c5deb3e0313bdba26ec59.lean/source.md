# Complete source: GRWTSK.Algebra.LinearAlgebra.Matrix.Variant64a7f6e10869088785a67bcc748e756d000aa1ca314c5deb3e0313bdba26ec59

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `4ee36ca8c8ebbfbc0e89f7c149fff82129e52d69` · SHA-256 `64a7f6e10869088785a67bcc748e756d000aa1ca314c5deb3e0313bdba26ec59`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Jujian Zhang. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jujian Zhang
-/
import Mathlib.LinearAlgebra.Matrix.Ideal
import Mathlib.RingTheory.SimpleRing.Basic

/-!
The matrix ring over a simple ring is simple
-/

namespace IsSimpleRing

variable (ι A : Type*) [Ring A] [Fintype ι] [Nonempty ι]

instance matrix [IsSimpleRing A] : IsSimpleRing (Matrix ι ι A) where
  simple := letI := Classical.decEq ι; TwoSidedIdeal.orderIsoMatricesOver |>.symm.isSimpleOrder

end IsSimpleRing
```
