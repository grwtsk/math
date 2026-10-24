# nonempty_hom_of_forall_finite_subgraph_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d536e4b7b0dcc189e36a50e7dc3f794c2d0e8bf6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 150,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/cb/cb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:67a981ef-9fc1-b05e-c963-a2c67a17e3b9",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:d4bdcb6d-9e89-7043-cd3a-cf31978f7dc2",
  "kind": "theorem",
  "lexical_name": "nonempty_hom_of_forall_finite_subgraph_hom",
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
  "slug": "nonempty-hom-of-forall-finite-subgraph-hom--9fc0afefba4b94657815c981",
  "source": {
    "blob": "d536e4b7b0dcc189e36a50e7dc3f794c2d0e8bf6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 150,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9fc0afefba4b94657815c981163b8d80219ecce54ea5a2fc1a8ce8c60de3055c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d4bdcb6d-9e89-7043-cd3a-cf31978f7dc2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem nonempty_hom_of_forall_finite_subgraph_hom [Finite W]
    (h : ∀ G' : G.Subgraph, G'.verts.Finite → G'.coe →g F) : Nonempty (G →g F) := by
  -- Obtain a `Fintype` instance for `W`.
  cases nonempty_fintype W
  -- Establish the required interface instances.
  haveI : ∀ G' : G.Finsubgraphᵒᵖ, Nonempty ((finsubgraphHomFunctor G F).obj G') := fun G' =>
    ⟨h G'.unop G'.unop.property⟩
  haveI : ∀ G' : G.Finsubgraphᵒᵖ, Fintype ((finsubgraphHomFunctor G F).obj G') := by
    intro G'
    haveI : Fintype (G'.unop.val.verts : Type u) := G'.unop.property.fintype
    haveI : Fintype (↥G'.unop.val.verts → W) := by classical exact Pi.instFintype
    exact Fintype.ofInjective (fun f => f.toFun) RelHom.coe_fn_injective
  -- Use compactness to obtain a section.
  obtain ⟨u, hu⟩ := nonempty_sections_of_finite_inverse_system (finsubgraphHomFunctor G F)
  refine ⟨⟨fun v => ?_, ?_⟩⟩
  · -- Map each vertex using the homomorphism provided for its singleton subgraph.
    exact
      (u (Opposite.op (singletonFinsubgraph v))).toFun
        ⟨v, by
          unfold singletonFinsubgraph
          simp⟩
  · -- Prove that the above mapping preserves adjacency.
    intro v v' e
    simp only
    /- The homomorphism for each edge's singleton subgraph agrees with those for its source and
        target vertices. -/
    have hv : Opposite.op (finsubgraphOfAdj e) ⟶ Opposite.op (singletonFinsubgraph v) :=
      Quiver.Hom.op (CategoryTheory.homOfLE singletonFinsubgraph_le_adj_left)
    have hv' : Opposite.op (finsubgraphOfAdj e) ⟶ Opposite.op (singletonFinsubgraph v') :=
      Quiver.Hom.op (CategoryTheory.homOfLE singletonFinsubgraph_le_adj_right)
    rw [← hu hv, ← hu hv']
    -- Porting note: was `apply Hom.map_adj`
    refine Hom.map_adj (u (Opposite.op (finsubgraphOfAdj e))) ?_
    -- `v` and `v'` are definitionally adjacent in `finsubgraphOfAdj e`
    simp [finsubgraphOfAdj]

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantcb66a760ebe35b1f0c2de28a3b1457aa0780c1e9635f3cd69cf87b03b6222b54.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d536e4b7b0dcc189e36a50e7dc3f794c2d0e8bf6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
