# downloadFilesFromContainer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1ef034944b8e894d0b8c7ac13d821c58929a49c419e62e310dd4479ef98a9911",
  "kind": "def",
  "lexical_name": "downloadFilesFromContainer",
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
  "slug": "downloadfilesfromcontainer--e698b11bcb2b8cb7532c50ba",
  "source": {
    "blob": "b1bccf23b6211eb834b69b0220b8949534ec8f48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 837,
    "line": 780,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e698b11bcb2b8cb7532c50ba03be99c8473a40eca9d86ca098ff5a0140c55d5a",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1ef034944b8e894d0b8c7ac13d821c58929a49c419e62e310dd4479ef98a9911`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 780–837.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def downloadFilesFromContainer
    (container : Option Container) (repo containerURL : String)
    (hashMap : IO.ModuleHashMap)
    (parallel : Bool) (decompConfig : Option DecompConfig)
    (scope? : Option String) (decompState : DecompState) :
    IO (TransferState × Std.HashSet UInt64) := do
  let size := hashMap.size
  if parallel then
    IO.FS.writeFile IO.CURLCFG (← mkGetConfigContent container repo containerURL hashMap scope?)
    let args := #["--request", "GET", "--parallel", "--silent"] ++
      -- Avoid passing `--fail` here: it slows parallel transfers on curl
      -- 8.13.0, and it makes `--retry-all-errors` retry every 404 miss.
      curlFollowRedirectArgs ++ curlRetryArgs (supportLegacyCurl := false) ++
      #["--write-out", "%{json}\n", "--config", IO.CURLCFG.toString]
    -- `legacy` answers reads with 403 once its public access is revoked ahead
    -- of retirement; treat that as a miss so the chain stays quiet for clients
    -- whose chain still lists it.
    let treatForbiddenAsMiss := container == some Container.legacy
    let (s, served) ← monitorCurl args size "Downloaded" "speed_download"
      (classifyDownload · · treatForbiddenAsMiss) (removeOnError := true)
      decompConfig decompState
    IO.FS.removeFile IO.CURLCFG
    return (s, served)
  else
    -- Mirror the parallel path's miss/failure split: a `legacy` 403 is a miss.
    let treatForbiddenAsMiss := container == some Container.legacy
    let r ← hashMap.foldM (init := []) fun acc _ hash => do
      pure <| (hash, ← IO.asTask do
        downloadFile container repo containerURL hash scope? treatForbiddenAsMiss) :: acc
    -- Served hashes carry the remaining files to the next container; hard
    -- failures (anything but a 404/legacy-403 miss, including a task that threw)
    -- feed `TransferState.failed`, so they drive the exit code exactly as the
    -- parallel path threads its own `failed` count.
    let (served, failed) := r.foldl (init := ((∅ : Std.HashSet UInt64), 0))
      fun (served, failed) (hash, t) =>
        match t.get with
        | .ok .delivered => (served.insert hash, failed)
        | .ok .miss => (served, failed)
        | _ => (served, failed + 1)
    return ({ failed, decomp := decompState }, served)

/-- Expand the trust-ordered container list into the concrete download rounds to
run, each carrying the SHA scope to read at. A round is
`(container?, url, scope?)`.

Without `--unsafe` (`unsafeScopes` empty) every round uses the single resolved
`scope?`: one round per container, all at the same scope. When no explicit
scope is given, `headScope?` (the checked-out HEAD, resolved by the caller)
applies to the `forks` round only: fork uploads live under the per-commit
namespace, so this is what lets a plain `cache get` retrieve what CI built for
exactly the commit the reader has checked out. The other containers' layouts
are not SHA-scoped, so `headScope?` must not leak into their rounds.

With `--unsafe` (`unsafeScopes` non-empty) the `forks` container — the only
SHA-scoped container, whose markers the walk probed — is expanded into one round
per discovered SHA, most recent first. Every other container reads unscoped
(`master` is flat and serves the bulk of files by hash; `legacy` has no walked
markers), so the base `scope?` is intentionally dropped here. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean#L780).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bccf23b6211eb834b69b0220b8949534ec8f48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
