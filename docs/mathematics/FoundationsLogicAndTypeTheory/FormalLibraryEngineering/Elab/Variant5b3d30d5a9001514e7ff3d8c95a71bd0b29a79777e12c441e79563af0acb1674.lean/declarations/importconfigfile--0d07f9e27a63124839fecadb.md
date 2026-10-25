# importConfigFile

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bc044674a34b16b0a490db35c686c94491bca65585dc76b6bde9be88881b5774",
  "kind": "def",
  "lexical_name": "importConfigFile",
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
  "slug": "importconfigfile--0d07f9e27a63124839fecadb",
  "source": {
    "blob": "72fbc45dca58fa6d7bb625a864c5d617577e3300",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 180,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:0d07f9e27a63124839fecadbda9b3a33c8cd0ef0a49ae7dcd904175a05a78a21",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bc044674a34b16b0a490db35c686c94491bca65585dc76b6bde9be88881b5774`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def importConfigFile (cfg : LoadConfig) : LogIO Environment := do
  let some configName := FilePath.mk <$> cfg.configFile.fileName
    | error "invalid configuration file name"
  let configDir := cfg.configDir
  IO.FS.createDirAll configDir
  let olean := configDir / configName.withExtension "olean"
  let traceFile := configDir / configName.withExtension "olean.trace"
  let lockFile := configDir / configName.withExtension "olean.lock"
  /-
  Remark:
  To prevent race conditions between the `.olean` and its trace file
  (i.e., one process writes a new configuration while another reads an old one
  and vice versa), Lake performs file locking to ensure exclusive access.

  To check if the trace is up-to-date, Lake opens a read-only handle on the
  trace file and acquires a shared lock on it. The lock is held while the
  trace is read and compared to the expected value. If it matches, the olean is
  imported and the (shared) lock is then released.

  If the trace is out-of-date, Lake upgrades the trace to read-write handle
  with an exclusive lock. Lake does this by first acquiring an exclusive lock to
  configuration's lock file (i.e. `olean.lock`). While holding this lock, Lake
  releases the shared lock on the trace, re-opens the trace with a read-write
  handle, and acquires an exclusive lock on the trace. It then releases its
  lock on the lock file. writes the new lock data.
  -/
  let acquireTrace h : IO IO.FS.Handle := id do
    let hLock ← IO.FS.Handle.mk lockFile .write
    /-
    Remark:
    We do not wait for a lock here, because that can lead to deadlock.

    This is because we are already holding a shared lock on the trace.
    If multiple process race for this lock, one will get it and then
    wait for an exclusive lock on the trace file, but be blocked by the
    other process with a shared lock waiting on this file.

    While there is likely a way to sequence this to avoid erroring,
    simultaneous reconfigures are likely to produce unexpected results
    anyway, so the error seems wise nonetheless.
    -/
    if (← hLock.tryLock) then
      h.unlock
      let h ← IO.FS.Handle.mk traceFile .readWrite
      h.lock
      hLock.unlock
      return h
    else
      h.unlock
      error <| s!"could not acquire an exclusive configuration lock; " ++
        "another process may already be reconfiguring the package"
  let configHash ← computeTextFileHash cfg.configFile
  let elabConfig h (lakeOpts : NameMap String) : LogIO Environment := id do
    /-
    Remark:
    We write the trace before elaborating the configuration file
    to enable automatic reconfiguration on the next `lake` invocation if
    elaboration fails. To ensure a failure triggers a reconfigure, we must also
    remove any previous out-of-date `.olean`. Otherwise, Lake will treat the
    older `.olean` as matching the new trace.

    See the related PR and Zulip discussion for more details:
    [leanprover/lean4#3069](https://github.com/leanprover/lean4/pull/3069).
    -/
    match (← IO.FS.removeFile olean |>.toBaseIO) with
    | .ok _ | .error (.noFileOrDirectory ..) =>
      h.putStrLn <| Json.pretty <| toJson
        {platform := System.Platform.target, leanHash := cfg.lakeEnv.leanGithash,
          configHash, idx := cfg.pkgIdx, name := cfg.pkgName, options := lakeOpts : ConfigTrace}
      -- Flush before `truncate` (which sets the file size without flushing buffered
      -- writes) and before the slow elaboration below, so a process killed
      -- mid-elaboration leaves a valid trace rather than a NUL-byte size placeholder.
      h.flush
      h.truncate
      let env ← elabConfigFile
        cfg.pkgIdx cfg.pkgName cfg.pkgDir lakeOpts cfg.leanOpts cfg.configFile
      Lean.writeModule env olean
      h.unlock
      return env
    | .error e => errorWithLog do
      logError <| toString e
      h.unlock
      IO.FS.removeFile traceFile
  let validateTrace h : LogIO Environment := id do
    if cfg.reconfigure then
      elabConfig (← acquireTrace h) cfg.lakeOpts
    else
      h.lock (exclusive := false)
      let contents ← h.readToEnd
      match Json.parse contents with
      | .ok json =>
        match fromJson? json with
        | .ok (trace : ConfigTrace) =>
          let upToDate := (← olean.pathExists) ∧
            trace.idx = cfg.pkgIdx ∧ trace.name = cfg.pkgName ∧  trace.configHash = configHash ∧
            trace.platform = System.Platform.target ∧  trace.leanHash = cfg.lakeEnv.leanGithash
          if upToDate then
            let env ← importConfigFileCore olean cfg.leanOpts
            h.unlock
            return env
          else
            elabConfig (← acquireTrace h) trace.options
        | .error _ => -- trace has unexpected format, try to just read the one necessary field
          match JsonObject.fromJson? json >>= (·.get "options") with
          | .ok (opts : NameMap String) =>
            elabConfig (← acquireTrace h) opts
          | .error _ =>
            elabConfig (← acquireTrace h) cfg.lakeOpts
      | .error _ =>
        elabConfig (← acquireTrace h) cfg.lakeOpts
  if (← traceFile.pathExists) then
    validateTrace <| ← IO.FS.Handle.mk traceFile .read
  else
    IO.FS.createDirAll cfg.lakeDir
    match (← IO.FS.Handle.mk traceFile .writeNew |>.toBaseIO) with
    | .ok h =>
      h.lock; elabConfig h cfg.lakeOpts
    | .error (.alreadyExists ..) =>
      validateTrace <| ← IO.FS.Handle.mk traceFile .read
    | .error e => error e.toString
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Elab/Variant5b3d30d5a9001514e7ff3d8c95a71bd0b29a79777e12c441e79563af0acb1674.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `72fbc45dca58fa6d7bb625a864c5d617577e3300` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
