# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Action.Variantdcddfaabf749af472dd7142be3eafe34fdfc71d55ebf3eca721e2f4f9f95187a

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `e80adcf344e6b5e4d1be81c2de8659e9d47e4a6c` · SHA-256 `dcddfaabf749af472dd7142be3eafe34fdfc71d55ebf3eca721e2f4f9f95187a`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Action
import Lean.Meta.Tactic.Grind.Arith.Cutsat.Search
namespace Lean.Meta.Grind.Action

/-- Linear integer arithmetic action. -/
public def lia : Action :=
  terminalAction Arith.Cutsat.check `(grind| lia)

end Lean.Meta.Grind.Action
```
