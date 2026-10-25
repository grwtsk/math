# rcloneFilesArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4022c7d4e99e6d50237e705415dcd42fc1310248020e75cc2cb88c6e0836e818",
  "kind": "def",
  "lexical_name": "rcloneFilesArgs",
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
  "slug": "rclonefilesargs--416fee63500166f26107390a",
  "source": {
    "blob": "5757ece5362f3222042fc58c4dda012d888d7bf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 54,
    "line": 43,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rclone/Variant6847861074bde41d67800a3f33fd0c5103f762d57476439180c1a1bd3036e70c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:416fee63500166f26107390a46826fddedd38d88c8786de7ac584c28d654b8ff",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rclone/Variant6847861074bde41d67800a3f33fd0c5103f762d57476439180c1a1bd3036e70c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4022c7d4e99e6d50237e705415dcd42fc1310248020e75cc2cb88c6e0836e818`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–54.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rcloneFilesArgs (bucketPath : String) (dest : StagedUploadDest)
    (srcDir filesFrom : FilePath) (overwrite : Bool) : Array String :=
  #["copy", srcDir.toString, s!":s3:{bucketPath}/{dest.filesPrefix}",
    "--files-from", filesFrom.toString, "--transfers", "16"] ++
    (if overwrite then #[] else #["--ignore-existing"]) ++ rcloneCommonFlags

/--
The rclone invocation for the per-SHA marker: a single-file copy to the
marker path. A marker's content is the SHA that names it, so an overwrite is
safe and the copy omits `--ignore-existing`, like the curl tool's marker
put.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rclone/Variant6847861074bde41d67800a3f33fd0c5103f762d57476439180c1a1bd3036e70c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rclone/Variant6847861074bde41d67800a3f33fd0c5103f762d57476439180c1a1bd3036e70c.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5757ece5362f3222042fc58c4dda012d888d7bf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
