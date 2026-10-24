# unitCircleJointPolar_continuous_of_compact_quotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d444bea-ae35-9c37-e33e-36c5f378ba1c",
  "kind": "theorem",
  "lexical_name": "unitCircleJointPolar_continuous_of_compact_quotient",
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
  "slug": "unitcirclejointpolar-continuous-of-compact-quotient--1b9b833e4e2220183b6cdd90",
  "source": {
    "blob": "21611e29285659ae772f9fc2d6eedf49ce59034b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 65,
    "line": 46,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarCompactDescent.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1b9b833e4e2220183b6cdd901ab3fff34f9cf1073b4236c6736bb5b319f8d1b9",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPolarCompactDescent.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d444bea-ae35-9c37-e33e-36c5f378ba1c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–65.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitCircleJointPolar_continuous_of_compact_quotient
    (hq : IsQuotientMap compactPolarProjection) :
    Continuous unitCircleJointPolar := by
  apply hq.continuous_iff.mpr
  have hsource :
      Continuous (fun p : PolarCompactSource =>
        realPolarProduct ((p.1 : ℝ), p.2)) := by
    exact realPolarProduct_continuous.comp
      ((continuous_subtype_val.comp continuous_fst).prodMk
        continuous_snd)
  have heq : unitCircleJointPolar ∘ compactPolarProjection =
      (fun p : PolarCompactSource => realPolarProduct ((p.1 : ℝ), p.2)) := by
    funext p
    exact compactPolar_joint_source p
  rw [heq]
  exact hsource

/-- The compact-to-Hausdorff quotient criterion is sufficient to
discharge joint continuity, with the exact fundamental interval
coverage assumption still exposed. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPolarCompactDescent.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarCompactDescent.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `21611e29285659ae772f9fc2d6eedf49ce59034b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
