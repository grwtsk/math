# buildAction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e60776604cb7ac45013793222ed16dc94bd3f69d15ff83b047afd6ce36eab76",
  "kind": "def",
  "lexical_name": "buildAction",
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
  "slug": "buildaction--97541b77c6b32c9295b922eb",
  "source": {
    "blob": "c20647096e000adccb67bf7a9f1107d2eedc18be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 356,
    "line": 315,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Variant96cdc77ee8618f1e9863f108186bc152b8f66f1c0bb58764d5adb1a66b4cd7ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:97541b77c6b32c9295b922eb8ad5b7d378d84b80eda49aa112a8ac1bf23025a8",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Variant96cdc77ee8618f1e9863f108186bc152b8f66f1c0bb58764d5adb1a66b4cd7ce.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e60776604cb7ac45013793222ed16dc94bd3f69d15ff83b047afd6ce36eab76`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 315–356.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
@[specialize] public def buildAction
  [ToOutputJson α]
  (depTrace : BuildTrace) (traceFile : FilePath) (build : JobM α)
  (action : JobAction := .build)
: JobM α := do
  updateAction action
  let noBuildTraceFile := traceFile.addExtension "nobuild"
  if (← getNoBuild) then
    modify ({· with wantsRebuild := true})
    if (← traceFile.pathExists) then
      writeBuildTrace noBuildTraceFile depTrace Json.null {}
    error s!"target is out-of-date and needs to be rebuilt"
  else
    let startTime ← IO.monoMsNow
    try
      let iniPos ← getLogPos
      let a ← build -- fatal errors will abort here
      let log := (← getLog).takeFrom iniPos
      writeBuildTrace traceFile depTrace (toOutputJson a) log
      removeFileIfExists noBuildTraceFile
      return a
    finally
      let endTime ← IO.monoMsNow
      let elapsed := endTime - startTime
      modify fun s => {s with buildTime := s.buildTime + elapsed}


/--
Checks whether `info` is up-to-date, and runs `build` to recreate it if not.
If rebuilt, saves the new `depTrace` and build log to `traceFile`.
Returns whether `info` was already up-to-date.

**Up-to-date Checking**

If `traceFile` exists, checks that the hash in `depTrace` matches that
of the `traceFile`. If not, and old mode is enabled (e.g., `--old`), falls back
to the `oldTrace` modification time as the point of comparison.
If up-to-date, replay the build log stored in `traceFile`.

If `traceFile` does not exist, checks that `info` has a newer modification time
then `depTrace` / `oldTrace`. No log will be replayed.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Variant96cdc77ee8618f1e9863f108186bc152b8f66f1c0bb58764d5adb1a66b4cd7ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Variant96cdc77ee8618f1e9863f108186bc152b8f66f1c0bb58764d5adb1a66b4cd7ce.lean#L315).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c20647096e000adccb67bf7a9f1107d2eedc18be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
