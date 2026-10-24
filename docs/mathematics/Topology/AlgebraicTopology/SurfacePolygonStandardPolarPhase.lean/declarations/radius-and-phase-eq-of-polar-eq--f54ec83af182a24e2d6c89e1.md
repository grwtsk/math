# radius_and_phase_eq_of_polar_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06feffaf-05f3-69b3-e5fe-28d808e8fdc4",
  "kind": "theorem",
  "lexical_name": "radius_and_phase_eq_of_polar_eq",
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
  "slug": "radius-and-phase-eq-of-polar-eq--f54ec83af182a24e2d6c89e1",
  "source": {
    "blob": "4e94737db7d50d0733ab5c7427af8b5306071a70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 64,
    "line": 43,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonStandardPolarPhase.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f54ec83af182a24e2d6c89e19b41a80cff76e32dfecf58e14affc4c025b960f8",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonStandardPolarPhase.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06feffaf-05f3-69b3-e5fe-28d808e8fdc4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 43–64.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem radius_and_phase_eq_of_polar_eq
    {θ φ r s : ℝ} (hr : 0 < r) (hs : 0 < s)
    (h : realAnglePolar θ r = realAnglePolar φ s) :
    r = s ∧
      Complex.exp ((2 * Real.pi * θ : ℝ) * Complex.I) =
        Complex.exp ((2 * Real.pi * φ : ℝ) * Complex.I) := by
  have hrs := radius_eq_of_realAnglePolar_eq
    (le_of_lt hr) (le_of_lt hs) h
  refine ⟨hrs, ?_⟩
  subst s
  exact phase_eq_of_realAnglePolar_eq hr h

/-
Remaining exact obligations:
1. phase equality iff integer angular difference, with correct 2π normalization;
2. quotient relation proof for Mathlib UnitAddCircle;
3. continuous descended polar map UnitAddCircle × unitInterval → ClosedComplexUnitDisk;
4. exact StandardCircleCone quotient fiber theorem;
5. polar surjectivity and compact-to-Hausdorff homeomorphism.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonStandardPolarPhase
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonStandardPolarPhase.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonStandardPolarPhase.lean#L43).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4e94737db7d50d0733ab5c7427af8b5306071a70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
