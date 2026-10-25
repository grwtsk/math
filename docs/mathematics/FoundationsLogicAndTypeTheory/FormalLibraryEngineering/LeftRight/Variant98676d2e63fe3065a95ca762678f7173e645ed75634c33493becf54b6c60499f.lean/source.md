# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.LeftRight.Variant98676d2e63fe3065a95ca762678f7173e645ed75634c33493becf54b6c60499f

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `398711c8c1231d64e998d692d215b0db38874be1` · SHA-256 `98676d2e63fe3065a95ca762678f7173e645ed75634c33493becf54b6c60499f`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

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

def mLeftRightCore (right : Bool) (mvar : MVarId) : MetaM MVarId := do
  let g ← instantiateMVars <| ← mvar.getType
  let some goal := parseMGoal? g | throwError "not in proof mode"

  let mkApp3 (.const ``SPred.or _) σs L R := goal.target | throwError "target is not SPred.or"

  let (thm, keep) := if right then (``SPred.or_intro_r', R) else (``SPred.or_intro_l', L)

  let newGoal ← mkFreshExprSyntheticOpaqueMVar {goal with target := keep}.toExpr
  mvar.assign (mkApp5 (mkConst thm [goal.u]) σs goal.hyps L R newGoal)
  return newGoal.mvarId!

@[builtin_tactic Lean.Parser.Tactic.mleft]
def elabMLeft : Tactic | _ => do
  let mvar ← getMainGoal
  mvar.withContext do
  let newGoal ← mLeftRightCore (right := false) mvar
  replaceMainGoal [newGoal]

@[builtin_tactic Lean.Parser.Tactic.mright]
def elabMRight : Tactic | _ => do
  let mvar ← getMainGoal
  mvar.withContext do
  let newGoal ← mLeftRightCore (right := true) mvar
  replaceMainGoal [newGoal]
```
