# free_killCopies

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:60f8c628-1852-5d88-cc94-1f961d7235d3",
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
  "slug": "free-killcopies--7c446c3305314fe2aa014e89",
  "source": {
    "blob": "7a9fa3180b6d5008592a34210c71c77755024b46",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 563,
    "line": 539,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variant6a162d135dbf2f05a5bd1ac8cea1b047e1fb347fd9b607e1b918f0f991f527cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7c446c3305314fe2aa014e89de4a4a1fea74d002bdcb5ea214769312f2c54ac5",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Copy/Variant6a162d135dbf2f05a5bd1ac8cea1b047e1fb347fd9b607e1b918f0f991f527cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:60f8c628-1852-5d88-cc94-1f961d7235d3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 539–563.

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
  simp only [edgeSet_sdiff, edgeSet_fromEdgeSet, edgeSet_sdiff_sdiff_isDiag, Set.mem_diff,
    Set.mem_iUnion, not_exists] at this
  refine this.2 (G'.map <| .ofLE sdiff_le) ⟨((Copy.ofLE _ _ _).isoSubgraphMap _).comp hHG'.some⟩ ?_
  rw [Sym2.map_map, Set.mem_singleton_iff, ← he₁]
  congr 1 with x
  exact congr_arg _ (Equiv.Set.image_symm_apply _ _ injective_id _ _)

variable [Fintype G.edgeSet]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Copy/Variant6a162d135dbf2f05a5bd1ac8cea1b047e1fb347fd9b607e1b918f0f991f527cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Copy/Variant6a162d135dbf2f05a5bd1ac8cea1b047e1fb347fd9b607e1b918f0f991f527cf.lean#L539).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7a9fa3180b6d5008592a34210c71c77755024b46` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
