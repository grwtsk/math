# CheckRequestResponse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5fd71253d337085793ff443bdc380b3f1d631744f1e6c0390f3918a7cb8c360c",
  "kind": "inductive",
  "lexical_name": "CheckRequestResponse",
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
  "slug": "checkrequestresponse--b03a0a680b530e28de2534d5",
  "source": {
    "blob": "37994657d4333e4fa4ecfc9f3cb87061131c664f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 78,
    "line": 64,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b03a0a680b530e28de2534d54a5d8359abe3875505825aabfe3c4ea2fac44bbd",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `inductive` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5fd71253d337085793ff443bdc380b3f1d631744f1e6c0390f3918a7cb8c360c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 64–78.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
inductive CheckRequestResponse
  | running
  | done (result : LazyEncodable Json)
  deriving RpcEncodable

/-- Check whether a request has finished computing,
and return the response if so.
The request is removed from `runningRequests` the first time it is checked
and found to have finished.
Throws an error if the `rid` is invalid,
or if the request itself threw an error. -/
/- NOTE: a notification-based version would be better than this polling-based one.
But we cannot include RPC references in notifications atm;
another possible addition to the RPC protocol? -/
@[server_rpc_method]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Cancellable/Variantbf84fe3c11dcd968269912be5922cb614d2093aca694a51367bd411a47ab3e83.lean#L64).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `37994657d4333e4fa4ecfc9f3cb87061131c664f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
