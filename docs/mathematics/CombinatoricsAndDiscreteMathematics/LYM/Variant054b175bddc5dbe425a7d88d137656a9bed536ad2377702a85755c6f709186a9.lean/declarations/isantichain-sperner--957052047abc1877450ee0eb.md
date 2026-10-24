# IsAntichain.sperner

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:520fa21d-fdb9-d125-7620-9ccd3c60afa4",
  "kind": "theorem",
  "lexical_name": "IsAntichain.sperner",
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
  "slug": "isantichain-sperner--957052047abc1877450ee0eb",
  "source": {
    "blob": "13eeb7f335e51a45cb7c43c065042eeed2781dfc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 257,
    "line": 237,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:957052047abc1877450ee0eb84c5e0162c0e6c84acdffa66badd3959106734de",
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

Occurrence: `result:520fa21d-fdb9-d125-7620-9ccd3c60afa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–257.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem IsAntichain.sperner [Fintype α] {𝒜 : Finset (Finset α)}
    (h𝒜 : IsAntichain (· ⊆ ·) (𝒜 : Set (Finset α))) :
    𝒜.card ≤ (Fintype.card α).choose (Fintype.card α / 2) := by
  classical
    suffices (∑ r in Iic (Fintype.card α),
        ((𝒜 # r).card : ℚ) / (Fintype.card α).choose (Fintype.card α / 2)) ≤ 1 by
      rw [← sum_div, ← Nat.cast_sum, div_le_one] at this
      simp only [cast_le] at this
      rwa [sum_card_slice] at this
      simp only [cast_pos]
      exact choose_pos (Nat.div_le_self _ _)
    rw [Iic_eq_Icc, ← Ico_succ_right, bot_eq_zero, Ico_zero_eq_range]
    refine' (sum_le_sum fun r hr => _).trans (sum_card_slice_div_choose_le_one h𝒜)
    rw [mem_range] at hr
    refine' div_le_div_of_le_left _ _ _ <;> norm_cast
    · exact Nat.zero_le _
    · exact choose_pos (lt_succ_iff.1 hr)
    · exact choose_le_middle _ _
#align finset.is_antichain.sperner Finset.IsAntichain.sperner

end Finset
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/LYM/Variant054b175bddc5dbe425a7d88d137656a9bed536ad2377702a85755c6f709186a9.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `13eeb7f335e51a45cb7c43c065042eeed2781dfc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
