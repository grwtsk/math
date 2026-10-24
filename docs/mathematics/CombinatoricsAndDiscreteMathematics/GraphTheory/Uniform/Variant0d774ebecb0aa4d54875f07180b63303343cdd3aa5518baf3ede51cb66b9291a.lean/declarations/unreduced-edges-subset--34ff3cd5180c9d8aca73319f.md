# unreduced_edges_subset

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "6d2e41fc81283a95f539265b839889245e9cdaa5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 416,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dbb7f646-03fd-9771-67cf-ac66ea7d1888",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:845a72cf-84d8-42be-7923-63f4548ff9f2",
  "kind": "lemma",
  "lexical_name": "unreduced_edges_subset",
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
  "slug": "unreduced-edges-subset--34ff3cd5180c9d8aca73319f",
  "source": {
    "blob": "6d2e41fc81283a95f539265b839889245e9cdaa5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 434,
    "line": 416,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:34ff3cd5180c9d8aca73319f4c30104b34e54e9661af703c6cf6f155f837a57c",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:845a72cf-84d8-42be-7923-63f4548ff9f2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 416–434.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma unreduced_edges_subset :
    (A ×ˢ A).filter (fun (x, y) ↦ G.Adj x y ∧ ¬ (G.regularityReduced P (ε/8) (ε/4)).Adj x y) ⊆
      (P.nonUniforms G (ε/8)).biUnion (fun (U, V) ↦ U ×ˢ V) ∪ P.parts.biUnion offDiag ∪
        (P.sparsePairs G (ε/4)).biUnion fun (U, V) ↦ G.interedges U V := by
  rintro ⟨x, y⟩
  simp only [mem_sdiff, mem_filter, mem_univ, true_and, regularityReduced_adj, not_and, not_exists,
    not_le, mem_biUnion, mem_union, exists_prop, mem_product, Prod.exists, mem_offDiag, and_imp,
    or_assoc, and_assoc, P.mk_mem_nonUniforms, Finpartition.mk_mem_sparsePairs, mem_interedges_iff]
  intros hx hy h h'
  replace h' := h' h
  obtain ⟨U, hU, hx⟩ := P.exists_mem hx
  obtain ⟨V, hV, hy⟩ := P.exists_mem hy
  obtain rfl | hUV := eq_or_ne U V
  · exact Or.inr (Or.inl ⟨U, hU, hx, hy, G.ne_of_adj h⟩)
  by_cases h₂ : G.IsUniform (ε/8) U V
  · exact Or.inr <| Or.inr ⟨U, V, hU, hV, hUV, h' _ hU _ hV hx hy hUV h₂, hx, hy, h⟩
  · exact Or.inl ⟨U, V, hU, hV, hUV, h₂, hx, hy⟩

end SimpleGraph
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Uniform/Variant0d774ebecb0aa4d54875f07180b63303343cdd3aa5518baf3ede51cb66b9291a.lean#L416).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6d2e41fc81283a95f539265b839889245e9cdaa5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
