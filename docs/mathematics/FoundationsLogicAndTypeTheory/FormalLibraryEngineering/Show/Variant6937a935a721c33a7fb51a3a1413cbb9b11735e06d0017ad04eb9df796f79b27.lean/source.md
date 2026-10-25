# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Show.Variant6937a935a721c33a7fb51a3a1413cbb9b11735e06d0017ad04eb9df796f79b27

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `14ee4b24b81c0becfbf28c53385633d9df7a5d8e` · SHA-256 `6937a935a721c33a7fb51a3a1413cbb9b11735e06d0017ad04eb9df796f79b27`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Robin Arnez. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Robin Arnez
-/
module

prelude
public import Lean.Elab.Tactic.Change

public section

namespace Lean.Elab.Tactic
open Meta
/-!
# Implementation of the `show` tactic

The `show p` tactic finds the first goal that `p` unifies with and brings it to the front of the
goal list. If there were a `first_goal` combinator, it would be like `first_goal change p`.
-/

def elabShow (newType : Term) : TacticM Unit := do
  let goals@(goal :: _) ← getGoals | throwNoGoalsToBeSolved
  go newType goal goals []
where
  go (newType : Term) (firstGoal : MVarId) (goals : List MVarId) (prevRev : List MVarId) : TacticM Unit := do
    match goals with
    | [] =>
      -- re-run first goal for error message
      tryGoal newType firstGoal (← getGoals).tail [] manyError
    | goal :: goals =>
      if goals.isEmpty && (prevRev.isEmpty || !(← read).recover) then
        -- optimization for single goal / last goal without error recovery
        tryGoal newType goal goals prevRev simpleError
      else
        /-
        Save state manually to make sure that the info state is reverted,
        since `elabChange` elaborates the pattern each time.
        -/
        let state ← saveState
        Tactic.tryCatch
          (withoutRecover (tryGoal newType goal goals prevRev simpleError))
          fun _ => do
            state.restore true
            go newType firstGoal goals (goal :: prevRev)
  tryGoal (newType : Term) (goal : MVarId) (goals : List MVarId) (prevRev : List MVarId) (err : Expr → Expr → MetaM MessageData) : TacticM Unit := do
    let type ← goal.getType
    let tag ← goal.getTag
    goal.withContext do
      let (tgt', mvars) ← withCollectingNewGoalsFrom
        (elabChange type newType err)
        tag `show
      let goal' ← goal.replaceTargetDefEq tgt'
      let newGoals := goal' :: prevRev.reverseAux (mvars ++ goals)
      setGoals newGoals
  simpleError (p tgt : Expr) : MetaM MessageData := do
    return m!"\
      'show' tactic failed, pattern{indentExpr p}\n\
      is not definitionally equal to target{indentExpr tgt}"
  manyError (p tgt : Expr) : MetaM MessageData := do
    return m!"\
      'show' tactic failed, no goals unify with the given pattern.\n\
      \n\
      In the first goal, the pattern{indentExpr p}\n\
      is not definitionally equal to the target{indentExpr tgt}\n\
      (Errors for other goals omitted)"

@[builtin_tactic «show»] def evalShow : Tactic
  | `(tactic| show $newType:term) => elabShow newType
  | _ => throwUnsupportedSyntax

end Lean.Elab.Tactic
```
