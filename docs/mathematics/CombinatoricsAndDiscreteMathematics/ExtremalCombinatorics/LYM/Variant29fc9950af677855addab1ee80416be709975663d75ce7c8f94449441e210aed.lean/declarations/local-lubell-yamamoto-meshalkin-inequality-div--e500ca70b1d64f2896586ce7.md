# local_lubell_yamamoto_meshalkin_inequality_div

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ed4599cc-e5db-2517-28aa-6c3dfa1177d8",
  "kind": "theorem",
  "lexical_name": "local_lubell_yamamoto_meshalkin_inequality_div",
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
  "slug": "local-lubell-yamamoto-meshalkin-inequality-div--e500ca70b1d64f2896586ce7",
  "source": {
    "blob": "0d4bdaf3c71ff1099b428491e8a4953c340dedb8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 129,
    "line": 97,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e500ca70b1d64f2896586ce74de29f59a8133ec7732a3d93fe45ad13be6b17c9",
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

Occurrence: `result:ed4599cc-e5db-2517-28aa-6c3dfa1177d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–129.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem local_lubell_yamamoto_meshalkin_inequality_div (hr : r ≠ 0)
    (h𝒜 : (𝒜 : Set (Finset α)).Sized r) : (#𝒜 : 𝕜) / (Fintype.card α).choose r
    ≤ #(∂ 𝒜) / (Fintype.card α).choose (r - 1) := by
  obtain hr' | hr' := lt_or_le (Fintype.card α) r
  · rw [choose_eq_zero_of_lt hr', cast_zero, div_zero]
    exact div_nonneg (cast_nonneg _) (cast_nonneg _)
  replace h𝒜 := local_lubell_yamamoto_meshalkin_inequality_mul h𝒜
  rw [div_le_div_iff₀] <;> norm_cast
  · rcases r with - | r
    · exact (hr rfl).elim
    rw [tsub_add_eq_add_tsub hr', add_tsub_add_eq_tsub_right] at h𝒜
    apply le_of_mul_le_mul_right _ (pos_iff_ne_zero.2 hr)
    convert Nat.mul_le_mul_right ((Fintype.card α).choose r) h𝒜 using 1
    · simpa [mul_assoc, Nat.choose_succ_right_eq] using Or.inl (mul_comm _ _)
    · simp only [mul_assoc, choose_succ_right_eq, mul_eq_mul_left_iff]
      exact Or.inl (mul_comm _ _)
  · exact Nat.choose_pos hr'
  · exact Nat.choose_pos (r.pred_le.trans hr')

@[inherit_doc local_lubell_yamamoto_meshalkin_inequality_div]
alias card_div_choose_le_card_shadow_div_choose := local_lubell_yamamoto_meshalkin_inequality_div

end LocalLYM

/-! ### LYM inequality -/

section LYM

section Falling

variable [DecidableEq α] (k : ℕ) (𝒜 : Finset (Finset α))

/-- `falling k 𝒜` is all the finsets of cardinality `k` which are a subset of something in `𝒜`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/LYM/Variant29fc9950af677855addab1ee80416be709975663d75ce7c8f94449441e210aed.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0d4bdaf3c71ff1099b428491e8a4953c340dedb8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
