# downloadFiles

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:48b1327a65e2f4951937ef8418fd929d7d5d7a2d8ae28c5455ba489aa6a25f46",
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
  "slug": "downloadfiles--6aae84f72d1b4bcd8adad12f",
  "source": {
    "blob": "b1bccf23b6211eb834b69b0220b8949534ec8f48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 966,
    "line": 863,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6aae84f72d1b4bcd8adad12f0d6af91c0cec655585a739a61ef1412d2b63af35",
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

Occurrence: `declaration:48b1327a65e2f4951937ef8418fd929d7d5d7a2d8ae28c5455ba489aa6a25f46`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 863–966.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def downloadFiles
    (repo : String) (hashMap : IO.ModuleHashMap)
    (forceDownload : Bool) (parallel : Bool) (warnOnMissing : Bool)
    (decompress : Bool := false) (forceUnpack : Bool := false)
    (isMathlibRoot : Bool := false) (mathlibDepPath : FilePath := ".")
    (unsafeScopes : List String := []) : IO Nat := do
  let hashMap ← if forceDownload then pure hashMap else hashMap.filterExists false
  if hashMap.isEmpty then IO.println "No files to download"; return 0
  IO.FS.createDirAll IO.CACHEDIR

  let containerURLs ← effectiveGetURLs repo
  if containerURLs.isEmpty then
    IO.eprintln "No container URLs configured for download"
    return hashMap.size

  -- Set up decompression config if enabled: one config shared by all container
  -- rounds, with the pipeline state carried between them via `decompState`.
  let decompConfig ← if decompress then
    let hashToMod : Std.HashMap UInt64 Lean.Name := hashMap.fold (init := ∅) fun acc mod hash =>
      acc.insert hash mod
    pure (some { hashToMod, force := forceUnpack, isMathlibRoot, mathlibDepPath : DecompConfig })
  else
    pure none

  -- Walk container URLs in trust order. After each round, drop files that
  -- succeeded so the next round only retries genuine misses. With `--unsafe`
  -- the `forks` container is expanded into one round per discovered SHA scope.
  let scope? ← getRepoScope
  -- With no explicit scope, the forks round defaults to HEAD: `cache get` on a
  -- checked-out commit retrieves what CI built for exactly that commit, fork
  -- included. This adds no trust over an unscoped forks read — the namespace
  -- can only hold artifacts built from the commit the reader already has.
  let headScope? ← if scope?.isNone && unsafeScopes.isEmpty then
      try pure (some (← getGitCommitHash)) catch _ => pure none
    else pure none
  let rounds := expandDownloadRounds containerURLs scope? unsafeScopes headScope?
  let unsafeMode := !unsafeScopes.isEmpty
  let mut remaining := hashMap
  -- Decompression pipeline state, carried from each round into the next (see
  -- `DecompState`); `finalizeDecomp` below drains what the last round leaves.
  let mut decompState : DecompState := {}
  -- Hard transfer failures (not 404 misses) drive the exit code; misses are
  -- normal and instead surface as the "not found" hint keyed on `remaining`.
  -- Accumulated across rounds: a failure in an early container counts even
  -- when a later round serves the file.
  let mut downloadFailed := 0
  -- For the `--unsafe` summary: how many files each scoped (forks) round supplied,
  -- attributed by the drop in `remaining` across that round.
  let mut scopeServed : Array (String × Nat) := #[]
  for (container?, url, roundScope?) in rounds do
    if remaining.isEmpty then break
    let scopeNote := match roundScope? with | some s => s!" (scope {s})" | none => ""
    IO.println s!"Attempting to download {remaining.size} file(s) from {repo} cache at {url}{scopeNote}"
    let before := remaining.size
    let (s, served) ← downloadFilesFromContainer container? repo url remaining parallel
      decompConfig roundScope? decompState
    -- Carry the decompression pipeline into the next round and the drain
    -- below: files left behind here are never decompressed. Drop the files
    -- this round served so the next container only retries genuine misses,
    -- regardless of what is already on disk.
    decompState := s.decomp
    downloadFailed := downloadFailed + s.failed
    remaining := remaining.filter fun _ hash => !served.contains hash
    if unsafeMode then
      if let some sha := roundScope? then
        scopeServed := scopeServed.push (sha, before - remaining.size)

  -- `--unsafe`: report which fork commits actually contributed files, so the
  -- user knows whose artifacts they ended up trusting.
  if unsafeMode then
    if scopeServed.isEmpty then
      IO.eprintln "--unsafe: no fork scopes were needed; \
        all files were served by higher-trust containers."
    else
      IO.eprintln s!"--unsafe: cache served from {scopeServed.size} fork commit scope(s):"
      for (sha, n) in scopeServed do
        IO.eprintln s!"  {sha} → {n} file(s)"
      if remaining.size > 0 then
        IO.eprintln s!"  {remaining.size} file(s) still missing after all scopes."

  if warnOnMissing && !remaining.isEmpty then
    IO.eprintln "Warning: some files were not found in the cache."
    IO.eprintln "This usually means that your local checkout of mathlib4 has diverged from upstream."
    IO.eprintln ""
    IO.eprintln "  * If you push your commits to a PR to the mathlib4 repository"
    IO.eprintln "    (use a draft PR if it is not ready for review),"
    IO.eprintln "    then CI will build the oleans and they will be available later."
    IO.eprintln "  * If you have already opened a PR, this may mean"
    IO.eprintln "    the CI build has failed part-way through building."

  -- Drain the decompression pipeline accumulated across all rounds.
  if let some config := decompConfig then
    let (decompressed, decompFailed) ← finalizeDecomp decompState config
    IO.println s!"Decompressed {decompressed} file(s)"
    if decompFailed > 0 then
      IO.println s!"{decompFailed} decompression(s) failed"
      IO.Process.exit 1

  if downloadFailed > 0 then
    IO.println s!"{downloadFailed} download(s) failed"
  return downloadFailed

/-- Check if the project's `lean-toolchain` file matches mathlib's.
Print and error and exit the process with error code 1 otherwise. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/TheoreticalAlgorithms/Requests/Variantbf2fc8f305b34526862798e3bc5a5ee88e412fe7f5e22b742b285359d4844764.lean#L863).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1bccf23b6211eb834b69b0220b8949534ec8f48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
