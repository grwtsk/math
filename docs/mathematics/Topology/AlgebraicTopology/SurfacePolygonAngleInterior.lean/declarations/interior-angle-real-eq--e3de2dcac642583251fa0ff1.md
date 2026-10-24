# interior_angle_real_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cd14181f-48e1-edb2-cad6-de1604e5af5c",
  "kind": "theorem",
  "lexical_name": "interior_angle_real_eq",
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
  "slug": "interior-angle-real-eq--e3de2dcac642583251fa0ff1",
  "source": {
    "blob": "a8d7acb224f85a0510345a325c6d2657ac85df83",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 116,
    "line": 102,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e3de2dcac642583251fa0ff1677fb66c52aed2e2a28cb9ffe4702645c42086cf",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cd14181f-48e1-edb2-cad6-de1604e5af5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 102–116.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem interior_angle_real_eq (k : ℕ)
    (c d : PolygonCorner k) (t u : unitInterval)
    (ht : (t : ℝ) < 1) (hu : (u : ℝ) < 1)
    (heq : sourceAngularAddress k (c, t) =
      sourceAngularAddress k (d, u)) :
    (directedSideOrdinal k c : ℝ) + t =
      (directedSideOrdinal k d : ℝ) + u := by
  letI : Fact (0 < angularPeriod k) := ⟨angularPeriod_pos k⟩
  have hc := interior_real_angle_mem_Ico k c t ht
  have hd := interior_real_angle_mem_Ico k d u hu
  exact (AddCircle.coe_eq_coe_iff_of_mem_Ico hc hd).mp heq

/-- SOURCE INTERIOR INJECTIVITY. No two distinct original directed
side interiors are accidentally identified by the angle formula.
The sole possible equality within t<1 is the same side and same t. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonAngleInterior.lean#L102).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8d7acb224f85a0510345a325c6d2657ac85df83` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
