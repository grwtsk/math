# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HtmlDisplay.Variant5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `534dbb8e4c8909baecbffede0c766800bcfed989` · SHA-256 `5e9d5b4b6eadb6fc9620626a684c9520679e061d1c2fcf1914e810d90ec6e128`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
import Lean.Server.Rpc.Basic

import ProofWidgets.Data.Html

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
```
