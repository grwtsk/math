# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Json.Variantcf5454ce0ab9d80161aaa28b6ea23631042486be70bb4759216bf164beeaa2bb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b8c66e5545b7400fc568354b9fd34f9bb2877f16` · SHA-256 `cf5454ce0ab9d80161aaa28b6ea23631042486be70bb4759216bf164beeaa2bb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
 Copyright (c) 2022 E.W.Ayers. All rights reserved.
 Released under Apache 2.0 license as described in the file LICENSE.
 Authors: E.W.Ayers, Mario Carneiro
-/

import Lean.Data.Json
import Std.Lean.Float

open Lean

instance : OfScientific JsonNumber where
  ofScientific mantissa exponentSign decimalExponent :=
    if exponentSign then
      { mantissa := mantissa, exponent := decimalExponent }
    else
      { mantissa := (mantissa * 10 ^ decimalExponent : Nat), exponent := 0 }

instance : Neg JsonNumber where
  neg jn := ⟨-jn.mantissa, jn.exponent⟩

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
