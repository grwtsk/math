# pickup_window_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3ccb1fcc-a1db-8a7a-32ac-b54c44ab5850",
  "kind": "theorem",
  "lexical_name": "pickup_window_bound",
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
  "slug": "pickup-window-bound--dd9fbeaec01d2ec86b59f816",
  "source": {
    "blob": "d8bd8170dea9989588a3d99911fc7af58652d4c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 163,
    "line": 150,
    "path": "GRWTSK/NumberTheory/Moebius/WeightedIntegralEnergy.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dd9fbeaec01d2ec86b59f8161da65b0345e35c4a96a0f26adcf196d69d5f39ea",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/WeightedIntegralEnergy.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ccb1fcc-a1db-8a7a-32ac-b54c44ab5850`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–163.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem pickup_window_bound {u T : ℝ} (hu : 0 ≤ u) (hut : u ≤ T) :
    |pickup u| ≤ finiteWindowBound T := by
  rw [actual_waveform_on_inventory hu hut]
  calc
    _ ≤ ∑ n ∈ inventory T, |moebiusCoefficient n * response n u| :=
      Finset.abs_sum_le_sum_abs _ _
    _ ≤ finiteWindowBound T := by
      apply Finset.sum_le_sum
      intro n _
      rw [abs_mul]
      exact mul_le_mul_of_nonneg_left (response_window_bound n hu) (abs_nonneg _)

/-- The literal real-supremum positive envelope has a bounded underlying set.
This is compact-window finiteness, not the open polynomial arithmetic bound. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/WeightedIntegralEnergy.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/WeightedIntegralEnergy.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8bd8170dea9989588a3d99911fc7af58652d4c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
