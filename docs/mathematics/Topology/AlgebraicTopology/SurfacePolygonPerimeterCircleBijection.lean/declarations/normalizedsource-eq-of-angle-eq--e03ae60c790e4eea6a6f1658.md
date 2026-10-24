# normalizedSource_eq_of_angle_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b9db196e-a532-4467-57f0-ab59ea097f30",
  "kind": "theorem",
  "lexical_name": "normalizedSource_eq_of_angle_eq",
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
  "slug": "normalizedsource-eq-of-angle-eq--e03ae60c790e4eea6a6f1658",
  "source": {
    "blob": "cea97cf3b665a0b3f3e0f5ba25887cb22ed5580c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 257,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e03ae60c790e4eea6a6f1658381c9d78ee03d819aeb4afa5343acc30ee66525b",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9db196e-a532-4467-57f0-ab59ea097f30`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedSource_eq_of_angle_eq (k : ℕ)
    (p q : BoundaryPoint k)
    (h : sourceAngularAddress k p = sourceAngularAddress k q) :
    normalizedSource k p = normalizedSource k q := by
  have hre := normalizedRealAngle_eq_of_circle_eq k p q h
  have hfloor :
      directedSideOrdinal k (normalizedSource k p).1 =
      directedSideOrdinal k (normalizedSource k q).1 := by
    calc
      directedSideOrdinal k (normalizedSource k p).1 =
          Nat.floor (realAngularAddress k (normalizedSource k p)) :=
        (normalizedRealAngle_floor k p).symm
      _ = Nat.floor (realAngularAddress k (normalizedSource k q)) := by
        rw [hre]
      _ = directedSideOrdinal k (normalizedSource k q).1 :=
        normalizedRealAngle_floor k q
  have hside : (normalizedSource k p).1 =
      (normalizedSource k q).1 :=
    directedSideOrdinal_injective k hfloor
  apply Prod.ext hside
  apply Subtype.ext
  simp only [realAngularAddress, hside] at hre
  linarith

/-- COMPLETE ANGULAR KERNEL: two ORIGINAL source points determine
the same true additive-circle angular class if and ONLY if they
are related by the actual four-seam unpaired perimeter EqvGen.

The forward direction uses normalization, half-open fundamental
domain injectivity, and uniqueness of the true finite source ordinal.
The reverse direction was already proved in PR #901. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleBijection.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cea97cf3b665a0b3f3e0f5ba25887cb22ed5580c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
