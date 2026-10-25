# Notification.ofMessage?

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:65a75064186204964a9426b40dc40690a1fc9aba5c97982db6cb4148d00fd5c3",
  "kind": "def",
  "lexical_name": "Notification.ofMessage?",
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
  "slug": "notification-ofmessage--d5983fd8613904efab84b2d1",
  "source": {
    "blob": "ca8bc885cd9eb30b465f63a4e5b2a4837ee25381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 177,
    "line": 160,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant8a124befa3dd4b612998eba59db8c2851e95eed146f4c6051f0e51b38cbf40fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5983fd8613904efab84b2d14088a10792612db69e7b5ebc9aeedd9f03a6889a",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant8a124befa3dd4b612998eba59db8c2851e95eed146f4c6051f0e51b38cbf40fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:65a75064186204964a9426b40dc40690a1fc9aba5c97982db6cb4148d00fd5c3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–177.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def Notification.ofMessage? : Message → Option (Notification Json)
  | .notification method params? => some {
      method
      param := toJson params?
    }
  | _ => none

/-- Generic version of `Message.response`.

A Response Message sent as a result of a request. If a request doesn’t provide a
result value the receiver of a request still needs to return a response message
to conform to the JSON-RPC specification. The result property of the ResponseMessage
should be set to null in this case to signal a successful request.

References:
- [JSON-RPC](https://www.jsonrpc.org/specification#response_object)
- [LSP](https://microsoft.github.io/language-server-protocol/specifications/lsp/3.17/specification/#responseMessage)
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant8a124befa3dd4b612998eba59db8c2851e95eed146f4c6051f0e51b38cbf40fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/JsonRpc/Variant8a124befa3dd4b612998eba59db8c2851e95eed146f4c6051f0e51b38cbf40fc.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ca8bc885cd9eb30b465f63a4e5b2a4837ee25381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
