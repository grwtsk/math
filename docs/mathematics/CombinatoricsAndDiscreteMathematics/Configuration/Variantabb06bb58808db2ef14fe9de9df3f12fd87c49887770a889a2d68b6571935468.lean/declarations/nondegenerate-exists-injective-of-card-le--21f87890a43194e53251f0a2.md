# Nondegenerate.exists_injective_of_card_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4f012b93-970b-8728-f9b2-2c8096df9227",
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
  "slug": "nondegenerate-exists-injective-of-card-le--21f87890a43194e53251f0a2",
  "source": {
    "blob": "90fe22ae0eab72724e4a79c792addc7d76d1f5d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 181,
    "line": 133,
    "path": "GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:21f87890a43194e53251f0a2016a0d5e27ab972fdc181650e3740e737b0cdb10",
  "verification": {
    "reference": "docs/verification/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4f012b93-970b-8728-f9b2-2c8096df9227`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 133–181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Nondegenerate.exists_injective_of_card_le [Nondegenerate P L] [Fintype P] [Fintype L]
    (h : Fintype.card L ≤ Fintype.card P) : ∃ f : L → P, Function.Injective f ∧ ∀ l, f l ∉ l := by
  classical
    let t : L → Finset P := fun l => Set.toFinset { p | p ∉ l }
    suffices ∀ s : Finset L, s.card ≤ (s.biUnion t).card by
      -- Hall's marriage theorem
      obtain ⟨f, hf1, hf2⟩ := (Finset.all_card_le_biUnion_card_iff_exists_injective t).mp this
      exact ⟨f, hf1, fun l => Set.mem_toFinset.mp (hf2 l)⟩
    intro s
    by_cases hs₀ : s.card = 0
    -- If `s = ∅`, then `s.card = 0 ≤ (s.bUnion t).card`
    · simp_rw [hs₀, zero_le]
    by_cases hs₁ : s.card = 1
    -- If `s = {l}`, then pick a point `p ∉ l`
    · obtain ⟨l, rfl⟩ := Finset.card_eq_one.mp hs₁
      obtain ⟨p, hl⟩ := exists_point l
      rw [Finset.card_singleton, Finset.singleton_biUnion, Nat.one_le_iff_ne_zero]
      exact Finset.card_ne_zero_of_mem (Set.mem_toFinset.mpr hl)
    suffices (s.biUnion t)ᶜ.card ≤ sᶜ.card by
      -- Rephrase in terms of complements (uses `h`)
      rw [Finset.card_compl, Finset.card_compl, tsub_le_iff_left] at this
      replace := h.trans this
      rwa [← add_tsub_assoc_of_le s.card_le_univ, le_tsub_iff_left (le_add_left s.card_le_univ),
        add_le_add_iff_right] at this
    have hs₂ : (s.biUnion t)ᶜ.card ≤ 1 := by
      -- At most one line through two points of `s`
      refine' Finset.card_le_one_iff.mpr @fun p₁ p₂ hp₁ hp₂ => _
      simp_rw [Finset.mem_compl, Finset.mem_biUnion, not_exists, not_and,
        Set.mem_toFinset, Set.mem_setOf_eq, Classical.not_not] at hp₁ hp₂
      obtain ⟨l₁, l₂, hl₁, hl₂, hl₃⟩ :=
        Finset.one_lt_card_iff.mp (Nat.one_lt_iff_ne_zero_and_ne_one.mpr ⟨hs₀, hs₁⟩)
      exact (eq_or_eq (hp₁ l₁ hl₁) (hp₂ l₁ hl₁) (hp₁ l₂ hl₂) (hp₂ l₂ hl₂)).resolve_right hl₃
    by_cases hs₃ : sᶜ.card = 0
    · rw [hs₃, le_zero_iff]
      rw [Finset.card_compl, tsub_eq_zero_iff_le, LE.le.le_iff_eq (Finset.card_le_univ _), eq_comm,
        Finset.card_eq_iff_eq_univ] at hs₃ ⊢
      rw [hs₃]
      rw [Finset.eq_univ_iff_forall] at hs₃ ⊢
      exact fun p =>
        Exists.elim (exists_line p)-- If `s = univ`, then show `s.bUnion t = univ`
        fun l hl => Finset.mem_biUnion.mpr ⟨l, Finset.mem_univ l, Set.mem_toFinset.mpr hl⟩
    · exact hs₂.trans (Nat.one_le_iff_ne_zero.mpr hs₃)
#align configuration.nondegenerate.exists_injective_of_card_le Configuration.Nondegenerate.exists_injective_of_card_le

-- If `s < univ`, then consequence of `hs₂`
-- porting note: left out {P} to avoid redundant binder annotation
variable (L)

/-- Number of points on a given line. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CombinatoricsAndDiscreteMathematics/Configuration/Variantabb06bb58808db2ef14fe9de9df3f12fd87c49887770a889a2d68b6571935468.lean#L133).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `90fe22ae0eab72724e4a79c792addc7d76d1f5d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
