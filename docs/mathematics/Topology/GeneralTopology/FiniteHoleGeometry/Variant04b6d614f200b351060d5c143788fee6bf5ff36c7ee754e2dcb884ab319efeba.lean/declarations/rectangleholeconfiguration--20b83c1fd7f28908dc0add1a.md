# RectangleHoleConfiguration

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:15ec21cd48b0ebbd65be0969713dafacd3bffa3e356f2bc77f12d962aab5fcb0",
  "kind": "structure",
  "lexical_name": "RectangleHoleConfiguration",
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
  "slug": "rectangleholeconfiguration--20b83c1fd7f28908dc0add1a",
  "source": {
    "blob": "090e31c115d6262f66b6e8490d81f9fdc1dc1f2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 72,
    "path": "GRWTSK/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:20b83c1fd7f28908dc0add1a4a43f7b95edb5ced6ae14c736c22f1ac69ec28e5",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:15ec21cd48b0ebbd65be0969713dafacd3bffa3e356f2bc77f12d962aab5fcb0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure RectangleHoleConfiguration (lower upper : ℂ) where
  centers : Finset ℂ
  radius : ℂ → ℝ
  radius_pos : ∀ z ∈ centers, 0 < radius z
  closedBall_subset_interior :
    ∀ z ∈ centers, closedBall z (radius z) ⊆ openRectangle lower upper
  pairwise_disjoint :
    (centers : Set ℂ).PairwiseDisjoint fun z ↦ closedBall z (radius z)

namespace RectangleHoleConfiguration

variable {lower upper : ℂ}

/-- The center of every hole lies in the open rectangle. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/FiniteHoleGeometry/Variant04b6d614f200b351060d5c143788fee6bf5ff36c7ee754e2dcb884ab319efeba.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `090e31c115d6262f66b6e8490d81f9fdc1dc1f2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
