# szemeredi_regularity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "487783bc53648212ee139e2af707ca32377e5eaa",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 72,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d6/d609a666256d939650aa75acbbe9c153d995ddfe4a6af3ae98f6445149b5bdc3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4b6005aa-70d6-1a5e-36f9-d11606008e6d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c82e9b58-6f08-bb38-f54a-b45e59e6c824",
  "kind": "theorem",
  "lexical_name": "szemeredi_regularity",
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
  "slug": "szemeredi-regularity--fce13b2320ca632e686d3463",
  "source": {
    "blob": "487783bc53648212ee139e2af707ca32377e5eaa",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 152,
    "line": 72,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Lemma/Variantd609a666256d939650aa75acbbe9c153d995ddfe4a6af3ae98f6445149b5bdc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fce13b2320ca632e686d3463a22b157e5d2416d8f7ac1df574f457686dcafcee",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Lemma/Variantd609a666256d939650aa75acbbe9c153d995ddfe4a6af3ae98f6445149b5bdc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c82e9b58-6f08-bb38-f54a-b45e59e6c824`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 72–152.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem szemeredi_regularity (hε : 0 < ε) (hl : l ≤ card α) :
    ∃ P : Finpartition univ,
      P.IsEquipartition ∧ l ≤ #P.parts ∧ #P.parts ≤ bound ε l ∧ P.IsUniform G ε := by
  obtain hα | hα := le_total (card α) (bound ε l)
  -- If `card α ≤ bound ε l`, then the partition into singletons is acceptable.
  · refine ⟨⊥, bot_isEquipartition _, ?_⟩
    rw [card_bot, card_univ]
    exact ⟨hl, hα, bot_isUniform _ hε⟩
  -- Else, let's start from a dummy equipartition of size `initialBound ε l`.
  let t := initialBound ε l
  have htα : t ≤ #(univ : Finset α) :=
    (initialBound_le_bound _ _).trans (by rwa [Finset.card_univ])
  obtain ⟨dum, hdum₁, hdum₂⟩ :=
    exists_equipartition_card_eq (univ : Finset α) (initialBound_pos _ _).ne' htα
  obtain hε₁ | hε₁ := le_total 1 ε
  -- If `ε ≥ 1`, then this dummy equipartition is `ε`-uniform, so we're done.
  · exact ⟨dum, hdum₁, (le_initialBound ε l).trans hdum₂.ge,
      hdum₂.le.trans (initialBound_le_bound ε l), (dum.isUniform_one G).mono hε₁⟩
  -- Else, set up the induction on energy. We phrase it through the existence for each `i` of an
  -- equipartition of size bounded by `stepBound^[i] (initialBound ε l)` and which is either
  -- `ε`-uniform or has energy at least `ε ^ 5 / 4 * i`.
  have : Nonempty α := by
    rw [← Fintype.card_pos_iff]
    exact (bound_pos _ _).trans_le hα
  suffices h : ∀ i, ∃ P : Finpartition (univ : Finset α), P.IsEquipartition ∧ t ≤ #P.parts ∧
    #P.parts ≤ stepBound^[i] t ∧ (P.IsUniform G ε ∨ ε ^ 5 / 4 * i ≤ P.energy G) by
  -- For `i > 4 / ε ^ 5` we know that the partition we get can't have energy `≥ ε ^ 5 / 4 * i > 1`,
  -- so it must instead be `ε`-uniform and we won.
    obtain ⟨P, hP₁, hP₂, hP₃, hP₄⟩ := h (⌊4 / ε ^ 5⌋₊ + 1)
    refine ⟨P, hP₁, (le_initialBound _ _).trans hP₂, hP₃.trans ?_,
      hP₄.resolve_right fun hPenergy => lt_irrefl (1 : ℝ) ?_⟩
    · rw [iterate_succ_apply', stepBound, bound]
      gcongr
      norm_num
    calc
      (1 : ℝ) = ε ^ 5 / ↑4 * (↑4 / ε ^ 5) := by
        rw [mul_comm, div_mul_div_cancel₀ (pow_pos hε 5).ne']; norm_num
      _ < ε ^ 5 / 4 * (⌊4 / ε ^ 5⌋₊ + 1) :=
        ((mul_lt_mul_left <| by positivity).2 (Nat.lt_floor_add_one _))
      _ ≤ (P.energy G : ℝ) := by rwa [← Nat.cast_add_one]
      _ ≤ 1 := mod_cast P.energy_le_one G
  -- Let's do the actual induction.
  intro i
  induction i with
  -- For `i = 0`, the dummy equipartition is enough.
  | zero =>
    refine ⟨dum, hdum₁, hdum₂.ge, hdum₂.le, Or.inr ?_⟩
    rw [Nat.cast_zero, mul_zero]
    exact mod_cast dum.energy_nonneg G
  -- For the induction step at `i + 1`, find `P` the equipartition at `i`.
  | succ i ih =>
  obtain ⟨P, hP₁, hP₂, hP₃, hP₄⟩ := ih
  by_cases huniform : P.IsUniform G ε
  -- If `P` is already uniform, then no need to break it up further. We can just return `P` again.
  · refine ⟨P, hP₁, hP₂, ?_, Or.inl huniform⟩
    rw [iterate_succ_apply']
    exact hP₃.trans (le_stepBound _)
  -- Else, `P` must instead have energy at least `ε ^ 5 / 4 * i`.
  replace hP₄ := hP₄.resolve_left huniform
  -- We gather a few numerical facts.
  have hεl' : 100 ≤ 4 ^ #P.parts * ε ^ 5 :=
    (hundred_lt_pow_initialBound_mul hε l).le.trans
      (mul_le_mul_of_nonneg_right (pow_right_mono₀ (by norm_num) hP₂) <| by positivity)
  have hi : (i : ℝ) ≤ 4 / ε ^ 5 := by
    have hi : ε ^ 5 / 4 * ↑i ≤ 1 := hP₄.trans (mod_cast P.energy_le_one G)
    rw [div_mul_eq_mul_div, div_le_iff₀ (show (0 : ℝ) < 4 by norm_num)] at hi
    norm_num at hi
    rwa [le_div_iff₀' (pow_pos hε _)]
  have hsize : #P.parts ≤ stepBound^[⌊4 / ε ^ 5⌋₊] t :=
    hP₃.trans (monotone_iterate_of_id_le le_stepBound (Nat.le_floor hi) _)
  have hPα : #P.parts * 16 ^ #P.parts ≤ card α :=
    (Nat.mul_le_mul hsize (Nat.pow_le_pow_right (by norm_num) hsize)).trans hα
  -- We return the increment equipartition of `P`, which has energy `≥ ε ^ 5 / 4 * (i + 1)`.
  refine ⟨increment hP₁ G ε, increment_isEquipartition hP₁ G ε, ?_, ?_, Or.inr <| le_trans ?_ <|
    energy_increment hP₁ ((seven_le_initialBound ε l).trans hP₂) hεl' hPα huniform hε.le hε₁⟩
  · rw [card_increment hPα huniform]
    exact hP₂.trans (le_stepBound _)
  · rw [card_increment hPα huniform, iterate_succ_apply']
    exact stepBound_mono hP₃
  · rw [Nat.cast_succ, mul_add, mul_one]
    exact add_le_add_right hP₄ _
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Lemma/Variantd609a666256d939650aa75acbbe9c153d995ddfe4a6af3ae98f6445149b5bdc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/ExtremalCombinatorics/Lemma/Variantd609a666256d939650aa75acbbe9c153d995ddfe4a6af3ae98f6445149b5bdc3.lean#L72).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `487783bc53648212ee139e2af707ca32377e5eaa` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
