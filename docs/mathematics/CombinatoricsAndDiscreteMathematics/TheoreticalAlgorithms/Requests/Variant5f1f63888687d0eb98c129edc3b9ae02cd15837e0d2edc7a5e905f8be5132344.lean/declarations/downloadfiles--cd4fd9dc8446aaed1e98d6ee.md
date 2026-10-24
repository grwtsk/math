# downloadFiles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8073ffb66bee1e71664f0fe6339c3e2facd10faaf1664898cdd715cf589fa0ba",
  "kind": "def",
  "lexical_name": "downloadFiles",
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
  "slug": "downloadfiles--cd4fd9dc8446aaed1e98d6ee",
  "source": {
    "blob": "de8ea38d18fedacb046ad732c069980c6e0841db",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 64,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant5f1f63888687d0eb98c129edc3b9ae02cd15837e0d2edc7a5e905f8be5132344.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:cd4fd9dc8446aaed1e98d6ee64a4b59b40b6ea3728798ff98aa97839852c355d",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant5f1f63888687d0eb98c129edc3b9ae02cd15837e0d2edc7a5e905f8be5132344.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8073ffb66bee1e71664f0fe6339c3e2facd10faaf1664898cdd715cf589fa0ba`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def downloadFiles (hashMap : IO.HashMap) (forceDownload : Bool) (parallel : Bool) : IO Unit := do
  let hashMap ← if forceDownload then pure hashMap else hashMap.filterExists false
  let size := hashMap.size
  if size > 0 then
    IO.mkDir IO.CACHEDIR
    IO.println s!"Attempting to download {size} file(s)"
    let failed ← if parallel then
      IO.FS.writeFile IO.CURLCFG (← mkGetConfigContent hashMap)
      let args := #["--request", "GET", "--parallel", "--fail", "--silent",
          "--write-out", "%{json}\n", "--config", IO.CURLCFG.toString]
      let (_, success, failed, done) ←
          IO.runCurlStreaming args (← IO.monoMsNow, 0, 0, 0) fun a line => do
        let mut (last, success, failed, done) := a
        -- output errors other than 404 and remove corresponding partial downloads
        let line := line.trim
        if !line.isEmpty then
          let result ← IO.ofExcept <| Lean.Json.parse line
          match result.getObjValAs? Nat "http_code" with
          | .ok 200 => success := success + 1
          | .ok 404 => pure ()
          | _ =>
            failed := failed + 1
            if let .ok e := result.getObjValAs? String "errormsg" then
              IO.println e
            -- `curl --remove-on-error` can already do this, but only from 7.83 onwards
            if let .ok fn := result.getObjValAs? String "filename_effective" then
              if (← System.FilePath.pathExists fn) then
                IO.FS.removeFile fn
          done := done + 1
          let now ← IO.monoMsNow
          if now - last ≥ 100 then -- max 10/s update rate
            let mut msg := s!"\rDownloaded: {success} file(s) [attempted {done}/{size} = {100*done/size}%]"
            if failed != 0 then
              msg := msg ++ s!", {failed} failed"
            IO.eprint msg
            last := now
        pure (last, success, failed, done)
      if done > 0 then
        -- to avoid confusingly moving on without finishing the count
        let mut msg := s!"\rDownloaded: {success} file(s) [attempted {done}/{size} = {100*done/size}%] ({100*success/done}% success)"
        if failed != 0 then
          msg := msg ++ s!", {failed} failed"
        IO.eprintln msg
      IO.FS.removeFile IO.CURLCFG
      if success + failed < done then
        IO.eprintln "Warning: some files were not found in the cache."
        IO.eprintln "This usually means that your local checkout of mathlib4 has diverged from upstream."
        IO.eprintln "If you push your commits to a branch of the mathlib4 repository, CI will build the oleans and they will be available later."
      pure failed
    else
      let r ← hashMap.foldM (init := []) fun acc _ hash => do
        pure <| (← IO.asTask do downloadFile hash) :: acc
      pure <| r.foldl (init := 0) fun f t => if let .ok true := t.get then f else f + 1
    if failed > 0 then
      IO.println s!"{failed} download(s) failed"
      IO.Process.exit 1
  else IO.println "No files to download"

/-- Downloads missing files, and unpacks files. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant5f1f63888687d0eb98c129edc3b9ae02cd15837e0d2edc7a5e905f8be5132344.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variant5f1f63888687d0eb98c129edc3b9ae02cd15837e0d2edc7a5e905f8be5132344.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `de8ea38d18fedacb046ad732c069980c6e0841db` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
