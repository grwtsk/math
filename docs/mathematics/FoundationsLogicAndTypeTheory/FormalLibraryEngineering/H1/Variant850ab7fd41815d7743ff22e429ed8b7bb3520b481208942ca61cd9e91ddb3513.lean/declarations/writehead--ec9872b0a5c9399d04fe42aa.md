# writeHead

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:e0425625a6f6db9983e0100ffbf5559db6e824056d15802db5211e279a39316f",
  "kind": "def",
  "lexical_name": "writeHead",
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
  "slug": "writehead--ec9872b0a5c9399d04fe42aa",
  "source": {
    "blob": "e244ad062e99c3043e796a2a97ac54bbdb7a8215",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 793,
    "line": 707,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ec9872b0a5c9399d04fe42aa572ebb395f69c24df6b9703bbf43749f00e9f289",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:e0425625a6f6db9983e0100ffbf5559db6e824056d15802db5211e279a39316f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 707–793.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private def writeHead (messageHead : Message.Head dir.swap) (machine : Machine dir) : Machine dir :=
  let machine := machine.updateKeepAlive (machine.reader.messageCount + 1 < machine.config.maxMessages)

  let shouldKeepAlive := messageHead.shouldKeepAlive
  let machine := machine.updateKeepAlive shouldKeepAlive
  let size := Writer.determineTransferMode machine.writer

  -- RFC 7230 §3.3.1: HTTP/1.0 does not support Transfer-Encoding.  When the
  -- response body length is unknown (chunked mode), fall back to connection-close
  -- framing: disable keep-alive and write raw bytes (no chunk encoding, no TE header).
  let machine :=
    match dir, machine.reader.messageHead.version, size with
    | .receiving, Version.v10, .chunked => machine.disableKeepAlive
    | _, _, _ => machine

  let headers := messageHead.headers

  -- Add identity header based on direction. handler wins if it already set one.
  let headers :=
    let identityOpt := machine.config.agentName
    match dir, identityOpt with
    | .receiving, some server =>
      if headers.contains Header.Name.server then headers
      else headers.insert Header.Name.server server
    | .sending, some userAgent =>
      if headers.contains Header.Name.userAgent then headers
      else headers.insert Header.Name.userAgent userAgent
    | _, none => headers

  -- Add Connection header based on keep-alive state and protocol version.
  -- Erase any handler-supplied value first to avoid  duplicate or conflicting
  -- Connection headers on the wire.
  let headers := headers.erase Header.Name.connection

  let headers :=
    if !machine.keepAlive then
      headers.insert Header.Name.connection (.mk "close")
    else if machine.reader.messageHead.version == .v10 then
      -- RFC 2616 §19.7.1: HTTP/1.0 keep-alive responses must echo Connection: keep-alive
      headers.insert Header.Name.connection (.mk "keep-alive")
    else
      headers

  -- Normalize framing headers, except for bodyless status codes where framing
  -- metadata is constrained by RFC semantics.
  let headers :=
    match dir, messageHead with
    | .receiving, messageHead =>
      if responseForbidsFramingHeaders messageHead.status ∨ messageHead.status == .notModified then
        headers
          |>.erase Header.Name.contentLength
          |>.erase Header.Name.transferEncoding
      else if machine.reader.messageHead.version == .v10 && size == .chunked then
        -- RFC 7230 §3.3.1: connection-close framing for HTTP/1.0 — strip all framing
        -- headers so neither Content-Length nor Transfer-Encoding appears on the wire.
        headers
          |>.erase Header.Name.contentLength
          |>.erase Header.Name.transferEncoding
      else
        normalizeFramingHeaders headers size
    | .sending, _ =>
      normalizeFramingHeaders headers size

  let state : Writer.State :=
    match size with
    | .fixed n => .writingBodyFixed n
    | .chunked =>
      -- RFC 7230 §3.3.1: HTTP/1.0 server-side uses connection-close framing (no chunk framing).
      match dir, machine.reader.messageHead.version with
      | .receiving, .v10 => .writingBodyClosingFrame
      | _, _ => .writingBodyChunked

  machine.modifyWriter (fun writer => {
    writer with

    outputData :=
      match dir, messageHead with
      | .receiving, messageHead => Encode.encode (v := .v11) writer.outputData { messageHead with headers, version := machine.reader.messageHead.version }
      | .sending, messageHead => Encode.encode (v := .v11) writer.outputData { messageHead with headers },

    state
  })

/--
Feeds input bytes into the reader side of the machine.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/H1/Variant850ab7fd41815d7743ff22e429ed8b7bb3520b481208942ca61cd9e91ddb3513.lean#L707).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e244ad062e99c3043e796a2a97ac54bbdb7a8215` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
