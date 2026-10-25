# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ToAdditive.Variantc8eb34996949306a2a75e7d4d8ba97f3bf633ed4393e4e24f6a1669cd905f84c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `fe38034c943a759490c35c04631f82c0297d266e` · SHA-256 `c8eb34996949306a2a75e7d4d8ba97f3bf633ed4393e4e24f6a1669cd905f84c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2024 Miyahara Kō. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Miyahara Kō
-/
import Mathlib.Tactic.ToAdditive.Frontend

/-!
## `@[to_additive]` attributes for basic types
-/

attribute [to_additive Empty] Empty
attribute [to_additive PEmpty] PEmpty
attribute [to_additive PUnit] PUnit
attribute [to_additive existing Unit] Unit

attribute [to_additive_change_numeral 2] OfNat OfNat.ofNat

attribute [to_additive] One
attribute [to_additive existing Zero.toOfNat0] One.toOfNat1
attribute [to_additive existing Zero.ofOfNat0] One.ofOfNat1
```
