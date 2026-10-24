# le_card_falling_div_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7d6e000ccd8e9f4669434dc2f9005211e5fd6542",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 181,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/52/529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4f2c694c-7df4-3ebc-5b04-f1b9b37a3fba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:85bb014c-31b6-953c-b196-3763eee57643",
  "kind": "theorem",
  "lexical_name": "le_card_falling_div_choose",
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
  "slug": "le-card-falling-div-choose--35edd406e5f137aaa6407831",
  "source": {
    "blob": "7d6e000ccd8e9f4669434dc2f9005211e5fd6542",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 181,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35edd406e5f137aaa6407831fb72a0b93066c69c8958fb44cb3043083df965d7",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:85bb014c-31b6-953c-b196-3763eee57643`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_card_falling_div_choose [Fintype α] (hk : k ≤ Fintype.card α)
    (h𝒜 : IsAntichain (· ⊆ ·) (𝒜 : Set (Finset α))) :
    (∑ r in range (k + 1),
        ((𝒜 # (Fintype.card α - r)).card : 𝕜) / (Fintype.card α).choose (Fintype.card α - r)) ≤
      (falling (Fintype.card α - k) 𝒜).card / (Fintype.card α).choose (Fintype.card α - k) := by
  induction' k with k ih
  · simp only [tsub_zero, cast_one, cast_le, sum_singleton, div_one, choose_self, range_one,
      zero_eq, zero_add, range_one, ge_iff_le, sum_singleton, nonpos_iff_eq_zero, tsub_zero,
      choose_self, cast_one, div_one, cast_le]
    exact card_le_of_subset (slice_subset_falling _ _)
  rw [succ_eq_add_one] at *
  rw [sum_range_succ, ← slice_union_shadow_falling_succ,
    card_disjoint_union (IsAntichain.disjoint_slice_shadow_falling h𝒜), cast_add, _root_.add_div,
    add_comm]
  rw [← tsub_tsub, tsub_add_cancel_of_le (le_tsub_of_add_le_left hk)]
  exact
    add_le_add_left
      ((ih <| le_of_succ_le hk).trans <|
        card_div_choose_le_card_shadow_div_choose (tsub_pos_iff_lt.2 <| Nat.succ_le_iff.1 hk).ne' <|
          sized_falling _ _) _
#align finset.le_card_falling_div_choose Finset.le_card_falling_div_choose

end Falling

variable {𝒜 : Finset (Finset α)} {s : Finset α} {k : ℕ}

/-- The **Lubell-Yamamoto-Meshalkin inequality**. If `𝒜` is an antichain, then the sum of the
proportion of elements it takes from each layer is less than `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LYM/Variant529443a609cb95fc820e052d03743969da0c596ce9ab319ce9710ba45a56005a.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d6e000ccd8e9f4669434dc2f9005211e5fd6542` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
