# exists_bijective_of_forall_ncard_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e9d943a24009df6e8aad5c1bf10d2c27a52d1929",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 92,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bd/bd3bbc0cfb22838cd8d2169b4d587412b0efa610e3a1ec5ea67c4464d7422927.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:47f2e087-4353-b5a5-58ce-678861f60d7e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:788362f1-091e-4a61-8e00-07396b6a5690",
  "kind": "lemma",
  "lexical_name": "exists_bijective_of_forall_ncard_le",
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
  "slug": "exists-bijective-of-forall-ncard-le--671fbd87cf3b671d8ff6b62e",
  "source": {
    "blob": "e9d943a24009df6e8aad5c1bf10d2c27a52d1929",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 92,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hall/Variantbd3bbc0cfb22838cd8d2169b4d587412b0efa610e3a1ec5ea67c4464d7422927.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:671fbd87cf3b671d8ff6b62e8dd81e976cc4e7087f50664154a7d9432dfd4dec",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Hall/Variantbd3bbc0cfb22838cd8d2169b4d587412b0efa610e3a1ec5ea67c4464d7422927.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:788362f1-091e-4a61-8e00-07396b6a5690`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_bijective_of_forall_ncard_le (h₁ : G.IsBipartiteWith p₁ p₂)
    (h₂ : ∀ s : Set V, s.ncard ≤ (⋃ x ∈ s, G.neighborSet x).ncard) :
    ∃ (h : p₁ → p₂), Function.Bijective h ∧ ∀ (a : p₁), G.Adj a (h a) := by
  classical
  obtain ⟨f, hf₁, hf₂⟩ := Finset.all_card_le_biUnion_card_iff_exists_injective
      (fun x ↦ G.neighborFinset x) |>.mp fun s ↦ by
    have := h₂ s
    simpa [← Set.ncard_coe_finset, neighborFinset_def]
  have (x : V) (h : x ∈ p₁) : f x ∉ p₁ := h₁.disjoint |>.notMem_of_mem_right <|
    isBipartiteWith_neighborSet_subset h₁ h <| Set.mem_toFinset.mp <| hf₂ x
  have (x : V) (h : x ∈ p₂) : f x ∉ p₂ := h₁.disjoint |>.notMem_of_mem_left <|
    isBipartiteWith_neighborSet_subset h₁.symm h <| Set.mem_toFinset.mp <| hf₂ x
  have (x : V) : f x ∈ p₁ ∨ f x ∈ p₂ := by
    simp [union_eq_univ_of_forall_ncard_le h₁ h₂, p₁.mem_union (f x) p₂ |>.mp]
  let f' (x : p₁) : p₂ := ⟨f x, by grind⟩
  let g' (x : p₂) : p₁ := ⟨f x, by grind⟩
  refine Embedding.schroeder_bernstein_of_rel (f := f') (g := g') ?_ ?_ (fun x y ↦ G.Adj x y) ?_ ?_
  · exact Injective.of_comp (f := Subtype.val) <| hf₁.comp Subtype.val_injective
  · exact Injective.of_comp (f := Subtype.val) <| hf₁.comp Subtype.val_injective
  · exact fun v ↦ mem_neighborFinset _ _ _ |>.mp (hf₂ v)
  · exact fun v ↦ mem_neighborFinset _ _ _ |>.mp (hf₂ v) |>.symm

/-- This is the version of **Hall's marriage theorem** for bipartite graphs that finds a perfect
matching given that the neighborhood-condition holds globally. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Hall/Variantbd3bbc0cfb22838cd8d2169b4d587412b0efa610e3a1ec5ea67c4464d7422927.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Hall/Variantbd3bbc0cfb22838cd8d2169b4d587412b0efa610e3a1ec5ea67c4464d7422927.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e9d943a24009df6e8aad5c1bf10d2c27a52d1929` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
