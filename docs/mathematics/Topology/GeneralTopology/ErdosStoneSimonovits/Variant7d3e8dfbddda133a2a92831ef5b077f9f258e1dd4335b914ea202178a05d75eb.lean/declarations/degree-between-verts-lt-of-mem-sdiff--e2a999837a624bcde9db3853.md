# degree_between_verts_lt_of_mem_sdiff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "3ab120db2b6e3b3a0eba4eca23a935f75bbb61b3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 66,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6ed0be40-58db-c611-7a5c-1d1a2f2187dc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1bb181af-81c6-c90f-bcc4-aa61a9cfa8e8",
  "kind": "lemma",
  "lexical_name": "degree_between_verts_lt_of_mem_sdiff",
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
  "slug": "degree-between-verts-lt-of-mem-sdiff--e2a999837a624bcde9db3853",
  "source": {
    "blob": "3ab120db2b6e3b3a0eba4eca23a935f75bbb61b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 66,
    "path": "GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e2a999837a624bcde9db3853097d4198908d487c04b88da89a7921ac2da44f58",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1bb181af-81c6-c90f-bcc4-aa61a9cfa8e8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma degree_between_verts_lt_of_mem_sdiff
    {v : Fin n} (hv : v ∈ K.vertsᶜ \ filter K t) (ht'_pos : 0 < t') :
    (G.between K.verts K.vertsᶜ).degree v < #K.verts - t' + t := by
  simp_rw [Finset.mem_sdiff, ErdosStone.filter, mem_filter, not_and_or, and_or_left,
    and_not_self_iff, false_or, not_forall, not_exists, not_and_or, not_forall, exists_prop] at hv
  obtain ⟨hv, p, hp, hs⟩ := hv
  rw [← card_neighborFinset_eq_degree,
    isBipartiteWith_neighborFinset' (between_verts_isBipartiteWith K) hv]
  conv =>
    enter [1, 1, 2]
    unfold CompleteEquipartiteSubgraph.verts
  rw [filter_disjiUnion, card_disjiUnion, sum_eq_sum_sdiff_singleton_add hp]
  apply add_lt_add_of_le_of_lt
  · conv_rhs =>
      rw [K.card_verts, ← Nat.sub_one_mul, ← K.card_parts.resolve_right ht'_pos.ne',
        ← card_singleton p, ← Finset.card_sdiff_of_subset (singleton_subset_iff.mpr hp),
        ← smul_eq_mul, ← sum_const,
        ← Finset.sum_congr rfl fun _ h ↦ K.card_mem_parts (mem_sdiff.mp h).1]
    exact sum_le_sum (fun _ _ ↦ card_filter_le _ _)
  · contrapose! hs
    obtain ⟨s, hs⟩ := powersetCard_nonempty.mpr hs
    have hs' : s ∈ p.powersetCard t := powersetCard_mono (filter_subset _ _) hs
    refine ⟨s, hs', fun w hw ↦ ?_⟩
    obtain ⟨_, hadj, _⟩ := by
      rw [mem_powersetCard] at hs
      apply hs.1 at hw
      rwa [mem_filter, between_adj] at hw
    exact hadj.symm

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ab120db2b6e3b3a0eba4eca23a935f75bbb61b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
