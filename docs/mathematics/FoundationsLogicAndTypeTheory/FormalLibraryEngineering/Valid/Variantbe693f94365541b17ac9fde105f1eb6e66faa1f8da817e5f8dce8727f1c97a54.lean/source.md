# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Valid.Variantbe693f94365541b17ac9fde105f1eb6e66faa1f8da817e5f8dce8727f1c97a54

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `079165a5fc851ee953b8345da4da96aee97967a9` · SHA-256 `be693f94365541b17ac9fde105f1eb6e66faa1f8da817e5f8dce8727f1c97a54`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Pack.Basic

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.
@[expose] public section

namespace Float.Model

open UnpackedFloat

/--
Predicate asserting that the bit representation of a float is valid according to the given
format. By 'valid' we mean that `NaN` is encoded using the canonical `NaN`.
-/
structure Format.Valid (spec : Format) (b : BitVec spec.numBits) : Prop where
  /-- If the bit vector encodes a `NaN`, then it is the canonical `NaN`. -/
  eq_packedNaN : unpackExponent b = (-1#_) → unpackMantissa b ≠ 0#_ → b = packedNaN spec

end Float.Model
```
