# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Hashable.Variant7e50bfa6ebbe2b14f27206c42498d39635a58f205f6e292f0bee648ff7418ff4

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `1925ae03e44609eee48a1ea77a6b47801e2afa51` · SHA-256 `7e50bfa6ebbe2b14f27206c42498d39635a58f205f6e292f0bee648ff7418ff4`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Author: Markus Himmel
-/
module

prelude
public import Init.Data.Hashable
public import Init.Data.String.Defs

public section

namespace String

deriving instance Hashable for String.Pos.Raw
deriving instance Hashable for String.Pos
deriving instance Hashable for String.Slice.Pos

end String
```
