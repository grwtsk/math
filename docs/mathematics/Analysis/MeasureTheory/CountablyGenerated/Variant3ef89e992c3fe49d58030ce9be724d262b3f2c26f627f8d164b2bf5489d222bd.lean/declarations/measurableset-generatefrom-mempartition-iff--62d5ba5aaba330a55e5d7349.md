# measurableSet_generateFrom_memPartition_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f838ef8d8dea25a4905b99b4890c50197d2e8331",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3e/3ef89e992c3fe49d58030ce9be724d262b3f2c26f627f8d164b2bf5489d222bd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0e0dab7b-8664-7032-35bd-40f39e39a4b6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f3626968-efd1-adb4-65fe-7ecd7399b8fd",
  "kind": "lemma",
  "lexical_name": "measurableSet_generateFrom_memPartition_iff",
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
  "slug": "measurableset-generatefrom-mempartition-iff--62d5ba5aaba330a55e5d7349",
  "source": {
    "blob": "f838ef8d8dea25a4905b99b4890c50197d2e8331",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 519,
    "line": 484,
    "path": "GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant3ef89e992c3fe49d58030ce9be724d262b3f2c26f627f8d164b2bf5489d222bd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:62d5ba5aaba330a55e5d73491726f3bb932413eacc438f781df7ae752ca56986",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CountablyGenerated/Variant3ef89e992c3fe49d58030ce9be724d262b3f2c26f627f8d164b2bf5489d222bd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3626968-efd1-adb4-65fe-7ecd7399b8fd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–519.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma measurableSet_generateFrom_memPartition_iff (t : ℕ → Set α) (n : ℕ) (s : Set α) :
    MeasurableSet[generateFrom (memPartition t n)] s
      ↔ ∃ S : Finset (Set α), ↑S ⊆ memPartition t n ∧ s = ⋃₀ S := by
  refine ⟨fun h ↦ ?_, fun ⟨S, hS_subset, hS_eq⟩ ↦ ?_⟩
  · induction s, h using generateFrom_induction with
    | hC u hu _ => exact ⟨{u}, by simp [hu], by simp⟩
    | empty => exact ⟨∅, by simp, by simp⟩
    | compl u _ hu =>
      obtain ⟨S, hS_subset, rfl⟩ := hu
      refine ⟨(memPartition t n).toFinset \ S, ?_, ?_⟩
      · simp only [Finset.coe_sdiff, coe_toFinset]
        exact sdiff_subset
      · simp only [Finset.coe_sdiff, coe_toFinset]
        refine (IsCompl.eq_compl ⟨?_, ?_⟩).symm
        · refine Set.disjoint_sUnion_right.mpr fun u huS => ?_
          refine Set.disjoint_sUnion_left.mpr fun v huV => ?_
          refine disjoint_memPartition t n (mem_of_mem_sdiff huV) (hS_subset huS) ?_
          exact ne_of_mem_of_not_mem huS (notMem_of_mem_sdiff huV) |>.symm
        · rw [codisjoint_iff]
          simp only [sup_eq_union, top_eq_univ]
          rw [← sUnion_memPartition t n, union_comm, ← sUnion_union, union_sdiff_cancel hS_subset]
    | iUnion f _ h =>
      choose S hS_subset hS_eq using h
      have : Fintype (⋃ n, (S n : Set (Set α))) := by
        refine (Finite.subset (finite_memPartition t n) ?_).fintype
        simp only [iUnion_subset_iff]
        exact hS_subset
      refine ⟨(⋃ n, (S n : Set (Set α))).toFinset, ?_, ?_⟩
      · simp only [coe_toFinset, iUnion_subset_iff]
        exact hS_subset
      · simp only [coe_toFinset, sUnion_iUnion, hS_eq]
  · rw [hS_eq, sUnion_eq_biUnion]
    refine MeasurableSet.biUnion ?_ (fun t ht ↦ ?_)
    · exact S.countable_toSet
    · exact measurableSet_generateFrom (hS_subset ht)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CountablyGenerated/Variant3ef89e992c3fe49d58030ce9be724d262b3f2c26f627f8d164b2bf5489d222bd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant3ef89e992c3fe49d58030ce9be724d262b3f2c26f627f8d164b2bf5489d222bd.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f838ef8d8dea25a4905b99b4890c50197d2e8331` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
