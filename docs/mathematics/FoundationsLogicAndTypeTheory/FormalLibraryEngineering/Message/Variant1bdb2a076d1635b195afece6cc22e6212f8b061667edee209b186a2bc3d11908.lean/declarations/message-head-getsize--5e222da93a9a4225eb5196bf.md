# Message.Head.getSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f9f62963a8ffa7296d34befa01300fdab4f4e04354d301bee259e3196d84a36b",
  "kind": "def",
  "lexical_name": "Message.Head.getSize",
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
  "slug": "message-head-getsize--5e222da93a9a4225eb5196bf",
  "source": {
    "blob": "cbb073c0589c895efc7292dc22b3333cc5081186",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 86,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:5e222da93a9a4225eb5196bf3fda4b48631a6ca2375e7685350a9f0a2e457758",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f9f62963a8ffa7296d34befa01300fdab4f4e04354d301bee259e3196d84a36b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 86–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Message.Head.getSize (message : Message.Head dir) (allowEOFBody : Bool) : Option Body.Length :=
  let contentLength := message.headers.getAll? .contentLength

  match message.headers.getAll? .transferEncoding with
  | none =>
      match contentLength with
      | some #[cl] => .fixed <$> (Header.ContentLength.parse cl |>.map (·.length))
      | some _ => none -- To avoid request smuggling with malformed/multiple content-length headers.
      | none => if allowEOFBody then some (.fixed 0) else none

  -- Single transfer-encoding header.
  | some #[header] =>
    let te := Header.TransferEncoding.parse header

    match Header.TransferEncoding.isChunked <$> te, contentLength with
    | some true, none =>
        -- HTTP/1.0 does not define chunked transfer encoding (RFC 2068 §19.4.6).
        -- A server MUST NOT use chunked with an HTTP/1.0 peer; likewise, an
        -- HTTP/1.0 request carrying Transfer-Encoding: chunked is malformed.
        if message.version == .v10 then none else some .chunked
    | _, _ => none -- To avoid request smuggling when TE and CL are mixed.

  -- We disallow multiple transfer-encoding headers.
  | some _ => none
/--
Checks whether the message indicates that the connection should be kept alive.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant1bdb2a076d1635b195afece6cc22e6212f8b061667edee209b186a2bc3d11908.lean#L86).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbb073c0589c895efc7292dc22b3333cc5081186` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
