-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalsLocationsToExprsParams.Variant1b9684d45e168c1eff9f0a18a7f633fde3996f4018ff2f024708cc1e429a7429","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"1b9684d45e168c1eff9f0a18a7f633fde3996f4018ff2f024708cc1e429a7429","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GoalsLocationsToExprsParams.Variant1b9684d45e168c1eff9f0a18a7f633fde3996f4018ff2f024708cc1e429a7429","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"1b9684d45e168c1eff9f0a18a7f633fde3996f4018ff2f024708cc1e429a7429","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Component/Panel/SelectionPanel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public meta import Lean.Meta.ExprLens
public import ProofWidgets.Component.Panel.Basic


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalsLocationsToExprsParams.Variant1b9684d45e168c1eff9f0a18a7f633fde3996f4018ff2f024708cc1e429a7429

public meta section -- Needed for RPC calls in SelectionPanel

open ProofWidgets in
/-- Save the expression corresponding to a goals location. -/
def Lean.SubExpr.GoalsLocation.saveExprWithCtx (loc : GoalsLocation) : MetaM ExprWithCtx :=
  let mvarId := loc.mvarId
  mvarId.withContext do
    match loc.loc with
    | .hyp fvarId => ExprWithCtx.save (.fvar fvarId)
    | .hypType fvarId pos =>
      Meta.viewSubexpr (fun _ => ExprWithCtx.save) pos (← instantiateMVars (← fvarId.getType))
    | .hypValue fvarId pos =>
      let some val ← fvarId.getValue? | throwError "fvar {Expr.fvar fvarId} is not a let-binding"
      Meta.viewSubexpr (fun _ => ExprWithCtx.save) pos (← instantiateMVars val)
    | .target pos =>
      Meta.viewSubexpr (fun _ => ExprWithCtx.save) pos (← instantiateMVars (← mvarId.getType))

namespace ProofWidgets
open Lean Server

structure GoalsLocationsToExprsParams where
  locations : Array (WithRpcRef Elab.ContextInfo × SubExpr.GoalsLocation)
  deriving RpcEncodable

structure GoalsLocationsToExprsResponse where
  exprs : Array (WithRpcRef ExprWithCtx)
  deriving RpcEncodable

/-- Compute expressions corresponding to the given `GoalsLocation`s. -/
@[server_rpc_method]
def goalsLocationsToExprs (args : GoalsLocationsToExprsParams) :
    RequestM (RequestTask GoalsLocationsToExprsResponse) :=
  RequestM.asTask do
    let mut exprs := #[]
    for ⟨ref, loc⟩ in args.locations do
      let ci := ref.val
      exprs := exprs.push (← WithRpcRef.mk (← ci.runMetaM {} loc.saveExprWithCtx))
    return { exprs }

/-- Display a list of all expressions selected in the goal state, with a choice of which `Expr`
presenter should be used to display each of those expressions.

Expressions can be selected using shift-click. -/
@[widget_module]
def SelectionPanel : Component PanelWidgetProps where
  javascript := include_str ".." / ".." / ".." / "widget" / "js" / "presentSelection.js"

end ProofWidgets
