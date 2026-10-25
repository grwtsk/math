# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.ProfilerServer.Variant8b2b9bf018dae2e9ec76f1e48f3c0097a5a3a6e02d9a65967d54900ff7658780

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `bb49113633576b709f88b35fbd5069329c39c546` · SHA-256 `6ffd985b5953bcea2dadbe7f95edeff1ff96dda0aa9c1371213fba38688fe7c5`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OpenInBrowser.Variant8dda7eb30c0626a80e791aef6d566aca02821a4ef3f42988754afd821a57c54c","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"8dda7eb30c0626a80e791aef6d566aca02821a4ef3f42988754afd821a57c54c","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Computation.LeanMetaprogramming.SourceCorpus.OpenInBrowser.Variant8dda7eb30c0626a80e791aef6d566aca02821a4ef3f42988754afd821a57c54c","mathematical_subject":"Computation.LeanMetaprogramming","original_sha256":"8dda7eb30c0626a80e791aef6d566aca02821a4ef3f42988754afd821a57c54c","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Lean/Util/ProfilerServer.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["external_root_references_preserved","implicit_eof_scopes","interpolated_literals","root_references_require_identity_review","uncompiled_organization"],"structural_qualification":"lexical_organization_only_uncompiled","transform_version":"1"}
/-
Copyright (c) 2026 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sebastian Ullrich
-/
module

prelude
public import Lean.Util.Profiler
public import Std.Http
import Init.System.Platform
import Init.System.IO

/-!
# Trace profiler HTTP server

Serves a Firefox Profiler-compatible profile over HTTP on an ephemeral local port and open the
corresponding `https://profiler.firefox.com/from-url/...` URL in the user's default browser, so the
profile is loaded with a single command (a la `samply`).
-/


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.OpenInBrowser.Variant8dda7eb30c0626a80e791aef6d566aca02821a4ef3f42988754afd821a57c54c

namespace Lean.Firefox

open _root_.Std Async Http

/-- Best-effort: spawn the platform-specific "open this URL in the default browser" command. -/
def openInBrowser (url : String) : IO Unit := do
  let args : IO.Process.SpawnArgs :=
    if System.Platform.isWindows then
      { cmd := "cmd", args := #["/c", "start", "", url] }
    else if System.Platform.isOSX then
      { cmd := "open", args := #[url] }
    else
      { cmd := "xdg-open", args := #[url] }
  try
    let child ← IO.Process.spawn { args with stdout := .null, stderr := .null, stdin := .null }
    discard child.wait
  catch _ =>
    -- Browser launch is opportunistic; the URL is also printed for the user to copy.
    pure ()

/--
Serve the JSON-encoded `profile` over HTTP on an ephemeral `127.0.0.1` port and open it in the
user's default browser via `https://profiler.firefox.com`. Shuts down once the profile has been
fetched (reloads inside the viewer are not supported); the user can also Ctrl+C as usual.
-/
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
