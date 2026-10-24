# coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier_eq_capped_add_rightEndpoint

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:efa8602b-5dcc-69e4-e6a4-7d7eb54f30bc",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier_eq_capped_add_rightEndpoint",
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
  "slug": "coregrowingshiftendpointtransverseinteriortailharmonicxfourier-eq-capped--6311de09474d12936e29e5c8",
  "source": {
    "blob": "28caa935325254ab091fb86c332abd052be70fbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 199,
    "line": 152,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6311de09474d12936e29e5c8f0b89ddf925b72a517d2cecc39330034949a1bbc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:efa8602b-5dcc-69e4-e6a4-7d7eb54f30bc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 152–199.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier_eq_capped_add_rightEndpoint
    (j : ℕ)
    (h u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier j h u =
      coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier
          j h u +
        coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier
          j h u := by
  let A := coreGrowingShiftEndpointTransverseInteriorTailLower j h.val
  let B := coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h.val
  let H := logarithmicShiftThreshold j
  by_cases hh1 : 1 ≤ h.val
  · by_cases hAB : A < B
    · by_cases hhH : h.val ≤ H
      · have hq :
          coreGrowingShiftEndpointAggregateEffectiveShift j h.val = H := by
          exact
            coreGrowingShiftEndpointAggregateEffectiveShift_eq_threshold_of_le
              hhH
        simp [coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier,
          coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier,
          coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier,
          A, B, H, hh1, hAB, hhH, hq]
      · have hHh : H < h.val := Nat.lt_of_not_ge hhH
        have hq :
            coreGrowingShiftEndpointAggregateEffectiveShift j h.val = h.val := by
          exact
            coreGrowingShiftEndpointAggregateEffectiveShift_eq_difference_of_threshold_lt
              hHh
        simp [coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier,
          coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier,
          coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier,
          A, B, H, hh1, hAB, hhH, hHh, hq]
    · simp [coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier,
        coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier,
        coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier,
        A, B, H, hh1, hAB]
  · have hh0 : h.val = 0 := by omega
    have hHpos : 0 < H := by
      unfold H logarithmicShiftThreshold
      omega
    simp [coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier,
      coreGrowingShiftEndpointTransverseInteriorCappedShiftHarmonicXFourier,
      coreGrowingShiftEndpointTransverseInteriorRightEndpointHarmonicXFourier,
      A, B, H, hh1, hh0, hHpos]

/-- Longitudinal aggregation of the finitely supported capped-shift harmonic
correction. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseEffectiveShiftSplitFourier.lean#L152).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `28caa935325254ab091fb86c332abd052be70fbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
