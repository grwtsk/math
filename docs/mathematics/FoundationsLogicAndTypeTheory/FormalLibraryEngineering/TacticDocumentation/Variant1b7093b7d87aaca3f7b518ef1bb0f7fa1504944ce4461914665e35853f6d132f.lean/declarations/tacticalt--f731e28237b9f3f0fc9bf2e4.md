# tacticAlt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2f0ca63973adb95ec770241dea4554be686de3abed47f3fe563b5065b149e32f",
  "kind": "def",
  "lexical_name": "tacticAlt",
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
  "slug": "tacticalt--f731e28237b9f3f0fc9bf2e4",
  "source": {
    "blob": "2455451716f238fb0e38a574c13dc6293af436fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 59,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticDocumentation/Variant1b7093b7d87aaca3f7b518ef1bb0f7fa1504944ce4461914665e35853f6d132f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f731e28237b9f3f0fc9bf2e4eab65572c6b7c64f1fb616f997e0b305c36c1b67",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticDocumentation/Variant1b7093b7d87aaca3f7b518ef1bb0f7fa1504944ce4461914665e35853f6d132f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2f0ca63973adb95ec770241dea4554be686de3abed47f3fe563b5065b149e32f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 59–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[env_linter] public meta def tacticAlt : Batteries.Tactic.Lint.Linter where
  noErrorsFound := "No tactics sharing the same user-facing name."
  errorsFound := "TACTICS ARE MISSING `@[tactic_alt]` ATTRIBUTES:"
  test tac := do
    let env ← getEnv
    if !isTactic env tac || (alternativeOfTactic env tac).isSome then
      return none
    -- Find duplicates, those with the same user-facing name but that aren't declared
    -- to be alternatives.
    let docs ← Tactic.Doc.allTacticDocs
    let some doc := docs.find? fun doc => doc.internalName == tac | return none
    let name := doc.userName
    let tacs := docs.filter fun doc =>
      (doc.userName == name && (alternativeOfTactic env doc.internalName).isNone)
    -- If we have duplicates, complain.
    if tacs.size <= 1 then return none
    let tacNames := tacs.map (·.internalName)
    return m!"tactic `{doc.userName}` has multiple declarations {tacNames} one of which should \
    be marked as `@[tactic_alt]` of the other(s).\n\
    Hint: you can use the `tactic_extension` command to extend the documentation."
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticDocumentation/Variant1b7093b7d87aaca3f7b518ef1bb0f7fa1504944ce4461914665e35853f6d132f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticDocumentation/Variant1b7093b7d87aaca3f7b518ef1bb0f7fa1504944ce4461914665e35853f6d132f.lean#L59).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2455451716f238fb0e38a574c13dc6293af436fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
