# Anonymous builtin_initialize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9ebef2b60121a825754cc3d396837110876f7b3a9b1533f64a5961eafc977760",
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
  "slug": "builtin-initialize--9ccee7f48023d6ec446205d2",
  "source": {
    "blob": "6f654d7836fbbcd9327d6a7073984014f21903f5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 677,
    "line": 659,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variantde3e366f02ffa802243ae4685b90a5f74420cbbb2f2b1284fa8e3b2e9559182b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9ccee7f48023d6ec446205d264c3c2409d45f5115991b948f93f7e7290737872",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variantde3e366f02ffa802243ae4685b90a5f74420cbbb2f2b1284fa8e3b2e9559182b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `builtin_initialize` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9ebef2b60121a825754cc3d396837110876f7b3a9b1533f64a5961eafc977760`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 659–677.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
builtin_initialize folderExt : PersistentEnvExtension FolderOleanEntry FolderEntry (List FolderEntry × SMap Name Folder) ←
  registerPersistentEnvExtension {
    mkInitial := return ([], builtinFolders)
    addImportedFn := fun entriesArray => do
      let ctx ← read
      let mut folders := builtinFolders
      for entries in entriesArray do
        for { declName, folderDeclName } in entries do
          let folder ← IO.ofExcept <| getFolderCore ctx.env ctx.opts folderDeclName
          folders := folders.insert declName folder
      return ([], folders.switch)
    addEntryFn := fun (entries, map) entry => (entry :: entries, map.insert entry.declName entry.folder)
    exportEntriesFn := fun (entries, _) => entries.reverse.toArray.map (·.toFolderOleanEntry)
    asyncMode := .sync
    replay? := some fun oldState newState _ s =>
      let newEntries := newState.1.take (newState.1.length - oldState.1.length)
      (newEntries ++ s.1, newEntries.foldl (init := s.2) fun s e => s.insert e.declName (newState.2.find! e.declName))
  }

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variantde3e366f02ffa802243ae4685b90a5f74420cbbb2f2b1284fa8e3b2e9559182b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/ConstantFold/Variantde3e366f02ffa802243ae4685b90a5f74420cbbb2f2b1284fa8e3b2e9559182b.lean#L659).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6f654d7836fbbcd9327d6a7073984014f21903f5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
