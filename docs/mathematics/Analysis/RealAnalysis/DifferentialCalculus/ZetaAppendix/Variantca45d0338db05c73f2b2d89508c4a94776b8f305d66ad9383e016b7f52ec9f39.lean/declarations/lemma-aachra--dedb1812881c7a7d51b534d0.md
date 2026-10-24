# lemma_aachra

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 471,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ca/ca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bd21229d-0447-b004-6741-9c51fc0db67e",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:cc699357-3fde-4fe9-268f-fbf73446a953",
  "kind": "theorem",
  "lexical_name": "lemma_aachra",
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
  "slug": "lemma-aachra--dedb1812881c7a7d51b534d0",
  "source": {
    "blob": "bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 571,
    "line": 471,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dedb1812881c7a7d51b534d07fb557d80451ca56340935951e9a5b3064410451",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cc699357-3fde-4fe9-268f-fbf73446a953`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 471–571.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_aachra {a b : ℝ} (ha : a < b) (g : ℝ → ℝ)
    (hg_cont : ContinuousOn g (Set.Icc a b))
    (hg_mon : AntitoneOn (fun t ↦ |g t|) (Set.Icc a b)) :
    BoundedVariationOn g (Set.Icc a b) ∧
    (eVariationOn g (Set.Icc a b)).toReal = |g a| - |g b| := by
  have h_no_sign_change : (∀ t ∈ Set.Icc a b, g t ≥ 0) ∨ (∀ t ∈ Set.Icc a b, g t ≤ 0) := by
    by_contra h_contra
    obtain ⟨a', b', ha', hb', hab', h_sign⟩ :
        ∃ a' b' : ℝ, a ≤ a' ∧ a' < b' ∧ b' ≤ b ∧ (g a' > 0 ∧ g b' < 0) ∨
        (∃ a' b' : ℝ, a ≤ a' ∧ a' < b' ∧ b' ≤ b ∧ (g a' < 0 ∧ g b' > 0)) := by
      simp only [Set.mem_Icc, and_imp, not_or, not_forall, not_le, exists_and_left] at *
      obtain ⟨⟨x, hx₁, hx₂, hx₃⟩, ⟨y, hy₁, hy₂, hy₃⟩⟩ := h_contra
      cases lt_trichotomy x y with
      | inl hxy => exact ⟨x, y, Or.inr ⟨x, hx₁, y, by grind, by grind, hx₃, hy₃⟩⟩
      | inr h => cases h with
        | inl heq => grind
        | inr hxy => exact ⟨y, x, Or.inl ⟨by grind, hxy, by grind, hy₃, hx₃⟩⟩
    · obtain ⟨c, hc⟩ : ∃ c ∈ Set.Ioo a' b', g c = 0 := by
        refine intermediate_value_Ioo' (by grind) (hg_cont.mono <| Set.Icc_subset_Icc ha' hab')
          ⟨?_, ?_⟩ <;> linarith [h_sign.1, h_sign.2]
      have := hg_mon ⟨by linarith [hc.1.1], by linarith [hc.1.2]⟩
        ⟨by linarith [hc.1.1], by linarith [hc.1.2]⟩ hc.1.2.le
      aesop
    · obtain ⟨a', b', ha', hb', hab', h₁, h₂⟩ := ‹_›
      obtain ⟨c, hc⟩ : ∃ c ∈ Set.Ioo a' b', g c = 0 := by
        apply intermediate_value_Ioo
        · grind
        · exact hg_cont.mono (Set.Icc_subset_Icc ha' hab')
        · constructor <;> grind
      have := hg_mon ⟨by linarith [hc.1.1], by linarith [hc.1.2]⟩
        ⟨by linarith [hc.1.1], by linarith [hc.1.2]⟩ hc.1.2.le
      simp_all
  rcases h_no_sign_change with h | h
  · have h_monotone : AntitoneOn g (Set.Icc a b) := fun x hx y hy hxy => by
      simpa only [abs_of_nonneg (h x hx), abs_of_nonneg (h y hy)] using hg_mon hx hy hxy
    have h_total_variation : eVariationOn g (Set.Icc a b) = ENNReal.ofReal (g a - g b) := by
      refine le_antisymm ?_ ?_
      · refine csSup_le ?_ ?_ <;> norm_num
        · exact ⟨_, ⟨⟨0, ⟨fun _ ↦ a, fun _ _ _ ↦ by grind, fun _ ↦ ⟨by grind, by grind⟩⟩⟩, rfl⟩⟩
        · rintro _ n x hx₁ hx₂ rfl
          calc ∑ i ∈ range n, edist (g (x (i + 1))) (g (x i))
              ≤ ∑ i ∈ range n, ENNReal.ofReal (g (x i) - g (x (i + 1))) := by
                refine sum_le_sum (fun i _ ↦ ?_)
                simp only [edist_dist, sub_nonneg, h_monotone (hx₂ i) (hx₂ (i + 1)) (hx₁ (Nat.le_succ _)),
                  ENNReal.ofReal_le_ofReal_iff]
                rw [dist_eq_norm, Real.norm_of_nonpos] <;>
                linarith [h_monotone (hx₂ i) (hx₂ (i + 1)) (hx₁ (Nat.le_succ _))]
            _ ≤ ENNReal.ofReal (g a - g b) := by
                rw [← ENNReal.ofReal_sum_of_nonneg] <;> norm_num
                · apply ENNReal.ofReal_le_ofReal
                  have := sum_range_sub' (fun i ↦ g (x i)) n
                  norm_num at *
                  linarith [h_monotone ⟨le_refl a, ha.le⟩ (hx₂ 0) (by linarith [hx₂ 0]),
                    h_monotone (hx₂ n) ⟨ha.le, le_refl b⟩ (by linarith [hx₂ n])]
                · exact fun i hi ↦ h_monotone (hx₂ i) (hx₂ (i + 1)) (hx₁ (Nat.le_succ _))
      · refine le_csSup ?_ ?_ <;> norm_num
        refine ⟨1, fun i ↦ if i = 0 then a else b, ?_, ?_⟩ <;> norm_num [Monotone]
        · grind
        · simp only [edist_dist, dist_eq_norm, norm_eq_abs, abs_sub_comm, abs_of_nonneg
            (sub_nonneg.mpr (h_monotone (Set.left_mem_Icc.mpr ha.le) (Set.right_mem_Icc.mpr ha.le) ha.le))]
    rw [h_total_variation, ENNReal.toReal_ofReal]
    · constructor
      · exact ne_of_lt <| lt_of_le_of_lt h_total_variation.le ENNReal.ofReal_lt_top
      · rw [abs_of_nonneg <| h a <| Set.left_mem_Icc.mpr ha.le,
            abs_of_nonneg <| h b <| Set.right_mem_Icc.mpr ha.le]
    · linarith [h_monotone (Set.left_mem_Icc.mpr ha.le) (Set.right_mem_Icc.mpr ha.le) ha.le]
  · have h_monotone : MonotoneOn g (Set.Icc a b) := fun x hx y hy hxy ↦ by have := hg_mon hx hy hxy; grind
    have h_bounded_variation : eVariationOn g (Set.Icc a b) = ENNReal.ofReal (g b - g a) := by
      refine le_antisymm ?_ ?_
      · refine csSup_le ?_ ?_ <;> norm_num
        · exact ⟨_, ⟨⟨0, ⟨fun _ ↦ a, fun _ _ _ ↦ by grind, fun _ ↦ ⟨by grind, by grind⟩⟩⟩, rfl⟩⟩
        · rintro _ n x hx₁ hx₂ rfl
          calc ∑ i ∈ range n, edist (g (x (i + 1))) (g (x i))
              ≤ ∑ i ∈ range n, ENNReal.ofReal (g (x (i + 1)) - g (x i)) := by
                refine sum_le_sum (fun i _ ↦ ?_)
                rw [edist_dist, dist_eq_norm, Real.norm_of_nonneg (sub_nonneg.mpr (h_monotone (hx₂ _)
                  (hx₂ _) (hx₁ (Nat.le_succ _))))]
            _ ≤ ENNReal.ofReal (g b - g a) := by
                rw [← ENNReal.ofReal_sum_of_nonneg]
                · rw [sum_range_sub (fun i ↦ g (x i))]
                  apply ENNReal.ofReal_le_ofReal
                  have hx0_mem : x 0 ∈ Set.Icc a b := ⟨by linarith [hx₂ 0], by linarith [hx₂ 0]⟩
                  have hxn_mem : x n ∈ Set.Icc a b := ⟨by linarith [hx₂ n], by linarith [hx₂ n]⟩
                  linarith [h_monotone ⟨le_refl a, ha.le⟩ hx0_mem (by linarith [hx₂ 0]),
                    h_monotone hxn_mem ⟨ha.le, le_refl b⟩ (by linarith [hx₂ n])]
                · exact fun i hi ↦ sub_nonneg_of_le <| h_monotone (hx₂ _) (hx₂ _) <| hx₁ <| Nat.le_succ _
      · refine le_csSup ?_ ?_ <;> norm_num
        refine ⟨1, fun i ↦ if i = 0 then a else b, ?_, ?_⟩ <;> norm_num [Monotone]
        · grind
        · simp [edist_dist, Real.dist_eq, abs_of_nonneg, h_monotone (show a ∈ Set.Icc a b by
            constructor <;> grind) (show b ∈ Set.Icc a b by constructor <;> grind) ha.le]
    simp_all only [Set.mem_Icc, and_imp]
    constructor
    · rw [BoundedVariationOn]
      exact ne_of_lt (lt_of_le_of_lt h_bounded_variation.le ENNReal.ofReal_lt_top)
    · rw [ENNReal.toReal_ofReal (sub_nonneg.mpr (h_monotone ⟨by grind, by grind⟩ ⟨by grind, by grind⟩ ha.le)),
        abs_of_nonpos (h a le_rfl ha.le), abs_of_nonpos (h b ha.le le_rfl)]
      ring

/-- For C¹ functions `g` and `F`, the error in integration by parts is bounded by
`sup ‖F‖ · ∫ |g'|`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variantca45d0338db05c73f2b2d89508c4a94776b8f305d66ad9383e016b7f52ec9f39.lean#L471).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf0ca0d4abf1ecdb5a3c374dc68f99f623935c87` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
