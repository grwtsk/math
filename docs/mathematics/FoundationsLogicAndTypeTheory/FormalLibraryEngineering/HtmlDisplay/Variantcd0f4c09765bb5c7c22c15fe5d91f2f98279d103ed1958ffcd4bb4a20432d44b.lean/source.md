# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HtmlDisplay.Variantcd0f4c09765bb5c7c22c15fe5d91f2f98279d103ed1958ffcd4bb4a20432d44b

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `5ecefd1b41d8ffd10ed29b001118299ee199c343` · SHA-256 `ecb91fcafa7a0094c726402d0e9b414c7c7607e99099007c2e4d86dae305512c`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HtmlDisplayProps.Variant388473dda18a7ae2671fd460603a383b74ebcdf3021fadcf5881f0ad309d72ff","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"388473dda18a7ae2671fd460603a383b74ebcdf3021fadcf5881f0ad309d72ff","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.HtmlDisplayProps.Variant388473dda18a7ae2671fd460603a383b74ebcdf3021fadcf5881f0ad309d72ff","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"388473dda18a7ae2671fd460603a383b74ebcdf3021fadcf5881f0ad309d72ff","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/restored-inputs/packages/proofwidgets/ProofWidgets/Component/HtmlDisplay.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
module

public import ProofWidgets.Data.Html


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.HtmlDisplayProps.Variant388473dda18a7ae2671fd460603a383b74ebcdf3021fadcf5881f0ad309d72ff

public meta section

namespace ProofWidgets
open Lean Server

structure HtmlDisplayProps where
  html : Html
  deriving RpcEncodable

@[widget_module]
def HtmlDisplay : Component HtmlDisplayProps where
  javascript := include_str ".." / ".." / "widget" / "js" / "htmlDisplay.js"

@[widget_module]
def HtmlDisplayPanel : Component HtmlDisplayProps where
  javascript := include_str ".." / ".." / "widget" / "js" / "htmlDisplayPanel.js"

open Lean Server Elab Command

/-- Any term `t : α` with a `HtmlEval α` instance
can be evaluated in a `#html t` command.

This is analogous to how `Lean.MetaEval` supports `#eval`. -/
class HtmlEval (α : Type u) where
  eval : α → CommandElabM Html

instance : HtmlEval Html where
  eval ht := pure ht

instance [MonadLiftT m CommandElabM] : HtmlEval (m Html) where
  eval := monadLift

instance : HtmlEval (CoreM Html) where
  eval := liftCoreM

instance : HtmlEval (MetaM Html) where
  eval x := liftTermElabM x

instance : HtmlEval (TermElabM Html) where
  eval := liftTermElabM

namespace HtmlCommand

open Elab Command

unsafe def evalCommandMHtmlUnsafe (stx : Term) : TermElabM (CommandElabM Html) := do
  let tp := mkApp (mkConst ``CommandElabM) (mkConst ``Html)
  Term.evalTerm _ tp stx

@[implemented_by evalCommandMHtmlUnsafe]
opaque evalCommandMHtml : Term → TermElabM (CommandElabM Html)

/-- Display a value of type `Html` in the infoview.

The input can be a pure value
or a computation in any Lean metaprogramming monad
(e.g. `CommandElabM Html`). -/
syntax (name := htmlCmd) "#html " term : command

@[command_elab htmlCmd]
def elabHtmlCmd : CommandElab := fun
  | stx@`(#html $t:term) => do
    let htX ← liftTermElabM <| evalCommandMHtml <| ← ``(HtmlEval.eval $t)
    let ht ← htX
    liftCoreM <| Widget.savePanelWidgetInfo
      (hash HtmlDisplayPanel.javascript)
      (return json% { html: $(← rpcEncode ht) })
      stx
  | stx => throwError "Unexpected syntax {stx}."

end HtmlCommand
end ProofWidgets

/-- Construct a structured message from ProofWidgets HTML.

For the meaning of `alt`, see `MessageData.ofWidget`. -/
def Lean.MessageData.ofHtml (h : ProofWidgets.Html) (alt : String) : CoreM MessageData :=
  MessageData.ofComponent ProofWidgets.HtmlDisplay ⟨h⟩ alt
```
