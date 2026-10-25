# AccessPresentationChange

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1bbde31f785ccd1738b4b1e24e35b6ea3be3ed29a62f36d74666724906da3bc2",
  "kind": "structure",
  "lexical_name": "AccessPresentationChange",
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
  "slug": "accesspresentationchange--600bc5454adaac63e15b6d9e",
  "source": {
    "blob": "10e996a6c87f6e6137d769161abe6e99a0a98ff5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 37,
    "line": 23,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant5e618e7403a6a9aa0f06288bd37ef8624c236fbe41d36aae3f582e9786c3e3c8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:600bc5454adaac63e15b6d9ee00e9d1cfa506e778b8d930c3d38693b31312a21",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant5e618e7403a6a9aa0f06288bd37ef8624c236fbe41d36aae3f582e9786c3e3c8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1bbde31f785ccd1738b4b1e24e35b6ea3be3ed29a62f36d74666724906da3bc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 23–37.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure AccessPresentationChange
    (before after : GraphAccessReceipt) where
  requestIdentity :
    after.requestRef = before.requestRef
  graphCutIdentity :
    after.graphCutRef = before.graphCutRef
  dispositionIdentity :
    after.disposition = before.disposition
  exactnessIdentity :
    after.exactness = before.exactness
  certificateIdentity :
    after.certificateRef = before.certificateRef
  obstructionIdentity :
    after.obstructionRef = before.obstructionRef

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant5e618e7403a6a9aa0f06288bd37ef8624c236fbe41d36aae3f582e9786c3e3c8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Noninterference/Variant5e618e7403a6a9aa0f06288bd37ef8624c236fbe41d36aae3f582e9786c3e3c8.lean#L23).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `10e996a6c87f6e6137d769161abe6e99a0a98ff5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
