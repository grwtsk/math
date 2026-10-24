# DenseEmbedding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:962e8053f2518a095a81d1fc4e4d6395c7a73cfeff7e026f85976ad7903e905e",
  "kind": "structure",
  "lexical_name": "DenseEmbedding",
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
  "slug": "denseembedding--99f1544b15bf894d91e9813a",
  "source": {
    "blob": "8379ad59570f5caa5b4910890bf7b10599da31f6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 236,
    "line": 231,
    "path": "GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:99f1544b15bf894d91e9813ab0f29b4daaadcae5081b9c1707fefd8a05cadb6a",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:962e8053f2518a095a81d1fc4e4d6395c7a73cfeff7e026f85976ad7903e905e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–236.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure DenseEmbedding [TopologicalSpace α] [TopologicalSpace β] (e : α → β) extends
  DenseInducing e : Prop where
  /-- A dense embedding is injective. -/
  inj : Function.Injective e
#align dense_embedding DenseEmbedding

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/DenseEmbedding/Variant2cca9b7beb49e3a9029770e07edaacc1b84e451c87c9d2c916d0a8b782f98c52.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8379ad59570f5caa5b4910890bf7b10599da31f6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
