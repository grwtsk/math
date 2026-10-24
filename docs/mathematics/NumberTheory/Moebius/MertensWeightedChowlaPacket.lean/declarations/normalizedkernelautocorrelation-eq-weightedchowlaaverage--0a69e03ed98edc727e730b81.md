# normalizedKernelAutocorrelation_eq_weightedChowlaAverage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cf3deca9-968b-7ec2-e519-b9c1c3e2c207",
  "kind": "theorem",
  "lexical_name": "normalizedKernelAutocorrelation_eq_weightedChowlaAverage",
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
  "slug": "normalizedkernelautocorrelation-eq-weightedchowlaaverage--0a69e03ed98edc727e730b81",
  "source": {
    "blob": "112150362f5d31be9e5b6823e8f0b3598e47decb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 29,
    "path": "GRWTSK/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0a69e03ed98edc727e730b81362b4db6ed98486bf65b22a2016f5cd5df66d85b",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cf3deca9-968b-7ec2-e519-b9c1c3e2c207`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 29–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem normalizedKernelAutocorrelation_eq_weightedChowlaAverage
    (j t : ℕ) :
    (∑ a ∈ Finset.range (t + 1),
      moebiusReal (a + 1) *
        (∑ h ∈ Finset.Ico 1 (2 ^ (j + 1)),
          normalizedSignedAbelShiftKernel j t h *
            moebiusReal (a + 1 + h))) =
      weightedMertensTwoPointChowlaAverage j t := by
  unfold weightedMertensTwoPointChowlaAverage
  simp_rw [Finset.mul_sum]
  rw [Finset.sum_comm]
  apply Finset.sum_congr rfl
  intro h _hh
  simp only [mertensTwoPointPrefix, Finset.mul_sum]
  apply Finset.sum_congr rfl
  intro a _ha
  ring

/-- Exact weighted-Chowla presentation of one signed depth slice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/MertensWeightedChowlaPacket.lean#L29).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `112150362f5d31be9e5b6823e8f0b3598e47decb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
