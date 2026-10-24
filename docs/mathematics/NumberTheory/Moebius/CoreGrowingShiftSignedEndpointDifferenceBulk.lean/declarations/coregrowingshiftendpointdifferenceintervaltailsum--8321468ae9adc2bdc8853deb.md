# coreGrowingShiftEndpointDifferenceIntervalTailSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ef9f2e55-4545-f12a-5488-5a98f2372781",
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
  "slug": "coregrowingshiftendpointdifferenceintervaltailsum--8321468ae9adc2bdc8853deb",
  "source": {
    "blob": "290d38c9a599b61e9e2c9c55b9a422d284cf5138",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 360,
    "line": 324,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceBulk.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8321468ae9adc2bdc8853deb3ce6f90187eeeba3cb36c49a9ebaff517bf73379",
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

Occurrence: `result:ef9f2e55-4545-f12a-5488-5a98f2372781`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 324–360.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointDifferenceIntervalTailSum
    (j h L U : ℕ) :
    (∑ N ∈ coreGrowingShiftEndpointDifferenceIntervalTailSet j h L U,
      coreGrowingShiftEndpointDifferencePrefixKernel j N h) =
      coreGrowingShiftEndpointDifferenceIntervalTailBoundary j h L U := by
  let A := coreGrowingShiftEndpointDifferenceIntervalTailLower j h L
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j h
  by_cases hAU : A ≤ U
  · unfold coreGrowingShiftEndpointDifferenceIntervalTailBoundary
    rw [if_pos hAU]
    change
      (∑ N ∈ Finset.Ico A U,
        coreGrowingShiftEndpointDifferencePrefixKernel j N h) =
        (((A + q : ℕ) : ℝ))⁻¹ - (((U + q : ℕ) : ℝ))⁻¹
    calc
      (∑ N ∈ Finset.Ico A U,
        coreGrowingShiftEndpointDifferencePrefixKernel j N h) =
          ∑ N ∈ Finset.Ico A U,
            coreGrowingShiftEndpointReciprocalDrop (N + q) := by
        apply Finset.sum_congr rfl
        intro N hN
        apply coreGrowingShiftEndpointDifferencePrefixKernel_eq_tail
        simpa [coreGrowingShiftEndpointDifferenceIntervalTailSet, A] using hN
      _ = (((A + q : ℕ) : ℝ))⁻¹ - (((U + q : ℕ) : ℝ))⁻¹ :=
        finite_reciprocalDrop_Ico q A U hAU
  · have hnotlt : ¬ A < U := by omega
    have hempty : Finset.Ico A U = ∅ :=
      Finset.Ico_eq_empty_iff.mpr hnotlt
    unfold coreGrowingShiftEndpointDifferenceIntervalTailBoundary
    rw [if_neg hAU]
    change
      (∑ N ∈ Finset.Ico A U,
        coreGrowingShiftEndpointDifferencePrefixKernel j N h) = 0
    rw [hempty]
    simp

/-- Exact closed evaluation of an arbitrary difference-prefix interval. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceBulk.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceBulk.lean#L324).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `290d38c9a599b61e9e2c9c55b9a422d284cf5138` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
