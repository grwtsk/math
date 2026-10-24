# coreGrowingShiftEndpointDifferenceIntervalTailSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f64ef890-6cd1-500d-7810-3b6dc5bd55d6",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointDifferenceIntervalTailSum",
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
  "slug": "coregrowingshiftendpointdifferenceintervaltailsum--93d76af570242f2f152100ad",
  "source": {
    "blob": "9a2d6f38f580ce97dd70fe012f8edbfa818654ed",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 234,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:93d76af570242f2f152100ad7ae7ec85581ed577677119e0cbca50de2957b5dd",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f64ef890-6cd1-500d-7810-3b6dc5bd55d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointDifferenceIntervalTailSum
    (j h A B : ℕ) :
    (∑ N ∈ coreGrowingShiftEndpointDifferenceIntervalTailSet j h A B,
      coreGrowingShiftSignedStaircaseWeight j N h) =
      coreGrowingShiftEndpointDifferenceIntervalTailBoundary j h A B := by
  let L := coreGrowingShiftEndpointDifferenceIntervalTailLower j h A
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j h
  by_cases hLB : L ≤ B
  · unfold coreGrowingShiftEndpointDifferenceIntervalTailBoundary
    simp only [L, q]
    rw [if_pos hLB]
    change
      (∑ N ∈ Finset.Ico L B,
        coreGrowingShiftSignedStaircaseWeight j N h) =
        (((L + q : ℕ) : ℝ))⁻¹ - (((B + q : ℕ) : ℝ))⁻¹
    calc
      (∑ N ∈ Finset.Ico L B,
        coreGrowingShiftSignedStaircaseWeight j N h) =
          ∑ N ∈ Finset.Ico L B,
            coreGrowingShiftEndpointReciprocalDrop (N + q) := by
        apply Finset.sum_congr rfl
        intro N hN
        apply coreGrowingShiftSignedStaircaseWeight_eq_intervalTailDrop
        simpa [coreGrowingShiftEndpointDifferenceIntervalTailSet, L] using hN
      _ = (((L + q : ℕ) : ℝ))⁻¹ - (((B + q : ℕ) : ℝ))⁻¹ :=
        finite_reciprocalDrop_Ico q L B hLB
  · have hnotlt : ¬ L < B := by omega
    have hempty : Finset.Ico L B = ∅ :=
      Finset.Ico_eq_empty_iff.mpr hnotlt
    unfold coreGrowingShiftEndpointDifferenceIntervalTailBoundary
    simp only [L, q]
    rw [if_neg hLB]
    change
      (∑ N ∈ Finset.Ico L B,
        coreGrowingShiftSignedStaircaseWeight j N h) = 0
    rw [hempty]
    simp

/-- Exact closed evaluation of an arbitrary difference-prefix interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointToeplitzEdgeFourier.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a2d6f38f580ce97dd70fe012f8edbfa818654ed` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
