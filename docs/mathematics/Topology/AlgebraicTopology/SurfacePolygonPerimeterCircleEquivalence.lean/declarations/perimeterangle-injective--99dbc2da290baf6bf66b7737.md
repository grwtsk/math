# perimeterAngle_injective

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:1cf39ed6-3284-fd94-24d6-7b12c640c981",
  "kind": "theorem",
  "lexical_name": "perimeterAngle_injective",
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
  "slug": "perimeterangle-injective--99dbc2da290baf6bf66b7737",
  "source": {
    "blob": "ee60ba8c63d11b10eb7f452c58ff88e4e62f3aac",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 441,
    "line": 383,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:99dbc2da290baf6bf66b77374d29536e85268de41ad61fdd46f8f887dcfb1e18",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1cf39ed6-3284-fd94-24d6-7b12c640c981`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–441.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perimeterAngle_injective (k : ℕ) :
    Function.Injective (perimeterAngle k) := by
  intro x y
  refine Quotient.inductionOn x ?_
  intro p
  refine Quotient.inductionOn y ?_
  intro q hxy
  change perimeterAngle k (perimeterProjection k p) =
    perimeterAngle k (perimeterProjection k q) at hxy
  have hsource :
      sourceAngularAddress k p = sourceAngularAddress k q := by
    simpa only [perimeterAngle_projection] using hxy
  let p' := canonicalBoundaryPoint k p
  let q' := canonicalBoundaryPoint k q
  have hcircle :
      sourceAngularAddress k p' = sourceAngularAddress k q' := by
    calc
      sourceAngularAddress k p' =
          sourceAngularAddress k p := by
            simpa [p'] using sourceAngularAddress_canonical k p
      _ = sourceAngularAddress k q := hsource
      _ = sourceAngularAddress k q' := by
            simpa [q'] using
              (sourceAngularAddress_canonical k q).symm
  let : Fact (0 < angularPeriod k) := ⟨angularPeriod_pos k⟩
  have hpIco :
      sourceRealAngularAddress k p' ∈
        Set.Ico (0 : ℝ) (0 + angularPeriod k) := by
    simpa [p', zero_add] using
      canonicalRealAngularAddress_mem_Ico k p
  have hqIco :
      sourceRealAngularAddress k q' ∈
        Set.Ico (0 : ℝ) (0 + angularPeriod k) := by
    simpa [q', zero_add] using
      canonicalRealAngularAddress_mem_Ico k q
  have hreal :
      sourceRealAngularAddress k p' =
        sourceRealAngularAddress k q' := by
    apply (AddCircle.coe_eq_coe_iff_of_mem_Ico hpIco hqIco).mp
    simpa only [sourceAngularAddress_eq_coe_real] using hcircle
  have hp_lt : (p'.2 : ℝ) < 1 := by
    simpa [p'] using canonicalBoundaryPoint_parameter_lt_one k p
  have hq_lt : (q'.2 : ℝ) < 1 := by
    simpa [q'] using canonicalBoundaryPoint_parameter_lt_one k q
  have hpq : p' = q' :=
    boundaryPoint_eq_of_realAngularAddress_eq k hp_lt hq_lt hreal
  change perimeterProjection k p = perimeterProjection k q
  calc
    perimeterProjection k p =
        perimeterProjection k p' := by
          simpa [p'] using
            (canonicalBoundaryPoint_projection k p).symm
    _ = perimeterProjection k q' :=
      congrArg (perimeterProjection k) hpq
    _ = perimeterProjection k q := by
      simpa [q'] using canonicalBoundaryPoint_projection k q

/-- Global surjectivity: choose the imported `[0,N)` representative
of a circle point, then split it by floor and fractional part. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPerimeterCircleEquivalence.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ee60ba8c63d11b10eb7f452c58ff88e4e62f3aac` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
