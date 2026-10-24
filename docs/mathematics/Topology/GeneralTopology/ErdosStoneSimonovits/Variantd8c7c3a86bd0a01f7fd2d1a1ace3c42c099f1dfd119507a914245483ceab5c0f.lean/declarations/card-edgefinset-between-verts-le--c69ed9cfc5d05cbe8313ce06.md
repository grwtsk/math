# card_edgeFinset_between_verts_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:5a5ae592-a638-3a9a-b6f2-d52799a56773",
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
  "slug": "card-edgefinset-between-verts-le--c69ed9cfc5d05cbe8313ce06",
  "source": {
    "blob": "d4efa3a7530675c9f7dfa48abd4c17d4d45e8950",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 130,
    "line": 103,
    "path": "GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c69ed9cfc5d05cbe8313ce06912c5c13d7ecc1b33dd38f34131589c7c7166e3b",
  "verification": {
    "reference": "docs/verification/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a5ae592-a638-3a9a-b6f2-d52799a56773`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 103–130.

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

[Verification target and public status](../../../../../../verification/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Topology/GeneralTopology/ErdosStoneSimonovits/Variantd8c7c3a86bd0a01f7fd2d1a1ace3c42c099f1dfd119507a914245483ceab5c0f.lean#L103).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d4efa3a7530675c9f7dfa48abd4c17d4d45e8950` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
