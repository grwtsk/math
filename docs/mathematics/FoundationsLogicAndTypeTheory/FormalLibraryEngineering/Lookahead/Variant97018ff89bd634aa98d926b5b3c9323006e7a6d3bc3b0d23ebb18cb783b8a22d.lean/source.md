# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Lookahead.Variant97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `9a059aa86377ca32f2e8a24f577bdb46ff327c9e` · SHA-256 `97018ff89bd634aa98d926b5b3c9323006e7a6d3bc3b0d23ebb18cb783b8a22d`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
import Lean.Meta.Tactic.Grind.Split
import Lean.Meta.Tactic.Grind.EMatchAction
public section
namespace Lean.Meta.Grind

/-
This code is not used anymore.
TODO: Decide whether we should delete it or not.
-/

private abbrev maxIterations := 10000 -- **TODO**: Add option

private def solve (goal : Goal) (generation : Nat) : GrindM (Option Goal) := do
  let solvers ← Solvers.mkAction
  let step : Action := solvers <|> Action.splitNext <|> Action.instantiate
  let a := Action.intros generation >> Action.assertAll >> step.loop maxIterations
  match (← a.run goal) with
  | .closed _ => return none
  | .stuck gs =>
    let goal :: _ := gs | return some goal
    return some goal

private def tryLookahead (e : Expr) : GoalM Bool :=
  withTheReader Grind.Context
    (fun ctx => { ctx with config.qlia := true, cheapCases := true }) do
  -- TODO: if `e` is an arithmetic expression, we can avoid creating an auxiliary goal.
  -- We can assert it directly to the arithmetic module.
  -- Remark: We can simplify this code because the lookahead only really worked for arithmetic.
  trace_goal[grind.lookahead.try] "{e}"
  let goal ← get
  let proof? ← withoutModifyingMCtx do
    let tag ← goal.mvarId.getTag
    let target ← mkArrow (mkNot e) (← getFalseExpr)
    let mvar ← mkFreshExprSyntheticOpaqueMVar target tag
    let goalAux := { goal with mvarId := mvar.mvarId!, newFacts := {} }
    let gen ← getGeneration e
    if (← solve goalAux gen).isNone then
      return some (← instantiateMVars mvar)
    else
      return none
  if let some proof := proof? then
    trace[grind.lookahead.assert] "{e}"
    pushEqTrue e <| mkApp2 (mkConst ``Grind.of_lookahead) e proof
    processNewFacts
    return true
  else
    return false

def lookahead : GoalM Bool := do
  unless (← getConfig).lookahead do
    return false
  if (← get).split.lookaheads.isEmpty then
    return false
  let mut postponed := []
  let mut progress := false
  let infos := (← get).split.lookaheads
  modify fun s => { s with split.lookaheads := [] }
  for info in infos do
    if (← isInconsistent) then
      return true
    match (← checkSplitStatus info) with
    | .resolved => progress := true
    | .ready _ _ true
    | .notReady => postponed := info :: postponed
    | .ready _ _ false =>
      if (← tryLookahead info.getExpr) then
        progress := true
      else
        postponed := info :: postponed
  if progress then
    modify fun s => { s with
      split.lookaheads := s.split.lookaheads ++ postponed.reverse
    }
    return true
  else
    return false

end Lean.Meta.Grind
```
