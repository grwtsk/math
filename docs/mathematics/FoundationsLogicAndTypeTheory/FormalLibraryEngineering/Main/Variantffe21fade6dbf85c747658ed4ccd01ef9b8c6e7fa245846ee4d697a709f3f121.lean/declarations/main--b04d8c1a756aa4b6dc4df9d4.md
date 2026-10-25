# main

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c8ddf97c75f1bd4e9634db497e2b4708a356af652f1d897852dfbebd9ead1da",
  "kind": "def",
  "lexical_name": "main",
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
  "slug": "main--b04d8c1a756aa4b6dc4df9d4",
  "source": {
    "blob": "ceab7495d508681113d9df631231f4338a6eaf39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 26,
    "line": 4,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantffe21fade6dbf85c747658ed4ccd01ef9b8c6e7fa245846ee4d697a709f3f121.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b04d8c1a756aa4b6dc4df9d4b44a75033c038fbee3e6a7667c5b81fe6c1eb313",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantffe21fade6dbf85c747658ed4ccd01ef9b8c6e7fa245846ee4d697a709f3f121.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c8ddf97c75f1bd4e9634db497e2b4708a356af652f1d897852dfbebd9ead1da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4–26.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
unsafe def main (args : List String) : IO UInt32 := do
  unless args.length == 1 do
    println! "This command takes exactly one argument: the path to a file containing a list of declarations to check."
    return 1
  let filename : System.FilePath := args[0]!
  unless ← filename.pathExists do
    println! "Could not find declaration list {filename}."
    return 1
  let (elanInstall?, leanInstall?, lakeInstall?) ← findInstall?
  let config ← MonadError.runEIO <| mkLoadConfig { elanInstall?, leanInstall?, lakeInstall? }
  let (ws?, log) ← (loadWorkspace config).run?
  log.replay (logger := .stderr)
  let some ws := ws? | return 1
  let imports := ws.root.leanLibs.flatMap (·.config.roots.map fun module => { module })
  -- see comments in https://github.com/leanprover/lean4/pull/6325
  enableInitializersExecution
  let env ← Lean.importModules imports {}
  let mut ok := true
  for line in ← IO.FS.lines filename do
    unless env.contains line.toName do
      println! "{line} is missing."
      ok := false
  return if ok then 0 else 1
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantffe21fade6dbf85c747658ed4ccd01ef9b8c6e7fa245846ee4d697a709f3f121.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Main/Variantffe21fade6dbf85c747658ed4ccd01ef9b8c6e7fa245846ee4d697a709f3f121.lean#L4).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceab7495d508681113d9df631231f4338a6eaf39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
