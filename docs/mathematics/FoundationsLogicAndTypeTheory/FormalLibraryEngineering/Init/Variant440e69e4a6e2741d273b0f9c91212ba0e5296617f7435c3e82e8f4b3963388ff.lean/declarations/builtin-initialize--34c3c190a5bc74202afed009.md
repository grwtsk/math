# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:17b0bdbcf47d757fcfd0755698a429b9c971265c1122c92b9484a2763e6ca76b",
  "kind": "builtin_initialize",
  "lexical_name": null,
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
  "slug": "builtin-initialize--34c3c190a5bc74202afed009",
  "source": {
    "blob": "fcb55b4a76dfc900dbe83431c9a65b0528e57d35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 88,
    "line": 63,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:34c3c190a5bc74202afed0098ccf527eea117c79b0e312202e0a547b2956bb81",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:17b0bdbcf47d757fcfd0755698a429b9c971265c1122c92b9484a2763e6ca76b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 63–88.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize linterSetsExt :
    PersistentEnvExtension (Name × NameSet) (Name × NameSet) LinterSetsState ←
  registerPersistentEnvExtension {
    mkInitial := do
      let merged := (← builtinLinterSetsRef.get).foldl (init := {}) fun s (n, ms) =>
        insertLinterSetEntry s n ms
      return { merged, localEntries := #[] }
    addImportedFn := fun ess => do
      let s := (← builtinLinterSetsRef.get).foldl (init := {}) fun s (n, ms) =>
        insertLinterSetEntry s n ms
      let merged := ess.foldl (init := s) fun s es =>
        es.foldl (init := s) fun s (n, ms) => insertLinterSetEntry s n ms
      return { merged, localEntries := #[] }
    addEntryFn := fun st (n, ms) =>
      { merged := insertLinterSetEntry st.merged n ms, localEntries := st.localEntries.push (n, ms) }
    exportEntriesFn := fun st => st.localEntries
  }

/-- The `LinterOptions` structure is used to determine whether given linters are enabled.

This structure contains all the data required to do so, the `Options` set on the command line
or by the `set_option` command, and the `LinterSets` that have been declared.

A single structure holding this data is useful since we want `getLinterValue` to be a pure
function: determining the `LinterSets` would otherwise require a `MonadEnv` instance.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Init/Variant440e69e4a6e2741d273b0f9c91212ba0e5296617f7435c3e82e8f4b3963388ff.lean#L63).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fcb55b4a76dfc900dbe83431c9a65b0528e57d35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
