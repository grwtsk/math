# putStagedViaRclone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b7484743b5af78c10f21522f306ae64e5e9868267620a240274b977d501658b4",
  "kind": "def",
  "lexical_name": "putStagedViaRclone",
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
  "slug": "putstagedviarclone--68113caa31440843873ea10d",
  "source": {
    "blob": "b71c7f544c6499ed2499cb62f130f27c798664f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 107,
    "line": 79,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rclone/Variant42ccdd11bf88b5ec7bb5726f5d732817eef1e47953e534aa622be27a2cd1260e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:68113caa31440843873ea10d7a77fa7de5a60a331bd3b98ebfdf9e93ded5525f",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rclone/Variant42ccdd11bf88b5ec7bb5726f5d732817eef1e47953e534aa622be27a2cd1260e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b7484743b5af78c10f21522f306ae64e5e9868267620a240274b977d501658b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–107.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def putStagedViaRclone (dest : StagedUploadDest) (env : Array (String × Option String))
    (bucketPath : String) (markerSha? : Option String)
    (srcDir : FilePath) (fileNames : Array String) (overwrite : Bool)
    (rclone : String := "rclone") : IO Unit := do
  let run (args : Array String) : IO UInt32 := do
    let child ← IO.Process.spawn { cmd := rclone, args, env }
    child.wait
  if fileNames.isEmpty then
    IO.println "No files to upload"
  else
    IO.println s!"Uploading {fileNames.size} file(s) via rclone to \
      {dest.base}/{dest.filesPrefix}"
    let dir ← IO.FS.createTempDir
    let code ← try
      let filesFrom := dir / "files-from.txt"
      IO.FS.writeFile filesFrom ("\n".intercalate fileNames.toList ++ "\n")
      run (rcloneFilesArgs bucketPath dest srcDir filesFrom overwrite)
    finally
      IO.FS.removeDirAll dir
    if code != 0 then
      IO.eprintln s!"rclone upload failed with exit code {code}"
      IO.Process.exit 1
  if let some sha := markerSha? then
    uploadMarkerWith (dest.markerURL sha) sha fun file => do
      let code ← run (rcloneMarkerArgs bucketPath dest file sha)
      unless code == 0 do
        throw <| IO.userError s!"rclone exited with code {code}"

end Cache.Requests
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rclone/Variant42ccdd11bf88b5ec7bb5726f5d732817eef1e47953e534aa622be27a2cd1260e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rclone/Variant42ccdd11bf88b5ec7bb5726f5d732817eef1e47953e534aa622be27a2cd1260e.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b71c7f544c6499ed2499cb62f130f27c798664f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
