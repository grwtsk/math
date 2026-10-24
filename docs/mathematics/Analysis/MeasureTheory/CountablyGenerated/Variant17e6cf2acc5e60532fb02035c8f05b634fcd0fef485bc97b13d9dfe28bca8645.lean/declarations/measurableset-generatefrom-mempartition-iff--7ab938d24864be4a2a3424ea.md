# measurableSet_generateFrom_memPartition_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0395b56ee9675553e0ef9df1c6f8f254d8a6810e",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 332,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17e6cf2acc5e60532fb02035c8f05b634fcd0fef485bc97b13d9dfe28bca8645.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:89e9838a-6c49-063e-231b-8dd36a34a212",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3ac16b63-f75b-8e8d-1497-ddf233c61f35",
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
  "slug": "measurableset-generatefrom-mempartition-iff--7ab938d24864be4a2a3424ea",
  "source": {
    "blob": "0395b56ee9675553e0ef9df1c6f8f254d8a6810e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 368,
    "line": 332,
    "path": "GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant17e6cf2acc5e60532fb02035c8f05b634fcd0fef485bc97b13d9dfe28bca8645.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7ab938d24864be4a2a3424eaf3befecc51c320b753c19457e0089a8b7e057397",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/CountablyGenerated/Variant17e6cf2acc5e60532fb02035c8f05b634fcd0fef485bc97b13d9dfe28bca8645.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3ac16b63-f75b-8e8d-1497-ddf233c61f35`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 332–368.

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
      classical
      refine ⟨(memPartition t n).toFinset \ S, ?_, ?_⟩
      · simp only [Finset.coe_sdiff, coe_toFinset]
        exact diff_subset
      · simp only [Finset.coe_sdiff, coe_toFinset]
        refine (IsCompl.eq_compl ⟨?_, ?_⟩).symm
        · refine Set.disjoint_sUnion_right.mpr fun u huS => ?_
          refine Set.disjoint_sUnion_left.mpr fun v huV => ?_
          refine disjoint_memPartition t n (mem_of_mem_diff huV) (hS_subset huS) ?_
          exact ne_of_mem_of_not_mem huS (notMem_of_mem_diff huV) |>.symm
        · rw [codisjoint_iff]
          simp only [sup_eq_union, top_eq_univ]
          rw [← sUnion_memPartition t n, union_comm, ← sUnion_union, union_diff_cancel hS_subset]
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

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/CountablyGenerated/Variant17e6cf2acc5e60532fb02035c8f05b634fcd0fef485bc97b13d9dfe28bca8645.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/CountablyGenerated/Variant17e6cf2acc5e60532fb02035c8f05b634fcd0fef485bc97b13d9dfe28bca8645.lean#L332).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0395b56ee9675553e0ef9df1c6f8f254d8a6810e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
