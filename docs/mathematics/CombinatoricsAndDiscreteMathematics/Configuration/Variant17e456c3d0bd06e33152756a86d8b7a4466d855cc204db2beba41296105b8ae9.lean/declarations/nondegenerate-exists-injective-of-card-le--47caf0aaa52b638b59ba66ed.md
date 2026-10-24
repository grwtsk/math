# Nondegenerate.exists_injective_of_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "c5259344d91591aadefbb16e34fc3bed00027a85",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 115,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/17/17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ade01d4c-3c6b-2800-9675-d3b2a3f1ecd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c86045dc-ae0c-79b6-745c-989fc7b7fcf2",
  "kind": "theorem",
  "lexical_name": "Nondegenerate.exists_injective_of_card_le",
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
  "slug": "nondegenerate-exists-injective-of-card-le--47caf0aaa52b638b59ba66ed",
  "source": {
    "blob": "c5259344d91591aadefbb16e34fc3bed00027a85",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 161,
    "line": 115,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:47caf0aaa52b638b59ba66ed38707bd89be4eeba026bc0830db3821088e9c622",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c86045dc-ae0c-79b6-745c-989fc7b7fcf2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 115–161.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nondegenerate.exists_injective_of_card_le [Nondegenerate P L] [Fintype P] [Fintype L]
    (h : Fintype.card L ≤ Fintype.card P) : ∃ f : L → P, Function.Injective f ∧ ∀ l, f l ∉ l := by
  classical
    let t : L → Finset P := fun l => Set.toFinset { p | p ∉ l }
    suffices ∀ s : Finset L, #s ≤ (s.biUnion t).card by
      -- Hall's marriage theorem
      obtain ⟨f, hf1, hf2⟩ := (Finset.all_card_le_biUnion_card_iff_exists_injective t).mp this
      exact ⟨f, hf1, fun l => Set.mem_toFinset.mp (hf2 l)⟩
    intro s
    by_cases hs₀ : #s = 0
    -- If `s = ∅`, then `#s = 0 ≤ #(s.bUnion t)`
    · simp_rw [hs₀, zero_le]
    by_cases hs₁ : #s = 1
    -- If `s = {l}`, then pick a point `p ∉ l`
    · obtain ⟨l, rfl⟩ := Finset.card_eq_one.mp hs₁
      obtain ⟨p, hl⟩ := exists_point (P := P) l
      rw [Finset.card_singleton, Finset.singleton_biUnion, Nat.one_le_iff_ne_zero]
      exact Finset.card_ne_zero_of_mem (Set.mem_toFinset.mpr hl)
    suffices #(s.biUnion t)ᶜ ≤ #sᶜ by
      -- Rephrase in terms of complements (uses `h`)
      rw [Finset.card_compl, Finset.card_compl, tsub_le_iff_left] at this
      replace := h.trans this
      rwa [← add_tsub_assoc_of_le s.card_le_univ, le_tsub_iff_left (le_add_left s.card_le_univ),
        add_le_add_iff_right] at this
    have hs₂ : #(s.biUnion t)ᶜ ≤ 1 := by
      -- At most one line through two points of `s`
      refine Finset.card_le_one_iff.mpr @fun p₁ p₂ hp₁ hp₂ => ?_
      simp_rw [t, Finset.mem_compl, Finset.mem_biUnion, not_exists, not_and,
        Set.mem_toFinset, Set.mem_setOf_eq, Classical.not_not] at hp₁ hp₂
      obtain ⟨l₁, l₂, hl₁, hl₂, hl₃⟩ :=
        Finset.one_lt_card_iff.mp (Nat.one_lt_iff_ne_zero_and_ne_one.mpr ⟨hs₀, hs₁⟩)
      exact (eq_or_eq (hp₁ l₁ hl₁) (hp₂ l₁ hl₁) (hp₁ l₂ hl₂) (hp₂ l₂ hl₂)).resolve_right hl₃
    by_cases hs₃ : #sᶜ = 0
    · rw [hs₃, Nat.le_zero]
      rw [Finset.card_compl, tsub_eq_zero_iff_le, LE.le.le_iff_eq (Finset.card_le_univ _), eq_comm,
        Finset.card_eq_iff_eq_univ] at hs₃ ⊢
      rw [hs₃]
      rw [Finset.eq_univ_iff_forall] at hs₃ ⊢
      exact fun p =>
        Exists.elim (exists_line p)-- If `s = univ`, then show `s.bUnion t = univ`
        fun l hl => Finset.mem_biUnion.mpr ⟨l, Finset.mem_univ l, Set.mem_toFinset.mpr hl⟩
    · exact hs₂.trans (Nat.one_le_iff_ne_zero.mpr hs₃)

-- If `s < univ`, then consequence of `hs₂`
variable (L)

/-- Number of points on a given line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variant17e456c3d0bd06e33152756a86d8b7a4466d855cc204db2beba41296105b8ae9.lean#L115).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c5259344d91591aadefbb16e34fc3bed00027a85` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
