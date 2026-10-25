# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Basic.Variantb0ea6b33d41a14377ae0be6916acb0152c14290b54810655e5a257a2b243238a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `b5af62ef4ed96665e4ea9afb841fa2650fc034aa` · SHA-256 `b0ea6b33d41a14377ae0be6916acb0152c14290b54810655e5a257a2b243238a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2014 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
import Mathlib.Mathport.Rename

/-!
# Boolean operations

In Lean 3 this file also contained the definitions of `cond`, `bor`, `band` and `bnot`,
the boolean functions. These are in Lean 4 core (as `cond`, `or`, `and` and `not`), but
apparently `xor` didn't make the cut.

-/

#align bor or
#align band and
#align bnot not

/-- Boolean XOR -/
@[inline]
def xor : Bool → Bool → Bool
  | true, false => true
  | false, true => true
  | _, _ => false
#align bxor xor
```
