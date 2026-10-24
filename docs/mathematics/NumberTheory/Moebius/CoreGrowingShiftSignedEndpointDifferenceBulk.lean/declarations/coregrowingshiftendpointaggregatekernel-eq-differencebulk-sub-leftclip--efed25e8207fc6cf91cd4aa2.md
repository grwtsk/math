# coreGrowingShiftEndpointAggregateKernel_eq_differenceBulk_sub_leftClip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5c70cde4-b513-9450-a29a-12e8e8635ffb",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointAggregateKernel_eq_differenceBulk_sub_leftClip",
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
  "slug": "coregrowingshiftendpointaggregatekernel-eq-differencebulk-sub-leftclip--efed25e8207fc6cf91cd4aa2",
  "source": {
    "blob": "290d38c9a599b61e9e2c9c55b9a422d284cf5138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 179,
    "line": 139,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceBulk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:efed25e8207fc6cf91cd4aa23c1ac9e37d5190c33fbf0440dc91a67e646a4ff2",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceBulk.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5c70cde4-b513-9450-a29a-12e8e8635ffb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–179.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointAggregateKernel_eq_differenceBulk_sub_leftClip
    {j n m : ℕ}
    (hn : 1 ≤ n)
    (hnm : n < m)
    (hmY : m < 2 ^ (j + 1)) :
    coreGrowingShiftEndpointAggregateKernel j n m =
      coreGrowingShiftEndpointDifferenceBulkKernel j (m - n) -
        coreGrowingShiftEndpointDifferenceLeftClipCorrection
          j n (m - n) := by
  rw [coreGrowingShiftEndpointAggregateKernel_eq_explicitInterval hn hnm hmY,
    coreGrowingShiftEndpointExplicitPrefixSet_eq_differenceRetained]
  have hbulk :
      coreGrowingShiftEndpointDifferenceBulkKernel j (m - n) =
        coreGrowingShiftEndpointDifferenceLeftClipCorrection j n (m - n) +
          ∑ N ∈
              coreGrowingShiftEndpointDifferenceRetainedPrefixSet
                j n (m - n),
            coreGrowingShiftEndpointDifferencePrefixKernel j N (m - n) := by
    unfold coreGrowingShiftEndpointDifferenceBulkKernel
      coreGrowingShiftEndpointDifferenceLeftClipCorrection
    rw [coreGrowingShiftEndpointDifferenceBulkPrefixSet_eq_clip_union_retained,
      Finset.sum_union
        (coreGrowingShiftEndpointDifferenceLeftClip_disjoint_retained
          j n (m - n))]
  calc
    (∑ N ∈
        coreGrowingShiftEndpointDifferenceRetainedPrefixSet j n (m - n),
      coreGrowingShiftSignedEndpointKernel j N n m) =
        ∑ N ∈
            coreGrowingShiftEndpointDifferenceRetainedPrefixSet j n (m - n),
          coreGrowingShiftEndpointDifferencePrefixKernel j N (m - n) := by
      apply Finset.sum_congr rfl
      intro N _hN
      exact coreGrowingShiftSignedEndpointKernel_eq_differencePrefixKernel
        j N n m
    _ = coreGrowingShiftEndpointDifferenceBulkKernel j (m - n) -
        coreGrowingShiftEndpointDifferenceLeftClipCorrection
          j n (m - n) := by
      linarith

/-- Closed parent boundary coefficient in bulk-minus-clip form. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceBulk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceBulk.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `290d38c9a599b61e9e2c9c55b9a422d284cf5138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
