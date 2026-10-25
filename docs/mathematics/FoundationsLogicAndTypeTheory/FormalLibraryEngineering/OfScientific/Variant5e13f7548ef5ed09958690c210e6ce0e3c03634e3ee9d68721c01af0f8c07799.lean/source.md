# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OfScientific.Variant5e13f7548ef5ed09958690c210e6ce0e3c03634e3ee9d68721c01af0f8c07799

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `96c1db6007543fffc5b10cbbb2f68f708735d9c3` · SHA-256 `5e13f7548ef5ed09958690c210e6ce0e3c03634e3ee9d68721c01af0f8c07799`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kim Morrison
-/
module

prelude
public import Init.Grind.Ring.Field
public import Init.Data.OfScientific.Basic

public section

namespace Lean.Grind

attribute [local instance] Semiring.natCast

/--
A type class that ensures that `OfScientific.ofScientific` is properly defined with respect to
the field structure.
-/
class LawfulOfScientific (α : Type u) [Field α] [OfScientific α] : Prop where
  /--
  `OfScientific.ofScientific` is properly defined with respect to the field structure.
  -/
  ofScientific_def :
    OfScientific.ofScientific m s e = if s then (Nat.cast m : α) / 10^e else (Nat.cast m : α) * 10^e

end Lean.Grind
```
