# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant5bb422e11d443bbe6655d901702ec56c0e27cf59a67684924e0ffb75ef037fa8

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `eb31ebcb2b14727c2810a43cd5be856fe488db6e` · SHA-256 `d5322d1f479ed61f5ffebfe2debe4b36235adf3da50ca346e0efe94e4d1d4573`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
-- corpus-organization-transform:v1
-- Mathematical subject: FoundationsLogicAndTypeTheory.FormalLibraryEngineering
-- Original status, authors, copyright and AI attribution are retained in source.
-- Source organization only; compilation and proof acceptance are deferred.
-- {"acceptance":"organization_only_uncompiled","namespace":"GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant65140d6ea8c0431bb98ded1bd9ef5c406bd09e144fe876e0946b983e09e66e34","original_mathematical_text_comments_and_status":"retained_except_receipted_name_import_edits","original_sha256":"65140d6ea8c0431bb98ded1bd9ef5c406bd09e144fe876e0946b983e09e66e34","provenance":{"attribution":"Organization assisted by OpenAI Codex under grwtsk contributors direction; original author and AI attribution retained.","canonical_module":"FormalResearch.Foundations.NumbersAndBasicStructures.SourceCorpus.Config.Variant65140d6ea8c0431bb98ded1bd9ef5c406bd09e144fe876e0946b983e09e66e34","mathematical_subject":"Foundations.NumbersAndBasicStructures","original_sha256":"65140d6ea8c0431bb98ded1bd9ef5c406bd09e144fe876e0946b983e09e66e34","provenance_manifest":"registry/corpus/paths/","representative_original_path":"/Users/local/Desktop/NoeaaeueFormal/artifacts/source-capsule/t-001-v1-export-v1/toolchain/src/lean/Std/Http/Server/Config.lean","status":"Source organization only; compilation and proof acceptance deferred."},"risk_codes":["implicit_eof_scopes","scope_end_name_mismatch","uncompiled_organization"],"structural_qualification":"structural_issues_retained_uncompiled","transform_version":"1"}
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Time
public import Std.Http.Protocol.H1


namespace GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant65140d6ea8c0431bb98ded1bd9ef5c406bd09e144fe876e0946b983e09e66e34

public section

/-!
# Config

This module exposes the `Config`, a structure that describes timeout, request and headers
configuration of an HTTP Server.
-/

namespace Std.Http

set_option linter.all true

