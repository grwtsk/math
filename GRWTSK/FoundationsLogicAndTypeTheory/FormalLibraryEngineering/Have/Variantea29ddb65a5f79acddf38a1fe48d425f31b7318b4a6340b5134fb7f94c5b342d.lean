-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variant2335893a03525628eaa192d76febeece7084de5d55e67cc07a4106a61a634da1","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"2335893a03525628eaa192d76febeece7084de5d55e67cc07a4106a61a634da1","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ElabTerm.Variant2335893a03525628eaa192d76febeece7084de5d55e67cc07a4106a61a634da1","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"2335893a03525628eaa192d76febeece7084de5d55e67cc07a4106a61a634da1","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Elab/Tactic/Grind/Have.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Elab.Tactic.Grind.Basic
import Lean.Meta.Tactic.Grind.Intro
import Lean.Meta.Tactic.Grind.MarkAccessible
import Lean.Elab.SyntheticMVars
import Lean.Meta.Tactic.Grind.Solve

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ElabTerm.Variant2335893a03525628eaa192d76febeece7084de5d55e67cc07a4106a61a634da1

namespace Lean.Elab.Tactic.Grind
open Meta Lean.Meta.Grind

/-- Elaborate `stx` in the current `MVarContext`. If given, the `expectedType` will be used to help
elaboration but not enforced (use `elabTermEnsuringType` to enforce an expected type). -/
def elabTerm (stx : Syntax) (expectedType? : Option Expr) (mayPostpone := false) : GrindTacticM Expr :=
  withRef stx do Term.withoutTacticIncrementality true do withMainContext do
    if (← read).recover then
      go
    else
      Term.withoutErrToSorry go
where
  go : GrindTacticM Expr := do
    let e ← Term.elabTerm stx expectedType?
    Term.synthesizeSyntheticMVars (postpone := .ofBool mayPostpone)
    let e ← instantiateMVars e
    return e

@[builtin_grind_tactic Parser.Tactic.Grind.«have»] def evalHave : GrindTactic := fun stx => withMainContext do
  let `(grind| have $decl:letDecl) := stx | throwUnsupportedSyntax
  let stx' ← `(have $decl:letDecl; False)
  let e ← elabTerm stx' none
  let .letE n t v _ _ := e
    | throwError "elaborated term is not a `have` declaration{indentExpr e}"
  if t.hasMVar then throwError "type has metavariables{indentExpr t}"
  if v.hasMVar then throwError "value has metavariables{indentExpr v}"
  let goal ← getMainGoal
  let mvarId ← goal.mvarId.assert n t v
  let goal := { goal with mvarId }
  replaceMainGoal [goal]
  liftAction <| Action.intros 0

@[builtin_grind_tactic Parser.Tactic.Grind.haveSilent] def evalHaveSilent : GrindTactic := fun stx => withMainContext do
  let `(grind| have $[$id?:ident]? : $prop:term) := stx | throwUnsupportedSyntax
  let id := if let some id := id? then id.getId else `this
  let id := if id.hasMacroScopes then id else markGrindName id
  let prop ← elabTerm prop none
  let mvar ← mkFreshExprMVar prop
  let mvarId := mvar.mvarId!
  let goal :: goals ← getGoals | throwNoGoalsToBeSolved
  let goalNew := { goal with mvarId }
  setGoals [goalNew]
  if let some goal ← liftGrindM <| solve goalNew then
    let params := (← read).params
    let result ← liftGrindM do mkResult params (some goal)
    throwError "`finish` failed\n{← result.toMessageData}"
  let v ← instantiateMVars mvar
  let mvarId ← goal.mvarId.assert id prop v
  let goal := { goal with mvarId }
  setGoals (goal :: goals)
  liftAction <| Action.intros 0

end Lean.Elab.Tactic.Grind
