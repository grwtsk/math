# Indep.closure_sInter_eq_biInter_closure_of_forall_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7c9a8e4a241339d966c3d1635358562dffa2de80",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 477,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/06/061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:210e65b4-6867-d0ac-99de-4c441cb06e24",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:015bee0b-3b96-4619-fff1-bc9d962a78ad",
  "kind": "lemma",
  "lexical_name": "Indep.closure_sInter_eq_biInter_closure_of_forall_subset",
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
  "slug": "indep-closure-sinter-eq-biinter-closure-of-forall-subset--700202218112309540fbaae3",
  "source": {
    "blob": "7c9a8e4a241339d966c3d1635358562dffa2de80",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 511,
    "line": 477,
    "path": "GRWTSK/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:700202218112309540fbaae336e2de36a4d1aac650bf6a73323cdb5b194f8585",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:015bee0b-3b96-4619-fff1-bc9d962a78ad`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–511.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Indep.closure_sInter_eq_biInter_closure_of_forall_subset {Js : Set (Set α)} (hI : M.Indep I)
    (hne : Js.Nonempty) (hIs : ∀ J ∈ Js, J ⊆ I) : M.closure (⋂₀ Js) = (⋂ J ∈ Js, M.closure J)  := by
  rw [subset_antisymm_iff, subset_iInter₂_iff]
  have hiX : ⋂₀ Js ⊆ I := (sInter_subset_of_mem hne.some_mem).trans (hIs _ hne.some_mem)
  have hiI := hI.subset hiX
  refine ⟨ fun X hX ↦ M.closure_subset_closure (sInter_subset_of_mem hX),
    fun e he ↦ by_contra fun he' ↦ ?_⟩
  rw [mem_iInter₂] at he
  have heEI : e ∈ M.E \ I := by
    refine ⟨M.closure_subset_ground _ (he _ hne.some_mem), fun heI ↦ he' ?_⟩
    refine mem_closure_of_mem _ (fun X hX' ↦ ?_) hiI.subset_ground
    rw [← hI.closure_inter_eq_self_of_subset (hIs X hX')]
    exact ⟨he X hX', heI⟩

  rw [hiI.notMem_closure_iff_of_notMem (notMem_subset hiX heEI.2)] at he'
  obtain ⟨J, hJI, heJ⟩ := he'.subset_isBasis_of_subset (insert_subset_insert hiX)
    (insert_subset heEI.1 hI.subset_ground)

  have hIb : M.IsBasis I (insert e I) := by
    rw [hI.insert_isBasis_iff_mem_closure]
    exact (M.closure_subset_closure (hIs _ hne.some_mem)) (he _ hne.some_mem)

  obtain ⟨f, hfIJ, hfb⟩ :=  hJI.exchange hIb ⟨heJ (mem_insert e _), heEI.2⟩
  obtain rfl := hI.eq_of_isBasis (hfb.isBasis_subset (insert_subset hfIJ.1
    (by (rw [diff_subset_iff, singleton_union]; exact hJI.subset))) (subset_insert _ _))

  refine hfIJ.2 (heJ (mem_insert_of_mem _ fun X hX' ↦ by_contra fun hfX ↦ ?_))

  obtain (hd | heX) := ((hI.subset (hIs X hX')).mem_closure_iff).mp (he _ hX')
  · refine (hJI.indep.subset (insert_subset (heJ (mem_insert _ _)) ?_)).not_dep hd
    specialize hIs _ hX'
    rw [← singleton_union, ← diff_subset_iff, diff_singleton_eq_self hfX] at hIs
    exact hIs.trans diff_subset
  exact heEI.2 (hIs _ hX' heX)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/Closure/Variant061f7b7dfa23e8f8df6c71f9078589c8ff444b42fbcd810baf7ccb25aed3ff89.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7c9a8e4a241339d966c3d1635358562dffa2de80` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
