# coreGrowingShiftSignedStaircaseInheritedWeight_eq_explicit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3e8d1c63-8cd5-3ae9-e7cf-4d3b92473308",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftSignedStaircaseInheritedWeight_eq_explicit",
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
  "slug": "coregrowingshiftsignedstaircaseinheritedweight-eq-explicit--f7edc00eea32885d465b6910",
  "source": {
    "blob": "46c3d81dbbb8633f664d2f8eac9d9da440666b28",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 388,
    "line": 303,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f7edc00eea32885d465b6910d7df75bcb60448f83e0ac4486df8f9dcd3a0ecec",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3e8d1c63-8cd5-3ae9-e7cf-4d3b92473308`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 303–388.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftSignedStaircaseInheritedWeight_eq_explicit
    {j N h : ℕ}
    (hN : N ∈ coreGrowingShiftSignedStaircasePrefixSet j)
    (hh : h ∈ coreGrowingShiftSignedStaircaseShiftSet j N) :
    coreGrowingShiftSignedStaircaseInheritedWeight j N h =
      coreGrowingShiftSignedStaircaseWeight j N h := by
  have hNI := hN
  simp only [coreGrowingShiftSignedStaircasePrefixSet,
    Finset.mem_Ico] at hNI
  have hhI := hh
  simp only [coreGrowingShiftSignedStaircaseShiftSet,
    Finset.mem_Ico] at hhI
  have hNpos : 0 < N := by
    have hHpos : 0 < logarithmicShiftThreshold j := by
      unfold logarithmicShiftThreshold
      omega
    omega
  have htN : N - 1 + 1 = N := by omega
  have hlower :
      harmonicShiftLower j (N - 1) =
        coreGrowingShiftSignedStaircaseLower j N := by
    rw [harmonicShiftLower_eq_signedStaircaseLower, htN]
  have hkrestore :
      coreGrowingShiftSignedStaircaseLower j N +
          (h - coreGrowingShiftSignedStaircaseLower j N) = h := by
    omega
  have hHpos : 0 < logarithmicShiftThreshold j := by
    unfold logarithmicShiftThreshold
    omega
  unfold coreGrowingShiftSignedStaircaseInheritedWeight
    coreGrowingShiftFirstDifferenceWeight
  by_cases hkH :
      h - coreGrowingShiftSignedStaircaseLower j N <
        logarithmicShiftThreshold j
  · rw [if_pos hkH]
    have hclamp :
        coreGrowingShiftSignedStaircaseClampedShift j N h =
          coreGrowingShiftSignedStaircaseLower j N +
            logarithmicShiftThreshold j - 1 := by
      unfold coreGrowingShiftSignedStaircaseClampedShift
      apply max_eq_right
      omega
    unfold coreGrowingShiftSignedStaircaseWeight
      harmonicShiftFirstDifference harmonicShiftReciprocal
    rw [hclamp, hlower]
    have hden₀ :
        N - 1 + 1 +
            (coreGrowingShiftSignedStaircaseLower j N +
              (logarithmicShiftThreshold j - 1)) =
          N +
            (coreGrowingShiftSignedStaircaseLower j N +
              logarithmicShiftThreshold j - 1) := by omega
    have hden₁ :
        N - 1 + 1 +
            (coreGrowingShiftSignedStaircaseLower j N +
              ((logarithmicShiftThreshold j - 1) + 1)) =
          N +
            (coreGrowingShiftSignedStaircaseLower j N +
              logarithmicShiftThreshold j - 1) + 1 := by omega
    rw [hden₀, hden₁]
  · rw [if_neg hkH]
    have hkge :
        logarithmicShiftThreshold j ≤
          h - coreGrowingShiftSignedStaircaseLower j N :=
      Nat.le_of_not_gt hkH
    have hclamp :
        coreGrowingShiftSignedStaircaseClampedShift j N h = h := by
      unfold coreGrowingShiftSignedStaircaseClampedShift
      apply max_eq_left
      omega
    unfold coreGrowingShiftSignedStaircaseWeight
      harmonicShiftFirstDifference harmonicShiftReciprocal
    rw [hclamp, hlower]
    have hden₀ :
        N - 1 + 1 +
            (coreGrowingShiftSignedStaircaseLower j N +
              (h - coreGrowingShiftSignedStaircaseLower j N)) =
          N + h := by omega
    have hden₁ :
        N - 1 + 1 +
            (coreGrowingShiftSignedStaircaseLower j N +
              ((h - coreGrowingShiftSignedStaircaseLower j N) + 1)) =
          N + h + 1 := by omega
    rw [hden₀, hden₁]

/-- Canonical signed cell in explicit staircase coordinates. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedStaircase.lean#L303).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46c3d81dbbb8633f664d2f8eac9d9da440666b28` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
