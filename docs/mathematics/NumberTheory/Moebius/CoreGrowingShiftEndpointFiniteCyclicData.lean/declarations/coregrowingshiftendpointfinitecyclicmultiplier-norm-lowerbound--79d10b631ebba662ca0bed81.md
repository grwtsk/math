# coreGrowingShiftEndpointFiniteCyclicMultiplier_norm_lowerBound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7cdd85f5-f92c-f1f9-8bc2-97099702a882",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointFiniteCyclicMultiplier_norm_lowerBound",
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
  "slug": "coregrowingshiftendpointfinitecyclicmultiplier-norm-lowerbound--79d10b631ebba662ca0bed81",
  "source": {
    "blob": "d418057b7e5175eeb3cea355ec1317bac2020fef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 100,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:79d10b631ebba662ca0bed8188036cca6ab38e3a7c450a4024f7ed58b701073b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7cdd85f5-f92c-f1f9-8bc2-97099702a882`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 100–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointFiniteCyclicMultiplier_norm_lowerBound
    (j : ℕ)
    (t : CoreGrowingShiftEndpointFiniteCyclicIndex j) :
    4 * (coreGrowingShiftEndpointFiniteCyclicDistance j t : ℝ) /
        (coreGrowingShiftEndpointFiniteCyclicModulus j : ℝ) ≤
      ‖coreGrowingShiftEndpointFiniteCyclicMultiplier j t‖ := by
  simpa [coreGrowingShiftEndpointFiniteCyclicMultiplier_eq_generic,
    coreGrowingShiftEndpointFiniteCyclicDistance_eq_generic,
    finiteCyclicJordanLowerScale] using
    finiteCyclicMultiplier_norm_lowerBound
      (coreGrowingShiftEndpointFiniteCyclicModulus_pos j) t

/-- Actual endpoint inverse-multiplier bound at nonzero frequency. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean#L100).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d418057b7e5175eeb3cea355ec1317bac2020fef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
