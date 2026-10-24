# isSemilinearSet_setOfFloorNeg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b28cf89b-5fca-0281-8f23-170916a82e5a",
  "kind": "theorem",
  "lexical_name": "isSemilinearSet_setOfFloorNeg",
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
  "slug": "issemilinearset-setoffloorneg--00bff0476c661458d8604145",
  "source": {
    "blob": "e95208e3ec8ffcc28574b45cda7d44c2cc312c2b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 708,
    "line": 649,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:00bff0476c661458d86041455d4e0ff383ad95fd8834532304b002c80c231428",
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

Occurrence: `result:b28cf89b-5fca-0281-8f23-170916a82e5a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 649–708.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem isSemilinearSet_setOfFloorNeg : IsSemilinearSet hs.setOfFloorNeg := by
  classical
  convert_to IsSemilinearSet (⋃ i : hs.basisSet, { x | ∃ y ∈ closure {i.1},
    ∃ z ∈ closure (hs.basisSet \ {i.1}), ∃ z' ∈ closure (hs.basisSet \ {i.1}),
      x + i.1 + y + z' = hs.base + z }) using 1
  · ext x
    simp only [setOfFloorNeg, mem_iUnion, mem_ofPred_eq]
    constructor
    · intro ⟨hx, i, hi⟩
      refine ⟨i, ((- hs.floor x i).toNat - 1) • i.1, ?_,
        ∑ j ∈ Finset.univ.erase i, (hs.floor x j).toNat • j.1, ?_,
        ∑ j ∈ Finset.univ.erase i, (- hs.floor x j).toNat • j.1, ?_, ?_⟩
      · exact nsmul_mem (mem_closure_of_mem (mem_singleton i.1)) _
      · refine sum_mem fun j hj => nsmul_mem (mem_closure_of_mem ?_) _
        simpa [Subtype.val_inj] using hj
      · refine sum_mem fun j hj => nsmul_mem (mem_closure_of_mem ?_) _
        simpa [Subtype.val_inj] using hj
      · rw [add_assoc x, ← succ_nsmul',
          tsub_add_cancel_of_le
            ((Int.le_toNat (neg_pos.2 hi).le).2 (le_neg.1 (Int.cast_le_neg_one_of_neg hi))),
          add_assoc x,
          Finset.add_sum_erase _ (fun j => (-hs.floor x j).toNat • j.1) (Finset.mem_univ i),
          ← add_zero (Finset.sum (Finset.univ.erase i) _),
          ← zero_nsmul i.1, ← Int.toNat_eq_zero.2 hi.le,
          Finset.sum_erase_add _ _ (Finset.mem_univ i), ← hx]
        exact hs.add_floor_neg_toNat_sum_eq x
    · intro ⟨i, y, hy, z, hz, z', hz', heq⟩
      refine ⟨?_, i, ?_⟩
      · apply congr_arg hs.fract at heq
        rwa [hs.fract_add_of_mem_closure (closure_mono sdiff_subset hz'),
          hs.fract_add_of_mem_closure (closure_mono (singleton_subset_iff.2 i.2) hy),
          hs.fract_add_of_mem_closure (mem_closure_of_mem i.2),
          hs.fract_add_of_mem_closure (closure_mono sdiff_subset hz), hs.fract_base] at heq
      · rw [mem_closure_singleton] at hy
        rcases hy with ⟨n, rfl⟩
        apply congr_arg (hs.floor · i) at heq
        rw [hs.floor_add_of_mem_closure sdiff_subset (notMem_sdiff_of_mem (mem_singleton i.1)) hz,
          hs.floor_add_of_mem_closure sdiff_subset (notMem_sdiff_of_mem (mem_singleton i.1)) hz',
          hs.floor_base, add_assoc x, ← succ_nsmul', hs.floor_add_nsmul_self,
          ← eq_neg_iff_add_eq_zero] at heq
        simpa [heq] using neg_one_lt_zero.trans_le (Nat.cast_nonneg _)
  · refine .iUnion fun i => .proj' ?_
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
      Nat.isSemilinearSet_setOfPred_mulVec_eq (κ := ((ι ⊕ ι) ⊕ ι) ⊕ ι) i.1 hs.base
        (Matrix.fromCols (Matrix.fromCols (Matrix.fromCols 1 1) 0) 1)
        (Matrix.fromCols (Matrix.fromCols (Matrix.fromCols 0 0) 1) 0) using 4
      <;> simp [add_comm _ i.1, add_assoc, fromCols_mulVec]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant410ae4505e750cf4598c9c54f31a74f817fcf4315804413fd0d7df030b904f83.lean#L649).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e95208e3ec8ffcc28574b45cda7d44c2cc312c2b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
