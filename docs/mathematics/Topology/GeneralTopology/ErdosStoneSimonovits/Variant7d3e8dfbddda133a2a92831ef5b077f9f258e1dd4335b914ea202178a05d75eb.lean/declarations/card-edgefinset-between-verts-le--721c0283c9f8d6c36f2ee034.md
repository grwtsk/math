# card_edgeFinset_between_verts_le

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
      "line": 95,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7d/7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9958cb15-0fae-fca8-28a4-da17b27ecd16",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:9e8239d6-ff9a-0f93-da56-c492990abb27",
  "kind": "lemma",
  "lexical_name": "card_edgeFinset_between_verts_le",
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
  "slug": "card-edgefinset-between-verts-le--721c0283c9f8d6c36f2ee034",
  "source": {
    "blob": "3ab120db2b6e3b3a0eba4eca23a935f75bbb61b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 95,
    "path": "GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:721c0283c9f8d6c36f2ee034531f42362a586e04cffcb401b24ab185bd0c2817",
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

Occurrence: `result:9e8239d6-ff9a-0f93-da56-c492990abb27`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 95–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma card_edgeFinset_between_verts_le (hr_pos : 0 < r) (ht'_pos : 0 < t') :
    (#(G.between K.verts K.vertsᶜ).edgeFinset : ℝ)
      ≤ (n - #K.verts) * (#K.verts - (t' - t))
        + #(filter K t) * (t' - t) :=
  calc (#(G.between K.verts K.vertsᶜ).edgeFinset : ℝ)
    _ = ∑ v ∈ K.vertsᶜ \ filter K t, ((G.between K.verts K.vertsᶜ).degree v : ℝ)
      + ∑ v ∈ filter K t, ((G.between K.verts K.vertsᶜ).degree v : ℝ) := by
        rw [ErdosStone.filter, sum_sdiff (filter_subset _ K.vertsᶜ), eq_comm]
        exact_mod_cast isBipartiteWith_sum_degrees_eq_card_edges'
          (between_verts_isBipartiteWith K)
    _ ≤ ∑ _ ∈ K.vertsᶜ \ filter K t, (#K.verts - t' + t : ℝ)
      + ∑ _ ∈ filter K t, (#K.verts : ℝ) := by
        apply add_le_add <;> refine sum_le_sum (fun v hv ↦ ?_)
        · rw [← Nat.cast_sub ((Nat.le_mul_of_pos_left t' hr_pos).trans_eq K.card_verts.symm)]
          exact_mod_cast (degree_between_verts_lt_of_mem_sdiff K hv ht'_pos).le
        · exact_mod_cast isBipartiteWith_degree_le'
            (between_verts_isBipartiteWith K) (filter_subset_compl_verts K hv)
    _ = (n - #K.verts) * (#K.verts - (t' - t))
      + #(filter K t) * (t' - t) := by
        rw [sum_const, nsmul_eq_mul, card_sdiff_of_subset (filter_subset_compl_verts K),
          Nat.cast_sub (card_le_card (filter_subset_compl_verts K)), card_compl,
          Nat.cast_sub (card_le_univ K.verts), Fintype.card_fin, sum_const, nsmul_eq_mul, sub_mul,
          sub_add (#K.verts : ℝ) _ _, mul_sub (#(filter K t) : ℝ) _ _,
          ← sub_add, sub_add_eq_add_sub, sub_add_cancel]

/-- `#ErdosStone.filter` is arbitrarily large with respect to `n`.

This is an auxiliary lemma for the Erdős-Stone theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variant7d3e8dfbddda133a2a92831ef5b077f9f258e1dd4335b914ea202178a05d75eb.lean#L95).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ab120db2b6e3b3a0eba4eca23a935f75bbb61b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
