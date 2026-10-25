# rpc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:117fbb5f1a860fda12f5e7d3f23d8c2444771248987e162a23c032bfb2632ff4",
  "kind": "def",
  "lexical_name": "rpc",
  "mathematical_admission": "NOT_CLAIMED",
  "metrics": [
    {
      "coverage": "No exact-source compiler-observed verification dependency graph supplied.",
      "id": "spectral_log_volume",
      "profile": "docs/reference/ranking-profile.json",
      "profile_id": "spectral-volume-radius3-v1",
      "profile_sha256": "f8800b2ae8ab1d08df856bc79abc53dbafa1cbd922963b7247e927bf0ed9afd6",
      "radius": 3,
      "reason": "verification_dependency_graph_unavailable",
      "status": "UNAVAILABLE",
      "value": null
    }
  ],
  "schema": "grwtsk.source-declaration-article/1",
  "slug": "rpc--3ddacc7aa3343e5eddff7b43",
  "source": {
    "blob": "d3187fc2e147e9bc67de90ecf8b05f29e1e11abd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 125,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClickSuggestions/Variante9922abd67bdc34e19cffac8461dc4924cbbbb5406794943cc49daf040f29922.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3ddacc7aa3343e5eddff7b43486a536039472aa6a66224053fd19d09713564b6",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClickSuggestions/Variante9922abd67bdc34e19cffac8461dc4924cbbbb5406794943cc49daf040f29922.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:117fbb5f1a860fda12f5e7d3f23d8c2444771248987e162a23c032bfb2632ff4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 125–171.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def rpc (props : PanelWidgetProps) : RequestM (RequestTask Html) :=
  RequestM.asTask do
  let some loc := props.selectedLocations.back? |
    return .text "Shift-click an expression in the tactic state to get suggestions."
  let doc ← RequestM.readDoc
  if loc.loc matches .hypValue .. then
    return .text "#click_suggestions cannot suggest anything about the value of a let variable."
  let some onGoal := props.goals.findFinIdx? (·.mvarId == loc.mvarId) |
    return .text "#click_suggestions: please reload the tactic state"
  let goal := props.goals[onGoal]
  let onGoal := if onGoal.val != 0 then some onGoal.val else none
  let some goalsAt := (FileWorker.findGoalsAt? doc (doc.meta.text.lspPosToUtf8Pos props.pos)).get |
    return .text "Internal #click_suggestions error: could not find any goal at the cursor position"
  let some { ctxInfo := { parentDecl?, .. }, useAfter, tacticInfo := { stx, .. }, .. } :=
    goalsAt.find? fun { useAfter, tacticInfo, .. } ↦
      let goals := if useAfter then tacticInfo.goalsAfter else tacticInfo.goalsBefore
      goals.contains loc.mvarId
    | return .text "#click_suggestions: Please reload the tactic state"
  goal.ctx.val.runMetaM {} do withConfig Elab.Term.setElabConfig do loc.mvarId.withContext do
    let (statusHtml, statusToken) ← mkRefreshComponent
    let (solvedHtml, solvedToken) ← mkRefreshComponent
    let targetHtml ←
      if let .hyp h := loc.loc then
        pure <span> hypothesis {← exprToHtml (.fvar h)} </span>
      else
        Meta.viewSubexpr (fun _ e ↦ exprToHtml e) loc.pos (← loc.rootExpr)
    let html ← mkRefreshComponentM
      (.text "#click_suggestions has started searching.") fun masterToken ↦ do
      (generateSuggestions loc parentDecl? masterToken).run {
        onGoal, masterToken, statusToken, solvedToken
        stx := if useAfter then some ⟨stx⟩ else none
        «meta» := doc.meta
        cursorPos := props.pos
        goal := loc.mvarId
        hyp? := loc.fvarId?
        pos := loc.pos
      } |>.run (← IO.mkRef {})
    return <details «open»={true}>
      <summary className="mv2 pointer">
        Suggestions for {targetHtml}: {statusHtml}
      </summary>
      {solvedHtml}
      {html}
    </details>

/-- The component called by the `#click_suggestions` command. -/
@[widget_module]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClickSuggestions/Variante9922abd67bdc34e19cffac8461dc4924cbbbb5406794943cc49daf040f29922.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ClickSuggestions/Variante9922abd67bdc34e19cffac8461dc4924cbbbb5406794943cc49daf040f29922.lean#L125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d3187fc2e147e9bc67de90ecf8b05f29e1e11abd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
