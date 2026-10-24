# prepareLeanCommand

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1e60bd66bd77ef9cd95af703e6d2aef0dee38793ff8a64bcc4d97bf6b0687e25",
  "kind": "def",
  "lexical_name": "prepareLeanCommand",
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
  "slug": "prepareleancommand--f315e27f386b1f7b0601698e",
  "source": {
    "blob": "1266fd0bf4094833269c7f4467edf175e110db67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1541,
    "line": 1508,
    "path": "GRWTSK/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f315e27f386b1f7b0601698e937f9e15f40e26abbc07ccc97be5cc8331dffc60",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1e60bd66bd77ef9cd95af703e6d2aef0dee38793ff8a64bcc4d97bf6b0687e25`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1508–1541.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def prepareLeanCommand
  (leanFile : FilePath) (moreArgs : Array String := #[])
: FetchM (Job IO.Process.SpawnArgs) :=
  withRegisterJob s!"prepare lean {leanFile}" do
  let some path ← resolvePath? leanFile
    | error s!"file not found: {leanFile}"
  if let some mod ← findModuleBySrc? path then
    logVerbose s!"file identified as module: {mod.name}"
    let setupJob ← mod.setup.fetch
    setupJob.mapM (sync := true) fun setup => do
      mkSpawnArgs path setup mod.leanArgs
  else
    let header ← Lean.parseImports' (← IO.FS.readFile path) leanFile.toString
    let setupJob ← setupExternalModule leanFile.toString header (← getLeanOptions)
    setupJob.mapM (sync := true) fun setup => do
      mkSpawnArgs path setup (← getLeanArgs)
where
  mkArgs leanFile setup cfgArgs := do
    let args := cfgArgs.push leanFile.toString
    let (h, setupFile) ← IO.FS.createTempFile
    let contents := (toJson setup).compress
    logVerbose s!"module setup: {contents}"
    h.putStr contents
    let args := args ++ #["--setup", setupFile.toString]
    return args
  mkSpawnArgs leanFile setup cfgArgs := do
    let args ← mkArgs leanFile setup cfgArgs
    let spawnArgs : IO.Process.SpawnArgs := {
      args := args ++ moreArgs
      cmd := (← getLean).toString
      env := (← getAugmentedEnv)
    }
    logVerbose (mkCmdLog spawnArgs)
    return spawnArgs
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Module/Variantcd7b3e4802980fb9a9c1ed116650b2a95231917e4e024ca5b46b4f3821effa5c.lean#L1508).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `1266fd0bf4094833269c7f4467edf175e110db67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
