# test_putStagedViaRclone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:9274dfe0e3df62538dc1b63b410eb61042cd59fe94cef8298fb9688527c1c8be",
  "kind": "def",
  "lexical_name": "test_putStagedViaRclone",
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
  "slug": "test-putstagedviarclone--474d64e1e9c50fdf67a15ef1",
  "source": {
    "blob": "bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1671,
    "line": 1597,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:474d64e1e9c50fdf67a15ef1bbd8a8167aea9aaff0c27e2af9fb4b639e75cf5c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:9274dfe0e3df62538dc1b63b410eb61042cd59fe94cef8298fb9688527c1c8be`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1597–1671.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def test_putStagedViaRclone : IO Unit := do
  IO.println "putStagedViaRclone (fake binary):"
  if System.Platform.isWindows then
    IO.println "  (skipped on Windows)"
    return
  let dir ← IO.FS.createTempDir
  try
    let staging := dir / "staging"
    IO.FS.createDirAll staging
    IO.FS.writeFile (staging / "aa.ltar") "x"
    let fake := dir / "fake-rclone"
    IO.FS.writeFile fake <|
      "#!/bin/sh\n" ++
      s!"printf '%s\\n' \"$@\" > \"{dir}/args-$1\"\n" ++
      s!"env | grep '^RCLONE_S3_\\|^HOME=' | sort > \"{dir}/env-$1\"\n" ++
      -- The files-from list is a temp file the tool deletes after the run, so
      -- the fake preserves its content for the assertions below.
      "prev=''\n" ++
      "for a in \"$@\"; do\n" ++
      s!"  if [ \"$prev\" = --files-from ]; then cp \"$a\" \"{dir}/files-from-copy\"; fi\n" ++
      "  prev=\"$a\"\n" ++
      "done\n" ++
      "if [ \"$1\" = copyto ]; then exit 3; fi\n" ++
      "exit 0\n"
    discard <| IO.runCmd "chmod" #["+x", fake.toString]
    let .ok dest := stagedUploadDestFrom .s3 none (some "https://acct.example/devbucket")
        (some .forks) "alice/mathlib4" (some "abc1")
      | assertTrue "rclone destination resolves" false
    withSuppressedOutput <| putStagedViaRclone dest
      (rcloneEnv ⟨"AK", "SK", some "tok"⟩ "https://acct.example" "Other" "auto")
      "devbucket" (some "abc1") staging
      #["aa.ltar"] (overwrite := false) (rclone := fake.toString)
    let copyArgs ← IO.FS.readFile (dir / "args-copy")
    assertTrue "files copy targets the staging dir"
      ((copyArgs.splitOn "\n").any (· == staging.toString))
    assertTrue "files copy addresses the resolved remote"
      ((copyArgs.splitOn "\n").any (· == s!":s3:devbucket/{dest.filesPrefix}"))
    assertEq "the files-from list holds exactly the caller's file names"
      "aa.ltar\n" (← IO.FS.readFile (dir / "files-from-copy"))
    let copyEnv ← IO.FS.readFile (dir / "env-copy")
    assertTrue "the credentials travel in the child environment"
      ((copyEnv.splitOn "\n").contains "RCLONE_S3_ACCESS_KEY_ID=AK" &&
       (copyEnv.splitOn "\n").contains "RCLONE_S3_SESSION_TOKEN=tok" &&
       (copyEnv.splitOn "\n").contains "RCLONE_S3_ENDPOINT=https://acct.example")
    -- The env parameter extends the parent environment (each pair sets or
    -- unsets one variable), so the child keeps HOME, PATH, and any RCLONE_*
    -- tuning of the caller. Pinned here so a runtime change cannot silently
    -- drop them from rclone's environment.
    assertTrue "the parent environment is inherited alongside the credentials"
      ((copyEnv.splitOn "\n").any (·.startsWith "HOME="))
    -- The fake exits 3 on `copyto`, so this pins the marker invocation shape
    -- and that a marker failure warns without failing the put.
    let markerArgs ← IO.FS.readFile (dir / "args-copyto")
    assertTrue "the marker temp file is named after the SHA"
      ((markerArgs.splitOn "\n").any (·.endsWith "/abc1"))
    assertTrue "the marker addresses the marker path"
      ((markerArgs.splitOn "\n").any
        (· == s!":s3:devbucket/{dest.markerPrefix}/abc1"))
  finally
    IO.FS.removeDirAll dir

end UploadDestination

section UnsafeRounds

/-- `expandDownloadRounds` turns the trust-ordered container list into the
concrete download rounds to run, each tagged with the SHA scope to read at.

Without `--unsafe` (empty `unsafeScopes`) every round carries the single resolved
base scope; with no base scope, `headScope?` applies to the `forks` round only,
so a plain `cache get` reads the fork namespace of the checked-out commit while
the other containers' non-SHA-scoped layouts stay untouched. With `--unsafe` the
`forks` container — the only SHA-scoped container — fans out into one round per
discovered SHA (most recent first), while every other container reads unscoped
and the base scope is dropped. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Test/Variantf89bc256e75f4a756e51bb477ad7d3745e9412fe606e965d1895527c8e8715d7.lean#L1597).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf5c7b9709a76a623c9a7c3a3b8261413b2f8e8b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
