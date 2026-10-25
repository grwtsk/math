# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Expr.Variant675891ac81013bb214e49a776801ffb30bea1997278a09795eb340255417206e

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `c8dcefeed707dea5da9ec98f0c16458ac3577c97` · SHA-256 `4eac1fa87a0fdb1db86c535740616ee70412fae9c21f05b06bbc946d8ee4f9e7`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprPresenter.Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.ExprPresenter.Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/proofwidgets/ProofWidgets/Presentation/Expr.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","interpolated_literals","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import ProofWidgets.Data.Html


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ExprPresenter.Variant3f66595a407e42f6a1697dc8bf53243858c340d180b8f6fd8c6777712682ae4c

namespace ProofWidgets
open Lean Server

/-- An `Expr` presenter is similar to a delaborator but outputs HTML trees instead of syntax, and
the output HTML can contain elements which interact with the original `Expr` in some way. We call
interactive outputs with a reference to the original input *presentations*. -/
structure ExprPresenter where
  /-- A user-friendly name for this presenter. For example, "LaTeX". -/
  userName : String
  /-- Whether the output HTML has inline (think something which fits in the space normally occupied
  by an `Expr`, e.g. LaTeX) or block (think large diagram which needs dedicated space) layout. -/
  layoutKind : LayoutKind := .block
  present : Expr → MetaM Html

initialize exprPresenters : TagAttribute ←
  registerTagAttribute `expr_presenter
    "Register an Expr presenter. It must have the type `ProofWidgets.ExprPresenter`."
    (validate := fun nm => do
      let const ← getConstInfo nm
      if !const.type.isConstOf ``ExprPresenter then
        throwError m!"type mismatch, expected {mkConst ``ExprPresenter} but got {const.type}"
      return ())

private unsafe def evalExprPresenterUnsafe (env : Environment) (opts : Options)
    (constName : Name) : Except String ExprPresenter :=
  env.evalConstCheck ExprPresenter opts ``ExprPresenter constName

@[implemented_by evalExprPresenterUnsafe]
opaque evalExprPresenter (env : Environment) (opts : Options) (constName : Name) :
  Except String ExprPresenter

structure GetExprPresentationsParams where
  expr : WithRpcRef ExprWithCtx

#mkrpcenc GetExprPresentationsParams

structure ExprPresentationData where
  name : Name
  userName : String
  html : Html
  deriving RpcEncodable

structure ExprPresentations where
  presentations : Array ExprPresentationData
  deriving RpcEncodable

@[server_rpc_method]
def getExprPresentations : GetExprPresentationsParams → RequestM (RequestTask ExprPresentations)
  | ⟨⟨expr⟩⟩ => RequestM.asTask do
    let mut presentations : Array ExprPresentationData := #[]
    let env := expr.ci.env
    for nm in exprPresenters.ext.getState env do
      presentations ← addPresenterIfApplicable expr nm presentations
    -- FIXME: The fact that we need this loop suggests that TagAttribute is not the right way
    -- to implement a persistent, iterable set of names.
    for modNm in env.allImportedModuleNames do
      let some modIdx := env.getModuleIdx? modNm
        | throw <| RequestError.internalError s!"unknown module {modNm}"
      for nm in exprPresenters.ext.getModuleEntries env modIdx do
        presentations ← addPresenterIfApplicable expr nm presentations
    return { presentations }
where addPresenterIfApplicable (expr : ExprWithCtx) (nm : Name) (ps : Array ExprPresentationData) :
    RequestM (Array ExprPresentationData) :=
  match evalExprPresenter expr.ci.env expr.ci.options nm with
  | .ok p =>
    try
      let html ← expr.runMetaM fun e => do
        let e ← Lean.instantiateMVars e
        p.present e
      return ps.push ⟨nm, p.userName, html⟩
    catch _ =>
      return ps
  | .error e =>
    throw <| RequestError.internalError s!"Failed to evaluate Expr presenter '{nm}': {e}"

structure GetExprPresentationParams where
  expr : WithRpcRef ExprWithCtx
  /-- Name of the presenter to use. -/
  name : Name

#mkrpcenc GetExprPresentationParams

@[server_rpc_method]
def getExprPresentation : GetExprPresentationParams → RequestM (RequestTask Html)
  | { expr := ⟨expr⟩, name } => RequestM.asTask do
    let ci := expr.ci
    if !exprPresenters.hasTag ci.env name then
      throw <| RequestError.invalidParams s!"The constant '{name}' is not an Expr presenter."
    match evalExprPresenter ci.env ci.options name with
    | .ok p =>
      expr.runMetaM p.present
    | .error e =>
      throw <| RequestError.internalError s!"Failed to evaluate Expr presenter '{name}': {e}"

-- https://leanprover.zulipchat.com/#narrow/stream/287929-mathlib4/topic/deprecation.20warning.20from.20ProofWidgets
attribute [deprecated] getExprPresentation

structure ExprPresentationProps where
  expr : WithRpcRef ExprWithCtx

#mkrpcenc ExprPresentationProps

/-- This component shows a selection of all known and applicable `ProofWidgets.ExprPresenter`s which
are used to render the expression when selected. The one with highest precedence (TODO) is shown by
default. -/
@[widget_module]
def ExprPresentation : Component ExprPresentationProps where
  javascript := include_str ".." / ".." / "build" / "js" / "exprPresentation.js"

end ProofWidgets
```
