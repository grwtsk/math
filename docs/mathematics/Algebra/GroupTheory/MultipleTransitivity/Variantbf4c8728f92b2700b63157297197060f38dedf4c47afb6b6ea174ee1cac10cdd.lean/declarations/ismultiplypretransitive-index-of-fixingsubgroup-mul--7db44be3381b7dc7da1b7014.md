# IsMultiplyPretransitive.index_of_fixingSubgroup_mul

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f97a897abd8566b57100c83b2eb417120a055962",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 438,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:992ac246-f541-9e9b-0b4b-bf2b5169ae0a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b9d010cd-f1da-f335-8378-d0dd4e2c7795",
  "kind": "theorem",
  "lexical_name": "IsMultiplyPretransitive.index_of_fixingSubgroup_mul",
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
  "slug": "ismultiplypretransitive-index-of-fixingsubgroup-mul--7db44be3381b7dc7da1b7014",
  "source": {
    "blob": "f97a897abd8566b57100c83b2eb417120a055962",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 438,
    "path": "GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7db44be3381b7dc7da1b7014ef13d35c0108984bc82527956fe3d84d622a4b58",
  "verification": {
    "reference": "docs/verification/Algebra/GroupTheory/MultipleTransitivity/Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b9d010cd-f1da-f335-8378-d0dd4e2c7795`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 438–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsMultiplyPretransitive.index_of_fixingSubgroup_mul
    [Finite α]
    {k : ℕ} (Hk : IsMultiplyPretransitive G α k)
    {s : Set α} (hs : s.ncard = k) :
    (fixingSubgroup G s).index * (Nat.card α - k).factorial =
      (Nat.card α).factorial := by
  induction k generalizing G α with
  | zero =>
    rw [Set.ncard_eq_zero] at hs
    simp [hs]
  | succ k hrec =>
    have hGX : IsPretransitive G α := by
      rw [← is_one_pretransitive_iff]
      apply isMultiplyPretransitive_of_le (n := k + 1)
      · rw [Nat.succ_le_succ_iff]; apply Nat.zero_le
      · rw [← hs, ← Set.ncard_univ]
        exact ncard_le_ncard s.subset_univ finite_univ
    have : s.Nonempty := by
      rw [← Set.ncard_pos, hs]
      exact succ_pos k
    obtain ⟨a, has⟩ := this
    let t : Set (SubMulAction.ofStabilizer G a) := Subtype.val ⁻¹' s
    have hat : Subtype.val '' t = s \ {a} := by
      rw [Set.image_preimage_eq_inter_range]
      simp only [Subtype.range_coe_subtype]
      rw [Set.sdiff_eq_compl_inter, Set.inter_comm]
      congr
    have hat' : s = insert a (Subtype.val '' t) := by
      rw [hat, Set.insert_sdiff_singleton, Set.insert_eq_of_mem has]
    have hfs := SubMulAction.fixingSubgroup_of_insert a t
    rw [← hat'] at hfs
    rw [hfs, Subgroup.index_map,
      MonoidHom.ker_eq_bot (stabilizer G a).subtype
        (by simp only [Subgroup.coe_subtype, Subtype.coe_injective])]
    simp only [sup_bot_eq, Subgroup.range_subtype]
    have htcard : t.ncard = k := by
      rw [← Nat.succ_inj, Nat.succ_eq_add_one, Nat.succ_eq_add_one, ← hs, hat', eq_comm]
      suffices ¬ a ∈ (Subtype.val '' t) by
        convert! Set.ncard_insert_of_notMem this ?_
        · rw [Set.ncard_image_of_injective _ Subtype.coe_injective]
        apply Set.toFinite
      intro h
      obtain ⟨⟨b, hb⟩, _, hb'⟩ := h
      apply hb
      simp only [← hb', Set.mem_singleton_iff]
    suffices (fixingSubgroup (stabilizer G a) t).index *
      (Nat.card α - 1 - k).factorial =
        (Nat.card α - 1).factorial by
      rw [add_comm k, Nat.mul_right_comm, ← Nat.sub_sub, this, mul_comm,
        index_stabilizer_of_transitive G a]
      exact Nat.mul_factorial_pred (card_ne_zero.mpr ⟨⟨a⟩, inferInstance⟩)
    convert! hrec (ofStabilizer.isMultiplyPretransitive.mp Hk) htcard
    all_goals { rw [nat_card_ofStabilizer_eq G a] }

/-- For a multiply pretransitive action,
computes the index of the `fixingSubgroup` of a subset
of adequate cardinality. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/GroupTheory/MultipleTransitivity/Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/GroupTheory/MultipleTransitivity/Variantbf4c8728f92b2700b63157297197060f38dedf4c47afb6b6ea174ee1cac10cdd.lean#L438).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f97a897abd8566b57100c83b2eb417120a055962` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
