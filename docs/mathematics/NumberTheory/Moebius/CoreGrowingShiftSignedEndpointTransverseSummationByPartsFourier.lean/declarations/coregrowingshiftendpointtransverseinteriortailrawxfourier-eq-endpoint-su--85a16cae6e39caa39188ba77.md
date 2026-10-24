# coreGrowingShiftEndpointTransverseInteriorTailRawXFourier_eq_endpoint_sub_multiplier_harmonic

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d1a5d916-1251-9501-75dc-3dbb64543d5c",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverseInteriorTailRawXFourier_eq_endpoint_sub_multiplier_harmonic",
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
  "slug": "coregrowingshiftendpointtransverseinteriortailrawxfourier-eq-endpoint-su--85a16cae6e39caa39188ba77",
  "source": {
    "blob": "a89c5fd2b49b2b114202b08aa1062daff31b5944",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 420,
    "line": 383,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:85a16cae6e39caa39188ba774b11fc29ae140b5553dc3e679fa0d2072703dd23",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d1a5d916-1251-9501-75dc-3dbb64543d5c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 383–420.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverseInteriorTailRawXFourier_eq_endpoint_sub_multiplier_harmonic
    (j : ℕ)
    (h u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseInteriorTailRawXFourier j h u =
      coreGrowingShiftEndpointTransverseInteriorTailEndpointXFourier j h u -
        coreGrowingShiftEndpointTransverseMultiplier j u *
          coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier
            j h u := by
  let A := coreGrowingShiftEndpointTransverseInteriorTailLower j h.val
  let B := coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h.val
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j h.val
  by_cases hh : 1 ≤ h.val
  · by_cases hAB : A < B
    · unfold coreGrowingShiftEndpointTransverseInteriorTailRawXFourier
        coreGrowingShiftEndpointTransverseInteriorTailEndpointXFourier
        coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier
      rw [if_pos hh, if_pos ⟨hh, hAB⟩, if_pos ⟨hh, hAB⟩]
      change
        (∑ n ∈ Finset.Ico A B,
          coreGrowingShiftEndpointTransverseNatCharacter j u n *
            (coreGrowingShiftEndpointReciprocalDrop (n + q) : ℂ)) = _
      exact
        finite_transverseCharacter_reciprocalDrop_Ico_summationByParts
          j u q A B hAB
    · have hempty : Finset.Ico A B = ∅ :=
        Finset.Ico_eq_empty_iff.mpr (by omega)
      unfold coreGrowingShiftEndpointTransverseInteriorTailRawXFourier
        coreGrowingShiftEndpointTransverseInteriorTailEndpointXFourier
        coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier
      rw [if_pos hh, if_neg (by simp [hAB]), if_neg (by simp [hAB])]
      change (∑ n ∈ Finset.Ico A B, _) = 0
      rw [hempty]
      simp
  · simp [coreGrowingShiftEndpointTransverseInteriorTailRawXFourier,
      coreGrowingShiftEndpointTransverseInteriorTailEndpointXFourier,
      coreGrowingShiftEndpointTransverseInteriorTailHarmonicXFourier, hh]

/-- Complete fixed-difference summation-by-parts decomposition. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean#L383).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89c5fd2b49b2b114202b08aa1062daff31b5944` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
