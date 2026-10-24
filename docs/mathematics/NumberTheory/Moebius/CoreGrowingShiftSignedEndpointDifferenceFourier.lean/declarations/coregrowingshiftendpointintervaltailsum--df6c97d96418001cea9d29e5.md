# coreGrowingShiftEndpointIntervalTailSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:06650ac7-11c0-b153-d0b7-0a7f600bc88d",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointIntervalTailSum",
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
  "slug": "coregrowingshiftendpointintervaltailsum--df6c97d96418001cea9d29e5",
  "source": {
    "blob": "ba1c8768fe161ccfc1706dfac226e2945333dff8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 230,
    "line": 191,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:df6c97d96418001cea9d29e57d06d6b69e03ef9811f0d32b43283617f99e5aea",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceFourier.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:06650ac7-11c0-b153-d0b7-0a7f600bc88d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 191–230.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointIntervalTailSum
    (j h L U : ℕ) :
    (∑ N ∈ coreGrowingShiftEndpointIntervalTailPrefixSet j h L U,
      coreGrowingShiftSignedStaircaseWeight j N h) =
      coreGrowingShiftEndpointIntervalTailBoundary j h L U := by
  let A := coreGrowingShiftEndpointIntervalTailLower j h L
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j h
  by_cases hAU : A ≤ U
  · unfold coreGrowingShiftEndpointIntervalTailBoundary
    rw [if_pos hAU]
    change
      (∑ N ∈ Finset.Ico A U,
        coreGrowingShiftSignedStaircaseWeight j N h) =
        (((A + q : ℕ) : ℝ))⁻¹ - (((U + q : ℕ) : ℝ))⁻¹
    calc
      (∑ N ∈ Finset.Ico A U,
        coreGrowingShiftSignedStaircaseWeight j N h) =
          ∑ N ∈ Finset.Ico A U,
            coreGrowingShiftEndpointReciprocalDrop (N + q) := by
        apply Finset.sum_congr rfl
        intro N hN
        rw [coreGrowingShiftSignedStaircaseWeight_eq_normalizedDrop,
          coreGrowingShiftEndpointIntervalDenominator_eq_tail]
        · rfl
        · simpa [coreGrowingShiftEndpointIntervalTailPrefixSet, A] using hN
      _ = (((A + q : ℕ) : ℝ))⁻¹ - (((U + q : ℕ) : ℝ))⁻¹ :=
        finite_reciprocalDrop_Ico q A U hAU
  · have hnotlt : ¬ A < U := by omega
    have hempty : Finset.Ico A U = ∅ :=
      Finset.Ico_eq_empty_iff.mpr hnotlt
    unfold coreGrowingShiftEndpointIntervalTailBoundary
    rw [if_neg hAU]
    change
      (∑ N ∈ Finset.Ico A U,
        coreGrowingShiftSignedStaircaseWeight j N h) = 0
    rw [hempty]
    simp

/-- Generic closed evaluation of the reciprocal-drop weight on every finite
prefix interval, including empty intervals. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointDifferenceFourier.lean#L191).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba1c8768fe161ccfc1706dfac226e2945333dff8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
