# coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_distance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:91c73205-8f85-2151-c663-a1a6a44c4ec9",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_distance",
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
  "slug": "coregrowingshiftendpointfinitecyclicmultiplier-inv-norm-le-distance--90ce7cca55ba2190f8c13ce0",
  "source": {
    "blob": "d418057b7e5175eeb3cea355ec1317bac2020fef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 125,
    "line": 113,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:90ce7cca55ba2190f8c13ce04b1e692df6c64f5f93f15b1138148a42cdc3ef94",
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

Occurrence: `result:91c73205-8f85-2151-c663-a1a6a44c4ec9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–125.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointFiniteCyclicMultiplier_inv_norm_le_distance
    {j : ℕ}
    {t : CoreGrowingShiftEndpointFiniteCyclicIndex j}
    (ht : t ≠ 0) :
    ‖(coreGrowingShiftEndpointFiniteCyclicMultiplier j t)⁻¹‖ ≤
      (coreGrowingShiftEndpointFiniteCyclicModulus j : ℝ) /
        (4 * (coreGrowingShiftEndpointFiniteCyclicDistance j t : ℝ)) := by
  simpa [coreGrowingShiftEndpointFiniteCyclicMultiplier_eq_generic,
    coreGrowingShiftEndpointFiniteCyclicDistance_eq_generic] using
    finiteCyclicMultiplier_inv_norm_le_distance
      (coreGrowingShiftEndpointFiniteCyclicModulus_pos j) ht

/-- Uniform endpoint inverse-multiplier bound beyond a circular cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftEndpointFiniteCyclicData.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d418057b7e5175eeb3cea355ec1317bac2020fef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
