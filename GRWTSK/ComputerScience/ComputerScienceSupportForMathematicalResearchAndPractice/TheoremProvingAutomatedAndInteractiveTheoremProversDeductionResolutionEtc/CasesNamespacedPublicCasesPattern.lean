-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesTargetPrime.Variant41894e7d01212ce9a6c8915fa0c654a2a8b15a59d2dba8782e0e430dc25ae57d","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"41894e7d01212ce9a6c8915fa0c654a2a8b15a59d2dba8782e0e430dc25ae57d","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.CasesTargetPrime.Variant41894e7d01212ce9a6c8915fa0c654a2a8b15a59d2dba8782e0e430dc25ae57d","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"41894e7d01212ce9a6c8915fa0c654a2a8b15a59d2dba8782e0e430dc25ae57d","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/aesop/Aesop/RuleTac/Cases.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2022 Jannis Limperg. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jannis Limperg
-/
module

public import Aesop.RuleTac.Basic
public import Aesop.Script.SpecificTactics


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.CasesTargetPrime.Variant41894e7d01212ce9a6c8915fa0c654a2a8b15a59d2dba8782e0e430dc25ae57d

public section

open Lean
open Lean.Meta

namespace Aesop

-- NOTE: introduces fresh metavariables for the 'holes' in `p`.
def CasesPattern.toExpr (p : CasesPattern) : MetaM Expr := do
  let (_, _, p) ← openAbstractMVarsResult p
  return p

inductive CasesTarget' where
  | decl (decl : Name)
  | patterns (ps : Array (Expr × Meta.SavedState))

def CasesTarget.toCasesTarget' : CasesTarget → MetaM CasesTarget'
  | decl d => return .decl d
  | patterns ps => withoutModifyingState do
    let initialState ← saveState
    .patterns <$> ps.mapM λ p => do
      initialState.restore
      let e ← p.toExpr
      let s ← saveState
      return (e, s)

namespace RuleTac

partial def cases (target : CasesTarget) (md : TransparencyMode)
    (isRecursiveType : Bool) (ctorNames : Array CtorNames) : RuleTac :=
  SingleRuleTac.toRuleTac λ input => do
    match ← go input.goal #[] #[] input.goal |>.run with
    | (none, _) => throwError "No matching hypothesis found."
    | (some goals, steps) => return (goals, steps, none)
  where
    findFirstApplicableHyp (excluded : Array FVarId) (goal : MVarId) :
        MetaM (Option FVarId) :=
      withTransparency md do goal.withContext do
        let target ← target.toCasesTarget'
        let «match» ldecl : MetaM Bool :=
          match target with
          | .decl d => do
            isAppOfUpToDefeq (← mkConstWithFreshMVarLevels d) ldecl.type
          | .patterns ps => withoutModifyingState do
            ps.anyM λ (e, state) => do state.restore; isDefEq e ldecl.type
        return ← (← getLCtx).findDeclM? λ ldecl => do
          if ldecl.isImplementationDetail || excluded.contains ldecl.fvarId then
            return none
          else if ← «match» ldecl then
            return some ldecl.fvarId
          else
            return none

    go (initialGoal : MVarId) (newGoals : Array Subgoal) (excluded : Array FVarId)
        (goal : MVarId) : ScriptM (Option (Array Subgoal)) := do
      let some hyp ← findFirstApplicableHyp excluded goal
        | return none
      let some goals ← tryCasesS goal hyp ctorNames
        | return none
      let mut newGoals := newGoals
      for h : i in [:goals.size] do
        let g := goals[i]
        let newDiff ← diffGoals goal g.mvarId
        let mut excluded := excluded
        if isRecursiveType then
          excluded := excluded.map λ fvarId =>
            if let .fvar fvarId' := g.subst.get fvarId then fvarId' else fvarId
          excluded := excluded ++ newDiff.addedFVars.toArray
        match ← go initialGoal newGoals excluded g.mvarId with
        | some newGoals' => newGoals := newGoals'
        | none =>
          -- TODO We used to use a method that produces a more clever goal diff,
          -- using the fvarSubst reported by `cases`. Restore this once
          -- ForwardState.applyGoalDiff can deal with nonempty fvarSubsts.
          let diff ← diffGoals initialGoal g.mvarId
          newGoals := newGoals.push { diff }
      return some newGoals

end Aesop.RuleTac
