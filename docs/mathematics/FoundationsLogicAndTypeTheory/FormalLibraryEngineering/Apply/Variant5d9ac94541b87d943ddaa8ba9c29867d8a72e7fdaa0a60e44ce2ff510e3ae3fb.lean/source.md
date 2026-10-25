# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Apply.Variant5d9ac94541b87d943ddaa8ba9c29867d8a72e7fdaa0a60e44ce2ff510e3ae3fb

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `ec5ebb20cb26fd692ef98c82e2d63025ab126aab` · SHA-256 `5d9ac94541b87d943ddaa8ba9c29867d8a72e7fdaa0a60e44ce2ff510e3ae3fb`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleTac.Basic
public import Aesop.RuleTac.RuleTerm
public import Aesop.RuleTac.ElabRuleTerm
public import Aesop.Script.SpecificTactics

public section

open Lean
open Lean.Meta
open Lean.PrettyPrinter (delab)

namespace Aesop.RuleTac

def applyExpr' (goal : MVarId) (e : Expr) (eStx : Term)
    (patSubst? : Option Substitution) (md : TransparencyMode) :
    BaseM RuleApplication :=
  withTransparency md do
    let e ←
      if let some patSubst := patSubst? then
        patSubst.specializeRule e
      else
        pure e
    let (goals, #[step]) ← applyS goal e eStx md |>.run
      | throwError "aesop: internal error in applyExpr': multiple steps"
    let mkDiff newGoal := return {
      oldGoal := goal
      addedFVars := ∅
      removedFVars := ∅
      targetChanged := ! (← isGoalDiffDefeqTarget goal newGoal)
      newGoal
    }
    let goals ← goals.mapM fun newGoal => return { diff := ← mkDiff newGoal }
    return {
      goals
      postState := step.postState
      scriptSteps? := #[step]
      successProbability? := none
    }

def applyExpr (goal : MVarId) (e : Expr) (eStx : Term)
    (patSubsts? : Option (Array Substitution)) (md : TransparencyMode) :
    BaseM RuleTacOutput := do
  if let some patSubsts := patSubsts? then
    let mut rapps := Array.mkEmpty patSubsts.size
    let initialState ← saveState
    for patSubst in patSubsts do
      try
        let rapp ← applyExpr' goal e eStx patSubst md
        rapps := rapps.push rapp
      catch _ =>
        continue
      finally
        restoreState initialState
    if rapps.isEmpty then
      throwError "failed to apply '{e}' with any of the matched instances of the rule pattern"
    return { applications := rapps }
  else
    let rapp ← applyExpr' goal e eStx none md
    return { applications := #[rapp] }

def applyConst (decl : Name) (md : TransparencyMode) :
    RuleTac := λ input => do
  applyExpr input.goal (← mkConstWithFreshMVarLevels decl) (mkIdent decl)
    input.patternSubsts? md

def applyTerm (stx : Term) (md : TransparencyMode) : RuleTac :=
  λ input => input.goal.withContext do
    applyExpr input.goal (← elabRuleTermForApplyLikeMetaM input.goal stx) stx
      input.patternSubsts? md

def apply (t : RuleTerm) (md : TransparencyMode) : RuleTac :=
  match t with
  | .const decl => applyConst decl md
  | .term tm => applyTerm tm md

-- Tries to apply each constant in `decls`. For each one that applies, a rule
-- application is returned. If none applies, the tactic fails.
def applyConsts (decls : Array Name) (md : TransparencyMode) :
    RuleTac := λ input => do
  let initialState ← saveState
  let apps ← decls.filterMapM λ decl => do
    try
      let e ← mkConstWithFreshMVarLevels decl
      some <$> applyExpr' input.goal e (mkIdent decl) none md
    catch _ =>
      return none
    finally
      restoreState initialState
  if apps.isEmpty then throwError
    "failed to apply any of these declarations: {decls}"
  return ⟨apps⟩

end RuleTac
```
