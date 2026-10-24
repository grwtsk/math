# mem_parityShiftPairSet_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:19f8bd4d-08e5-fa29-e98b-7e53c16e7ef8",
  "kind": "theorem",
  "lexical_name": "mem_parityShiftPairSet_iff",
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
  "slug": "mem-parityshiftpairset-iff--ce4aa87c1c03bea51fcad0ef",
  "source": {
    "blob": "09313398bceac03b13fc67b9def98561da23ea41",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 140,
    "path": "GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce4aa87c1c03bea51fcad0ef815045ba9a2251e0a4fbeb2679fed003a258ccb5",
  "verification": {
    "reference": "docs/verification/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:19f8bd4d-08e5-fa29-e98b-7e53c16e7ef8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 140–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mem_parityShiftPairSet_iff
    {b r h : ℕ} (hr : r < 2) (hh : 0 < h)
    (uv : ℕ × ℕ) :
    uv ∈ parityShiftPairSet b r h ↔
      ∃ u ∈ parityShiftBaseSet b r h,
        uv = (u, u + 2 * h) := by
  constructor
  · intro huv
    rcases Finset.mem_filter.mp huv with ⟨huvBase, hshift⟩
    refine ⟨uv.1, ?_, ?_⟩
    · unfold parityShiftBaseSet
      apply Finset.mem_filter.mpr
      constructor
      · exact (Finset.mem_product.mp
          (Finset.mem_filter.mp huvBase).1).1
      · have hpair :=
          parityPair_second_eq_first_add_twiceShift hr huvBase
        rcases Finset.mem_product.mp
          (Finset.mem_filter.mp huvBase).1 with ⟨_hu, hv⟩
        have hvI := (Finset.mem_filter.mp hv).1
        rw [hshift] at hpair
        omega
    · apply Prod.ext
      · rfl
      · have hpair :=
          parityPair_second_eq_first_add_twiceShift hr huvBase
        rw [hshift] at hpair
        exact hpair
  · rintro ⟨u, hu, rfl⟩
    unfold parityShiftPairSet
    apply Finset.mem_filter.mpr
    constructor
    · unfold endpointParityStrictPairSet
      apply Finset.mem_filter.mpr
      constructor
      · apply Finset.mem_product.mpr
        constructor
        · exact (Finset.mem_filter.mp hu).1
        · unfold endpointParitySet
          apply Finset.mem_filter.mpr
          have huParity :=
            (Finset.mem_filter.mp (Finset.mem_filter.mp hu).1).2
          have huI :=
            (Finset.mem_filter.mp (Finset.mem_filter.mp hu).1).1
          constructor
          · apply Finset.mem_Icc.mpr
            constructor
            · omega
            · exact (Finset.mem_filter.mp hu).2
          · omega
      · omega
    · unfold parityPairShift
      omega

/-- Pair-coordinate version of one fixed-shift residue slice. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/Moebius/SignedResidueGrowingShiftChowla.lean#L140).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `09313398bceac03b13fc67b9def98561da23ea41` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
