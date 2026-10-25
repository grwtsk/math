# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Match.Variantecfbd20ea3ea3be6476a142936347bfbcc682bd0c0cec10213af96716d0aa39c

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d88392acd01853e467ef9d5211e59b8de812f635` · SHA-256 `ecfbd20ea3ea3be6476a142936347bfbcc682bd0c0cec10213af96716d0aa39c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2019 Microsoft Corporation. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module

prelude
public import Lean.Meta.Match.MatchPatternAttr
public import Lean.Meta.Match.Match
public import Lean.Meta.Match.CaseValues
public import Lean.Meta.Match.CaseArraySizes
public import Lean.Meta.Match.MatchEqs

public section

namespace Lean

builtin_initialize registerTraceClass `Meta.Match

end Lean
```
