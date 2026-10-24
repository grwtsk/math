# coreGrowingShiftEndpointRightEndpointHarmonicPairDFT2_eq_sheared

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:18d035a1-3c77-a340-d31b-5c0500c859ea",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointRightEndpointHarmonicPairDFT2_eq_sheared",
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
  "slug": "coregrowingshiftendpointrightendpointharmonicpairdft2-eq-sheared--edcb7ecd05992f21e06a4bb1",
  "source": {
    "blob": "64f490dc18a0e344c1cf99964cc3df081447714e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 351,
    "line": 303,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:edcb7ecd05992f21e06a4bb1deb8a7fce9f51640f67601b817ce91a7eb3813b4",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:18d035a1-3c77-a340-d31b-5c0500c859ea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–351.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointRightEndpointHarmonicPairDFT2_eq_sheared
    (j : ℕ)
    (u s : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointRightEndpointHarmonicPairDFT2 j u s =
      coreGrowingShiftEndpointRightEndpointHarmonicShearedDFT2 j u s := by
  classical
  unfold coreGrowingShiftEndpointRightEndpointHarmonicPairDFT2
    coreGrowingShiftEndpointRightEndpointHarmonicShearedDFT2
    coreGrowingShiftEndpointRightEndpointYHSupport
    coreGrowingShiftEndpointRightEndpointHarmonicFiberCharacterSum
    coreGrowingShiftEndpointRightEndpointHarmonicFiberSet
  rw [Finset.sum_filter, Finset.sum_product]
  apply Finset.sum_congr rfl
  intro y hyQ
  by_cases hy :
      coreGrowingShiftEndpointRightEndpointHarmonicYLower j ≤ y ∧
        y < coreGrowingShiftEndpointRightEndpointHarmonicYUpper j
  · rw [show
      (∑ h ∈ Finset.range (coreGrowingShiftEndpointDoubledFourierModulus j),
        if hy.1 ∧ hy.2 ∧
            logarithmicShiftThreshold j + 1 ≤ h ∧
            h < y - logarithmicShiftThreshold j - 1 then
          coreGrowingShiftEndpointTransverseNatCharacter j u y *
            (((y : ℕ) : ℂ))⁻¹ *
              coreGrowingShiftEndpointTransverseNatCharacter j (s - u) h
        else 0) =
      coreGrowingShiftEndpointTransverseNatCharacter j u y *
        (((y : ℕ) : ℂ))⁻¹ *
          ∑ h ∈ Finset.Ico (logarithmicShiftThreshold j + 1)
              (y - logarithmicShiftThreshold j - 1),
            coreGrowingShiftEndpointTransverseNatCharacter j (s - u) h by
      rw [Finset.mul_sum]
      apply Finset.sum_subset
      · intro h hh
        have hh' := Finset.mem_Ico.mp hh
        exact Finset.mem_range.mpr (lt_of_lt_of_le hh'.2 (by
          unfold coreGrowingShiftEndpointRightEndpointHarmonicYUpper at hy
          unfold coreGrowingShiftEndpointDoubledFourierModulus
          omega))
      · intro h hhQ hhnot
        by_cases hh : logarithmicShiftThreshold j + 1 ≤ h ∧
            h < y - logarithmicShiftThreshold j - 1
        · exact (hhnot (Finset.mem_Ico.mpr hh)).elim
        · simp [hy, hh]]
    simp [hy]
  · simp [hy]

/-- Exact source identity connecting the parent effective-shift branch with the
literal-right-endpoint fiber model. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointRightEndpointHarmonicEstimate.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64f490dc18a0e344c1cf99964cc3df081447714e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
