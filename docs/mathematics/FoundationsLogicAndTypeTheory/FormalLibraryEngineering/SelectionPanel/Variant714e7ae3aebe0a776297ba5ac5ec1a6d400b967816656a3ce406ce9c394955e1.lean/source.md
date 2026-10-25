# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.SelectionPanel.Variant714e7ae3aebe0a776297ba5ac5ec1a6d400b967816656a3ce406ce9c394955e1

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `51cc8857815702a34762546da7a1c660e3a7e2e7` · SHA-256 `fd7615626bead066f990a1f78adf59f313f0020deb5cbcd18cf0ed02aaa559ae`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalsLocationsToExprsParams.Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"abdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GoalsLocationsToExprsParams.Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"abdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/proofwidgets/ProofWidgets/Component/SelectionPanel.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Meta.ExprLens
import ProofWidgets.Component.Panel
import ProofWidgets.Presentation.Expr -- Needed for RPC calls in SelectionPanel


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GoalsLocationsToExprsParams.Variantabdaf0a9e5a19199f24bcaefee420eede385549a23c3e365c858720f8cd4efee

open ProofWidgets in
/-- Save the expression corresponding to a goals location. -/
def Lean.SubExpr.GoalsLocation.saveExprWithCtx (loc : GoalsLocation) : MetaM ExprWithCtx :=
  let mvarId := loc.mvarId
  match loc.loc with
  | .hyp fv =>
    mvarId.withContext <|
      ExprWithCtx.save (mkFVar fv)
  | .hypType fv pos => mvarId.withContext do
    let tp ← Meta.inferType (mkFVar fv)
    Meta.viewSubexpr (visit := fun _ => ExprWithCtx.save) pos tp
  | .hypValue fv pos => mvarId.withContext do
    let some val ← fv.getValue?
      | throwError "fvar {mkFVar fv} is not a let-binding"
    Meta.viewSubexpr (visit := fun _ => ExprWithCtx.save) pos val
  | .target pos => mvarId.withContext do
    let tp ← Meta.inferType (mkMVar mvarId)
    Meta.viewSubexpr (visit := fun _ => ExprWithCtx.save) pos tp

namespace ProofWidgets
open Lean Server

structure GoalsLocationsToExprsParams where
  locations : Array (WithRpcRef Elab.ContextInfo × SubExpr.GoalsLocation)

#mkrpcenc GoalsLocationsToExprsParams

structure GoalsLocationsToExprsResponse where
  exprs : Array (WithRpcRef ExprWithCtx)

#mkrpcenc GoalsLocationsToExprsResponse

/-- Compute expressions corresponding to the given `GoalsLocation`s. -/
@[server_rpc_method]
def goalsLocationsToExprs (args : GoalsLocationsToExprsParams) :
    RequestM (RequestTask GoalsLocationsToExprsResponse) :=
  RequestM.asTask do
    let mut exprs := #[]
    for ⟨⟨ci⟩, loc⟩ in args.locations do
      exprs := exprs.push ⟨← ci.runMetaM {} loc.saveExprWithCtx⟩
    return { exprs }

/-- Display a list of all expressions selected in the goal state, with a choice of which `Expr`
presenter should be used to display each of those expressions.

Expressions can be selected using shift-click. -/
@[widget_module]
def SelectionPanel : Component PanelWidgetProps where
  javascript := include_str ".." / ".." / "build" / "js" / "presentSelection.js"

end ProofWidgets
```
