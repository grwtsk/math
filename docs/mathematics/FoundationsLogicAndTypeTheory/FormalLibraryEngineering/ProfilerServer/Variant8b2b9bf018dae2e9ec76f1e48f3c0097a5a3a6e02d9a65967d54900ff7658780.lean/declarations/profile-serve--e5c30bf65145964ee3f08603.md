# Profile.serve

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cfa08a2de14dc7d0fdf579b5200b864e8a71d8a4e3ea6ea375fe56f99d6f3e98",
  "kind": "def",
  "lexical_name": "Profile.serve",
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
  "slug": "profile-serve--e5c30bf65145964ee3f08603",
  "source": {
    "blob": "bb49113633576b709f88b35fbd5069329c39c546",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 79,
    "line": 55,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProfilerServer/Variant8b2b9bf018dae2e9ec76f1e48f3c0097a5a3a6e02d9a65967d54900ff7658780.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e5c30bf65145964ee3f086039190c58bf6be2d70fd2edc8e9859fcd770cf9919",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProfilerServer/Variant8b2b9bf018dae2e9ec76f1e48f3c0097a5a3a6e02d9a65967d54900ff7658780.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cfa08a2de14dc7d0fdf579b5200b864e8a71d8a4e3ea6ea375fe56f99d6f3e98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–79.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
public def Profile.serve (profile : String) : IO Unit := Async.block do
  let done ← IO.Promise.new
  let handler := Server.Handler.ofFn fun _req => do
    let r ← Response.ok
      |>.header! "Access-Control-Allow-Origin" "*"
      |>.json profile
    done.resolve ()
    return r
  let addr : Net.SocketAddress := .v4 (.mk (.ofParts 127 0 0 1) 0)
  let server ← Server.serve addr handler
  let some localAddr := server.localAddr
    | throw <| IO.userError "trace.profiler.serve: server did not report a bound address"
  let profileUrl := s!"http://127.0.0.1:{localAddr.port}/profile.json"
  let encodedProfileUrl := profileUrl.replace ":" "%3A" |>.replace "/" "%2F"
  let viewerUrl := s!"https://profiler.firefox.com/from-url/{encodedProfileUrl}/"
  IO.eprintln s!"trace.profiler: serving profile at {profileUrl}"
  IO.eprintln s!"trace.profiler: opening {viewerUrl}"
  -- Open the browser without blocking the server loop.
  let _ ← IO.asTask (prio := .dedicated) (openInBrowser viewerUrl)
  -- Wait for initial (and only) request
  let _ ← Async.ofAsyncTask (.ofPurePromise done)
  -- The handler signals `doneCh` before the response body is written; brief pause so the writer
  -- can drain before `shutdownAndWait` cancels its task.
  Async.sleep 200
  server.shutdownAndWait
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProfilerServer/Variant8b2b9bf018dae2e9ec76f1e48f3c0097a5a3a6e02d9a65967d54900ff7658780.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/ProfilerServer/Variant8b2b9bf018dae2e9ec76f1e48f3c0097a5a3a6e02d9a65967d54900ff7658780.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb49113633576b709f88b35fbd5069329c39c546` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
