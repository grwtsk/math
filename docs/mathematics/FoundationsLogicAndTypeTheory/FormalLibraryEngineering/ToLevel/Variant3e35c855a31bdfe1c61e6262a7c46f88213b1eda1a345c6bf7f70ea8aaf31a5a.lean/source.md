# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToLevel.Variant3e35c855a31bdfe1c61e6262a7c46f88213b1eda1a345c6bf7f70ea8aaf31a5a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `2c3b892b17923559b5dc90015bc26798023d925a` · SHA-256 `3e35c855a31bdfe1c61e6262a7c46f88213b1eda1a345c6bf7f70ea8aaf31a5a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2023 Kyle Miller. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Kyle Miller
-/
import Mathlib.Tactic.PPWithUniv

/-! # `ToLevel` class

This module defines `Lean.ToLevel`, which is the `Lean.Level` analogue to `Lean.ToExpr`.

**Warning:** Import `Mathlib/Tactic/ToExpr.lean` instead of this one if you are writing `ToExpr`
instances. This ensures that you are using the universe polymorphic `ToExpr` instances that
override the ones from Lean 4 core.

-/

namespace Lean

attribute [pp_with_univ] toLevel

end Lean
```
