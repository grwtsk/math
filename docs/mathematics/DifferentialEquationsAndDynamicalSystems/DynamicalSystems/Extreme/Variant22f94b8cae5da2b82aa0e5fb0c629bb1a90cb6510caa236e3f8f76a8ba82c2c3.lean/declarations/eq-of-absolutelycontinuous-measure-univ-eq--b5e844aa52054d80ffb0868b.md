# eq_of_absolutelyContinuous_measure_univ_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b7b474f6-e807-e17f-c0d0-c1cba5c40121",
  "kind": "theorem",
  "lexical_name": "eq_of_absolutelyContinuous_measure_univ_eq",
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
  "slug": "eq-of-absolutelycontinuous-measure-univ-eq--b5e844aa52054d80ffb0868b",
  "source": {
    "blob": "f546eb5ecc5f195a960c9b9895f43a8f8327fd79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 92,
    "line": 85,
    "path": "GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5e844aa52054d80ffb0868bd35349c84a00abf11f7f2ecc794135ea57b7c300",
  "verification": {
    "reference": "docs/verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b7b474f6-e807-e17f-c0d0-c1cba5c40121`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 85–92.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem eq_of_absolutelyContinuous_measure_univ_eq [IsFiniteMeasure μ] [IsFiniteMeasure ν]
    (hμ : Ergodic f μ) (hfν : MeasurePreserving f ν ν) (hνμ : ν ≪ μ) (huniv : ν univ = μ univ) :
    ν = μ := by
  rcases hμ.eq_smul_of_absolutelyContinuous hfν hνμ with ⟨c, rfl⟩
  rcases eq_or_ne μ 0 with rfl | hμ₀
  · simp
  · simp_all [ENNReal.mul_eq_right]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/DifferentialEquationsAndDynamicalSystems/DynamicalSystems/Extreme/Variant22f94b8cae5da2b82aa0e5fb0c629bb1a90cb6510caa236e3f8f76a8ba82c2c3.lean#L85).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f546eb5ecc5f195a960c9b9895f43a8f8327fd79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
