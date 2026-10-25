# Writer

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b31be4025f69a8d5451279db9040581da0dee35611733dd68184f0d361db3bb6",
  "kind": "structure",
  "lexical_name": "Writer",
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
  "slug": "writer--9f35e387fcb3fa651ce4b4dc",
  "source": {
    "blob": "db36313ec70188dfd2564a0a4947da4fe70cbe39",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 91,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Writer/Variant92511c097fe2d6321513ecbd79be199cf2e7d5d4f85fa085d2feae75d4e2554a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9f35e387fcb3fa651ce4b4dc3641c0691c93584d0e980cfa60ab209057f5a234",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Writer/Variant92511c097fe2d6321513ecbd79be199cf2e7d5d4f85fa085d2feae75d4e2554a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b31be4025f69a8d5451279db9040581da0dee35611733dd68184f0d361db3bb6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 91–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Writer (dir : Direction) where
  /--
  Body chunks supplied by the user, accumulated before being flushed to output.
  -/
  userData : Array Chunk := .empty

  /--
  All the data produced by the writer, ready to be sent to the socket.
  -/
  outputData : ChunkedBuffer := .empty

  /--
  The state of the writer machine.
  -/
  state : Writer.State := match dir with | .receiving => .pending | .sending => .waitingHeaders

  /--
  When the user specifies the exact body size upfront, `Content-Length` framing is
  used instead of chunked transfer encoding.
  -/
  knownSize : Option Body.Length := none

  /--
  The outgoing message that will be written to the output.
  -/
  messageHead : Message.Head dir.swap := {}

  /--
  Whether the user has called `send` to provide the outgoing message head.
  -/
  sentMessage : Bool := false

  /--
  Set when the user has finished sending body data, allowing fixed-size framing
  to be determined upfront.
  -/
  userClosedBody : Bool := false

  /--
  When `true`, body bytes are intentionally omitted from the wire for this message
  (e.g. HEAD responses), while headers/framing metadata may still describe the
  hypothetical representation.
  -/
  omitBody : Bool := false

  /--
  Running total of bytes across all `userData` chunks, maintained incrementally
  to avoid an O(n) fold on every fixed-length write step.
  -/
  userDataBytes : Nat := 0

namespace Writer

/--
Returns `true` when no more user body data will arrive: either the user called
`closeBody`, or the writer has already transitioned to `complete` or `closed`.

Note: this does **not** mean the wire is ready to accept new bytes — a `closed`
writer cannot send anything. Use this to decide whether to flush pending body
data rather than to check writability.
-/
@[inline]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Writer/Variant92511c097fe2d6321513ecbd79be199cf2e7d5d4f85fa085d2feae75d4e2554a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Writer/Variant92511c097fe2d6321513ecbd79be199cf2e7d5d4f85fa085d2feae75d4e2554a.lean#L91).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db36313ec70188dfd2564a0a4947da4fe70cbe39` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
