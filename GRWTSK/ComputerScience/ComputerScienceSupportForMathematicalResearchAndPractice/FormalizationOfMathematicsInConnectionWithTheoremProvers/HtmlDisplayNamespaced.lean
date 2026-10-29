-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HtmlDisplayProps.Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HtmlDisplayProps.Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Library/Mobile Documents/com~apple~CloudDocs/Desktop/~/Desktop - local computer/~/2025/October/30/ooi/FEATURES/.lake/packages/proofwidgets/ProofWidgets/Component/HtmlDisplay.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
import Lean.Server.Rpc.Basic

import ProofWidgets.Data.Html


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HtmlDisplayProps.Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128

namespace ProofWidgets
open Lean Server

structure HtmlDisplayProps where
  html : Html

#mkrpcenc HtmlDisplayProps

@[widget_module]
def HtmlDisplay : Component HtmlDisplayProps where
  javascript := include_str ".." / ".." / "build" / "js" / "htmlDisplay.js"

@[widget_module]
def HtmlDisplayPanel : Component HtmlDisplayProps where
  javascript := include_str ".." / ".." / "build" / "js" / "htmlDisplayPanel.js"

open Elab in
unsafe def evalHtmlUnsafe (stx : Term) : TermElabM Html := do
  let htmlT := mkConst ``Html
  Term.evalTerm Html htmlT stx

open Elab in
@[implemented_by evalHtmlUnsafe]
opaque evalHtml : Term → TermElabM Html

syntax (name := htmlCmd) "#html " term : command

open Elab Command Json in
@[command_elab htmlCmd]
def elabHtmlCmd : CommandElab := fun
  | stx@`(#html $t:term) =>
    runTermElabM fun _ => do
      let ht ← evalHtml <| ← `(ProofWidgets.Html.ofTHtml $t)
      savePanelWidgetInfo stx ``HtmlDisplayPanel do
        return json% { html: $(← rpcEncode ht) }
  | stx => throwError "Unexpected syntax {stx}."

syntax (name := htmlTac) "html! " term : tactic

open Elab Tactic Json in
@[tactic htmlTac]
def elabHtmlTac : Tactic
  | stx@`(tactic| html! $t:term) => do
    let ht ← evalHtml <| ← `(ProofWidgets.Html.ofTHtml $t)
    savePanelWidgetInfo stx ``HtmlDisplayPanel do
      return json% { html: $(← rpcEncode ht) }
  | stx => throwError "Unexpected syntax {stx}."

end ProofWidgets
