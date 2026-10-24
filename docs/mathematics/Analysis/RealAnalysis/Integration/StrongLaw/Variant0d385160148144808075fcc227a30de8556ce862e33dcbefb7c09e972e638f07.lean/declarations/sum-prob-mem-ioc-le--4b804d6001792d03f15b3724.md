# sum_prob_mem_Ioc_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "57d18a3037e4850b299b887db4db5f1c3c278cea",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 218,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/0d/0d385160148144808075fcc227a30de8556ce862e33dcbefb7c09e972e638f07.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7f6066df-c147-9784-90a7-996fefc7e7f2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:75ffdcba-8aeb-6836-19d6-018ea874682d",
  "kind": "theorem",
  "lexical_name": "sum_prob_mem_Ioc_le",
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
  "slug": "sum-prob-mem-ioc-le--4b804d6001792d03f15b3724",
  "source": {
    "blob": "57d18a3037e4850b299b887db4db5f1c3c278cea",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 287,
    "line": 218,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant0d385160148144808075fcc227a30de8556ce862e33dcbefb7c09e972e638f07.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4b804d6001792d03f15b3724a4c2e2c33e15c3a8d2dd9a709574835983d07bbb",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant0d385160148144808075fcc227a30de8556ce862e33dcbefb7c09e972e638f07.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:75ffdcba-8aeb-6836-19d6-018ea874682d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 218–287.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_prob_mem_Ioc_le {X : Ω → ℝ} (hint : Integrable X) (hnonneg : 0 ≤ X) {K : ℕ} {N : ℕ}
    (hKN : K ≤ N) :
    ∑ j ∈ range K, ℙ {ω | X ω ∈ Set.Ioc (j : ℝ) N} ≤ ENNReal.ofReal (𝔼[X] + 1) := by
  let ρ : Measure ℝ := Measure.map X ℙ
  have A : ∑ j ∈ range K, ∫ _ in j..N, (1 : ℝ) ∂ρ ≤ 𝔼[X] + 1 :=
    calc
      ∑ j ∈ range K, ∫ _ in j..N, (1 : ℝ) ∂ρ =
          ∑ j ∈ range K, ∑ i ∈ Ico j N, ∫ _ in i..(i + 1 : ℕ), (1 : ℝ) ∂ρ := by
        apply sum_congr rfl fun j hj => ?_
        rw [intervalIntegral.sum_integral_adjacent_intervals_Ico ((mem_range.1 hj).le.trans hKN)]
        intro k _
        exact continuous_const.intervalIntegrable _ _
      _ = ∑ i ∈ range N, ∑ j ∈ range (min (i + 1) K), ∫ _ in i..(i + 1 : ℕ), (1 : ℝ) ∂ρ := by
        simp_rw [sum_sigma']
        refine sum_nbij' (fun p ↦ ⟨p.2, p.1⟩) (fun p ↦ ⟨p.2, p.1⟩) ?_ ?_ ?_ ?_ ?_ <;>
          aesop (add simp Nat.lt_succ_iff)
      _ ≤ ∑ i ∈ range N, (i + 1) * ∫ _ in i..(i + 1 : ℕ), (1 : ℝ) ∂ρ := by
        gcongr with i
        simp only [Nat.cast_add, Nat.cast_one, sum_const, card_range, nsmul_eq_mul, Nat.cast_min]
        refine mul_le_mul_of_nonneg_right (min_le_left _ _) ?_
        apply intervalIntegral.integral_nonneg
        · simp only [le_add_iff_nonneg_right, zero_le_one]
        · simp only [zero_le_one, imp_true_iff]
      _ ≤ ∑ i ∈ range N, ∫ x in i..(i + 1 : ℕ), x + 1 ∂ρ := by
        gcongr with i
        have I : (i : ℝ) ≤ (i + 1 : ℕ) := by
          simp only [Nat.cast_add, Nat.cast_one, le_add_iff_nonneg_right, zero_le_one]
        simp_rw [intervalIntegral.integral_of_le I, ← integral_const_mul]
        apply setIntegral_mono_on
        · exact continuous_const.integrableOn_Ioc
        · exact (continuous_id.add continuous_const).integrableOn_Ioc
        · exact measurableSet_Ioc
        · intro x hx
          simp only [Nat.cast_add, Nat.cast_one, Set.mem_Ioc] at hx
          simp [hx.1.le]
      _ = ∫ x in 0..N, x + 1 ∂ρ := by
        rw [intervalIntegral.sum_integral_adjacent_intervals fun k _ => ?_]
        · norm_cast
        · exact (continuous_id.add continuous_const).intervalIntegrable _ _
      _ = ∫ x in 0..N, x ∂ρ + ∫ x in 0..N, 1 ∂ρ := by
        rw [intervalIntegral.integral_add]
        · exact continuous_id.intervalIntegrable _ _
        · exact continuous_const.intervalIntegrable _ _
      _ = 𝔼[truncation X N] + ∫ x in 0..N, 1 ∂ρ := by
        rw [integral_truncation_eq_intervalIntegral_of_nonneg hint.1 hnonneg]
      _ ≤ 𝔼[X] + ∫ x in 0..N, 1 ∂ρ := by
        grw [integral_truncation_le_integral_of_nonneg hint hnonneg]
      _ ≤ 𝔼[X] + 1 := by
        gcongr
        rw [intervalIntegral.integral_of_le (Nat.cast_nonneg _)]
        simp only [integral_const, measureReal_restrict_apply', measurableSet_Ioc, Set.univ_inter,
          smul_eq_mul, mul_one]
        rw [← ENNReal.toReal_one]
        exact ENNReal.toReal_mono ENNReal.one_ne_top prob_le_one
  have B : ∀ a b, ℙ {ω | X ω ∈ Set.Ioc a b} = ENNReal.ofReal (∫ _ in Set.Ioc a b, (1 : ℝ) ∂ρ) := by
    intro a b
    rw [ofReal_setIntegral_one ρ _,
      Measure.map_apply_of_aemeasurable hint.aemeasurable measurableSet_Ioc]
    rfl
  calc
    ∑ j ∈ range K, ℙ {ω | X ω ∈ Set.Ioc (j : ℝ) N} =
        ∑ j ∈ range K, ENNReal.ofReal (∫ _ in Set.Ioc (j : ℝ) N, (1 : ℝ) ∂ρ) := by simp_rw [B]
    _ = ENNReal.ofReal (∑ j ∈ range K, ∫ _ in Set.Ioc (j : ℝ) N, (1 : ℝ) ∂ρ) := by
      simp [ENNReal.ofReal_sum_of_nonneg]
    _ = ENNReal.ofReal (∑ j ∈ range K, ∫ _ in (j : ℝ)..N, (1 : ℝ) ∂ρ) := by
      congr 1
      refine sum_congr rfl fun j hj => ?_
      rw [intervalIntegral.integral_of_le (Nat.cast_le.2 ((mem_range.1 hj).le.trans hKN))]
    _ ≤ ENNReal.ofReal (𝔼[X] + 1) := ENNReal.ofReal_le_ofReal A

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant0d385160148144808075fcc227a30de8556ce862e33dcbefb7c09e972e638f07.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant0d385160148144808075fcc227a30de8556ce862e33dcbefb7c09e972e638f07.lean#L218).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `57d18a3037e4850b299b887db4db5f1c3c278cea` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
