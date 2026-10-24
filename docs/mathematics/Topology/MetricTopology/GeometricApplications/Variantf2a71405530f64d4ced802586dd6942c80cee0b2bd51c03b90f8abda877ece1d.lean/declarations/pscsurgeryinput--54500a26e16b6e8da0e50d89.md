# PSCSurgeryInput

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:38b4a23d2454a4bd1fe17c55fdee14d106912dce998cea691e8889268126ecaa",
  "kind": "structure",
  "lexical_name": "PSCSurgeryInput",
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
  "slug": "pscsurgeryinput--54500a26e16b6e8da0e50d89",
  "source": {
    "blob": "3029a94bb57199032f687505b76b628a053abf58",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 99,
    "path": "GRWTSK/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:54500a26e16b6e8da0e50d89302f8fa8b2c10996ee81ddd6ac317024913d105a",
  "verification": {
    "reference": "docs/verification/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:38b4a23d2454a4bd1fe17c55fdee14d106912dce998cea691e8889268126ecaa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure PSCSurgeryInput
    (T : SmoothFramedSurgeryTheory)
    (G : PositiveScalarCurvatureSemantics T)
    {p q : Nat} {M : T.Manifold}
    (embedding : T.FramedEmbedding p q M) where
  metric : G.Metric M
  neighborhood : G.SurgeryNeighborhood embedding
  neighborhoodClosure : G.NeighborhoodClosure embedding neighborhood
  codimension_at_least_three : 3 ≤ q
  manifold_admissible : G.AdmissibleManifold M
  manifold_compact : G.CompactManifold M
  manifold_collared : G.CollaredBoundary M
  embedding_interior : G.InteriorEmbedding embedding
  positive : G.PositiveScalarCurvature metric
  product_near_boundary : G.ProductNearBoundary metric
  neighborhood_closure_valid :
    G.IsNeighborhoodClosure embedding neighborhood neighborhoodClosure
  standard_near_surgery_site :
    G.StandardOnNeighborhoodClosure
      embedding neighborhood neighborhoodClosure metric
  gluing_compatible :
    G.GluingCompatible embedding neighborhood neighborhoodClosure metric

/--
The exact output promised by the positive-scalar-curvature surgery capability:
a positive metric that is unchanged on the certified exterior.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/MetricTopology/GeometricApplications/Variantf2a71405530f64d4ced802586dd6942c80cee0b2bd51c03b90f8abda877ece1d.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3029a94bb57199032f687505b76b628a053abf58` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
