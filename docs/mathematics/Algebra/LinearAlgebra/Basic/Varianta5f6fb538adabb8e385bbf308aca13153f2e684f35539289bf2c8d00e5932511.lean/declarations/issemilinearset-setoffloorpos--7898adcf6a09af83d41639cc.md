# isSemilinearSet_setOfFloorPos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe1eea1b73c9120189bdeb4950845ebf2f496a93",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 704,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/a5/a5f6fb538adabb8e385bbf308aca13153f2e684f35539289bf2c8d00e5932511.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:59a7c178-880f-61d2-ea24-37fea0274167",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ccc78c66-559f-f5d4-eca5-2b6480377091",
  "kind": "theorem",
  "lexical_name": "isSemilinearSet_setOfFloorPos",
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
  "slug": "issemilinearset-setoffloorpos--7898adcf6a09af83d41639cc",
  "source": {
    "blob": "fe1eea1b73c9120189bdeb4950845ebf2f496a93",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 763,
    "line": 704,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Varianta5f6fb538adabb8e385bbf308aca13153f2e684f35539289bf2c8d00e5932511.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7898adcf6a09af83d41639cc39c5e99110d390ce27b7afa55bc52b0b9229500f",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Varianta5f6fb538adabb8e385bbf308aca13153f2e684f35539289bf2c8d00e5932511.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ccc78c66-559f-f5d4-eca5-2b6480377091`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 704–763.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem isSemilinearSet_setOfFloorPos : IsSemilinearSet hs.setOfFloorPos := by
  classical
  convert_to IsSemilinearSet (⋃ i ∈ { i : hs.basisSet | i.1 ∉ hs.periods },
    { x | ∃ y ∈ closure {i.1}, ∃ z ∈ closure (hs.basisSet \ {i.1}),
      ∃ z' ∈ closure (hs.basisSet \ {i.1}), x + z' = hs.base + i.1 + y + z }) using 1
  · ext x
    simp only [setOfFloorPos, mem_iUnion, mem_ofPred_eq, exists_prop]
    constructor
    · intro ⟨hx, i, hi, hi'⟩
      refine ⟨i, hi, ((hs.floor x i).toNat - 1) • i.1, ?_,
          ∑ j ∈ Finset.univ.erase i, (hs.floor x j).toNat • j.1, ?_,
          ∑ j ∈ Finset.univ.erase i, (- hs.floor x j).toNat • j.1, ?_, ?_⟩
      · exact nsmul_mem (mem_closure_of_mem (mem_singleton i.1)) _
      · refine sum_mem fun j hj => nsmul_mem (mem_closure_of_mem ?_) _
        simpa [Subtype.val_inj] using hj
      · refine sum_mem fun j hj => nsmul_mem (mem_closure_of_mem ?_) _
        simpa [Subtype.val_inj] using hj
      · rw [add_assoc hs.base, ← succ_nsmul',
          tsub_add_cancel_of_le ((Int.le_toNat hi'.le).2 (Int.add_one_le_of_lt hi')),
          add_assoc hs.base,
          Finset.add_sum_erase _ (fun j => (hs.floor x j).toNat • j.1) (Finset.mem_univ i),
          ← add_zero (Finset.sum (Finset.univ.erase i) _),
          ← zero_nsmul i.1, ← Int.toNat_eq_zero.2 (neg_neg_iff_pos.2 hi').le,
          Finset.sum_erase_add _ _ (Finset.mem_univ i), ← hx]
        exact hs.add_floor_neg_toNat_sum_eq x
    · intro ⟨i, hi, y, hy, z, hz, z', hz', heq⟩
      refine ⟨?_, i, hi, ?_⟩
      · apply congr_arg hs.fract at heq
        rwa [hs.fract_add_of_mem_closure (closure_mono sdiff_subset hz'),
          hs.fract_add_of_mem_closure (closure_mono sdiff_subset hz),
          hs.fract_add_of_mem_closure (closure_mono (singleton_subset_iff.2 i.2) hy),
          hs.fract_add_of_mem_closure (mem_closure_of_mem i.2), hs.fract_base] at heq
      · rw [mem_closure_singleton] at hy
        rcases hy with ⟨n, rfl⟩
        apply congr_arg (hs.floor · i) at heq
        rw [hs.floor_add_of_mem_closure sdiff_subset (notMem_sdiff_of_mem (mem_singleton i.1)) hz,
          hs.floor_add_of_mem_closure sdiff_subset (notMem_sdiff_of_mem (mem_singleton i.1)) hz',
          add_assoc hs.base, ← succ_nsmul', hs.floor_add_nsmul_self, hs.floor_base, zero_add] at heq
        simp [heq]
  · refine .biUnion (toFinite _) fun i hi => .proj' ?_
    rw [ofPred_and]
    apply Nat.isSemilinearSet_inter <| Nat.isSemilinearSet_preimage
      (.closure_of_finite (finite_singleton _)) (LinearMap.funLeft ℕ ℕ Sum.inr)
    apply IsSemilinearSet.proj'
    rw [ofPred_and]
    apply Nat.isSemilinearSet_inter <| Nat.isSemilinearSet_preimage
      (.closure_of_finite hs.finite_basisSet.sdiff) (LinearMap.funLeft ℕ ℕ Sum.inr)
    apply IsSemilinearSet.proj'
    rw [ofPred_and]
    apply Nat.isSemilinearSet_inter <| Nat.isSemilinearSet_preimage
      (.closure_of_finite hs.finite_basisSet.sdiff) (LinearMap.funLeft ℕ ℕ Sum.inr)
    have := Fintype.ofFinite ι
    convert!
      Nat.isSemilinearSet_setOfPred_mulVec_eq (κ := ((ι ⊕ ι) ⊕ ι) ⊕ ι) 0 (hs.base + i.1)
        (Matrix.fromCols (Matrix.fromCols (Matrix.fromCols 1 0) 0) 1)
        (Matrix.fromCols (Matrix.fromCols (Matrix.fromCols 0 1) 1) 0) using 4
      <;> simp [add_assoc, fromCols_mulVec]

end IsProperLinearSet

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Varianta5f6fb538adabb8e385bbf308aca13153f2e684f35539289bf2c8d00e5932511.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Varianta5f6fb538adabb8e385bbf308aca13153f2e684f35539289bf2c8d00e5932511.lean#L704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe1eea1b73c9120189bdeb4950845ebf2f496a93` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
