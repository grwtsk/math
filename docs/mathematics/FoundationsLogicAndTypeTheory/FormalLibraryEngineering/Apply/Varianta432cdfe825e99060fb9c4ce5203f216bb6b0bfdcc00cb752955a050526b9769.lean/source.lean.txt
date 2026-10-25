-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyExprPrime.Variant5d9ac94541b87d943ddaa8ba9c29867d8a72e7fdaa0a60e44ce2ff510e3ae3fb","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5d9ac94541b87d943ddaa8ba9c29867d8a72e7fdaa0a60e44ce2ff510e3ae3fb","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ApplyExprPrime.Variant5d9ac94541b87d943ddaa8ba9c29867d8a72e7fdaa0a60e44ce2ff510e3ae3fb","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5d9ac94541b87d943ddaa8ba9c29867d8a72e7fdaa0a60e44ce2ff510e3ae3fb","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/RuleTac/Apply.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
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


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ApplyExprPrime.Variant5d9ac94541b87d943ddaa8ba9c29867d8a72e7fdaa0a60e44ce2ff510e3ae3fb

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
