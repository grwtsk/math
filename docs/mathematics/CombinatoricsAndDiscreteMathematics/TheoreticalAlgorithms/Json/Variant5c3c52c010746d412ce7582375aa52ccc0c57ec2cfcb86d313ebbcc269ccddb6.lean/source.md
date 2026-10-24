# Complete source: GRWTSK.CombinatoricsAndDiscreteMathematics.TheoreticalAlgorithms.Json.Variant5c3c52c010746d412ce7582375aa52ccc0c57ec2cfcb86d313ebbcc269ccddb6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `715520ac208aae35791ab2caadef4a722ce894bd` · SHA-256 `5c3c52c010746d412ce7582375aa52ccc0c57ec2cfcb86d313ebbcc269ccddb6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
 Copyright (c) 2022 E.W.Ayers. All rights reserved.
 Released under Apache 2.0 license as described in the file LICENSE.
 Authors: E.W.Ayers, Mario Carneiro
-/
module

public import Batteries.Data.Float.Basic
public import Lean.Data.Json.FromToJson.Basic

@[expose] public section

open Lean

instance : ToJson Float where
  toJson x :=
    match x.toRatParts' with
    | none => Json.null
    | some (n, d) =>
      if d < 0 then
        Json.num { mantissa := n * (5^d.natAbs : Nat), exponent := d.natAbs }
      else
        Json.num { mantissa := n * (2^d.natAbs : Nat), exponent := 0 }
```
