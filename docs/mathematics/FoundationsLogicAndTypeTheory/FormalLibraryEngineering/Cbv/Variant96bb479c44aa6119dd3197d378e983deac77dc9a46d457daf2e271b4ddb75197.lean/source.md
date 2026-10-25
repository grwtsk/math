# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Cbv.Variant96bb479c44aa6119dd3197d378e983deac77dc9a46d457daf2e271b4ddb75197

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `d10a6c5dbe2809a1d6d18a7357b53b63b411d3f5` · SHA-256 `96bb479c44aa6119dd3197d378e983deac77dc9a46d457daf2e271b4ddb75197`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2026 Lean FRO, LLC. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
import Lean.Elab.Tactic.Grind.Basic
import Lean.Meta.Tactic.Cbv.Main
namespace Lean.Elab.Tactic.Grind
open Meta

@[builtin_grind_tactic Parser.Tactic.Grind.symCbv] def evalSymCbv : GrindTactic := fun _ => withMainContext do
  ensureSym
  let goal ← getMainGoal
  let result ← liftGrindM <|
    Lean.Meta.Tactic.Cbv.cbvGoalCore goal.mvarId
  match result with
  | none => replaceMainGoal []
  | some mvarId => replaceMainGoal [{ goal with mvarId }]

end Lean.Elab.Tactic.Grind
```
