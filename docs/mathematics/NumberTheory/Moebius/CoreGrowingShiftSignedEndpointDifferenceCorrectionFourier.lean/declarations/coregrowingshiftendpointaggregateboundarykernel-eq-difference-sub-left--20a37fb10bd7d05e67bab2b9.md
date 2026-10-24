# coreGrowingShiftEndpointAggregateBoundaryKernel_eq_difference_sub_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05090d3b-93b5-e815-30fe-d2644fe6ffde",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointAggregateBoundaryKernel_eq_difference_sub_left",
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
  "slug": "coregrowingshiftendpointaggregateboundarykernel-eq-difference-sub-left--20a37fb10bd7d05e67bab2b9",
  "source": {
    "blob": "62f56bfbe4f46eec878fa44bd00e298ae782a08f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 328,
    "line": 283,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20a37fb10bd7d05e67bab2b961cbae55a4398e086a94ad42c384de6bc849775f",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05090d3b-93b5-e815-30fe-d2644fe6ffde`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 283–328.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointAggregateBoundaryKernel_eq_difference_sub_left
    {j n m : ℕ}
    (hn : 1 ≤ n)
    (hnm : n < m)
    (hmY : m < 2 ^ (j + 1)) :
    coreGrowingShiftEndpointAggregateBoundaryKernel j n m =
      coreGrowingShiftEndpointCorrectionDifferenceBulkKernel j (m - n) -
        coreGrowingShiftEndpointLeftClippingCorrection j n (m - n) := by
  let h := m - n
  let A := coreGrowingShiftEndpointCorrectionDifferencePrefixLower j h
  let B := coreGrowingShiftEndpointCorrectionDifferencePrefixUpper j h
  have hpartition :
      Finset.Ico A B = Finset.Ico A (min n B) ∪ Finset.Ico (max A n) B :=
    Ico_eq_prefix_union_suffix A B n
  have hdisjoint :
      Disjoint (Finset.Ico A (min n B)) (Finset.Ico (max A n) B) :=
    Ico_prefix_disjoint_suffix A B n
  have hsum :
      (∑ N ∈ Finset.Ico (max A n) B,
        coreGrowingShiftSignedStaircaseWeight j N h) =
      (∑ N ∈ Finset.Ico A B,
        coreGrowingShiftSignedStaircaseWeight j N h) -
      (∑ N ∈ Finset.Ico A (min n B),
        coreGrowingShiftSignedStaircaseWeight j N h) := by
    rw [hpartition, Finset.sum_union hdisjoint]
    ring
  rw [← coreGrowingShiftEndpointAggregateKernel_eq_boundary hn hnm hmY,
    coreGrowingShiftEndpointAggregateKernel_eq_explicitInterval hn hnm hmY]
  unfold coreGrowingShiftEndpointExplicitPrefixSet
    coreGrowingShiftSignedEndpointKernel
  rw [coreGrowingShiftEndpointAggregatePrefixLower_eq_difference_max,
    coreGrowingShiftEndpointAggregatePrefixUpper_eq_difference]
  change
    (∑ N ∈ Finset.Ico (max A n) B,
      coreGrowingShiftSignedStaircaseWeight j N h) = _
  rw [hsum]
  unfold coreGrowingShiftEndpointCorrectionDifferenceBulkKernel
    coreGrowingShiftEndpointLeftClippingCorrection
  rw [coreGrowingShiftEndpointClosedIntervalKernel_eq_sum,
    coreGrowingShiftEndpointClosedIntervalKernel_eq_sum]

/-! ## Strict and cyclic zero-padded kernels -/

/-- Difference profile on the ambient cyclic group.  The zero difference is
set to zero; every nonzero canonical representative carries the exact closed
bulk coefficient. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceCorrectionFourier.lean#L283).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `62f56bfbe4f46eec878fa44bd00e298ae782a08f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
