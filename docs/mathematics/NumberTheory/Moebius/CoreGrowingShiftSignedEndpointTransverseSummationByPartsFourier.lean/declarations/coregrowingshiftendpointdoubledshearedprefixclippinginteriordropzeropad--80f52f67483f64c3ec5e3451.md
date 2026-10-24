# coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad_eq_interval

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea7cb11e-9be6-f671-e0dc-137301314b61",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad_eq_interval",
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
  "slug": "coregrowingshiftendpointdoubledshearedprefixclippinginteriordropzeropad--80f52f67483f64c3ec5e3451",
  "source": {
    "blob": "a89c5fd2b49b2b114202b08aa1062daff31b5944",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 100,
    "line": 58,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:80f52f67483f64c3ec5e34518936d98c34682a6fe5261ef49d2bdba6bb0d61a9",
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

Occurrence: `result:ea7cb11e-9be6-f671-e0dc-137301314b61`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 58–100.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad_eq_interval
    (j : ℕ)
    (x h : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad
        j x h =
      if 1 ≤ h.val ∧
          coreGrowingShiftEndpointDifferencePrefixLower j h.val ≤ x.val ∧
          x.val < coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h.val then
        (coreGrowingShiftEndpointReciprocalDrop
          (max (coreGrowingShiftEndpointAggregateAnchorDenominator j)
            (x.val +
              coreGrowingShiftEndpointAggregateEffectiveShift j h.val)) : ℂ)
      else 0 := by
  let Y := coreGrowingShiftEndpointFourierModulus j
  let D := coreGrowingShiftEndpointDifferencePrefixLower j h.val
  let U := coreGrowingShiftEndpointDifferencePrefixUpper j h.val
  let V := coreGrowingShiftEndpointTransverseInteriorPrefixUpper j h.val
  have hD2 : 2 ≤ D := by
    simpa [D] using
      coreGrowingShiftEndpointDifferencePrefixLower_two_le j h.val
  by_cases hsupport : 1 ≤ h.val ∧ D ≤ x.val ∧ x.val < V
  · have hx1 : 1 ≤ x.val := by omega
    have hxU : x.val < U := by
      unfold V coreGrowingShiftEndpointTransverseInteriorPrefixUpper at hsupport
      omega
    have hxY : x.val + h.val + 1 < Y := by
      unfold V coreGrowingShiftEndpointTransverseInteriorPrefixUpper at hsupport
      omega
    simp [coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad,
      Y, D, U, V, hsupport, hx1, hxU, hxY]
  · have hnot :
        ¬ (1 ≤ x.val ∧ 1 ≤ h.val ∧ x.val + h.val + 1 < Y ∧
          D ≤ x.val ∧ x.val < U) := by
      intro hs
      apply hsupport
      refine ⟨hs.2.1, hs.2.2.2.1, ?_⟩
      unfold V coreGrowingShiftEndpointTransverseInteriorPrefixUpper
      omega
    simp [coreGrowingShiftEndpointDoubledShearedPrefixClippingInteriorDropZeroPad,
      Y, D, U, V, hsupport, hnot]

/-- The fixed-difference interior interval is its exact disjoint anchor/tail
union. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean#L58).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89c5fd2b49b2b114202b08aa1062daff31b5944` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
