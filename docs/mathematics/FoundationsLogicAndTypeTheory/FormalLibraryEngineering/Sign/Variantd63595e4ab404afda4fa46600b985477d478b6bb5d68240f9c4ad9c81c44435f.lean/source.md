# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Sign.Variantd63595e4ab404afda4fa46600b985477d478b6bb5d68240f9c4ad9c81c44435f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2e6dc1db7f77b4e68b641c663c00b193574a124e` · SHA-256 `d63595e4ab404afda4fa46600b985477d478b6bb5d68240f9c4ad9c81c44435f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

/-- Negates the given float. -/
def neg : UnpackedFloat → UnpackedFloat
  | .notANumber => .notANumber
  | .infinity s => .infinity (-s)
  | .zero s => .zero (-s)
  | .finite s m e hm => .finite (-s) m e hm

/-- Returns the given float with positive sign. -/
def abs : UnpackedFloat → UnpackedFloat
  | .notANumber => .notANumber
  | .infinity _ => .infinity .positive
  | .zero _ => .zero .positive
  | .finite _ m e hm => .finite .positive m e hm

end Float.Model.UnpackedFloat
```
