# volume_euclideanSpace_eq_dirac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1ca6ad7-aefb-decb-b640-2eb8a4944c50",
  "kind": "lemma",
  "lexical_name": "volume_euclideanSpace_eq_dirac",
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
  "slug": "volume-euclideanspace-eq-dirac--08ddd287768416182693fd37",
  "source": {
    "blob": "66230d46bd9b33503d173121651457cd59c87137",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 159,
    "line": 149,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08ddd287768416182693fd3761f26f8872dea194744b2acba5fc9c18f06cb7f6",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1ca6ad7-aefb-decb-b640-2eb8a4944c50`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 149–159.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma volume_euclideanSpace_eq_dirac [IsEmpty ι] :
    (volume : Measure (EuclideanSpace ℝ ι)) = Measure.dirac 0 := by
  rw [← ((EuclideanSpace.volume_preserving_measurableEquiv ι).symm).map_eq,
    volume_pi_eq_dirac 0, map_dirac (MeasurableEquiv.measurable _),
    EuclideanSpace.coe_measurableEquiv_symm, WithLp.equiv_symm_zero]

end PiLp

namespace LinearIsometryEquiv

/-- Every linear isometry on a real finite dimensional Hilbert space is measure-preserving. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/InnerProductSpace/Variant75ab4eacaf9f6324dd71c89edabdf3ad8bd6573e9d379331d7ac9fec8b39ae54.lean#L149).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `66230d46bd9b33503d173121651457cd59c87137` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
