# mkSuggestionsMessage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6b8c95c9f9c4126e175b80f64020b840aa6a283484b304dd22fc37a8347ac06f",
  "kind": "def",
  "lexical_name": "mkSuggestionsMessage",
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
  "slug": "mksuggestionsmessage--5e9f55863bb11245e07a9f00",
  "source": {
    "blob": "8fe0fbebf4a902bb3d591e85c15de04aa87d2df1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 520,
    "line": 424,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variante97d78e0dd70b1bb783d42eedb240ac62aca0a8b1ccd4f1fb6c0c8a805c15064.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e9f55863bb11245e07a9f00be934b50b9565d93ada4ed748ea15b76b0ff568a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variante97d78e0dd70b1bb783d42eedb240ac62aca0a8b1ccd4f1fb6c0c8a805c15064.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6b8c95c9f9c4126e175b80f64020b840aa6a283484b304dd22fc37a8347ac06f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 424–520.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def mkSuggestionsMessage (suggestions : Array Suggestion) (ref : Syntax)
    (codeActionPrefix? : Option String) (forceList : Bool) : CoreM MessageData := do
  let mut msg := m!""
  for suggestion in suggestions do
    let some range := suggestion.span?.getD ref |>.getRange?
      | continue
    let edit ← suggestion.processEdit range
    let suggestionText := edit.newText
    let ref := Syntax.ofRange <| ref.getRange?.getD range
    let codeActionTitleOverride? := suggestion.toCodeActionTitle?.map (· suggestionText)
    let codeActionTitle := codeActionTitleOverride?.getD <| (codeActionPrefix?.getD "Try this: ") ++ suggestionText
    let info := Info.ofCustomInfo {
      stx := ref
      value := Dynamic.mk {
        edit
        suggestion := suggestion.toTryThisSuggestion
        codeActionTitle
        : TryThisInfo
      }
    }
    pushInfoLeaf info
    let map ← getFileMap
    let rangeContents := String.Pos.Raw.extract map.source range.start range.stop
    let edits ← do
      if let some msgData := suggestion.messageData? then
        pure #[(.insert, toString <| ← msgData.format)]
      else
        pure <| readableDiff rangeContents suggestionText suggestion.diffGranularity
    let mut edits := edits
    if let some previewRange := suggestion.previewSpan? >>= Syntax.getRange? then
      if previewRange.includes range then
        let map ← getFileMap
        if previewRange.start < range.start then
          edits := #[(.skip, (String.Pos.Raw.extract map.source previewRange.start range.start))] ++ edits
        if range.stop < previewRange.stop then
          edits := edits.push (.skip, (String.Pos.Raw.extract map.source range.stop previewRange.stop))
    let preInfo := suggestion.preInfo?.getD ""
    let postInfo := suggestion.postInfo?.getD ""
    let isDiffSuggestion :=
      ! (suggestion.diffGranularity matches .none) && suggestion.messageData?.isNone
        || suggestion.previewSpan?.isSome
    let suggestionMsg :=
      if ! isDiffSuggestion then
        let applyButton := MessageData.ofWidget {
          id := ``textInsertionWidget
          javascriptHash := textInsertionWidget.javascriptHash
          props := return json% {
            range: $edit.range,
            suggestion: $suggestionText,
            acceptSuggestionProps: {
              kind: "text",
              hoverText: "Apply suggestion",
              linkText: "[apply]"
            }
          }
        } "[apply]"
        m!"\n{applyButton} {preInfo}{toMessageData suggestion}{postInfo}"
      else
        let diffJson := mkDiffJson edits
        let json := json% {
          diff: $diffJson,
          suggestion: $suggestionText,
          range: $edit.range
        }
        let diffString :=
          if suggestion.diffGranularity matches .none then
            edits.foldl (· ++ ·.2) ""
          else
            mkDiffString edits
        let diffWidget := MessageData.ofWidget {
            id := ``tryThisDiffWidget
            javascriptHash := tryThisDiffWidget.javascriptHash
            props := return json
          } diffString
        let msg := m!"{preInfo}{diffWidget}{postInfo}"
        if suggestions.size == 1 && !forceList then
          m!"\n{msg}"
        else
          m!"\n" ++ MessageData.nest 2 m!"• {msg}"
    msg := msg ++ MessageData.nestD suggestionMsg
  return msg

/--
Creates a hint message with associated code action suggestions.

To provide a hint without an associated code action, use `MessageData.hint'`.

The arguments are as follows:
* `hint`: the main message of the hint, which precedes its code action suggestions.
* `suggestions`: the suggestions to display.
* `ref?`: if specified, the syntax location for the code action suggestions; otherwise, default to
  the syntax reference in the monadic state. Will be overridden by the `span?` field on any
  suggestions that specify it.
* `codeActionPrefix?`: if specified, text to display in place of "Try this: " in the code action
  label
* `forceList`: if `true`, suggestions will be displayed as a bulleted list even if there is only one.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variante97d78e0dd70b1bb783d42eedb240ac62aca0a8b1ccd4f1fb6c0c8a805c15064.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Hint/Variante97d78e0dd70b1bb783d42eedb240ac62aca0a8b1ccd4f1fb6c0c8a805c15064.lean#L424).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8fe0fbebf4a902bb3d591e85c15de04aa87d2df1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
