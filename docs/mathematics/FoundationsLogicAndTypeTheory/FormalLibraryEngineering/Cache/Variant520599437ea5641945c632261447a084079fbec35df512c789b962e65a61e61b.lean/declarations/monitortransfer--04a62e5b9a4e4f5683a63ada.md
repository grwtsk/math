# monitorTransfer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:34880ef7f69778d79c8befae3e26e7298085854a7fb764a8f1445b427228f397",
  "kind": "def",
  "lexical_name": "monitorTransfer",
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
  "slug": "monitortransfer--04a62e5b9a4e4f5683a63ada",
  "source": {
    "blob": "f8c18fc72896525de90688b985a09533ffd1face",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 831,
    "line": 756,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant520599437ea5641945c632261447a084079fbec35df512c789b962e65a61e61b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:04a62e5b9a4e4f5683a63ada1c363b6921d8e88e7ce167e9acdeef98624af37a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant520599437ea5641945c632261447a084079fbec35df512c789b962e65a61e61b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:34880ef7f69778d79c8befae3e26e7298085854a7fb764a8f1445b427228f397`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 756–831.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
partial def monitorTransfer
  (cfg : TransferConfig) (h hOut : IO.FS.Handle) (s : TransferState)
: LoggerIO TransferState := do
  let line ← h.getLine
  if line.trimAscii.isEmpty then
    return s
  else
    let s ← (·.2) <$> StateT.run (s := s) do
      match Json.parse line >>= fromJson? with
      | .ok (out : JsonObject) =>
        let some info@{url, hash, path, extraPaths} := getInfo? out
          | logError s!"{cfg.scope}: unidentifiable transfer completed: {line.trimAscii}"
            modify ({· with didError := true})
            return
        match out.get "http_code" with
        | .ok 200
        | .ok 201 =>
          match cfg.kind with
          | .get =>
            logInfo s!"{cfg.scope}: downloaded artifact {hash}\
              \n  local path: {path}\
              \n  remote URL: {url}"
            let actualHash ← computeFileHash path
            if actualHash != hash then
              logError s!"{path}: downloaded artifact hash mismatch, got {actualHash}"
              IO.FS.removeFile path
              modify ({· with didError := true})
            else
              unless extraPaths.isEmpty do
                createExtraPaths path extraPaths
              modify fun s => {s with numSuccesses := s.numSuccesses + 1}
          | .put =>
            logInfo s!"{cfg.scope}: uploaded artifact {hash}\
              \n  local path: {path}\
              \n  remote URL: {url}"
            modify fun s => {s with numSuccesses := s.numSuccesses + 1}
        | code? =>
          handleFailure info code? out line
          modify ({· with didError := true})
      | .error e =>
        logError s!"curl produced invalid JSON: {e}; received: {line.trimAscii}"
        modify ({· with didError := true})
    monitorTransfer cfg h hOut s
where
  getInfo? out :=
    match out.getAs Nat "urlnum" with
    | .ok i => cfg.infos[i]?
    | _ => none
  handleFailure info code? out line : LoggerIO Unit := do
    let action := match cfg.kind with | .get => "download" | .put => "upload"
    let mut msg := s!"{cfg.scope}: failed to {action} artifact {info.hash}"
    if let .ok code := code? then
      msg := s!"{msg} (status code: {code})"
    if let .ok errMsg := out.getAs String "errormsg" then
      msg := s!"{msg}\n  curl error: {errMsg}"
    msg := s!"{msg}\
      \n  local path: {info.path}\
      \n  remote URL: {info.url}"
    match cfg.kind with
    | .get =>
      unless code? matches .ok 404 do -- ignore response bodies on 404s
        if let .ok size := out.getAs Nat "size_download" then
          if size > 0 then
            if let .ok contentType := out.getAs String "content_type" then
              if contentType != artifactContentType then
                if let .ok resp ← IO.FS.readFile info.path |>.toBaseIO then
                  msg := s!"{msg}\nunexpected response:\n{resp}"
      removeFileIfExists info.path
    | .put =>
      if let .ok size := out.getAs Nat "size_download" then
        if size > 0 then
          if let some resp := String.fromUTF8? (← hOut.read size.toUSize) then
            msg := s!"{msg}\nunexpected response:\n{resp}"
    logError msg
    logVerbose s!"curl JSON: {line.trimAsciiEnd}"

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant520599437ea5641945c632261447a084079fbec35df512c789b962e65a61e61b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cache/Variant520599437ea5641945c632261447a084079fbec35df512c789b962e65a61e61b.lean#L756).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f8c18fc72896525de90688b985a09533ffd1face` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