/--
Connection limits configuration with validation.
-/
structure Config where
  /--
  Maximum number of simultaneous active connections (default: 1024).
  Setting this to `0` disables the limit entirely: the server will accept any number of
  concurrent connections and no semaphore-based cap is enforced. Use with care — an
  unconstrained server may exhaust file descriptors or memory under adversarial load.
  -/
  maxConnections : Nat := 1024

  /--
  Maximum number of requests per connection.
  -/
  maxRequests : Nat := 100

  /--
  Maximum number of headers allowed per request.
  -/
  maxHeaders : Nat := 50

  /--
  Maximum aggregate byte size of all header field lines in a single message
  (name + value bytes plus 4 bytes per line for `: ` and `\r\n`). Default: 64 KiB.
  -/
  maxHeaderBytes : Nat := 65536

  /--
  Timeout (in milliseconds) for receiving additional data while a request is actively being
  processed (e.g. reading the request body). Applies after the request headers have been parsed
  and replaces the keep-alive timeout for the duration of the request.
  -/
  lingeringTimeout : Time.Millisecond.Offset := 10000

  /--
  Timeout for keep-alive connections
  -/
  keepAliveTimeout : { x : Time.Millisecond.Offset // x > 0 } :=  ⟨12000, by decide⟩

  /--
  Maximum time (in milliseconds) allowed to receive the complete request headers after the first
  byte of a new request arrives. This prevents Slowloris-style attacks where a client sends bytes
  at a slow rate to hold a connection slot open without completing a request. Once a request starts,
  each individual read must complete within this window. Default: 5 seconds.
  -/
  headerTimeout : Time.Millisecond.Offset := 5000

  /--
  Whether to enable keep-alive connections by default.
  -/
  enableKeepAlive : Bool := true

  /--
  The maximum size that the connection can receive in a single recv call.
  -/
  maximumRecvSize : Nat := 8192

  /--
  Default buffer size for the connection
  -/
  defaultPayloadBytes : Nat := 8192

  /--
  Whether to automatically generate the `Date` header in responses.
  -/
  generateDate : Bool := true

  /--
  The `Server` header value injected into outgoing responses.
  `none` suppresses the header entirely.
  -/
  serverName : Option Header.Value := some (.mk "LeanHTTP/1.1")

  /--
  Maximum length of request URI (default: 8192 bytes)
  -/
  maxUriLength : Nat := 8192

  /--
  Maximum number of bytes consumed while parsing request start-lines (default: 8192 bytes).
  -/
  maxStartLineLength : Nat := 8192

  /--
  Maximum length of header field name (default: 256 bytes)
  -/
  maxHeaderNameLength : Nat := 256

  /--
  Maximum length of header field value (default: 8192 bytes)
  -/
  maxHeaderValueLength : Nat := 8192

  /--
  Maximum number of spaces in delimiter sequences (default: 16)
  -/
  maxSpaceSequence : Nat := 16

  /--
  Maximum number of leading empty lines (bare CRLF) to skip before a request-line
  (RFC 9112 §2.2 robustness). Default: 8.
  -/
  maxLeadingEmptyLines : Nat := 8

  /--
  Maximum length of chunk extension name (default: 256 bytes)
  -/
  maxChunkExtNameLength : Nat := 256

  /--
  Maximum length of chunk extension value (default: 256 bytes)
  -/
  maxChunkExtValueLength : Nat := 256

  /--
  Maximum number of bytes consumed while parsing one chunk-size line with extensions (default: 8192 bytes).
  -/
  maxChunkLineLength : Nat := 8192

  /--
  Maximum allowed chunk payload size in bytes (default: 8 MiB).
  -/
  maxChunkSize : Nat := 8 * 1024 * 1024

  /--
  Maximum allowed total body size per request in bytes (default: 64 MiB).
  -/
  maxBodySize : Nat := 64 * 1024 * 1024

  /--
  Maximum length of reason phrase (default: 512 bytes)
  -/
  maxReasonPhraseLength : Nat := 512

  /--
  Maximum number of trailer headers (default: 20)
  -/
  maxTrailerHeaders : Nat := 20

  /--
  Maximum number of extensions on a single chunk-size line (default: 16).
  -/
  maxChunkExtensions : Nat := 16

namespace Config

/--
Converts to HTTP/1.1 config.
-/
def toH1Config (config : Config) : Protocol.H1.Config where
  maxMessages := config.maxRequests
  maxHeaders := config.maxHeaders
  maxHeaderBytes := config.maxHeaderBytes
  enableKeepAlive := config.enableKeepAlive
  agentName := config.serverName
  maxUriLength := config.maxUriLength
  maxStartLineLength := config.maxStartLineLength
  maxHeaderNameLength := config.maxHeaderNameLength
  maxHeaderValueLength := config.maxHeaderValueLength
  maxSpaceSequence := config.maxSpaceSequence
  maxLeadingEmptyLines := config.maxLeadingEmptyLines
  maxChunkExtensions := config.maxChunkExtensions
  maxChunkExtNameLength := config.maxChunkExtNameLength
  maxChunkExtValueLength := config.maxChunkExtValueLength
  maxChunkLineLength := config.maxChunkLineLength
  maxChunkSize := config.maxChunkSize
  maxBodySize := config.maxBodySize
  maxReasonPhraseLength := config.maxReasonPhraseLength
  maxTrailerHeaders := config.maxTrailerHeaders

end Std.Http.Config
```
