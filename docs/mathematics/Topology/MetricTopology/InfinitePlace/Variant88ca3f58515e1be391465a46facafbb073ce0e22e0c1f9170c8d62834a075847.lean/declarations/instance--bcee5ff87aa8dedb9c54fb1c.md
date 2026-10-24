# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7ae6d39a7b8742d8d80245971beb1116e9944b9ab5ca8f0985e3523a18f42bb4",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--bcee5ff87aa8dedb9c54fb1c",
  "source": {
    "blob": "e7f46f5472e4d8c50ad979bf4ccf28989077aead",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 80,
    "line": 76,
    "path": "GRWTSK/Topology/MetricTopology/InfinitePlace/Variant88ca3f58515e1be391465a46facafbb073ce0e22e0c1f9170c8d62834a075847.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bcee5ff87aa8dedb9c54fb1c6ae4a2c33fc4b7c9e83b9a9d82993a7951bfbd38",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/InfinitePlace/Variant88ca3f58515e1be391465a46facafbb073ce0e22e0c1f9170c8d62834a075847.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7ae6d39a7b8742d8d80245971beb1116e9944b9ab5ca8f0985e3523a18f42bb4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 76–80.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : CompletableTopField (WithAbs v.1) :=
  v.isometry_embedding.isUniformInducing.completableTopField

/-- The completion of a number field at an infinite place, as a one-field structure wrapping the
completion `v.1.Completion` of `K` at the underlying absolute value. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/InfinitePlace/Variant88ca3f58515e1be391465a46facafbb073ce0e22e0c1f9170c8d62834a075847.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/InfinitePlace/Variant88ca3f58515e1be391465a46facafbb073ce0e22e0c1f9170c8d62834a075847.lean#L76).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e7f46f5472e4d8c50ad979bf4ccf28989077aead` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
