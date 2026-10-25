# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Action.Variantdd1fec935b8edfb104fbebffd4e238fe7ff9c3540513273a570b3e1dffcaa617

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `a72b58cd67e67c8e02af89b86212fb93e6fa8635` · SHA-256 `dd1fec935b8edfb104fbebffd4e238fe7ff9c3540513273a570b3e1dffcaa617`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Action
import Lean.Meta.Tactic.Grind.Arith.Linear.Search
namespace Lean.Meta.Grind.Action

/-- Linear arithmetic action. -/
public def linarith : Action :=
  terminalAction Arith.Linear.check `(grind| linarith)

end Lean.Meta.Grind.Action
```
