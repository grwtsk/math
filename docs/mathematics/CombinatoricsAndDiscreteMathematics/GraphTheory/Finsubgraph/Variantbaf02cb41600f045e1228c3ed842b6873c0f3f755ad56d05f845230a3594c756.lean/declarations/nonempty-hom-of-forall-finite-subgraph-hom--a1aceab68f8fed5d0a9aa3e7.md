# nonempty_hom_of_forall_finite_subgraph_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e7650b0c-ed2d-673e-81be-67347b06def9",
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
  "slug": "nonempty-hom-of-forall-finite-subgraph-hom--a1aceab68f8fed5d0a9aa3e7",
  "source": {
    "blob": "ba1eabb77752d47729a14f8da2e3b77f54e64db4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 158,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a1aceab68f8fed5d0a9aa3e79835e916e472f46ec06bd9de32820e1a0ed534ae",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e7650b0c-ed2d-673e-81be-67347b06def9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 158–194.

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

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Finsubgraph/Variantbaf02cb41600f045e1228c3ed842b6873c0f3f755ad56d05f845230a3594c756.lean#L158).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ba1eabb77752d47729a14f8da2e3b77f54e64db4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
