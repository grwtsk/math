# makeDocStringVerso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0003f19fe2a8947cd5b1b40eab852c0a5149fa243d9d43dbe652d950892180e",
  "kind": "def",
  "lexical_name": "makeDocStringVerso",
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
  "slug": "makedocstringverso--b387a56a6136c9d2edd9bfa5",
  "source": {
    "blob": "0d0bd65260cc3abb4b3025bc20cbd3db80d61637",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 432,
    "line": 410,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b387a56a6136c9d2edd9bfa55e19e6d4072de8387e2f803b39738a1f4d4b7f80",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0003f19fe2a8947cd5b1b40eab852c0a5149fa243d9d43dbe652d950892180e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 410–432.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def makeDocStringVerso (declName : Name) : TermElabM Unit := do
  let some doc ← findInternalDocString? (← getEnv) declName (includeBuiltin := true)
    | throwError "No documentation found for `{.ofConstName declName}`"
  let .inl md := doc
    | throwError "Documentation for `{.ofConstName declName}` is already in Verso format"
  removeBuiltinDocString declName
  removeDocStringCore declName
  addVersoDocStringFromString declName md

/--
Adds a docstring to the environment.

Whether the docstring is processed as Verso or as Markdown is determined by the form of its syntax
tree. To explicitly control whether the docstring is in Verso format, use `addDocStringOf` instead.

Markdown docstrings have their documentation links validated.

For Verso docstrings, `binders` should be the syntax of the parameters to the constant that is being
documented, as a null node that contains a sequence of bracketed binders. It is used to allow
interactive features such as document highlights and “find references” to work for documented
parameters. If no parameter binders are available, pass `Syntax.missing` or an empty null node.
`binders` is not used for Markdown docstrings.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant186c8c09948be9b740be87cb1cde311b1d2c46d263d2a8b63b255243cc4c0479.lean#L410).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d0bd65260cc3abb4b3025bc20cbd3db80d61637` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
