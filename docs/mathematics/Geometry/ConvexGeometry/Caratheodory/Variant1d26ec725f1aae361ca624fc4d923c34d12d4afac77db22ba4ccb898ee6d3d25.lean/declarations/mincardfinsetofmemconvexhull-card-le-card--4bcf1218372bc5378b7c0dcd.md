# minCardFinsetOfMemConvexHull_card_le_card

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:09f3eac4-2bf0-1b2d-a4b5-468cd3a3c986",
  "kind": "theorem",
  "lexical_name": "minCardFinsetOfMemConvexHull_card_le_card",
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
  "slug": "mincardfinsetofmemconvexhull-card-le-card--4bcf1218372bc5378b7c0dcd",
  "source": {
    "blob": "a90175b9be6086d75d1c4d887394967f5d464621",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 128,
    "path": "GRWTSK/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4bcf1218372bc5378b7c0dcd69f0be5011f38115d0df128abda7452892665f4a",
  "verification": {
    "reference": "docs/verification/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:09f3eac4-2bf0-1b2d-a4b5-468cd3a3c986`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem minCardFinsetOfMemConvexHull_card_le_card {t : Finset E} (ht₁ : ↑t ⊆ s)
    (ht₂ : x ∈ convexHull 𝕜 (t : Set E)) : #(minCardFinsetOfMemConvexHull hx) ≤ #t :=
  Function.argminOn_le _ _ (by exact ⟨ht₁, ht₂⟩)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ConvexGeometry/Caratheodory/Variant1d26ec725f1aae361ca624fc4d923c34d12d4afac77db22ba4ccb898ee6d3d25.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a90175b9be6086d75d1c4d887394967f5d464621` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
