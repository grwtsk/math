# Cache.saveArtifact

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b1c033664c333de3e72c3a16e515076b7b08d60e9fb7d65542fe62835d2aa3bd",
  "kind": "def",
  "lexical_name": "Cache.saveArtifact",
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
  "slug": "cache-saveartifact--d38207fa34bf131d8dda2176",
  "source": {
    "blob": "c20647096e000adccb67bf7a9f1107d2eedc18be",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 510,
    "line": 462,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Variant96cdc77ee8618f1e9863f108186bc152b8f66f1c0bb58764d5adb1a66b4cd7ce.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d38207fa34bf131d8dda217614e84ac9ef2dd56353924ca67af3fb4f90fb0ee6",
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

Occurrence: `declaration:b1c033664c333de3e72c3a16e515076b7b08d60e9fb7d65542fe62835d2aa3bd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 462–510.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Cache.saveArtifact
  (cache : Cache) (file : FilePath) (ext := "art") (text exe useLocalFile := false)
: IO Artifact := do
  try
    if text then
      let contents ← IO.FS.readFile file
      let normalized := contents.crlfToLf
      let hash := Hash.ofString normalized
      let descr := artifactWithExt hash ext
      let cacheFile := cache.artifactDir / descr.relPath
      -- make the local file unwritable where possible to discourage users from
      -- writing to such paths as this can corrupt the cache if the file was hard linked
      let r := {read := true, write := false, execution := false}
      IO.setAccessRights file ⟨r, r, r⟩
      unless (← cacheFile.pathExists) do
        createParentDirs cacheFile
        -- other functions can race to create the file
        -- use `writeFileIfNew` to prevent errors on races
        writeFileIfNew cacheFile normalized
      IO.setAccessRights cacheFile ⟨r, r, r⟩
      writeFileHash file hash
      let mtime ← getMTime cacheFile
      let path := if useLocalFile then file else cacheFile
      return {descr, name := file.toString, path, mtime}
    else
      let contents ← IO.FS.readBinFile file
      let hash := Hash.ofByteArray contents
      let descr := artifactWithExt hash ext
      let cacheFile := cache.artifactDir / descr.relPath
      -- make the local file unwritable where possible to discourage users from
      -- writing to such paths as this can corrupt the cache if the file is hard linked
      let r := {read := true, write := false, execution := exe}
      IO.setAccessRights file ⟨r, r, r⟩
      unless (← cacheFile.pathExists) do
        createParentDirs cacheFile
        if let .error e ← (IO.FS.hardLink file cacheFile).toBaseIO then
          -- other functions can race to create the file
          unless e matches .alreadyExists .. do
            -- use `writeBinFileIfNew` to prevent errors on races
            writeBinFileIfNew cacheFile contents
      IO.setAccessRights cacheFile ⟨r, r, r⟩
      writeFileHash file hash
      let mtime ← getMTime cacheFile
      let path := if useLocalFile then file else cacheFile
      return {descr, name := file.toString, path, mtime}
  catch e =>
    error s!"failed to cache artifact: {e}"

@[inline, inherit_doc Cache.saveArtifact]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Variant96cdc77ee8618f1e9863f108186bc152b8f66f1c0bb58764d5adb1a66b4cd7ce.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Common/Variant96cdc77ee8618f1e9863f108186bc152b8f66f1c0bb58764d5adb1a66b4cd7ce.lean#L462).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c20647096e000adccb67bf7a9f1107d2eedc18be` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
