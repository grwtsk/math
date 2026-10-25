# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Class.Variantc2b64776f16a3efb5bec2d2e0b53e42754a03df46572b2cb3cd6ab221f24d7bd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `745c193bee1718612eafa9f8d1da1c07f8c03088` · SHA-256 `c2b64776f16a3efb5bec2d2e0b53e42754a03df46572b2cb3cd6ab221f24d7bd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.Tree.Data

public section

open Lean

namespace Aesop

class Queue (Q : Type) where
  init : BaseIO Q
  addGoals : Q → Array GoalRef → BaseIO Q
  popGoal : Q → BaseIO (Option GoalRef × Q)

namespace Queue

def init' [Queue Q] (grefs : Array GoalRef) : BaseIO Q := do
  addGoals (← init) grefs

end Aesop.Queue
```
