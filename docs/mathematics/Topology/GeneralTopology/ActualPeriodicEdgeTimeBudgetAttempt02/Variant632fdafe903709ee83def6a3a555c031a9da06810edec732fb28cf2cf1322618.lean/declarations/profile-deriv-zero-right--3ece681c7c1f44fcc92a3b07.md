# profile_deriv_zero_right

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6eee22ed-7c32-a828-b3bc-f5adc5b7de9f",
  "kind": "theorem",
  "lexical_name": "profile_deriv_zero_right",
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
  "slug": "profile-deriv-zero-right--3ece681c7c1f44fcc92a3b07",
  "source": {
    "blob": "d4088dda0c16452f2f06b1a058362279adf5667e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 98,
    "line": 87,
    "path": "GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt02/Variant632fdafe903709ee83def6a3a555c031a9da06810edec732fb28cf2cf1322618.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ece681c7c1f44fcc92a3b07d7c2c0a30e13b67ebdf4db1bbca7aaede7d66af1",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt02/Variant632fdafe903709ee83def6a3a555c031a9da06810edec732fb28cf2cf1322618.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6eee22ed-7c32-a828-b3bc-f5adc5b7de9f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–98.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem profile_deriv_zero_right {A t u : ℝ}
    (hA : 1 ≤ A) (hu : 0 < u) (hz : 2 * A ≤ t + Real.log u) :
    deriv (actualPeriodicPhysicalCellProfile A t) u = 0 := by
  rw [actualPeriodicPhysicalCellProfile_deriv (by linarith : 0 < A) hu t,
    actual_covariant_ordinary_work_kernel A (by linarith : 0 < A) t (Real.log u)]
  unfold actualTwistedTimeDensity
  rw [actualCorrelation_jet_zero_right A hA 4 _ hz,
    actualCorrelation_jet_zero_right A hA 3 _ hz,
    actualCorrelation_jet_zero_right A hA 2 _ hz,
    actualCorrelation_jet_zero_right A hA 1 _ hz]
  simp

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt02/Variant632fdafe903709ee83def6a3a555c031a9da06810edec732fb28cf2cf1322618.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ActualPeriodicEdgeTimeBudgetAttempt02/Variant632fdafe903709ee83def6a3a555c031a9da06810edec732fb28cf2cf1322618.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4088dda0c16452f2f06b1a058362279adf5667e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
