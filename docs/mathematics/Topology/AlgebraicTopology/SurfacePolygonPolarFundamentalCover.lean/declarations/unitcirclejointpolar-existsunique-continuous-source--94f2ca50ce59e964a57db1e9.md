# unitCircleJointPolar_existsUnique_continuous_source

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:67bb2ec9-bca9-c0ea-f20b-4d5f40102979",
  "kind": "theorem",
  "lexical_name": "unitCircleJointPolar_existsUnique_continuous_source",
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
  "slug": "unitcirclejointpolar-existsunique-continuous-source--94f2ca50ce59e964a57db1e9",
  "source": {
    "blob": "7dbda112ae4755e9d0715348e7497221a42fd225",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 83,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarFundamentalCover.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:94f2ca50ce59e964a57db1e920d78d163c806195a5aa16e879c88baa90164620",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPolarFundamentalCover.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:67bb2ec9-bca9-c0ea-f20b-4d5f40102979`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem unitCircleJointPolar_existsUnique_continuous_source :
    ∃! F : UnitAddCircle × unitInterval → ClosedComplexUnitDisk,
      Continuous F ∧
        F ∘ polarProductProjection = realPolarProduct := by
  refine ⟨unitCircleJointPolar, ⟨unitCircleJointPolar_continuous, ?_⟩, ?_⟩
  · funext p
    exact unitCircleJointPolar_source p
  · intro F hF
    funext q
    obtain ⟨p, hp⟩ := polarProductProjection_surjective q
    rw [← hp]
    exact (congrFun hF.2 p).trans (unitCircleJointPolar_source p).symm

/-
Next: run pinned Lean elaboration and trust-zero audits on the
AddCircle closed-interval cover and both joint-continuity proof routes,
then replay cone descent and polar fibers. The existing source-level
cone-to-disk homeomorphism is not accepted without those audits.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarFundamentalCover
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPolarFundamentalCover.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarFundamentalCover.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7dbda112ae4755e9d0715348e7497221a42fd225` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
