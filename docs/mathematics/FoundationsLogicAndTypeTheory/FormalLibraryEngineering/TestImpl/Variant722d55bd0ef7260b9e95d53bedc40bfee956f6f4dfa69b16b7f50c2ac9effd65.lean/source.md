# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.TestImpl.Variant722d55bd0ef7260b9e95d53bedc40bfee956f6f4dfa69b16b7f50c2ac9effd65

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `71edf223210cd1d6dc644a2f447f2c595eddc311` · SHA-256 `f9121489fc3044980fd3192c23d80f18d5c33d36db9a8585679305a9b8e9bac3`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetHtmlComponentProps.Variant403d286ac9fb241b9bcc211ff75821ef342dedfb497d687333f898d188c7fb39","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"403d286ac9fb241b9bcc211ff75821ef342dedfb497d687333f898d188c7fb39","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.GetHtmlComponentProps.Variant403d286ac9fb241b9bcc211ff75821ef342dedfb497d687333f898d188c7fb39","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"403d286ac9fb241b9bcc211ff75821ef342dedfb497d687333f898d188c7fb39","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/rh16-games-packets/external/replay/.lake/packages/mathlib/MathlibTest/ClickSuggestions/TestImpl.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["custom_or_effectful_command","implicit_eof_scopes","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Jovan Gerbscheid. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Jovan Gerbscheid
-/
module

public import Mathlib.Tactic.ClickSuggestions
public import ProofWidgets.Component.HtmlDisplay

/-!
# Testing of `#click_suggestions`

It is hard to test `#click_suggestions` directly, because it emits HTML that the user interacts with.
Instead, we define a (scoped) command `click_test {pos} => "{tac}"`, which verifies that
if you do a `#click_suggestions` at position `pos`, `tac` will be one of the suggestions.
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.GetHtmlComponentProps.Variant403d286ac9fb241b9bcc211ff75821ef342dedfb497d687333f898d188c7fb39

meta section

namespace Mathlib.Tactic.ClickSuggestions

open Lean Meta SubExpr ProofWidgets RefreshComponent Server

partial def getHtmlComponentProps {Props} [RpcEncodable Props] (html : Html) (c : Component Props)
    (arr : Array Props) : CoreM (Array Props) := do
  match html with
  | .element _ _ htmls => htmls.foldlM (fun arr html ↦ getHtmlComponentProps html c arr) arr
  | .text _ => return arr
  | .component hash _ lazy htmls =>
    let mut arr := arr
    if hash == c.javascriptHash then
      arr := arr.push <| ← getProps lazy
    if hash == FilterDetails.javascriptHash then
      let props : FilterDetailsProps ← getProps lazy
      arr ← getHtmlComponentProps props.all c arr
    if hash == RefreshComponent.javascriptHash then
      let props : RefreshComponent.Props ← getProps lazy
      arr ← getHtmlComponentProps (← getFinalHtml props.state.val) c arr
    htmls.foldlM (fun arr html ↦ getHtmlComponentProps html c arr) arr
where
  getProps {Props} [RpcEncodable Props] (lazy : LazyEncodable Json) :
      CoreM Props := do
    let (json, state) := lazy.run {}
    match rpcDecode json state with
    | .ok props => return props
    | .error e => throwError "An error occurred when looking at the HTML: {e}"
/- Wait until the state has finished refreshing, and the return the final HTML.
This is useful for inspecting `Html` from within Lean. -/
  getFinalHtml (info : RefreshRef) : BaseIO Html := do
  let { curr, next, .. } ← info.ref.atomically get
  if next.get.isNone then
    return curr.get
  getFinalHtml info

def trimWhitespace (string : String) : String :=
  "\n".intercalate <| ((string.trimAscii.split '\n').map (·.trimAscii.toString)).toList

elab "click_test" onGoal?:(num)? hyp?:(ident)? pos?:(str)? "=>" expecteds:str+ : tactic => do
  let goals ← Elab.Tactic.getGoals
  let onGoal := onGoal?.map (·.getNat - 1)
  let some goal := goals[onGoal.getD 0]? | throwError "there is no goal number {onGoal}"
  goal.withContext do
  let hyp? ← hyp?.mapM fun hyp ↦ return (← getLocalDeclFromUserName hyp.getId).fvarId
  let pos? ← pos?.mapM fun pos ↦ do
    match Pos.fromString? pos.getString with
    | .ok pos => return pos
    | .error s => throwError "{s}"
  let expecteds := expecteds.map (·.getString)
  let loc : GoalLocation ← match hyp?, pos? with
    | some h, some pos => pure <| .hypType h pos
    | none  , some pos => pure <| .target pos
    | some h, none     => pure <| .hyp h
    | none  , none     => pure <| .target .root
  let text ← getFileMap
  let some cursorPos := (← getRef).getPos? | throwError "found no valid cursor position"
  let cursorPos := text.utf8PosToLspPos cursorPos
  let (_, statusToken) ← mkRefreshComponent
  let (_, solvedToken) ← mkRefreshComponent
  let (html, masterToken) ← mkRefreshComponent
  let ctx := {
    cursorPos, masterToken, statusToken, solvedToken
    «meta» := { (default : DocumentMeta) with text }
    onGoal
    stx := default
    goal
    hyp?
    pos := pos?.getD .root
  }
  (generateSuggestions { loc, mvarId := goal } none masterToken).run ctx |>.run (← IO.mkRef {})
  let props ← getHtmlComponentProps html MakeEditLink #[]
  let suggested := props.flatMap (·.edit.edits.map (trimWhitespace ·.newText))
  for expected in expecteds do
    let expected := trimWhitespace expected
    unless suggested.contains expected do
      Widget.savePanelWidgetInfo
        (hash HtmlDisplayPanel.javascript)
        (return json% { html: $(← rpcEncode html) })
        (← getRef)
      throwError "{expected.quote} is not one of the suggestions: {suggested.map (·.quote)}"

end Mathlib.Tactic.ClickSuggestions
```
