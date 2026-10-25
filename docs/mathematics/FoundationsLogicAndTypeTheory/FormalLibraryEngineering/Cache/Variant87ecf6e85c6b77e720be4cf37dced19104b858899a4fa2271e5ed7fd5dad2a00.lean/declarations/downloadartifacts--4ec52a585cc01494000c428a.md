# downloadArtifacts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e4048f22ab8cba8b51d6de7de3eb2a667b8fcadc3721adaeec52ef9bcdb938da",
  "kind": "def",
  "lexical_name": "downloadArtifacts",
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
  "slug": "downloadartifacts--4ec52a585cc01494000c428a",
  "source": {
    "blob": "aed4ec582f23b3087e1ddaebb49715f2c9cef2ec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 985,
    "line": 894,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant87ecf6e85c6b77e720be4cf37dced19104b858899a4fa2271e5ed7fd5dad2a00.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:4ec52a585cc01494000c428ad81797e1654bdbe5de16688d0f076f2deef080d2",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant87ecf6e85c6b77e720be4cf37dced19104b858899a4fa2271e5ed7fd5dad2a00.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e4048f22ab8cba8b51d6de7de3eb2a667b8fcadc3721adaeec52ef9bcdb938da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 894–985.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def downloadArtifacts
   (descrs : Array ArtifactDescr) (cache : Cache)
   (service : CacheService) (scope : CacheServiceScope) (force := false)
: LoggerIO Unit := do
  if descrs.isEmpty then
    logWarning "no artifacts to download"
    return
  let {infos, ..} ← descrs.foldlM (init := TransferDict.empty) fun s {descr} => do
    let hash := descr.hash
    let url := service.artifactUrl hash scope
    let path := cache.artifactDir / descr.relPath
    if force then
      removeFileIfExists path
      return s.add url hash path
    else if (← path.pathExists) then
      return s.add url hash path (extra := false)
    else
      return s.add url hash path
  let infos ← infos.filterM fun info => do
    if info.extraPaths.isEmpty then
      not <$> info.path.pathExists
    else
      match (← createExtraPaths info.path info.extraPaths |>.toBaseIO) with
      | .ok _ => return false
      | .error (.noFileOrDirectory ..) => return true
      | .error e => error s!"failed to copy artifact: {e}"
  if infos.isEmpty then
    return
  let infos ← id do
    if service.isReservoir then
      -- Artifact cloud storage URLs are fetched in a single request
      -- to avoid hammering the Reservoir web host
      fetchUrls (service.reservoirArtifactsUrl scope) infos
    else return infos
  IO.FS.createDirAll cache.artifactDir
  transferArtifacts {scope, infos, kind := .get}
where
  fetchUrls url infos := IO.FS.withTempFile fun h path => do
    let body := Json.arr <| infos.map (toJson ·.hash)
    h.putStr body.compress
    h.flush
    let args := #[
        "-X", "POST", "-L", "-d", s!"@{path}",
        "--retry", "3", -- intermittent network errors can occur
        "-s", "-w", "%{stderr}%{json}\n",
        "-H", "Content-Type: application/json",
      ]
    let args := Reservoir.lakeHeaders.foldl (· ++ #["-H", ·]) args
    let spawnArgs := {
      cmd := "curl", args := args.push url
      stdout := .piped, stderr := .piped
    }
    logVerbose (mkCmdLog spawnArgs)
    let {stdout, stderr, exitCode} ← IO.Process.output spawnArgs
    match Json.parse stdout >>= fromJson? with
    | .ok (resp :  ReservoirResp (Array String)) =>
      match resp with
      | .data urls =>
        if h : infos.size = urls.size then
          let s := infos.size.fold (init := infos.toVector) fun i hi s =>
            s.set i {s[i] with url := urls[i]'(h ▸ hi)}
          return s.toArray
        else
          error s!"failed to fetch artifact URLs\
          \n  POST {url}\
          \nIncorrect number of results: expected {infos.size}, got {urls.size}"
      | .error status message =>
        error s!"failed to fetch artifact URLs (status code: {status})\
          \n  POST {url}\
          \nReservoir error: {message}"
    | .error _ =>
      match Json.parse stderr >>= fromJson? with
      | .ok (out : JsonObject) =>
        let mut msg := "failed to fetch artifact URLs"
        if let .ok code := out.getAs Nat "http_code" then
          msg := s!"{msg} (status code: {code})"
        msg := s!"{msg}\n  POST {url}"
        if let .ok errMsg := out.getAs String "errormsg" then
          msg := s!"{msg}\n  Transfer error: {errMsg}"
        unless stdout.isEmpty do
          msg := s!"{msg}\nstdout:\n{stdout.trimAsciiEnd}"
        logError msg
        logVerbose s!"curl JSON:\n{stderr.trimAsciiEnd}"
      | .error e =>
        logError s!"failed to fetch artifact URLs\
          \n  POST {url}
          \nInvalid curl JSON: {e}; received: {stderr.trimAscii}"
        unless stdout.isEmpty do
          logWarning s!"curl produced unexpected output:\n{stdout.trimAsciiEnd}"
      error s!"curl exited with code {exitCode}"

@[deprecated "Deprecated without replacement." (since := "2026-02-27")]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant87ecf6e85c6b77e720be4cf37dced19104b858899a4fa2271e5ed7fd5dad2a00.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant87ecf6e85c6b77e720be4cf37dced19104b858899a4fa2271e5ed7fd5dad2a00.lean#L894).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aed4ec582f23b3087e1ddaebb49715f2c9cef2ec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
