# Config

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f0ec4538005c5e52d12a25d4b7a36c74596ca2eec6a7dbf7e24a8eec93863eb9",
  "kind": "structure",
  "lexical_name": "Config",
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
  "slug": "config--7a51eb364782bd5185fbfd2a",
  "source": {
    "blob": "eb31ebcb2b14727c2810a43cd5be856fe488db6e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 36,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant5bb422e11d443bbe6655d901702ec56c0e27cf59a67684924e0ffb75ef037fa8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7a51eb364782bd5185fbfd2a12d345dd289f426b92c163ab813c0fd97a4d7838",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant5bb422e11d443bbe6655d901702ec56c0e27cf59a67684924e0ffb75ef037fa8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f0ec4538005c5e52d12a25d4b7a36c74596ca2eec6a7dbf7e24a8eec93863eb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
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
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant5bb422e11d443bbe6655d901702ec56c0e27cf59a67684924e0ffb75ef037fa8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Config/Variant5bb422e11d443bbe6655d901702ec56c0e27cf59a67684924e0ffb75ef037fa8.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb31ebcb2b14727c2810a43cd5be856fe488db6e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
