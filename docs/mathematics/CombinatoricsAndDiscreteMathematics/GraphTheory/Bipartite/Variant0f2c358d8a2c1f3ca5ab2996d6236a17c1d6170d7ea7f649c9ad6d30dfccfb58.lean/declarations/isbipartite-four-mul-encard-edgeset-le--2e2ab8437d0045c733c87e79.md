# IsBipartite.four_mul_encard_edgeSet_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0fba4d7c-1120-c405-c396-9c1259bd8ae8",
  "kind": "theorem",
  "lexical_name": "IsBipartite.four_mul_encard_edgeSet_le",
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
  "slug": "isbipartite-four-mul-encard-edgeset-le--2e2ab8437d0045c733c87e79",
  "source": {
    "blob": "fbf216e964a59127e6a1b2c1a91c80ce906d8f40",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 547,
    "line": 532,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant0f2c358d8a2c1f3ca5ab2996d6236a17c1d6170d7ea7f649c9ad6d30dfccfb58.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2e2ab8437d0045c733c87e791be09c8f93c87268575dc097f12b39a39befa826",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant0f2c358d8a2c1f3ca5ab2996d6236a17c1d6170d7ea7f649c9ad6d30dfccfb58.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0fba4d7c-1120-c405-c396-9c1259bd8ae8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 532–547.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsBipartite.four_mul_encard_edgeSet_le (h : G.IsBipartite) :
    4 * G.edgeSet.encard ≤ ENat.card V ^ 2 := by
  refine finite_or_infinite V |>.elim (fun hv ↦ ?_) (fun _ ↦ by simp)
  have ⟨s, t, h⟩ := h.exists_isBipartiteWith
  grw [h.encard_edgeSet_le]
  have := Set.encard_union_eq h.disjoint ▸ Set.encard_le_card
  rw [ENat.card_eq_coe_natCard, ← s.toFinite.cast_ncard_eq, ← t.toFinite.cast_ncard_eq] at this ⊢
  norm_cast at this ⊢
  grind [Nat.pow_le_pow_left this 2, four_mul_le_sq_add s.ncard t.ncard]

end

section BipartiteDoubleCover

/-- `bipartiteDoubleCover G` has two vertices `inl v` and `inr v` for each vertex `v` in `G`
such that `inl v` (`inr v`) is adjacent to `inr w` (`inl w`) iff `v` is adjacent to `w` in `G`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant0f2c358d8a2c1f3ca5ab2996d6236a17c1d6170d7ea7f649c9ad6d30dfccfb58.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/GraphTheory/Bipartite/Variant0f2c358d8a2c1f3ca5ab2996d6236a17c1d6170d7ea7f649c9ad6d30dfccfb58.lean#L532).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fbf216e964a59127e6a1b2c1a91c80ce906d8f40` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
