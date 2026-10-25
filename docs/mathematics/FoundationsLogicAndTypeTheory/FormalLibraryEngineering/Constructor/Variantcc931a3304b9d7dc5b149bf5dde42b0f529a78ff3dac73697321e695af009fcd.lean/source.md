# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Constructor.Variantcc931a3304b9d7dc5b149bf5dde42b0f529a78ff3dac73697321e695af009fcd

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `821ce783e307b3cf570821fe7ea5cb08ed08a313` · SHA-256 `cc931a3304b9d7dc5b149bf5dde42b0f529a78ff3dac73697321e695af009fcd`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Lars König. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Lars König, Mario Carneiro, Sebastian Graf
-/
module

prelude
public import Std.Tactic.Do.Syntax
public import Lean.Elab.Tactic.Do.ProofMode.MGoal

public section

namespace Lean.Elab.Tactic.Do.ProofMode
open Std.Do
open Lean Elab Tactic Meta

def mConstructorCore (mvar : MVarId) : MetaM (MVarId × MVarId) := do
  let g ← instantiateMVars <| ← mvar.getType
  let some goal := parseMGoal? g | throwError "not in proof mode"

  let mkApp3 (.const ``SPred.and _) σs L R := goal.target | throwError "target is not SPred.and"

  let leftGoal ← mkFreshExprSyntheticOpaqueMVar {goal with target := L}.toExpr
  let rightGoal ← mkFreshExprSyntheticOpaqueMVar {goal with target := R}.toExpr
  mvar.assign (mkApp6 (mkConst ``SPred.and_intro [goal.u]) σs goal.hyps L R leftGoal rightGoal)
  return (leftGoal.mvarId!, rightGoal.mvarId!)

@[builtin_tactic Lean.Parser.Tactic.mconstructor]
def elabMConstructor : Tactic | _ => do
  let mvar ← getMainGoal
  mvar.withContext do
  let (leftGoal, rightGoal) ← mConstructorCore mvar
  replaceMainGoal [leftGoal, rightGoal]
```
