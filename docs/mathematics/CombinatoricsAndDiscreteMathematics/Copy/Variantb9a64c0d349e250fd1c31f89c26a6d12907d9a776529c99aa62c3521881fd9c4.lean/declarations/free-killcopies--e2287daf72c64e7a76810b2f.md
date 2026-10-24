# free_killCopies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:152861e5-e573-62e0-8672-8fc775d35a64",
  "kind": "lemma",
  "lexical_name": "free_killCopies",
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
  "slug": "free-killcopies--e2287daf72c64e7a76810b2f",
  "source": {
    "blob": "b3bf5c6d2304831d3fe78339b748cd6fd416210f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 672,
    "line": 648,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variantb9a64c0d349e250fd1c31f89c26a6d12907d9a776529c99aa62c3521881fd9c4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2287daf72c64e7a76810b2fa49ec975c67b109c845c68b26c67cfc9445b260b",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Copy/Variantb9a64c0d349e250fd1c31f89c26a6d12907d9a776529c99aa62c3521881fd9c4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:152861e5-e573-62e0-8672-8fc775d35a64`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 648–672.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma free_killCopies (hH : H ≠ ⊥) : H.Free (G.killCopies H) := by
  rw [killCopies_of_ne_bot hH, deleteEdges, Free, isContained_iff_exists_iso_subgraph]
  rintro ⟨G', hHG'⟩
  have hG' : (G'.map <| .ofLE (sdiff_le : G \ _ ≤ G)).edgeSet.Nonempty := by
    rw [Subgraph.edgeSet_map]
    exact (aux hH hHG').image _
  set e := hG'.some with he
  have : e ∈ _ := hG'.some_mem
  clear_value e
  rw [← Subgraph.image_coe_edgeSet_coe] at this
  subst he
  obtain ⟨e, he₀, he₁⟩ := this
  let e' : Sym2 G'.verts := Sym2.map (Copy.isoSubgraphMap (.ofLE _ _ _) _).symm e
  have he' : e' ∈ G'.coe.edgeSet := (Iso.map_mem_edgeSet_iff _).2 he₀
  rw [Subgraph.edgeSet_coe] at he'
  have := Subgraph.edgeSet_subset _ he'
  simp only [edgeSet_sdiff, edgeSet_fromEdgeSet, edgeSet_sdiff_sdiff_isDiag, Set.mem_sdiff,
    Set.mem_iUnion, not_exists] at this
  refine this.2 (G'.map <| .ofLE sdiff_le) ⟨((Copy.ofLE _ _ _).isoSubgraphMap _).comp hHG'.some⟩ ?_
  rw [Sym2.map_map, Set.mem_singleton_iff, ← he₁]
  congr 1 with x
  exact congr_arg _ (Equiv.Set.image_symm_apply _ _ injective_id _ _)

variable [Fintype G.edgeSet]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Copy/Variantb9a64c0d349e250fd1c31f89c26a6d12907d9a776529c99aa62c3521881fd9c4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variantb9a64c0d349e250fd1c31f89c26a6d12907d9a776529c99aa62c3521881fd9c4.lean#L648).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b3bf5c6d2304831d3fe78339b748cd6fd416210f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
