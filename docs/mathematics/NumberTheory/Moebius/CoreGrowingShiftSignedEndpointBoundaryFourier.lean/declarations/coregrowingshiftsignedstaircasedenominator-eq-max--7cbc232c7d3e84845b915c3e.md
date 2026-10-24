# coreGrowingShiftSignedStaircaseDenominator_eq_max

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c016a1ee-a823-99b6-0440-f147f08270da",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftSignedStaircaseDenominator_eq_max",
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
  "slug": "coregrowingshiftsignedstaircasedenominator-eq-max--7cbc232c7d3e84845b915c3e",
  "source": {
    "blob": "b7340cf74940c51ce8871c52d340d8277fc03e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 44,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBoundaryFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7cbc232c7d3e84845b915c3ece253475c77dac3d42be832f10b83b7b85a2b8dc",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBoundaryFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c016a1ee-a823-99b6-0440-f147f08270da`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftSignedStaircaseDenominator_eq_max
    (j N h : ℕ) :
    N + coreGrowingShiftSignedStaircaseClampedShift j N h =
      max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
        (N + coreGrowingShiftEndpointAggregateEffectiveShift j h) := by
  have hX : 1 ≤ 2 ^ j := by positivity
  have hH : 1 ≤ logarithmicShiftThreshold j := by
    unfold logarithmicShiftThreshold
    omega
  unfold coreGrowingShiftSignedStaircaseClampedShift
    coreGrowingShiftSignedStaircaseLower
    coreGrowingShiftEndpointAggregateAnchorDenominator
    coreGrowingShiftEndpointAggregateEffectiveShift
  by_cases hNX : N < 2 ^ j
  · have hsub : 1 ≤ 2 ^ j - N := by omega
    rw [max_eq_right hsub]
    by_cases hclamp :
        h ≤ 2 ^ j - N + logarithmicShiftThreshold j - 1
    · rw [max_eq_right hclamp]
      have hleft :
          N + (2 ^ j - N + logarithmicShiftThreshold j - 1) =
            2 ^ j + logarithmicShiftThreshold j - 1 := by
        omega
      rw [hleft]
      apply max_eq_left
      by_cases hhH : h ≤ logarithmicShiftThreshold j
      · rw [max_eq_right hhH]
        omega
      · rw [max_eq_left (Nat.le_of_not_ge hhH)]
        omega
    · have hh :
          2 ^ j - N + logarithmicShiftThreshold j - 1 < h :=
        Nat.lt_of_not_ge hclamp
      rw [max_eq_left (Nat.le_of_lt hh)]
      have hhH : logarithmicShiftThreshold j ≤ h := by omega
      rw [max_eq_left hhH]
      apply max_eq_right
      omega
  · have hXN : 2 ^ j ≤ N := Nat.le_of_not_gt hNX
    have hsub0 : 2 ^ j - N = 0 := Nat.sub_eq_zero_of_le hXN
    rw [hsub0]
    simp only [max_eq_left (by omega : 1 ≥ 0), zero_add]
    have hqH :
        logarithmicShiftThreshold j ≤
          max h (logarithmicShiftThreshold j) :=
      le_max_right _ _
    apply max_eq_right
    omega

/-- The strict endpoint kernel is one reciprocal drop at the normalized
maximum denominator. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBoundaryFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBoundaryFourier.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7340cf74940c51ce8871c52d340d8277fc03e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
