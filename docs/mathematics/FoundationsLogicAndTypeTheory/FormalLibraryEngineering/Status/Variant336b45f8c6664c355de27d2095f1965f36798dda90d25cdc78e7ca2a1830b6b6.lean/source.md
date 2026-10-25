# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Status.Variant336b45f8c6664c355de27d2095f1965f36798dda90d25cdc78e7ca2a1830b6b6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `65bf47204521d0be0d5820e71aeaddc06d07242e` · SHA-256 `336b45f8c6664c355de27d2095f1965f36798dda90d25cdc78e7ca2a1830b6b6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Julia M. Himmel
-/
module

prelude
public import Init.Data.Float.Model.Unpacked.Basic

-- This file is part of the logical model for floats which authors of float libraries
-- need to rely on.
@[expose] public section

namespace Float.Model.UnpackedFloat

/--
Returns `true` if the float represents a real number, i.e., it is neither infinite nor `NaN`.
-/
def isFinite : UnpackedFloat → Bool
  | .notANumber => false
  | .infinity .. => false
  | .zero .. => true
  | .finite .. => true

/--
Returns `true` if the float is positive or negative infinity.
-/
def isInf : UnpackedFloat → Bool
  | .infinity .. => true
  | _ => false

/--
Returns `true` if the float is `NaN`.
-/
def isNaN : UnpackedFloat → Bool
  | .notANumber => true
  | _ => false

end Float.Model.UnpackedFloat
```
