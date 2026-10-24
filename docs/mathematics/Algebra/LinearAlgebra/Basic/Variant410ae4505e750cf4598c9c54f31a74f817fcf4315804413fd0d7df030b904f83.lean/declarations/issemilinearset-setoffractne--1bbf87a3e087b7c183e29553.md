# isSemilinearSet_setOfFractNe

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4aad78f6-de9a-0b9a-4a34-6d08b6838dbd",
  "kind": "theorem",
  "lexical_name": "isSemilinearSet_setOfFractNe",
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
  "slug": "issemilinearset-setoffractne--1bbf87a3e087b7c183e29553",
  "source": {
    "blob": "e95208e3ec8ffcc28574b45cda7d44c2cc312c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 645,
    "line": 614,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1bbf87a3e087b7c183e29553e43e64e9d8137fc437d529e93cae42ef1db0e75e",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4aad78f6-de9a-0b9a-4a34-6d08b6838dbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 614–645.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem isSemilinearSet_setOfFractNe : IsSemilinearSet hs.setOfFractNe := by
  convert_to IsSemilinearSet (⋃ u ∈ hs.fundamentalDomain \ {hs.base}, { x |
    ∃ y ∈ closure hs.basisSet, ∃ y' ∈ closure hs.basisSet, x + y' = u + y }) using 1
  · ext x
    simp only [setOfFractNe, mem_iUnion, mem_ofPred_eq, exists_prop]
    constructor
    · intro hx
      refine ⟨hs.fract x, ⟨hs.fract_mem_fundamentalDomain x, hx⟩, ∑ i, (hs.floor x i).toNat • i.1,
        ?_, ∑ i, (-hs.floor x i).toNat • i.1, ?_, ?_⟩
      · exact sum_mem fun i _ => nsmul_mem (mem_closure_of_mem i.2) _
      · exact sum_mem fun i _ => nsmul_mem (mem_closure_of_mem i.2) _
      · exact hs.add_floor_neg_toNat_sum_eq x
    · rintro ⟨u, ⟨hu, hu'⟩, y, hy, y', hy', heq⟩
      apply congr_arg hs.fract at heq
      rw [hs.fract_add_of_mem_closure hy', hs.fract_add_of_mem_closure hy,
        hs.fract_eq_self_of_mem_fundamentalDomain hu] at heq
      rwa [heq]
  · refine .biUnion hs.finite_fundamentalDomain.sdiff fun i hi => .proj' ?_
    rw [ofPred_and]
    apply Nat.isSemilinearSet_inter <| Nat.isSemilinearSet_preimage
      (.closure_of_finite hs.finite_basisSet) (LinearMap.funLeft ℕ ℕ Sum.inr)
    apply IsSemilinearSet.proj'
    rw [ofPred_and]
    apply Nat.isSemilinearSet_inter <| Nat.isSemilinearSet_preimage
      (.closure_of_finite hs.finite_basisSet) (LinearMap.funLeft ℕ ℕ Sum.inr)
    classical
    have := Fintype.ofFinite ι
    convert!
      Nat.isSemilinearSet_setOfPred_mulVec_eq (κ := (ι ⊕ ι) ⊕ ι) 0 i
        (Matrix.fromCols (Matrix.fromCols 1 0) 1) (Matrix.fromCols (Matrix.fromCols 0 1) 0) using
      4 <;> simp [fromCols_mulVec]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean#L614).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e95208e3ec8ffcc28574b45cda7d44c2cc312c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
