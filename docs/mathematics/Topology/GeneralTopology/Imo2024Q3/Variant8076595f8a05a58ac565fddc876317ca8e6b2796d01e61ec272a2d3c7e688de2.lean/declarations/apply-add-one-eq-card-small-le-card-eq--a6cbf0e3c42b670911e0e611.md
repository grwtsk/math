# apply_add_one_eq_card_small_le_card_eq

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
      "line": 613,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/80/8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:517eeea4-e9f2-95e2-6deb-02bff9d20c68",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b4f874e1-4b17-5165-38a8-2ed81403d1f8",
  "kind": "lemma",
  "lexical_name": "apply_add_one_eq_card_small_le_card_eq",
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
  "slug": "apply-add-one-eq-card-small-le-card-eq--a6cbf0e3c42b670911e0e611",
  "source": {
    "blob": "ba1e8fecf181c4423292bd14dc46e70c6161d26f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 663,
    "line": 613,
    "path": "GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variant8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a6cbf0e3c42b670911e0e6111bd00378fb1c4b41a1b1db7ef85e47d53b518dff",
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

Occurrence: `result:b4f874e1-4b17-5165-38a8-2ed81403d1f8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 613–663.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma apply_add_one_eq_card_small_le_card_eq {i : ℕ} (hi : N' a N < i) (hib : Big a (a i)) :
    a (i + 1) = #{m ∈ Finset.range (k a + 1) | a i ≤ #{j ∈ Finset.range i | a j = m}} := by
  rw [hc.apply_add_one_eq_card (hc.N_lt_N'.trans hi).le]
  convert Finset.card_image_of_injOn (f := fun j ↦ Nat.nth (a · = j) (a i - 1) + 1) ?_ using 1
  · congr
    ext j
    simp only [Finset.mem_filter, Finset.mem_range, Finset.mem_image]
    refine ⟨fun ⟨hj, hji⟩ ↦ ⟨a (j - 1), hji ▸ ?_⟩, fun ⟨t, ⟨hts, htr⟩, ht⟩ ↦ ?_⟩
    · have hjN : N < j := hc.N_lt_of_apply_eq_of_apply_big_of_N'_le hji hib hi.le
      refine ⟨⟨Nat.lt_add_one_iff.mpr (hc.small_apply_sub_one_of_apply_eq_of_apply_big_of_N'_le
        hji hib hi.le), ?_⟩, ?_⟩
      · rw [hc.apply_eq_card hjN]
        have : j ≤ i := by omega
        gcongr
      · have hj1 : j = j - 1 + 1 := by omega
        nth_rw 2 [hj1]
        rw [hc.nth_apply_add_one_eq (by omega), hj1.symm]
    · subst ht
      rw [Nat.lt_add_one_iff, ← Small] at hts
      have ht0 : 0 < t := by
        by_contra! h0
        simp [nonpos_iff_eq_zero.mp h0, hc.apply_ne_zero] at htr
      rw [← hc.infinite_setOf_apply_eq_iff_small ht0] at hts
      rw [← Nat.count_eq_card_filter_range] at htr
      constructor
      · rwa [add_lt_add_iff_right, ← Nat.lt_nth_iff_count_lt hts,
          Nat.sub_lt_iff_lt_add' (hc.one_le_apply _), Nat.lt_one_add_iff]
      · rw [hc.apply_nth_add_one_eq_of_infinite hts]
        · exact Nat.sub_add_cancel (hc.one_le_apply _)
        · refine (Nat.le_nth fun hf ↦ absurd hf hts).trans ((Nat.nth_le_nth hts).2 ?_)
          have := hc.N_add_one_lt_apply_of_apply_big_of_N'_le hib hi.le
          omega
  · intro t ht u hu htu
    simp only [Finset.coe_filter, Finset.mem_range, Set.mem_setOf_eq, Nat.lt_add_one_iff] at ht hu
    rw [← Small] at ht hu
    have ht0 : 0 < t := by
      by_contra! h0
      simp only [nonpos_iff_eq_zero] at h0
      simp [h0, hc.apply_ne_zero] at ht
    have hu0 : 0 < u := by
      by_contra! h0
      simp only [nonpos_iff_eq_zero] at h0
      simp [h0, hc.apply_ne_zero] at hu
    rw [← hc.infinite_setOf_apply_eq_iff_small ht0] at ht
    rw [← hc.infinite_setOf_apply_eq_iff_small hu0] at hu
    simp only [add_left_inj] at htu
    apply_fun a at htu
    rwa [Nat.nth_mem_of_infinite ht.1, Nat.nth_mem_of_infinite hu.1] at htu

/-- Similar to Lemma 1 from the informal solution, but with a `Small` hypothesis instead of `Big`
and considering a range one larger (the form needed for Lemma 2). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Imo2024Q3/Variant8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Imo2024Q3/Variant8076595f8a05a58ac565fddc876317ca8e6b2796d01e61ec272a2d3c7e688de2.lean#L613).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba1e8fecf181c4423292bd14dc46e70c6161d26f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
