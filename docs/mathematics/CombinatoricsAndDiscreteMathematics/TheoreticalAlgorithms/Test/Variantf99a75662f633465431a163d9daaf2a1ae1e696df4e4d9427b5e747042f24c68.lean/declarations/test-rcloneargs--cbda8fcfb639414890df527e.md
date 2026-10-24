# test_rcloneArgs

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:55b7fda623acffe6ebe8bd5b3e74425bdd774eb938b7d88e7227610393cfee17",
  "kind": "def",
  "lexical_name": "test_rcloneArgs",
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
  "slug": "test-rcloneargs--cbda8fcfb639414890df527e",
  "source": {
    "blob": "0b525c0371c69136736e08efcbd51f781e5f36f7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1566,
    "line": 1536,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cbda8fcfb639414890df527e1675bd1c02f1246f7f71d55feb330ff6b023971a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:55b7fda623acffe6ebe8bd5b3e74425bdd774eb938b7d88e7227610393cfee17`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1536–1566.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_rcloneArgs : IO Unit := do
  IO.println "rcloneArgs:"
  if let .ok dest := stagedUploadDestFrom .s3 none (some "https://acct.example/devbucket")
      (some .forks) "alice/mathlib4" (some "abc1") then
    let files := rcloneFilesArgs "devbucket" dest "staging" "tmp/files-from.txt"
      (overwrite := false)
    assertEq "files copy remote matches the destination contract"
      s!":s3:devbucket/{dest.filesPrefix}" files[2]!
    assertTrue "files copy is a copy" (files[0]! == "copy")
    assertTrue "files copy is restricted to the caller's file list"
      ((files.toList.zip files.toList.tail).contains ("--files-from", "tmp/files-from.txt"))
    assertTrue "a non-overwrite copy skips existing objects"
      (files.contains "--ignore-existing")
    assertTrue "an overwrite copy replaces existing objects"
      (!(rcloneFilesArgs "devbucket" dest "staging" "tmp/files-from.txt"
        (overwrite := true)).contains "--ignore-existing")
    assertTrue "files copy skips the bucket-creation probe"
      (files.contains "--s3-no-check-bucket")
    let marker := rcloneMarkerArgs "devbucket" dest "tmp/abc1" "abc1"
    assertEq "marker remote matches the marker path contract"
      s!":s3:devbucket/{Container.forks.pathSegment}/{markerPath "alice/mathlib4" "abc1"}"
      marker[2]!
    assertTrue "marker copy is a copyto" (marker[0]! == "copyto")
    assertTrue "marker copy overwrites freely"
      !(marker.contains "--ignore-existing")
  else
    assertTrue "rclone destination resolves" false

/-- The child environment the rclone tool runs under: credentials and
endpoint set, a stale session token cleared when the credential has none,
and nothing else touched. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf99a75662f633465431a163d9daaf2a1ae1e696df4e4d9427b5e747042f24c68.lean#L1536).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0b525c0371c69136736e08efcbd51f781e5f36f7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
