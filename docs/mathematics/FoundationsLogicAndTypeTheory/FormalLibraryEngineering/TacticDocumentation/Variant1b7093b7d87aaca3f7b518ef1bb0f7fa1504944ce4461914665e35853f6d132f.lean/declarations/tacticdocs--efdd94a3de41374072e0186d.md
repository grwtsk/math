# tacticDocs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d5e53cd67faeb287f679cc927f9c6e891671f477b123a91737f515826c5042e7",
  "kind": "def",
  "lexical_name": "tacticDocs",
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
  "slug": "tacticdocs--efdd94a3de41374072e0186d",
  "source": {
    "blob": "2455451716f238fb0e38a574c13dc6293af436fa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 31,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticDocumentation/Variant1b7093b7d87aaca3f7b518ef1bb0f7fa1504944ce4461914665e35853f6d132f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:efdd94a3de41374072e0186dd3704fc439be1b5b2138dde5bf1a5320352f36f3",
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

Occurrence: `declaration:d5e53cd67faeb287f679cc927f9c6e891671f477b123a91737f515826c5042e7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[env_linter] public meta def tacticDocs : Batteries.Tactic.Lint.Linter where
  noErrorsFound := "No tactics are missing documentation."
  errorsFound := "TACTICS ARE MISSING DOCUMENTATION STRINGS:"
  test tac := do
    let env ← getEnv

    -- Only run on unique tactics (where tactics are defined as parsers in the tactic kind).
    if !isTactic env tac || (alternativeOfTactic env tac).isSome then
      return none

    -- Find the associated documentation.
    let docs ← Tactic.Doc.allTacticDocs
    let docMap : NameMap _ := docs.foldl (init := {}) fun m doc =>
      m.insert doc.internalName doc
    -- This `get?` should not return `none` for normally declared tactics,
    -- but if we do environment manipulation it might give us weird results.
    -- So we should allow the case of `none`.
    let doc := docMap.get? tac
    let name := (doc.map (·.userName)).getD tac.toString

    if let some doc := doc then
      if isNonemptyDoc doc then
        return none

    return m!"tactic `{name}` missing documentation string"

/-- Check tactics with the same user-facing name (usually: first syntax token) get a `@[tactic_alt]`
attribute. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticDocumentation/Variant1b7093b7d87aaca3f7b518ef1bb0f7fa1504944ce4461914665e35853f6d132f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/TacticDocumentation/Variant1b7093b7d87aaca3f7b518ef1bb0f7fa1504944ce4461914665e35853f6d132f.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2455451716f238fb0e38a574c13dc6293af436fa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
