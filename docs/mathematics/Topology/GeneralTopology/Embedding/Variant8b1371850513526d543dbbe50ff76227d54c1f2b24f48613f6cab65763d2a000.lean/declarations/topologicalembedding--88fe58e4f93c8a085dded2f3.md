# TopologicalEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dc644492ac6017e24a244b2191a51b01a08536d70115228fd0c44fac21eb71fb",
  "kind": "structure",
  "lexical_name": "TopologicalEmbedding",
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
  "slug": "topologicalembedding--88fe58e4f93c8a085dded2f3",
  "source": {
    "blob": "e1b912a94eff37c06968a93b3fe0c9c04c983dc1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 59,
    "line": 48,
    "path": "GRWTSK/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:88fe58e4f93c8a085dded2f39adff18f1882ce7cc46da5135aaf0144c23be1d1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dc644492ac6017e24a244b2191a51b01a08536d70115228fd0c44fac21eb71fb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–59.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure TopologicalEmbedding
    (X : Type u) (Y : Type v)
    (TX : TopologicalSpaceLike X)
    (TY : TopologicalSpaceLike Y) where
  toFun : X → Y
  imageHomeomorphism :
    Homeomorphism X (FunctionImage toFun) TX
      (subspaceTopology TY (Set.range toFun))
  imageHomeomorphism_toFun :
    ∀ x, (imageHomeomorphism.toFun x).val = toFun x

/-- Injectivity follows from the homeomorphism onto the image. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Embedding/Variant8b1371850513526d543dbbe50ff76227d54c1f2b24f48613f6cab65763d2a000.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e1b912a94eff37c06968a93b3fe0c9c04c983dc1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
