# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Stream.Variantca6d1596c85a093918aa390fa53e85caa689e62c78ee475a4dfae5bfd60036b5

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6ad9b1dd556c6a20637a729fb307c9496681b501` · SHA-256 `ca6d1596c85a093918aa390fa53e85caa689e62c78ee475a4dfae5bfd60036b5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Shreyas Srinivas. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Shreyas Srinivas, François G. Dorais, Kim Morrison
-/
module

prelude
public import Init.Data.Stream
public import Init.Data.Vector.Basic
import Init.Data.Slice.Array.Basic

namespace Vector

/-! ### ToStream instance -/

@[no_expose]
public instance : Std.ToStream (Vector α n) (Subarray α) where
  toStream xs := xs.toArray[*...*]

end Vector
```
