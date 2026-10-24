# Edge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2a119c093f72145da664eadaee6485453884333523d8a63d600888ea75eb5b8c",
  "kind": "structure",
  "lexical_name": "Edge",
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
  "slug": "edge--febd31f08c10b6de00f86c18",
  "source": {
    "blob": "135cf81c5685121f8ef03bf8d3d3eaf213a39701",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 38,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant25aff7c3abf7b75f8e3d37a6453a938e4992676ba95ac567746d726ca02d54e9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:febd31f08c10b6de00f86c18be6af99e686ae812832291e1db4400178cbcf3ae",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant25aff7c3abf7b75f8e3d37a6453a938e4992676ba95ac567746d726ca02d54e9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2a119c093f72145da664eadaee6485453884333523d8a63d600888ea75eb5b8c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Edge (x₀ x₁ : X _⦋0⦌₂) where
  /-- A `1`-simplex -/
  edge : X _⦋1⦌₂
  /-- The source of the edge is `x₀`. -/
  src_eq : X.map (δ₂ 1).op edge = x₀ := by cat_disch
  /-- The target of the edge is `x₁`. -/
  tgt_eq : X.map (δ₂ 0).op edge = x₁ := by cat_disch

namespace Edge

attribute [simp] src_eq tgt_eq

/-- The edge given by a `1`-simplex. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant25aff7c3abf7b75f8e3d37a6453a938e4992676ba95ac567746d726ca02d54e9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/CompStructTruncated/Variant25aff7c3abf7b75f8e3d37a6453a938e4992676ba95ac567746d726ca02d54e9.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `135cf81c5685121f8ef03bf8d3d3eaf213a39701` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
