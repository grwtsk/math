# elabPrintTacTags

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ee071e80a62c4f52e4b621fd7c4eff06b92a5cf9237beaec07598325c1aa1f5d",
  "kind": "def",
  "lexical_name": "elabPrintTacTags",
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
  "slug": "elabprinttactags--ba14b269d060e7f2d950d236",
  "source": {
    "blob": "3befa1d468facd100bcc69dfb7d1edc7c57ed60c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 106,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variante0aea384b3557bd5d7138f2aba41ee48789e69d40fe2c807dc1d1d783e5dc8d5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ba14b269d060e7f2d950d236b0cbed1f7ed9e2cb127fdc0eb29bff09b4e8243b",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variante0aea384b3557bd5d7138f2aba41ee48789e69d40fe2c807dc1d1d783e5dc8d5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ee071e80a62c4f52e4b621fd7c4eff06b92a5cf9237beaec07598325c1aa1f5d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 106–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[builtin_command_elab printTacTags] def elabPrintTacTags : CommandElab := fun _stx => do
  let all :=
    tacticTagExt.toEnvExtension.getState (← getEnv)
      |>.importedEntries |>.push ((tacticTagExt.exportEntriesFn (← getEnv) (tacticTagExt.getState (← getEnv))).exported)
  let mut mapping : NameMap NameSet := {}
  for arr in all do
    for (tac, tag) in arr do
      mapping := mapping.insert tag (mapping.getD tag {} |>.insert tac)

  let firsts ← firstTacticTokens

  let showDocs : Option String → MessageData
    | none => .nil
    | some d => Format.line ++ MessageData.joinSep ((d.split '\n').map (toMessageData ∘ String.Slice.copy)).toList Format.line

  let showTactics (tag : Name) : CommandElabM MessageData := do
    match mapping.find? tag with
    | none => pure .nil
    | some tacs =>
      if tacs.isEmpty then pure .nil
      else
        let tacs := tacs.toArray.qsort (·.toString < ·.toString) |>.toList
        pure (Format.line ++ MessageData.joinSep (← tacs.mapM (showParserName firsts)) ", ")

  let tagDescrs ← (← allTagsWithInfo).mapM fun (name, userName, docs) => do
    pure <| m!"• " ++
      MessageData.nestD (m!"`{name}`" ++
        (if name.toString != userName then m!" — \"{userName}\"" else MessageData.nil) ++
        showDocs docs ++
        (← showTactics name))

  let tagList : MessageData :=
    m!"Available tags: {MessageData.nestD (Format.line ++ .joinSep tagDescrs Format.line)}"

  logInfo tagList

/--
The information needed to display all documentation for a tactic.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variante0aea384b3557bd5d7138f2aba41ee48789e69d40fe2c807dc1d1d783e5dc8d5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Doc/Variante0aea384b3557bd5d7138f2aba41ee48789e69d40fe2c807dc1d1d783e5dc8d5.lean#L106).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3befa1d468facd100bcc69dfb7d1edc7c57ed60c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
