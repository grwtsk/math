# perimeterConePolar_not_factor_through_filling

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:40cae60c-50e3-3946-57ed-febaeeaab2b1",
  "kind": "theorem",
  "lexical_name": "perimeterConePolar_not_factor_through_filling",
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
  "slug": "perimeterconepolar-not-factor-through-filling--d51a82e5371e5b498d301a97",
  "source": {
    "blob": "d24ee16c369c4a214605ded46fc7f2bb2107a9e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 151,
    "line": 128,
    "path": "GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d51a82e5371e5b498d301a974fb00c9f2ea1d0fec4b60137f6862c450fc8f877",
  "verification": {
    "reference": "docs/verification/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:40cae60c-50e3-3946-57ed-febaeeaab2b1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 128–151.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem perimeterConePolar_not_factor_through_filling (k : ℕ) :
    ¬ ∃ f : FilledPolygonQuotient k → ClosedComplexUnitDisk,
        f ∘ coneToFilled k =
          (perimeterConeHomeomorphClosedDisk k :
            PerimeterCone k → ClosedComplexUnitDisk) := by
  rintro ⟨f, hf⟩
  apply coneToFilled_not_injective k
  intro x y hxy
  apply (perimeterConeHomeomorphClosedDisk k).injective
  calc
    perimeterConeHomeomorphClosedDisk k x =
        f (coneToFilled k x) := (congrFun hf x).symm
    _ = f (coneToFilled k y) := congrArg f hxy
    _ = perimeterConeHomeomorphClosedDisk k y := congrFun hf y

/-
Strictly open and independent:
* exact-head elaboration, generated declaration/axiom audit;
* full coneToFilled quotient fibers and disk attaching pushout;
* actual CW manifold and cellular/singular comparison;
* hyperbolic/geodesic/trace-formula and arithmetic applications.
-/

end GRWTSK.Topology.AlgebraicTopology.SurfacePolygonPolarDiskHomeomorphism
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/AlgebraicTopology/SurfacePolygonPolarDiskHomeomorphism.lean#L128).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d24ee16c369c4a214605ded46fc7f2bb2107a9e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
