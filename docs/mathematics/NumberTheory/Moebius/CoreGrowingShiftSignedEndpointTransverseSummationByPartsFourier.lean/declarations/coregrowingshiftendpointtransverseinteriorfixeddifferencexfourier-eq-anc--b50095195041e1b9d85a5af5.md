# coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier_eq_anchor_add_tailRaw

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:727f2257-d882-ea4f-53ca-185dae31620e",
  "kind": "theorem",
  "lexical_name": "coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier_eq_anchor_add_tailRaw",
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
  "slug": "coregrowingshiftendpointtransverseinteriorfixeddifferencexfourier-eq-anc--b50095195041e1b9d85a5af5",
  "source": {
    "blob": "a89c5fd2b49b2b114202b08aa1062daff31b5944",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 382,
    "line": 353,
    "path": "GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b50095195041e1b9d85a5af5a9f53254a366ab66687a4481c2140f1d5cead056",
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

Occurrence: `result:727f2257-d882-ea4f-53ca-185dae31620e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 353–382.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier_eq_anchor_add_tailRaw
    (j : ℕ)
    (h u : CoreGrowingShiftEndpointDoubledFourierIndex j) :
    coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier j h u =
      coreGrowingShiftEndpointTransverseInteriorAnchorXFourier j h u +
        coreGrowingShiftEndpointTransverseInteriorTailRawXFourier j h u := by
  rw [coreGrowingShiftEndpointTransverseInteriorFixedDifferenceXFourier_eq_interval]
  by_cases hh : 1 ≤ h.val
  · rw [if_pos hh]
    rw [coreGrowingShiftEndpointTransverseInteriorPrefixSet_eq_anchor_union_tail,
      Finset.sum_union
        (coreGrowingShiftEndpointTransverseInteriorAnchor_disjoint_tail j h.val)]
    unfold coreGrowingShiftEndpointTransverseInteriorAnchorXFourier
      coreGrowingShiftEndpointTransverseInteriorTailRawXFourier
    rw [if_pos hh, if_pos hh]
    congr 1
    · apply Finset.sum_congr rfl
      intro n hn
      rw [coreGrowingShiftEndpointIntervalDenominator_eq_anchor]
      · rfl
      · simpa [coreGrowingShiftEndpointTransverseInteriorAnchorPrefixSet] using hn
    · apply Finset.sum_congr rfl
      intro n hn
      rw [coreGrowingShiftEndpointIntervalDenominator_eq_tail]
      · rfl
      · simpa [coreGrowingShiftEndpointTransverseInteriorTailPrefixSet] using hn
  · simp [coreGrowingShiftEndpointTransverseInteriorAnchorXFourier,
      coreGrowingShiftEndpointTransverseInteriorTailRawXFourier, hh]

/-- Exact summation-by-parts formula for the fixed-difference affine tail. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/CoreGrowingShiftSignedEndpointTransverseSummationByPartsFourier.lean#L353).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a89c5fd2b49b2b114202b08aa1062daff31b5944` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
