# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Finish.Variant1abfc85d4cbece1e7a39117e55a7c6af01dd4dc44800221511e38450952b7542

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `6bae01e1c2c4772d0cabe99ff74437492ccebfc5` · SHA-256 `1abfc85d4cbece1e7a39117e55a7c6af01dd4dc44800221511e38450952b7542`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Action
import Lean.Meta.Tactic.Grind.EMatchAction
import Lean.Meta.Tactic.Grind.Split
namespace Lean.Meta.Grind.Action

public abbrev maxIterationsDefault := 10000 -- **TODO**: Add option

public def mkFinish (maxIterations : Nat := maxIterationsDefault) : IO Action := do
  let solvers ← Solvers.mkAction
  let step : Action := solvers <|> instantiate <|> splitNext <|> mbtc
  return checkTactic (warnOnly := true) >> intros 0 >> assertAll >> step.loop maxIterations

end Lean.Meta.Grind.Action
```
