# setOf_apply_eq_of_apply_big_of_N'_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ba1e8fecf181c4423292bd14dc46e70c6161d26f",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 561,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2c0e346f-086b-f10b-fb7a-6a0d2923cb19",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1fe6872d-ce82-d810-67cd-ebf036109caa",
  "kind": "lemma",
  "lexical_name": "setOf_apply_eq_of_apply_big_of_N'_le",
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
  "slug": "setof-apply-eq-of-apply-big-of-n-le--4a45705baea60c8a626c3889",
  "source": {
    "blob": "ba1e8fecf181c4423292bd14dc46e70c6161d26f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 561,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variant8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4a45705baea60c8a626c388966fce4f69433bfcecf7dbdd8ffa95c04521ae143",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Imo2024Q3/Variant8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1fe6872d-ce82-d810-67cd-ebf036109caa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 561–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma setOf_apply_eq_of_apply_big_of_N'_le {i : ℕ} (h : Big a (a i)) (hN' : N' a N ≤ i) :
    {j | a j = a i} = {j | N < j ∧ Small a (a (j - 1)) ∧
      a i = #{t ∈ Finset.range j | a t = a (j - 1)}} := by
  have hs : {j | N < j ∧ Small a (a (j - 1)) ∧ a i = #{t ∈ Finset.range j | a t = a (j - 1)}} ⊆
      {j | a j = a i} := by
    rintro _ ⟨hNj, -, hj⟩
    exact hj ▸ hc.apply_eq_card hNj
  rcases hc.exists_card_le_of_big h with ⟨hf, hck⟩
  have hf' : {j | N < j ∧ Small a (a (j - 1)) ∧
    a i = #{t ∈ Finset.range j | a t = a (j - 1)}}.Finite := hf.subset hs
  suffices hf.toFinset = hf'.toFinset by simpa using this
  rw [← Set.Finite.toFinset_subset_toFinset (hs := hf') (ht := hf)] at hs
  refine (Finset.eq_of_subset_of_card_le hs (hck.trans ?_)).symm
  have hs : #((Finset.Icc 1 (k a)).image (fun t ↦ Nat.nth (a · = t) (a i - 1) + 1)) = k a := by
    convert Finset.card_image_of_injOn fun t ht u hu htu ↦ ?_
    · simp only [Nat.card_Icc, add_tsub_cancel_right]
    · simp only [add_left_inj] at htu
      simp only [Finset.coe_Icc, Set.mem_Icc] at ht hu
      rw [← Small, ← hc.infinite_setOf_apply_eq_iff_small (by omega)] at ht hu
      apply_fun a at htu
      rwa [Nat.nth_mem_of_infinite ht.2, Nat.nth_mem_of_infinite hu.2] at htu
  refine hs ▸ Finset.card_le_card (Finset.subset_iff.2 fun j hj ↦ ?_)
  simp only [Set.Finite.mem_toFinset, Set.mem_setOf_eq]
  simp only [Finset.mem_image, Finset.mem_Icc] at hj
  rcases hj with ⟨t, ⟨ht1, htk⟩, rfl⟩
  have hN1 : N < a i - 1 := by
    have := hc.N_add_one_lt_apply_of_apply_big_of_N'_le h hN'
    omega
  simp only [add_tsub_cancel_right]
  rw [← Small] at htk
  have htki := htk
  rw [← hc.infinite_setOf_apply_eq_iff_small (by omega)] at htki
  rw [Nat.nth_mem_of_infinite htki]
  simp only [htk, true_and]
  refine ⟨Nat.lt_add_one_iff.mpr ((Nat.le_nth (fun hf ↦ absurd hf htki)).trans
    ((Nat.nth_le_nth htki).2 hN1.le)), ?_⟩
  rw [← Nat.count_eq_card_filter_range, Nat.count_nth_succ_of_infinite htki]
  omega

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2024Q3/Variant8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variant8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean#L561).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba1e8fecf181c4423292bd14dc46e70c6161d26f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
