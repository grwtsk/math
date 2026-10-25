# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Formula.Variantf235ac251aa361c64d3c75f099a8af24980d6eaf04b7d8c4639b898c748499d6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `cd45baaad80c496a63611b43422ffff395b634c6` · SHA-256 `f235ac251aa361c64d3c75f099a8af24980d6eaf04b7d8c4639b898c748499d6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Henrik Böving
-/
module

prelude
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.Lemmas
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.Class
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.Implementation
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.Instance
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.RatAddResult
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.RatAddSound
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.RupAddResult
public import Std.Tactic.BVDecide.LRAT.Internal.Formula.RupAddSound

@[expose] public section

/-!
This directory contains the current implementation of the LRAT checker that is plugged into the
generic LRAT checking loop from `LRATChecker` and then used in the surface level LRAT checker
that is publicly exposed.
-/
```
