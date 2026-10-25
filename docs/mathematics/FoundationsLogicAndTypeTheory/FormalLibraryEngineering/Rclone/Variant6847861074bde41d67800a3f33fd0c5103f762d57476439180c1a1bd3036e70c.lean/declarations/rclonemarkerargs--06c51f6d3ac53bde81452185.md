# rcloneMarkerArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:acd5578e49d55e80a2500635ef377d253d529aa5edb69fbe8e887056e6de4edf",
  "kind": "def",
  "lexical_name": "rcloneMarkerArgs",
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
  "slug": "rclonemarkerargs--06c51f6d3ac53bde81452185",
  "source": {
    "blob": "5757ece5362f3222042fc58c4dda012d888d7bf7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rclone/Variant6847861074bde41d67800a3f33fd0c5103f762d57476439180c1a1bd3036e70c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:06c51f6d3ac53bde81452185f39544db514a8f5a595de4fea83c165a3a645110",
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

Occurrence: `declaration:acd5578e49d55e80a2500635ef377d253d529aa5edb69fbe8e887056e6de4edf`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def rcloneMarkerArgs (bucketPath : String) (dest : StagedUploadDest)
    (markerFile : FilePath) (sha : String) : Array String :=
  #["copyto", markerFile.toString, s!":s3:{bucketPath}/{dest.markerPrefix}/{sha}"] ++
    rcloneCommonFlags

/--
The staged put on a system rclone. `env` is the child environment the caller
assembled (`rcloneEnv`), so no credential appears on a command line, and
`bucketPath` is the bucket the `:s3:` remotes address. `srcDir` holds the
files and `fileNames` lists the ones to upload; the list is passed as a
`--files-from` file, so only the named files are uploaded. The files are
uploaded first, then the per-SHA marker, in the same order as the curl tool. A
files failure exits 1; a marker failure only warns (see `uploadMarkerWith`).
The `rclone` parameter names the binary and exists for the tests; production
callers use the default.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rclone/Variant6847861074bde41d67800a3f33fd0c5103f762d57476439180c1a1bd3036e70c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Rclone/Variant6847861074bde41d67800a3f33fd0c5103f762d57476439180c1a1bd3036e70c.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5757ece5362f3222042fc58c4dda012d888d7bf7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
