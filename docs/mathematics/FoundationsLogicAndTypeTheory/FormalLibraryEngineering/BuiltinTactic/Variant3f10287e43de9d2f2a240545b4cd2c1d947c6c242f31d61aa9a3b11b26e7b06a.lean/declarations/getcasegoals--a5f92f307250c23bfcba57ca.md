# getCaseGoals

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:64f65b4e4e1cb5f7d90520696e129c7a41fb718bc842c28bd9e94d2efc7eac53",
  "kind": "def",
  "lexical_name": "getCaseGoals",
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
  "slug": "getcasegoals--a5f92f307250c23bfcba57ca",
  "source": {
    "blob": "9ac72035c41bb6175b7b6f262220e570d44586cd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 586,
    "line": 534,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a5f92f307250c23bfcba57ca6580ed4561852013f6678f48a7c5c3e71600329b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:64f65b4e4e1cb5f7d90520696e129c7a41fb718bc842c28bd9e94d2efc7eac53`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 534–586.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def getCaseGoals (tag : TSyntax ``binderIdent) : TacticM (MVarId × List MVarId) := do
  let gs ← getUnsolvedGoals
  let g ← if let `(binderIdent| $tagId:ident) := tag then
    let tagId := tagId.getId.eraseMacroScopes
    let some g ← findTag? gs tagId | notFound gs tagId tag
    pure g
  else
    getMainGoal
  return (g, gs.erase g)

where
  -- When the case tag is not found, construct a message that tells
  -- the user what they could have written
  notFound (available : List MVarId) (tag : Name) (tagStx : TSyntax ``binderIdent) := do
    let firstLine := m!"Case tag {showTagName tag} not found."
    let isOriginalStx := tagStx.raw.getHeadInfo matches .original ..
    -- We must filter out the anonymous name because there may be an
    -- anonymous goal, but users shouldn't be mistakenly encouraged
    -- to write `case anonymous`
    let hint ← match (← available.mapM getUserName).filter (· ≠ Name.anonymous) with
      | [] => pure <| MessageData.note m!"There are no cases to select."
      | [availableName] =>
        let msg := m!"The only available case tag is {showTagName availableName}."
        if isOriginalStx then
          MessageData.hint msg (mkSuggestions #[availableName]) (ref? := tagStx)
        else
          pure <| MessageData.hint' msg
      | availableNames =>
        let msg := "Available tags:"
        if isOriginalStx then
          MessageData.hint msg (mkSuggestions availableNames.toArray) (ref? := tagStx)
        else
          pure <| MessageData.hint' m!"{msg}{commaList <| availableNames.map showTagName}"
    throwError firstLine ++ hint

  getUserName (mv : MVarId) := do return (← mv.getDecl).userName

  showTagName (tagName : Name) : MessageData := m!"`{tagName}`"

  -- Construct a comma-separated list that renders one per line,
  -- indented, if it's too long
  commaList (items : List MessageData) : MessageData :=
    let sep := MessageData.ofFormat "," ++ Format.line
    .group <| .nest 2 <|
    .ofFormat .line ++ .joinSep items sep

  mkSuggestions (names : Array Name) :=
    names.map fun name =>
      { suggestion := name.toString
        toCodeActionTitle? := some fun s => s!"Change case name: {s}"
        preInfo? := if names.size == 1 then none else s!"`{name}`: " : Hint.Suggestion }

@[builtin_tactic «case», builtin_incremental]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/BuiltinTactic/Variant3f10287e43de9d2f2a240545b4cd2c1d947c6c242f31d61aa9a3b11b26e7b06a.lean#L534).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ac72035c41bb6175b7b6f262220e570d44586cd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
