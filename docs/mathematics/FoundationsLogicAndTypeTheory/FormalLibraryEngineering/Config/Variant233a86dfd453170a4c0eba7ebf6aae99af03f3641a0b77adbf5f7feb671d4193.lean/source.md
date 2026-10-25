# Complete source: GRWTSK.FoundationsLogicAndTypeTheory.FormalLibraryEngineering.Config.Variant233a86dfd453170a4c0eba7ebf6aae99af03f3641a0b77adbf5f7feb671d4193

[Module index](index.md)

Exact source from `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob `99a97a239a15bfbc183f13e9608aac14de022545` · SHA-256 `233a86dfd453170a4c0eba7ebf6aae99af03f3641a0b77adbf5f7feb671d4193`. Encoding: `UTF-8`. The code fence contains UTF-8 source, or lossless base64 for non-UTF-8 bytes. [Exact source bytes](source.lean.txt) preserve the original final newline and encoding.

```lean
/-
Copyright (c) 2025 Lean FRO, LLC. All rights reserved.
Released under Apache 2.0 license as described in the file LICENSE.
Authors: Sofia Rodrigues
-/
module

prelude
public import Std.Http.Data
public import Std.Http.Internal

public section

/-!
# HTTP/1.1 Configuration

This module defines the configuration options for HTTP/1.1 protocol processing,
including connection limits, header constraints, and various size limits.
-/

namespace Std.Http.Protocol.H1

set_option linter.all true

open Std Internal Parsec ByteArray
open Internal

/--
Connection limits and parser bounds configuration.
-/
structure Config where
  /--
  Maximum number of requests (server) or responses (client) per connection.
  -/
  maxMessages : Nat := 100

  /--
  Maximum number of headers allowed per message.
  -/
  maxHeaders : Nat := 100

  /--
  Maximum aggregate byte size of all header field lines in a single message
  (name + value bytes plus 4 bytes per line for `: ` and `\r\n`). Default: 64 KiB.
  -/
  maxHeaderBytes : Nat := 65536

  /--
  Whether to enable keep-alive connections by default.
  -/
  enableKeepAlive : Bool := true

  /--
  The `Server` header value injected into outgoing responses (receiving mode) or the
  `User-Agent` header value injected into outgoing requests (sending mode).
  `none` suppresses the header entirely.
  -/
  agentName : Option Header.Value := none

  /--
  Maximum length of request URI (default: 8192 bytes).
  -/
  maxUriLength : Nat := 8192

  /--
  Maximum number of bytes consumed while parsing request/status start-lines (default: 8192 bytes).
  -/
  maxStartLineLength : Nat := 8192

  /--
  Maximum length of header field name (default: 256 bytes).
  -/
  maxHeaderNameLength : Nat := 256

  /--
  Maximum length of header field value (default: 8192 bytes).
  -/
  maxHeaderValueLength : Nat := 8192

  /--
  Maximum number of spaces in delimiter sequences (default: 16).
  -/
  maxSpaceSequence : Nat := 16

  /--
  Maximum number of leading empty lines (bare CRLF) to skip before a request-line
  (RFC 9112 §2.2 robustness). Default: 8.
  -/
  maxLeadingEmptyLines : Nat := 8

  /--
  Maximum number of extensions on a single chunk-size line (default: 16).
  -/
  maxChunkExtensions : Nat := 16

  /--
  Maximum length of chunk extension name (default: 256 bytes).
  -/
  maxChunkExtNameLength : Nat := 256

  /--
  Maximum length of chunk extension value (default: 256 bytes).
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
  Maximum allowed total body size per message in bytes (default: 64 MiB).
  This limit applies across all body framing modes. For chunked transfer encoding,
  chunk-size lines (including extensions) and the trailer section also count toward
  this limit, so the total wire bytes consumed by the body cannot exceed this value.
  -/
  maxBodySize : Nat := 64 * 1024 * 1024

  /--
  Maximum length of reason phrase (default: 512 bytes).
  -/
  maxReasonPhraseLength : Nat := 512

  /--
  Maximum number of trailer headers (default: 20).
  -/
  maxTrailerHeaders : Nat := 20

end Std.Http.Protocol.H1
```
