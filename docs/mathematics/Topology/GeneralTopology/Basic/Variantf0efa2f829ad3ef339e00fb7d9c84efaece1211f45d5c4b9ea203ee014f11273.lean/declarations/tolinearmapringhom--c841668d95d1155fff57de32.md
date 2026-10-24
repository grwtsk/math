# toLinearMapRingHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2c192b015c75632b27619ebf8ed778f268f9c6fe6ad2627db37f4a75b5347b20",
  "kind": "def",
  "lexical_name": "toLinearMapRingHom",
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
  "slug": "tolinearmapringhom--c841668d95d1155fff57de32",
  "source": {
    "blob": "9671cf6ee1a1c43f08e0c8be0a79aea2afcfacdb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 627,
    "line": 620,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantf0efa2f829ad3ef339e00fb7d9c84efaece1211f45d5c4b9ea203ee014f11273.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c841668d95d1155fff57de328f186d689dcda1a566f90a266ca3d7f7bc3d60fe",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantf0efa2f829ad3ef339e00fb7d9c84efaece1211f45d5c4b9ea203ee014f11273.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2c192b015c75632b27619ebf8ed778f268f9c6fe6ad2627db37f4a75b5347b20`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 620–627.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def toLinearMapRingHom [ContinuousAdd M₁] : (M₁ →L[R₁] M₁) →+* M₁ →ₗ[R₁] M₁ where
  toFun := toLinearMap
  map_zero' := rfl
  map_one' := rfl
  map_add' _ _ := rfl
  map_mul' _ _ := rfl

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantf0efa2f829ad3ef339e00fb7d9c84efaece1211f45d5c4b9ea203ee014f11273.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantf0efa2f829ad3ef339e00fb7d9c84efaece1211f45d5c4b9ea203ee014f11273.lean#L620).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9671cf6ee1a1c43f08e0c8be0a79aea2afcfacdb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
