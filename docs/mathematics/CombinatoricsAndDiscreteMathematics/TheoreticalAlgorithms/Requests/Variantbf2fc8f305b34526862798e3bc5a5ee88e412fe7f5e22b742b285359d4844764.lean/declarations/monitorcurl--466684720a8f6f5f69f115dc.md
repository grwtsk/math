# monitorCurl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2e28faf0e04ff0b988f4ec5b5ff25d2c4f9977b20fd8f9e24af391339a0cacc0",
  "kind": "def",
  "lexical_name": "monitorCurl",
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
  "slug": "monitorcurl--466684720a8f6f5f69f115dc",
  "source": {
    "blob": "b1bccf23b6211eb834b69b0220b8949534ec8f48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 779,
    "line": 642,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:466684720a8f6f5f69f115dc6eefb2e15a2a301ab8c3f53197d94f68ca2596b6",
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

Occurrence: `declaration:2e28faf0e04ff0b988f4ec5b5ff25d2c4f9977b20fd8f9e24af391339a0cacc0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 642–779.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def monitorCurl {dir : TransferDirection} (args : Array String) (size : Nat)
    (caption : String) (speedVar : String)
    (classify : Option Nat → Nat → TransferVerdict dir) (removeOnError := false)
    (decompConfig : Option DecompConfig := none)
    (decompState : DecompState := {}) : IO (TransferState × Std.HashSet UInt64) := do
  let useAnsi := (← IO.getEnv "TERM").isSome
  -- Hashes of the files this pass fetched, used to decide what the next
  -- container in the chain still needs to retry.
  let servedRef ← IO.mkRef (∅ : Std.HashSet UInt64)
  let mkStatus (s : TransferState) : String := Id.run do
    let speedStr :=
      if s.speed != 0 then
        s!", {s.speed / 1000} KB/s"
      else ""
    let mut msg := s!"\r{caption}: {s.success} file(s) [attempted {s.done}/{size} = {100*s.done/size}%{speedStr}]"
    -- Add decompression progress if enabled
    if decompConfig.isSome then
      msg := msg ++ s!", Decompressed: {s.decomp.decompressed}"
      if s.decomp.decompFailed != 0 then
        msg := msg ++ s!" ({s.decomp.decompFailed} failed)"
    if s.failed != 0 then
      msg := msg ++ s!", {s.failed} {dir} failed"
    -- Clear to end of line to avoid remnants from longer previous messages
    if useAnsi then
      msg := msg ++ "\x1b[K"
    return msg
  let init : TransferState := { last := (← IO.monoMsNow), decomp := decompState }
  let s ← IO.runCurlStreaming args init fun a line => do
    let mut {last, success, failed, done, speed, decomp} := a
    let mut {pending, currentTask, lastBatchSize, decompressed, decompFailed} := decomp
    -- Classify each finished transfer: rename a delivered part file, report a
    -- failure, and remove the part file on any non-delivery.
    let line := line.trimAscii
    if !line.isEmpty then
      match Lean.Json.parse line.copy with
      | .ok result =>
        let code? := result.getObjValAs? Nat "http_code"
        let fn? := result.getObjValAs? String "filename_effective"
        -- The per-transfer JSON report carries `exitcode` from curl 7.75 on;
        -- an absent field reads as 0.
        let exitCode := (result.getObjValAs? Nat "exitcode").toOption.getD 0
        let verdict := classify code?.toOption exitCode
        if verdict matches .delivered then
          if let .ok fn := fn? then
            -- Match this process's own suffix, not a bare `.part`: a concurrent run's
            -- in-flight file is not ours to rename, and curl only reports our transfers.
            if (← System.FilePath.pathExists fn) && fn.endsWith IO.PARTSUFFIX then
              let finalPath := (fn.dropEnd IO.PARTSUFFIX.length).copy
              IO.FS.rename fn finalPath
              let hash? := hashFromFileName finalPath
              if let some hash := hash? then servedRef.modify (·.insert hash)
              -- Add to decompression queue if enabled
              if let some config := decompConfig then
                let some hash := hash? | do
                  IO.eprintln s!"Warning: Failed to extract hash from filename: {finalPath}"
                  decompFailed := decompFailed + 1
                let some mod := config.hashToMod[hash]? | do
                  IO.eprintln s!"Warning: No module mapping found for hash {hash} (file: {finalPath})"
                  decompFailed := decompFailed + 1
                pending := pending.push (finalPath, mod)
                -- Check if we should dispatch a batch
                match currentTask with
                | some task =>
                  if (← IO.hasFinished task) then
                    -- Harvest completed task
                    let (d, f, err?) := harvestDecompTask task lastBatchSize decompressed decompFailed
                    decompressed := d
                    decompFailed := f
                    if let some e := err? then
                      IO.eprintln s!"Decompression error: {e}"
                    -- Dispatch new batch with all pending files
                    lastBatchSize := pending.size
                    currentTask ← dispatchDecompBatch pending config
                    pending := #[]
                  -- else: task still running, just accumulate
                | none =>
                  -- No task running, dispatch immediately
                  lastBatchSize := pending.size
                  currentTask ← dispatchDecompBatch pending config
                  pending := #[]
          success := success + 1
        else
          if verdict matches .failed then
            failed := failed + 1
            let mkFailureMsg code? fn? msg? : String := Id.run do
              let mut msg := "Transfer failed"
              if let .ok fn := fn? then
                msg := s!"{fn}: {msg}"
              if let .ok code := code? then
                msg := s!"{msg} (error code: {code})"
              if exitCode != 0 then
                msg := s!"{msg} (curl exit code: {exitCode})"
              if let .ok errMsg := msg? then
                msg := s!"{msg}: {errMsg}"
              return msg
            let msg? := result.getObjValAs? String "errormsg"
            -- A download is named by its part file, an upload by its URL.
            -- The URL is query-stripped, so a credential in the query string
            -- is not printed.
            let src? : Except String String := match dir with
              | .download => fn?
              | .upload =>
                (result.getObjValAs? String "url_effective").map
                  fun url => (url.splitOn "?").headD url
            IO.println (mkFailureMsg code? src? msg?)
          -- The part file holds a truncated body (failure) or an error body
          -- (miss); remove it either way.
          if removeOnError then
            if let .ok fn := fn? then
              -- `curl --remove-on-error` can already do this, but only from 7.83 onwards
              if (← System.FilePath.pathExists fn) && fn.endsWith IO.PARTSUFFIX then
                IO.FS.removeFile fn
        done := done + 1
        let now ← IO.monoMsNow
        if now - last ≥ 100 then -- max 10/s update rate
          speed := match result.getObjValAs? Nat speedVar with
            | .ok speed => speed | .error _ => speed
          let decompNow : DecompState :=
            {pending, currentTask, lastBatchSize, decompressed, decompFailed}
          IO.eprint (mkStatus {last, success, failed, done, speed, decomp := decompNow})
          last := now
       | .error e =>
        IO.println s!"Non-JSON output from curl:\n  {line}\n{e}"
    let decompNow : DecompState :=
      {pending, currentTask, lastBatchSize, decompressed, decompFailed}
    pure {last, success, failed, done, speed, decomp := decompNow}
  if s.done > 0 then
    -- to avoid confusingly moving on without finishing the count
    IO.eprintln (mkStatus s)
  return (s, ← servedRef.get)

/-- Run one container's download pass for the given hash map. Returns the
`TransferState` from `monitorCurl` (synthesized in serial mode, where it
carries only the transfer-failure count) and the set of hashes it fetched, so
the caller can carry the rest to the next container. `decompState` is the
previous round's decompression pipeline state; the returned state's `decomp`
continues it. Serial mode never pipelines and passes it through untouched.
Side effect: fetched files are written to `CACHEDIR` with their final names. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean#L642).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bccf23b6211eb834b69b0220b8949534ec8f48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
