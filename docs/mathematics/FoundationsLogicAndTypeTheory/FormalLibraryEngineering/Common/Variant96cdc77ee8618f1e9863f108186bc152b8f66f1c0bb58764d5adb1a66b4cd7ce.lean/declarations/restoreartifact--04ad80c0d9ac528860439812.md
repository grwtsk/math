# restoreArtifact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e6ce3e3bfa44bce1802be063e0992a34c855c1723b40928b3baf5a0ec1646a3f",
  "kind": "def",
  "lexical_name": "restoreArtifact",
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
  "slug": "restoreartifact--04ad80c0d9ac528860439812",
  "source": {
    "blob": "c20647096e000adccb67bf7a9f1107d2eedc18be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 693,
    "line": 657,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Variant96cdc77ee8618f1e9863f108186bc152b8f66f1c0bb58764d5adb1a66b4cd7ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04ad80c0d9ac528860439812b69e1ecee53dd362d3af76b3d9786f9204b5898f",
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

Occurrence: `declaration:e6ce3e3bfa44bce1802be063e0992a34c855c1723b40928b3baf5a0ec1646a3f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 657–693.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def restoreArtifact (file : FilePath) (art : Artifact) (exe := false) : LogIO Artifact := do
  unless (← file.pathExists) do
    logVerbose s!"found artifact in cache: {art.path}"
    createParentDirs file
    if let .error e ← (IO.FS.hardLink art.path file).toBaseIO then
      logVerbose s!"could not hard link artifact, copying from cache instead; error: {e}"
      copyFile art.path file
      -- make the local file unwritable where possible to discourage users from
      -- writing to such paths as this can corrupt the cache if the file was hard linked instead
      let r := {read := true, write := false, execution := exe}
      IO.setAccessRights file ⟨r, r, r⟩
    else if exe then
      -- Ensure restored executables are executable
      -- They may not have been if acquired through `lake cache get`
      let r := {read := true, write := false, execution := exe}
      IO.setAccessRights file ⟨r, r, r⟩
    logVerbose s!"restored artifact from cache to: {file}"
    writeFileHash file art.hash
  return art.useLocalFile file

/--
Uses the current job's trace to search Lake's local artifact cache for an artifact
with a matching extension (`ext`) and content hash. If one is found, use it.
Otherwise, builds `file` using `build` and saves it to the cache. If Lake's
local artifact cache is not enabled, falls back to `buildFileUnlessUpToDate'`.

If `text := true`, `file` is hashed as a text file rather than a binary file.

If `restore := true`, if `file` is missing but the artifact is in the cache,
it will be copied to the `file`. This function will also return `file` rather
than the path to the cached artifact.

If `exe := true`, the `file` will be marked executable.

If `platformIndependent := true`, the artifact will be included in
platform-independent caches.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Variant96cdc77ee8618f1e9863f108186bc152b8f66f1c0bb58764d5adb1a66b4cd7ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Variant96cdc77ee8618f1e9863f108186bc152b8f66f1c0bb58764d5adb1a66b4cd7ce.lean#L657).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c20647096e000adccb67bf7a9f1107d2eedc18be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
