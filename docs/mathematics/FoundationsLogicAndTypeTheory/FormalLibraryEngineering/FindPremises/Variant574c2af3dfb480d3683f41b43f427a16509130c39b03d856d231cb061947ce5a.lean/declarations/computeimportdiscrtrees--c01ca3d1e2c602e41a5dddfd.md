# computeImportDiscrTrees

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb9c2b4b4ee465f8423549ce5811fc281c139d30093eb3c9ca85bd1595b7102d",
  "kind": "def",
  "lexical_name": "computeImportDiscrTrees",
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
  "slug": "computeimportdiscrtrees--c01ca3d1e2c602e41a5dddfd",
  "source": {
    "blob": "602568f1498758ccd989769dc8aa40280d88206e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 263,
    "line": 241,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c01ca3d1e2c602e41a5dddfd1b26c8c5811d7f294aef984925bb4a44337743a0",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb9c2b4b4ee465f8423549ce5811fc281c139d30093eb3c9ca85bd1595b7102d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 241–263.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def computeImportDiscrTrees (choice : Choice) : CoreM Unit := do
  let choice := {
    rw := choice.rw && (← rwRef.get).isNone
    grw := choice.grw && (← grwRef.get).isNone
    app := choice.app && (← appRef.get).isNone
    appAt := choice.appAt && (← appAtRef.get).isNone
  }
  unless choice.any do return
  let (tasks, errors) ←
    foldImportedDecls {} librarySearchIndexConfig (Entries.addConst choice (← getEnv))
  let pre : PreDiscrTrees ← MonadExcept.ofExcept <|
    tasks.foldlM (fun pre task ↦ pre.append <$> task.get) {}
  if choice.rw then setIfNone rwRef pre.rw.toRefinedDiscrTree
  if choice.grw then setIfNone grwRef pre.grw.toRefinedDiscrTree
  if choice.app then setIfNone appRef pre.app.toRefinedDiscrTree
  if choice.appAt then setIfNone appAtRef pre.appAt.toRefinedDiscrTree
  (← errors.get).forM logError
where
  setIfNone {α} (ref : IO.Ref (Option α)) (a : α) : BaseIO Unit := do
    if (← ref.get).isNone then
      ref.set a

/-- Compute the discrimination trees for the theorems in the current file. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/FindPremises/Variant574c2af3dfb480d3683f41b43f427a16509130c39b03d856d231cb061947ce5a.lean#L241).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `602568f1498758ccd989769dc8aa40280d88206e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
