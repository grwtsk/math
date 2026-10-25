# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Stream.Variant439dfe389d64809e3e12e39820816e49eabb53835dcde97e45d0f55bbcf2b0e6

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9e477f0663f67e88fa1513996ead0b61a3cc347e` · SHA-256 `439dfe389d64809e3e12e39820816e49eabb53835dcde97e45d0f55bbcf2b0e6`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Paul Reichert
-/
module

prelude
public import Init.Data.Stream
public import Init.Data.Iterators.Consumers.Monadic.Access

set_option linter.missingDocs true

public section

namespace Std
open Std.Iterators

instance {α β} [Iterator α Id β] [Productive α Id] [IteratorAccess α Id] :
    Stream (Iter (α := α) β) β where
  next? it := match (it.toIterM.nextAtIdx? 0).run with
    | .yield it' out _ => some (out, it'.toIter)
    | .skip _ h => False.elim ?noskip
    | .done _ => none
  where finally
    case noskip =>
      revert h
      exact IterM.not_isPlausibleNthOutputStep_yield

end Std
```
