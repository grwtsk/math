# card_div_choose_le_card_shadow_div_choose

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6847bf9c-7fc6-0715-5204-d54b5bb0326d",
  "kind": "theorem",
  "lexical_name": "card_div_choose_le_card_shadow_div_choose",
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
  "slug": "card-div-choose-le-card-shadow-div-choose--e7fd220e8a706edb06f731af",
  "source": {
    "blob": "13eeb7f335e51a45cb7c43c065042eeed2781dfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 99,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e7fd220e8a706edb06f731af7eaa31c8fa8b1cb19adf8ef0499c0d32cca86364",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6847bf9c-7fc6-0715-5204-d54b5bb0326d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 99–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem card_div_choose_le_card_shadow_div_choose (hr : r ≠ 0)
    (h𝒜 : (𝒜 : Set (Finset α)).Sized r) : (𝒜.card : 𝕜) / (Fintype.card α).choose r
    ≤ (∂ 𝒜).card / (Fintype.card α).choose (r - 1) := by
  obtain hr' | hr' := lt_or_le (Fintype.card α) r
  · rw [choose_eq_zero_of_lt hr', cast_zero, div_zero]
    exact div_nonneg (cast_nonneg _) (cast_nonneg _)
  replace h𝒜 := card_mul_le_card_shadow_mul h𝒜
  rw [div_le_div_iff] <;> norm_cast
  · cases' r with r
    · exact (hr rfl).elim
    rw [Nat.succ_eq_add_one] at *
    rw [tsub_add_eq_add_tsub hr', add_tsub_add_eq_tsub_right] at h𝒜
    apply le_of_mul_le_mul_right _ (pos_iff_ne_zero.2 hr)
    convert Nat.mul_le_mul_right ((Fintype.card α).choose r) h𝒜 using 1
    · simp [mul_assoc, Nat.choose_succ_right_eq]
      exact Or.inl (mul_comm _ _)
    · simp only [mul_assoc, choose_succ_right_eq, mul_eq_mul_left_iff]
      exact Or.inl (mul_comm _ _)
  · exact Nat.choose_pos hr'
  · exact Nat.choose_pos (r.pred_le.trans hr')
#align finset.card_div_choose_le_card_shadow_div_choose Finset.card_div_choose_le_card_shadow_div_choose

end LocalLYM

/-! ### LYM inequality -/


section LYM

section Falling

variable [DecidableEq α] (k : ℕ) (𝒜 : Finset (Finset α))

/-- `falling k 𝒜` is all the finsets of cardinality `k` which are a subset of something in `𝒜`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean#L99).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13eeb7f335e51a45cb7c43c065042eeed2781dfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
