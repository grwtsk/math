# ModelWithCorners.range_prod

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8030f5df-89f8-8c36-e2d4-254655b90e10",
  "kind": "theorem",
  "lexical_name": "ModelWithCorners.range_prod",
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
  "slug": "modelwithcorners-range-prod--682749ced9959d11c34232ef",
  "source": {
    "blob": "f0cb153a5bdcbc6cea6e97ac3f6447d88c871eee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 594,
    "line": 585,
    "path": "GRWTSK/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:682749ced9959d11c34232efaceafab97b4a65c5d5ee16280330df48d3191ccc",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8030f5df-89f8-8c36-e2d4-254655b90e10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 585–594.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ModelWithCorners.range_prod : range (I.prod J) = range I ×ˢ range J := by
  simp_rw [← ModelWithCorners.target_eq]; rfl

end ModelWithCornersProd

section Boundaryless

/-- Property ensuring that the model with corners `I` defines manifolds without boundary. This
differs from the more general `BoundarylessManifold`, which requires every point on the manifold
to be an interior point. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Basic/Variantb75d2a0a945883dddf9c791a81249156400b3bbd2b86234dfcf49fba7958a0ff.lean#L585).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0cb153a5bdcbc6cea6e97ac3f6447d88c871eee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
