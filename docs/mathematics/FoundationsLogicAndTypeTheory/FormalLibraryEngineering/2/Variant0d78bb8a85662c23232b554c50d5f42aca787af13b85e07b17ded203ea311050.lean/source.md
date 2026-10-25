# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.2.Variant0d78bb8a85662c23232b554c50d5f42aca787af13b85e07b17ded203ea311050

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `3162f432216724a1ad8d61f72530e3232da2b10b` · SHA-256 `0d78bb8a85662c23232b554c50d5f42aca787af13b85e07b17ded203ea311050`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/

import Aesop

-- This option would make Aesop time out.
set_option aesop.check.all false

inductive Even : Nat → Prop
| zero : Even Nat.zero
| plus_two {n} : Even n → Even (n + 2)

attribute [aesop safe] Even.zero Even.plus_two

example : Even 500 := by
  aesop (config := { maxRuleApplications := 0, maxRuleApplicationDepth := 0 })
```
