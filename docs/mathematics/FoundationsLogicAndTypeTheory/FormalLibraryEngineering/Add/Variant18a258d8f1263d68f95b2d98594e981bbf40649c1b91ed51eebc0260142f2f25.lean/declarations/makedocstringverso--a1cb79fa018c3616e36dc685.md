# makeDocStringVerso

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7a13200b1a96bb689d11d83e27f87e248f7092b1d3954b8688220ee5e7b200a3",
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
  "slug": "makedocstringverso--a1cb79fa018c3616e36dc685",
  "source": {
    "blob": "82eb3405a1d5338b927f8d59030245e047e9fe7f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 424,
    "line": 402,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a1cb79fa018c3616e36dc685cf84152869ad8133882c1b659e6eedcbcbfe15c8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7a13200b1a96bb689d11d83e27f87e248f7092b1d3954b8688220ee5e7b200a3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 402–424.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Add/Variant18a258d8f1263d68f95b2d98594e981bbf40649c1b91ed51eebc0260142f2f25.lean#L402).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `82eb3405a1d5338b927f8d59030245e047e9fe7f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
