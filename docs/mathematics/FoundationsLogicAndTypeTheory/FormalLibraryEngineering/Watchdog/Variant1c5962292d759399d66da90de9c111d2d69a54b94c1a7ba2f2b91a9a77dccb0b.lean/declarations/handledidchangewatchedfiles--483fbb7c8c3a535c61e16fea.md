# handleDidChangeWatchedFiles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:ed46ea95384d83d1a29b2cae0f51f1dc80e60989c7d5061ea2141616802c8720",
  "kind": "def",
  "lexical_name": "handleDidChangeWatchedFiles",
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
  "slug": "handledidchangewatchedfiles--483fbb7c8c3a535c61e16fea",
  "source": {
    "blob": "fac9af8902ecc14b1b1d0e704fe4c5dc1627ccfd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1317,
    "line": 1288,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:483fbb7c8c3a535c61e16fea412430d0b6708d424d6d0c28ebe91fc0dfa54aad",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:ed46ea95384d83d1a29b2cae0f51f1dc80e60989c7d5061ea2141616802c8720`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1288–1317.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
  def handleDidChangeWatchedFiles (p : DidChangeWatchedFilesParams) : ServerM Unit := do
    let changes := p.changes.filterMap fun c => do return (c, ← fileUriToPath? c.uri)
    let leanChanges := changes.filter fun (_, path) => path.extension == "lean"
    let ileanChanges := changes.filter fun (_, path) => path.extension == "ilean"
    if ! leanChanges.isEmpty then
      let importData ← (← read).importData.get
      for (c, _) in leanChanges do
        let dependents := importData.importedBy.getD c.uri ∅
        for dependent in dependents do
          notifyAboutStaleDependency dependent c.uri
    if ! ileanChanges.isEmpty then
      let oleanSearchPath ← Lean.searchPathRef.get
      for (c, path) in ileanChanges do
        if let FileChangeType.Deleted := c.type then
          modifyReferences (·.removeIlean path)
          continue
        let isIleanInSearchPath := (← searchModuleNameOfFileName path oleanSearchPath).isSome
        if ! isIleanInSearchPath then
          continue
        try
          let ilean ← Ilean.load path
          if let FileChangeType.Changed := c.type then
            modifyReferencesIO (·.removeIlean path |>.addIlean path ilean)
          else
            modifyReferencesIO (·.addIlean path ilean)
        catch
          -- ilean vanished, ignore error
          | .noFileOrDirectory .. => modifyReferences (·.removeIlean path)
          | e => throw e

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Watchdog/Variant1c5962292d759399d66da90de9c111d2d69a54b94c1a7ba2f2b91a9a77dccb0b.lean#L1288).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fac9af8902ecc14b1b1d0e704fe4c5dc1627ccfd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
