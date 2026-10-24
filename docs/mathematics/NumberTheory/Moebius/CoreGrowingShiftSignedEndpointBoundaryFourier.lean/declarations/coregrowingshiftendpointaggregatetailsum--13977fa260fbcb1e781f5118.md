# coreGrowingShiftEndpointAggregateTailSum

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:860052d7-916c-cb99-d0e0-05027635d339",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointAggregateTailSum",
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
  "slug": "coregrowingshiftendpointaggregatetailsum--13977fa260fbcb1e781f5118",
  "source": {
    "blob": "b7340cf74940c51ce8871c52d340d8277fc03e94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 320,
    "line": 282,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBoundaryFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:13977fa260fbcb1e781f51182cd058b807f61290e5aacfd4c7f83539c46f160e",
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

Occurrence: `result:860052d7-916c-cb99-d0e0-05027635d339`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 282–320.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointAggregateTailSum
    (j n m : ℕ) :
    (∑ N ∈ coreGrowingShiftEndpointAggregateTailPrefixSet j n m,
      coreGrowingShiftSignedEndpointKernel j N n m) =
      coreGrowingShiftEndpointAggregateTailBoundary j n m := by
  let L := coreGrowingShiftEndpointAggregateTailLower j n m
  let U := coreGrowingShiftEndpointAggregatePrefixUpper j n m
  let q := coreGrowingShiftEndpointAggregateEffectiveShift j (m - n)
  by_cases hLU : L ≤ U
  · unfold coreGrowingShiftEndpointAggregateTailBoundary
    rw [if_pos hLU]
    change
      (∑ N ∈ Finset.Ico L U,
        coreGrowingShiftSignedEndpointKernel j N n m) =
        (((L + q : ℕ) : ℝ))⁻¹ - (((U + q : ℕ) : ℝ))⁻¹
    calc
      (∑ N ∈ Finset.Ico L U,
        coreGrowingShiftSignedEndpointKernel j N n m) =
          ∑ N ∈ Finset.Ico L U,
            coreGrowingShiftEndpointReciprocalDrop (N + q) := by
        apply Finset.sum_congr rfl
        intro N hN
        apply coreGrowingShiftSignedEndpointKernel_eq_tailDrop
        simpa [coreGrowingShiftEndpointAggregateTailPrefixSet, L, U] using hN
      _ = (((L + q : ℕ) : ℝ))⁻¹ - (((U + q : ℕ) : ℝ))⁻¹ :=
        finite_reciprocalDrop_Ico q L U hLU
  · have hnotlt : ¬ L < U := by omega
    have hempty : Finset.Ico L U = ∅ :=
      Finset.Ico_eq_empty_iff.mpr hnotlt
    unfold coreGrowingShiftEndpointAggregateTailBoundary
    rw [if_neg hLU]
    change
      (∑ N ∈ Finset.Ico L U,
        coreGrowingShiftSignedEndpointKernel j N n m) = 0
    rw [hempty]
    simp

/-- Closed ordinary endpoint coefficient: constant anchor multiplicity plus
two reciprocal tail boundaries. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBoundaryFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointBoundaryFourier.lean#L282).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b7340cf74940c51ce8871c52d340d8277fc03e94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
