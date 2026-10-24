# Subgraph.IsMatching.exists_verts_compl_subset_universalVerts

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5a38b5edd15c4705a22ded0e378e628b81e26f27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 77,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c0/c0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a5c94986-f6f2-e12d-0be5-d23f34da0123",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1f8279a6-8aee-ac02-d6d3-085bbae487d8",
  "kind": "lemma",
  "lexical_name": "Subgraph.IsMatching.exists_verts_compl_subset_universalVerts",
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
  "slug": "subgraph-ismatching-exists-verts-compl-subset-universalverts--0308db99921e816a730afd6b",
  "source": {
    "blob": "5a38b5edd15c4705a22ded0e378e628b81e26f27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 77,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:0308db99921e816a730afd6b7104ecb88227291ebd2626b972ac51892f17d125",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1f8279a6-8aee-ac02-d6d3-085bbae487d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 77–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma Subgraph.IsMatching.exists_verts_compl_subset_universalVerts
    (h : ¬IsTutteViolator G G.universalVerts)
    (h' : ∀ (K : G.deleteUniversalVerts.coe.ConnectedComponent),
      G.deleteUniversalVerts.coe.IsClique K.supp) :
    ∃ M : Subgraph G, M.IsMatching ∧ M.vertsᶜ ⊆ G.universalVerts := by
  have hrep := ConnectedComponent.Represents.image_out G.deleteUniversalVerts.coe.oddComponents
  -- First we match one node from each odd component to a universal vertex
  obtain ⟨t, ht, M1, hM1⟩ := Subgraph.IsMatching.exists_of_universalVerts
      (disjoint_image_val_universalVerts _).symm (by
        simp only [IsTutteViolator, not_lt] at h
        rwa [Set.ncard_image_of_injective _ Subtype.val_injective, hrep.ncard_eq])
  -- Then we match all other nodes in components internally
  have exists_complMatch (K : G.deleteUniversalVerts.coe.ConnectedComponent) :
      ∃ M : Subgraph G, M.verts = Subtype.val '' K.supp \ M1.verts ∧ M.IsMatching := by
    have : G.IsClique (Subtype.val '' K.supp \ M1.verts) :=
      ((h' K).of_induce).subset Set.sdiff_subset
    rw [← this.even_iff_exists_isMatching (Set.toFinite _), hM1.1]
    exact even_ncard_image_val_supp_sdiff_image_val_rep_union _ ht hrep
  choose complMatch hcomplMatch_compl hcomplMatch_match using exists_complMatch
  let M2 : Subgraph G := ⨆ K, complMatch K
  have hM2 : M2.IsMatching := by
    refine .iSup hcomplMatch_match fun i j hij ↦ (?_ : Disjoint _ _)
    rw [(hcomplMatch_match i).support_eq_verts, hcomplMatch_compl i,
        (hcomplMatch_match j).support_eq_verts, hcomplMatch_compl j]
    exact Set.disjoint_of_subset Set.sdiff_subset Set.sdiff_subset <|
      Set.disjoint_image_of_injective Subtype.val_injective <|
        SimpleGraph.pairwise_disjoint_supp_connectedComponent _ hij
  have disjointM12 : Disjoint M1.support M2.support := by
    rw [hM1.2.support_eq_verts, hM2.support_eq_verts, Subgraph.verts_iSup,
      Set.disjoint_iUnion_right]
    exact fun K ↦ hcomplMatch_compl K ▸ Set.disjoint_sdiff_right
  -- The only vertices left are indeed contained in universalVerts
  have : (M1.verts ∪ M2.verts)ᶜ ⊆ G.universalVerts := by
    rw [Set.compl_subset_comm, Set.compl_eq_univ_sdiff]
    intro v hv
    by_cases h : v ∈ M1.verts
    · exact M1.verts.mem_union_left _ h
    right
    simp only [Subgraph.verts_iSup, Set.mem_iUnion, M2,
      hcomplMatch_compl]
    use G.deleteUniversalVerts.coe.connectedComponentMk ⟨v, hv⟩
    aesop
  exact ⟨M1 ⊔ M2, hM1.2.sup hM2 disjointM12, this⟩

/-- If the universal vertices of a graph `G` decompose `G` into cliques such that the Tutte isn't
violated, then `G` has a perfect matching. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Tutte/Variantc0bea336e1ab9d9e738ce49cf3386e199f3b054c6d456492770a086936d66b99.lean#L77).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5a38b5edd15c4705a22ded0e378e628b81e26f27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
