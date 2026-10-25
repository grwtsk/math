# formatToHtmlWithDoc

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:84f8d602e5d8c98322c9f960846faaf0d921669cebddb6144e2c667404b939a6",
  "kind": "def",
  "lexical_name": "formatToHtmlWithDoc",
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
  "slug": "formattohtmlwithdoc--10e8638a0a2240a0cfd953b7",
  "source": {
    "blob": "e6d9208a86e65894b8fbaafc676067a7bbca3e87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 81,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantb8edf3c50cfc57a41e4a9f301776d47ca0bee10d091cb1d07d27367e0260854c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10e8638a0a2240a0cfd953b7a0c0778c6ce425ab82166fab5e89c4f6ed61b51e",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantb8edf3c50cfc57a41e4a9f301776d47ca0bee10d091cb1d07d27367e0260854c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:84f8d602e5d8c98322c9f960846faaf0d921669cebddb6144e2c667404b939a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–81.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def formatToHtmlWithDoc (fmt : Format) (n : Name) : MetaM Html := do
  let tag := 0
  -- Hack: use `.ofCommandInfo` instead of `.ofTacticInfo` to avoid printing `n` and its type.
  -- Unfortunately, there is still a loose dangling ` : `.
  let infos := .insert ∅ tag <| .ofCommandInfo
    { elaborator := `ClickSuggestions, stx := .node .none n #[] }
  let tt := TaggedText.prettyTagged <| .tag tag fmt
  let ctx := {
    env           := (← getEnv)
    mctx          := (← getMCtx)
    options       := (← getOptions)
    currNamespace := (← getCurrNamespace)
    openDecls     := (← getOpenDecls)
    fileMap       := default
    ngen          := (← getNGen)
  }
  -- TODO: I would love to print this using the same keyword colour used by the editor,
  -- but I don't think this is possible. Additionally, `InteractiveCode` already overwrites the
  -- colour and style of the text (namely the expression style)
  return <InteractiveCode fmt={← tagCodeInfos ctx infos tt} />


/-- Pretty print a tactic with its docstring as hover info.

I would love to print `tac` with another colour, e.g. the keyword highlighting used by the editor,
but I have no idea how to do this.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantb8edf3c50cfc57a41e4a9f301776d47ca0bee10d091cb1d07d27367e0260854c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Util/Variantb8edf3c50cfc57a41e4a9f301776d47ca0bee10d091cb1d07d27367e0260854c.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6d9208a86e65894b8fbaafc676067a7bbca3e87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
