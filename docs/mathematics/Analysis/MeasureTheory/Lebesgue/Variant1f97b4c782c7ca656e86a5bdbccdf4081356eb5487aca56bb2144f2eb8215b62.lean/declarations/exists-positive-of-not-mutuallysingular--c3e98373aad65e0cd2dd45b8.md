# exists_positive_of_not_mutuallySingular

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "883724233c3fd89322f8347adcc92d1cab190c27",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 704,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/1f/1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:598a4d3d-54e1-a51b-17a2-2b2af04a8d9d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:28062370-0396-359d-9729-ff5b32d208a2",
  "kind": "theorem",
  "lexical_name": "exists_positive_of_not_mutuallySingular",
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
  "slug": "exists-positive-of-not-mutuallysingular--c3e98373aad65e0cd2dd45b8",
  "source": {
    "blob": "883724233c3fd89322f8347adcc92d1cab190c27",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 769,
    "line": 704,
    "path": "GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3e98373aad65e0cd2dd45b885a874166466ec4a45e0220b89e3358eb8f38a21",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28062370-0396-359d-9729-ff5b32d208a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 704–769.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem exists_positive_of_not_mutuallySingular (μ ν : Measure α) [IsFiniteMeasure μ]
    [IsFiniteMeasure ν] (h : ¬ μ ⟂ₘ ν) :
    ∃ ε : ℝ≥0, 0 < ε ∧
      ∃ E : Set α, MeasurableSet E ∧ 0 < ν E
        ∧ ∀ A, MeasurableSet A → ε * ν (A ∩ E) ≤ μ (A ∩ E) := by
  -- for all `n : ℕ`, obtain the Hahn decomposition for `μ - (1 / n) ν`
  have h_decomp (n : ℕ) : ∃ s : Set α, MeasurableSet s
        ∧ (∀ t, MeasurableSet t → ((1 / (n + 1) : ℝ≥0) • ν) (t ∩ s) ≤ μ (t ∩ s))
        ∧ (∀ t, MeasurableSet t → μ (t ∩ sᶜ) ≤ ((1 / (n + 1) : ℝ≥0) • ν) (t ∩ sᶜ)) := by
    obtain ⟨s, hs, hs_le, hs_ge⟩ := hahn_decomposition μ ((1 / (n + 1) : ℝ≥0) • ν)
    refine ⟨s, hs, fun t ht ↦ ?_, fun t ht ↦ ?_⟩
    · exact hs_le (t ∩ s) (ht.inter hs) inter_subset_right
    · exact hs_ge (t ∩ sᶜ) (ht.inter hs.compl) inter_subset_right
  choose f hf₁ hf₂ hf₃ using h_decomp
  -- set `A` to be the intersection of all the negative parts of obtained Hahn decompositions
  -- and we show that `μ A = 0`
  let A := ⋂ n, (f n)ᶜ
  have hAmeas : MeasurableSet A := MeasurableSet.iInter fun n ↦ (hf₁ n).compl
  have hA₂ (n : ℕ) (t : Set α) (ht : MeasurableSet t) :
      μ (t ∩ A) ≤ ((1 / (n + 1) : ℝ≥0) • ν) (t ∩ A) := by
    specialize hf₃ n (t ∩ A) (ht.inter hAmeas)
    have : A ∩ (f n)ᶜ = A := inter_eq_left.mpr (iInter_subset _ n)
    rwa [inter_assoc, this] at hf₃
  have hA₃ (n : ℕ) : μ A ≤ (1 / (n + 1) : ℝ≥0) * ν A := by simpa using hA₂ n univ .univ
  have hμ : μ A = 0 := by
    lift μ A to ℝ≥0 using measure_ne_top _ _ with μA
    lift ν A to ℝ≥0 using measure_ne_top _ _ with νA
    rw [ENNReal.coe_eq_zero]
    by_cases! hb : 0 < νA
    · suffices ∀ b, 0 < b → μA ≤ b by
        by_contra h
        have h' := this (μA / 2) (half_pos (zero_lt_iff.2 h))
        rw [← @Classical.not_not (μA ≤ μA / 2)] at h'
        exact h' (not_le.2 (NNReal.half_lt_self h))
      intro c hc
      have : ∃ n : ℕ, 1 / (n + 1 : ℝ) < c * (νA : ℝ)⁻¹ := by
        refine exists_nat_one_div_lt ?_
        positivity
      rcases this with ⟨n, hn⟩
      have hb₁ : (0 : ℝ) < (νA : ℝ)⁻¹ := by rw [_root_.inv_pos]; exact hb
      have h' : 1 / (↑n + 1) * νA < c := by
        rw [← NNReal.coe_lt_coe, ← mul_lt_mul_iff_left₀ hb₁, NNReal.coe_mul, mul_assoc, ←
          NNReal.coe_inv, ← NNReal.coe_mul, mul_inv_cancel₀, ← NNReal.coe_mul, mul_one,
          NNReal.coe_inv]
        · exact hn
        · exact hb.ne'
      refine le_trans ?_ h'.le
      rw [← ENNReal.coe_le_coe, ENNReal.coe_mul]
      exact hA₃ n
    · rw [le_zero_iff] at hb
      simpa [hb] using hA₃ 0
  -- since `μ` and `ν` are not mutually singular, `μ A = 0` implies `ν Aᶜ > 0`
  rw [MutuallySingular] at h; push Not at h
  have := h _ hAmeas hμ
  simp_rw [A, compl_iInter, compl_compl] at this
  -- as `Aᶜ = ⋃ n, f n`, `ν Aᶜ > 0` implies there exists some `n` such that `ν (f n) > 0`
  obtain ⟨n, hn⟩ := exists_measure_pos_of_not_measure_iUnion_null this
  -- thus, choosing `f n` as the set `E` suffices
  exact ⟨1 / (n + 1), by simp, f n, hf₁ n, hn, hf₂ n⟩

namespace LebesgueDecomposition

/-- Given two measures `μ` and `ν`, `measurableLE μ ν` is the set of measurable
functions `f`, such that, for all measurable sets `A`, `∫⁻ x in A, f x ∂μ ≤ ν A`.

This is useful for the Lebesgue decomposition theorem. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Lebesgue/Variant1f97b4c782c7ca656e86a5bdbccdf4081356eb5487aca56bb2144f2eb8215b62.lean#L704).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `883724233c3fd89322f8347adcc92d1cab190c27` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
