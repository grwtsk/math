# Message.Head.getSize

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fdf1abb7f79f3dca18536aa2eca742e915d46a6b6bd820d4cab5e6218533d2c4",
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
  "slug": "message-head-getsize--699e79f082657f5a6669219f",
  "source": {
    "blob": "74675aeb4ad2b96cbed21f80d7bc92c8bb0a642d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 94,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:699e79f082657f5a6669219f0ea2684b62fb71bece22753d51e8291eb25e5f66",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fdf1abb7f79f3dca18536aa2eca742e915d46a6b6bd820d4cab5e6218533d2c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 94–120.

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

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Message/Variant8ade5157300e96ef00b6e5893001440af3ed845ce4d1a4717e935c580f73df1a.lean#L94).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `74675aeb4ad2b96cbed21f80d7bc92c8bb0a642d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
