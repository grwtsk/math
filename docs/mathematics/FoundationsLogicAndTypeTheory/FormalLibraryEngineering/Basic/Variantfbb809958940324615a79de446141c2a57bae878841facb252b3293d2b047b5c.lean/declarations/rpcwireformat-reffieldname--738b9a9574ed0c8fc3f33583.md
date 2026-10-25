# RpcWireFormat.refFieldName

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6ce438ab3d8739603885ed13f2bc1a4f43c361aaf4865b0cbfaab3bf81b44856",
  "kind": "def",
  "lexical_name": "RpcWireFormat.refFieldName",
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
  "slug": "rpcwireformat-reffieldname--738b9a9574ed0c8fc3f33583",
  "source": {
    "blob": "a433afdf5e77573810e78f3150f89c57fa9143d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 87,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfbb809958940324615a79de446141c2a57bae878841facb252b3293d2b047b5c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:738b9a9574ed0c8fc3f33583db1d524ddd0b3c7166e78f83c6ca9ab5b8151f75",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfbb809958940324615a79de446141c2a57bae878841facb252b3293d2b047b5c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6ce438ab3d8739603885ed13f2bc1a4f43c361aaf4865b0cbfaab3bf81b44856`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–87.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def RpcWireFormat.refFieldName : RpcWireFormat → String
  | .v0 => "p"
  | .v1 => "__rpcref"

end Lean.Lsp

namespace Lean.Server

/--
`WithRpcRef α` marks values that RPC clients should see as opaque references.
This includes heavy objects such as `Lean.Environment`s
and non-serializable objects such as closures.

In the Lean server, `WithRpcRef α` is a structure containing a value of type `α`
and an associated `id`.
In an RPC client (e.g. the infoview), it is an opaque reference.
Thus, `WithRpcRef α` is cheap to transmit, but its data may only be accessed server-side.
In practice, this is used by client code to pass data
between various RPC methods provided by the server.

Two `WithRpcRef`s with the same `id` will yield the same client-side reference.

See also the docstring for `RpcEncodable`.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfbb809958940324615a79de446141c2a57bae878841facb252b3293d2b047b5c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Basic/Variantfbb809958940324615a79de446141c2a57bae878841facb252b3293d2b047b5c.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a433afdf5e77573810e78f3150f89c57fa9143d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
