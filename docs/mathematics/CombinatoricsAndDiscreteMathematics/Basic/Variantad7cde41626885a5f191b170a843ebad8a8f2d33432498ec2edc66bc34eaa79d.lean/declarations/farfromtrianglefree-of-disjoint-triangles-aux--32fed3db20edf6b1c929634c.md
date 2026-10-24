# farFromTriangleFree_of_disjoint_triangles_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cc42f413-0039-903d-862e-5aa81bdaa01a",
  "kind": "lemma",
  "lexical_name": "farFromTriangleFree_of_disjoint_triangles_aux",
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
  "slug": "farfromtrianglefree-of-disjoint-triangles-aux--32fed3db20edf6b1c929634c",
  "source": {
    "blob": "3a544490b5ae44a9044e412a4a1d2d899dc82ef3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 242,
    "line": 215,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:32fed3db20edf6b1c929634c867670dc54e6937fe5d26feeed87f3bb1077f4b7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc42f413-0039-903d-862e-5aa81bdaa01a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 215–242.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma farFromTriangleFree_of_disjoint_triangles_aux {tris : Finset (Finset α)}
    (htris : tris ⊆ G.cliqueFinset 3)
    (pd : (tris : Set (Finset α)).Pairwise fun x y ↦ (x ∩ y : Set α).Subsingleton) (hHG : H ≤ G)
    (hH : H.CliqueFree 3) : #tris ≤ #G.edgeFinset - #H.edgeFinset := by
  rw [← card_sdiff (edgeFinset_mono hHG), ← card_attach]
  by_contra! hG
  have ⦃t⦄ (ht : t ∈ tris) :
    ∃ x y, x ∈ t ∧ y ∈ t ∧ x ≠ y ∧ s(x, y) ∈ G.edgeFinset \ H.edgeFinset := by
    by_contra! h
    refine hH t ?_
    simp only [not_and, mem_sdiff, not_not, mem_edgeFinset, mem_edgeSet] at h
    obtain ⟨x, y, z, xy, xz, yz, rfl⟩ := is3Clique_iff.1 (mem_cliqueFinset_iff.1 <| htris ht)
    rw [is3Clique_triple_iff]
    refine ⟨h _ _ ?_ ?_ xy.ne xy, h _ _ ?_ ?_ xz.ne xz, h _ _ ?_ ?_ yz.ne yz⟩ <;> simp
  choose fx fy hfx hfy hfne fmem using this
  let f (t : {x // x ∈ tris}) : Sym2 α := s(fx t.2, fy t.2)
  have hf (x) (_ : x ∈ tris.attach) : f x ∈ G.edgeFinset \ H.edgeFinset := fmem _
  obtain ⟨⟨t₁, ht₁⟩, -, ⟨t₂, ht₂⟩, -, tne, t : s(_, _) = s(_, _)⟩ :=
    exists_ne_map_eq_of_card_lt_of_maps_to hG hf
  dsimp at t
  have i := pd ht₁ ht₂ (Subtype.val_injective.ne tne)
  rw [Sym2.eq_iff] at t
  obtain t | t := t
  · exact hfne _ (i ⟨hfx ht₁, t.1.symm ▸ hfx ht₂⟩ ⟨hfy ht₁, t.2.symm ▸ hfy ht₂⟩)
  · exact hfne _ (i ⟨hfx ht₁, t.1.symm ▸ hfy ht₂⟩ ⟨hfy ht₁, t.2.symm ▸ hfx ht₂⟩)

/-- If there are `ε * (card α)^2` disjoint triangles, then the graph is `ε`-far from being
triangle-free. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Basic/Variantad7cde41626885a5f191b170a843ebad8a8f2d33432498ec2edc66bc34eaa79d.lean#L215).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3a544490b5ae44a9044e412a4a1d2d899dc82ef3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
