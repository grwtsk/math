-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstantiateExtTheorem.Variant81879d2b5088d320971b50e56a32033d7ad78ef2425461417de14e825c222624","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"81879d2b5088d320971b50e56a32033d7ad78ef2425461417de14e825c222624","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.InstantiateExtTheorem.Variant81879d2b5088d320971b50e56a32033d7ad78ef2425461417de14e825c222624","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"81879d2b5088d320971b50e56a32033d7ad78ef2425461417de14e825c222624","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Meta/Tactic/Grind/Ext.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Amazon.com, Inc. or its affiliates. All Rights Reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Leonardo de Moura
-/
module
prelude
public import Lean.Meta.Tactic.Grind.Types
import Lean.Meta.Tactic.Grind.SynthInstance

namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.InstantiateExtTheorem.Variant81879d2b5088d320971b50e56a32033d7ad78ef2425461417de14e825c222624

public section
namespace Lean.Meta.Grind
/-! Extensionality theorems support. -/

def instantiateExtTheorem (thm : Ext.ExtTheorem) (e : Expr) : GoalM Unit := withNewMCtxDepth do
  unless (← getGeneration e) < (← getMaxGeneration) do return ()
  let_expr Eq α lhs rhs := e | return ()
  let c ← mkConstWithFreshMVarLevels thm.declName
  let (mvars, bis, type) ← withDefault <| forallMetaTelescopeReducing (← inferType c)
  let_expr Eq α' lhs' rhs' := type | return ()
  let matchTerm (p : Expr) (e : Expr) : GoalM Bool := do
    if p.isMVar then
      p.mvarId!.assign e
      return true
    else
      isDefEq p e
  let matchEqs : GoalM Bool := do
    isDefEq α α' <&&> matchTerm lhs' lhs <&&> matchTerm rhs' rhs
  unless (← matchEqs) do
    reportIssue! "failed to apply extensionality theorem `{thm.declName}` for {indentExpr e}\nis not definitionally equal to{indentExpr type}"
    return ()
  -- Instantiate type class instances
  for mvar in mvars, bi in bis do
    if bi.isInstImplicit && !(← mvar.mvarId!.isAssigned) then
      let type ← inferType mvar
      unless (← synthInstanceAndAssign mvar type) do
        reportIssue! "failed to synthesize instance when instantiating extensionality theorem `{thm.declName}` for {indentExpr e}"
        return ()
  -- Remark: `proof c mvars` has type `e`
  let proof ← instantiateMVars (mkAppN c mvars)
  -- `e` is equal to `False`
  let eEqFalse ← mkEqFalseProof e
  -- So, we use `Eq.mp` to build a `proof` of `False`
  let proof := mkApp4 (mkConst ``Eq.mp [Level.zero]) e (← getFalseExpr) eEqFalse proof
  let mvars ← mvars.filterM fun mvar => return !(← mvar.mvarId!.isAssigned)
  let proof' ← instantiateMVars (← mkLambdaFVars mvars proof)
  let prop' ← inferType proof'
  if proof'.hasMVar || prop'.hasMVar then
    reportIssue! "failed to apply extensionality theorem `{thm.declName}` for {indentExpr e}\nresulting terms contain metavariables"
    return ()
  trace[grind.ext] "{thm.declName}: {prop'}"
  addNewRawFact proof' prop' ((← getGeneration e) + 1) (.ext thm.declName) .other

end Lean.Meta.Grind
