# le_card_falling_div_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0c96bf74-7e0d-efd6-a534-83932f081a42",
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
  "slug": "le-card-falling-div-choose--c2f0e0e5647369776d5d5789",
  "source": {
    "blob": "0d4bdaf3c71ff1099b428491e8a4953c340dedb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 206,
    "line": 179,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c2f0e0e5647369776d5d57890db2971101073165e98e4ca2e70fc225fd4c2d09",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0c96bf74-7e0d-efd6-a534-83932f081a42`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–206.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem le_card_falling_div_choose [Fintype α] (hk : k ≤ Fintype.card α)
    (h𝒜 : IsAntichain (· ⊆ ·) (𝒜 : Set (Finset α))) :
    (∑ r ∈ range (k + 1),
        (#(𝒜 # (Fintype.card α - r)) : 𝕜) / (Fintype.card α).choose (Fintype.card α - r)) ≤
      (falling (Fintype.card α - k) 𝒜).card / (Fintype.card α).choose (Fintype.card α - k) := by
  induction k with
  | zero =>
    simp only [tsub_zero, cast_one, cast_le, sum_singleton, div_one, choose_self, range_one,
      zero_eq, zero_add, range_one, sum_singleton, nonpos_iff_eq_zero, tsub_zero,
      choose_self, cast_one, div_one, cast_le]
    exact card_le_card (slice_subset_falling _ _)
  | succ k ih =>
    rw [sum_range_succ, ← slice_union_shadow_falling_succ,
      card_union_of_disjoint (IsAntichain.disjoint_slice_shadow_falling h𝒜),
      cast_add, _root_.add_div, add_comm]
    rw [← tsub_tsub, tsub_add_cancel_of_le (le_tsub_of_add_le_left hk)]
    exact add_le_add_left ((ih <| le_of_succ_le hk).trans <|
      local_lubell_yamamoto_meshalkin_inequality_div
        (tsub_pos_iff_lt.2 <| Nat.succ_le_iff.1 hk).ne' <| sized_falling _ _) _

end Falling

variable [Fintype α] {𝒜 : Finset (Finset α)}

/-- The **Lubell-Yamamoto-Meshalkin inequality**, also known as the **LYM inequality**.

If `𝒜` is an antichain, then the sum of the proportion of elements it takes from each layer is less
than `1`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d4bdaf3c71ff1099b428491e8a4953c340dedb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
