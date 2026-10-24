# radialStep_to_outerConnected

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:72a05fe9-bd4d-fd18-c562-57db454e4f15",
  "kind": "theorem",
  "lexical_name": "radialStep_to_outerConnected",
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
  "slug": "radialstep-to-outerconnected--605b4596e12aecb27fa0f683",
  "source": {
    "blob": "d145d2def7727f7d64cbc07b5388879eaae87f35",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 85,
    "line": 37,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:605b4596e12aecb27fa0f68374bf5169152bceb1d27d0d8b13794e86fd038924",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:72a05fe9-bd4d-fd18-c562-57db454e4f15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 37–85.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radialStep_to_outerConnected (k : ℕ)
    {p q : RadialSource k} (h : RadialGluingStep k p q) :
    ConeOuterConnected k (radialSourceToCone k p)
      (radialSourceToCone k q) := by
  cases h with
  | seam01 h r =>
      apply Relation.EqvGen.refl
      change coneProjection k
          (perimeterProjection k (((h, 0), 1)), r) =
        coneProjection k
          (perimeterProjection k (((h, 1), 0)), r)
      rw [perimeter_seam_01 k h]
  | seam12 h r =>
      apply Relation.EqvGen.refl
      change coneProjection k
          (perimeterProjection k (((h, 1), 1)), r) =
        coneProjection k
          (perimeterProjection k (((h, 2), 0)), r)
      rw [perimeter_seam_12 k h]
  | seam23 h r =>
      apply Relation.EqvGen.refl
      change coneProjection k
          (perimeterProjection k (((h, 2), 1)), r) =
        coneProjection k
          (perimeterProjection k (((h, 3), 0)), r)
      rw [perimeter_seam_23 k h]
  | seamNext h r =>
      apply Relation.EqvGen.refl
      change coneProjection k
          (perimeterProjection k (((h, 3), 1)), r) =
        coneProjection k
          (perimeterProjection k (((nextHandle k h, 0), 0)), r)
      rw [perimeter_seam_next k h]
  | apex p =>
      apply Relation.EqvGen.refl
      change coneProjection k (perimeterProjection k p, 0) =
        coneProjection k
          (perimeterProjection k
            (originalCornerPoint k (firstHandle k, 0)), 0)
      exact cone_zero_eq_apex k (perimeterProjection k p)
  | outerA h t =>
      exact Relation.EqvGen.rel _ _
        (ConeOuterPairStep.pairA h t)
  | outerB h t =>
      exact Relation.EqvGen.rel _ _
        (ConeOuterPairStep.pairB h t)

/-- The full radial source equivalence closure maps into the
outer-pairing equivalence closure, with no extra source generator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonConeKernel.lean#L37).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d145d2def7727f7d64cbc07b5388879eaae87f35` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
