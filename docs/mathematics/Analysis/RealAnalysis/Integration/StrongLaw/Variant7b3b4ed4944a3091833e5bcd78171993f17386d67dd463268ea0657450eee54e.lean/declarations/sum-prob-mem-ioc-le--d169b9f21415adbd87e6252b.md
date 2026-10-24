# sum_prob_mem_Ioc_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fcb733ac-a9cc-cca2-e7aa-d16e8ccbc410",
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
  "slug": "sum-prob-mem-ioc-le--d169b9f21415adbd87e6252b",
  "source": {
    "blob": "bbf3a64c371d7e3f4c818827c1555abf63483c3e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 316,
    "line": 236,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d169b9f21415adbd87e6252b4de477ffb05092781df8b5bfc4be9eed9a6c9efc",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fcb733ac-a9cc-cca2-e7aa-d16e8ccbc410`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 236–316.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sum_prob_mem_Ioc_le {X : Ω → ℝ} (hint : Integrable X) (hnonneg : 0 ≤ X) {K : ℕ} {N : ℕ}
    (hKN : K ≤ N): ∑ j in range K, ℙ {ω | X ω ∈ Set.Ioc (j : ℝ) N} ≤ ENNReal.ofReal (𝔼[X] + 1) := by
  let ρ : Measure ℝ := Measure.map X ℙ
  haveI : IsProbabilityMeasure ρ := isProbabilityMeasure_map hint.aemeasurable
  have A : ∑ j in range K, ∫ _ in j..N, (1 : ℝ) ∂ρ ≤ 𝔼[X] + 1 :=
    calc
      ∑ j in range K, ∫ _ in j..N, (1 : ℝ) ∂ρ =
          ∑ j in range K, ∑ i in Ico j N, ∫ _ in i..(i + 1 : ℕ), (1 : ℝ) ∂ρ := by
        apply sum_congr rfl fun j hj => ?_
        rw [intervalIntegral.sum_integral_adjacent_intervals_Ico ((mem_range.1 hj).le.trans hKN)]
        intro k _
        exact continuous_const.intervalIntegrable _ _
      _ = ∑ i in range N, ∑ j in range (min (i + 1) K), ∫ _ in i..(i + 1 : ℕ), (1 : ℝ) ∂ρ := by
        simp_rw [sum_sigma']
        refine' sum_bij' (fun (p : Σ _ : ℕ, ℕ) _ => (⟨p.2, p.1⟩ : Σ _ : ℕ, ℕ)) _ (fun a _ => rfl)
          (fun (p : Σ _ : ℕ, ℕ) _ => (⟨p.2, p.1⟩ : Σ _ : ℕ, ℕ)) _ _ _
        · rintro ⟨i, j⟩ hij
          simp only [mem_sigma, mem_range, mem_Ico] at hij
          simp only [hij, Nat.lt_succ_iff.2 hij.2.1, mem_sigma, mem_range, lt_min_iff, and_self_iff]
        · rintro ⟨i, j⟩ hij
          simp only [mem_sigma, mem_range, lt_min_iff] at hij
          simp only [hij, Nat.lt_succ_iff.1 hij.2.1, mem_sigma, mem_range, mem_Ico, and_self_iff]
        · rintro ⟨i, j⟩ hij; rfl
        · rintro ⟨i, j⟩ hij; rfl
      _ ≤ ∑ i in range N, (i + 1) * ∫ _ in i..(i + 1 : ℕ), (1 : ℝ) ∂ρ := by
        apply sum_le_sum fun i _ => ?_
        simp only [Nat.cast_add, Nat.cast_one, sum_const, card_range, nsmul_eq_mul, Nat.cast_min]
        refine' mul_le_mul_of_nonneg_right (min_le_left _ _) _
        apply intervalIntegral.integral_nonneg
        · simp only [le_add_iff_nonneg_right, zero_le_one]
        · simp only [zero_le_one, imp_true_iff]
      _ ≤ ∑ i in range N, ∫ x in i..(i + 1 : ℕ), x + 1 ∂ρ := by
        apply sum_le_sum fun i _ => ?_
        have I : (i : ℝ) ≤ (i + 1 : ℕ) := by
          simp only [Nat.cast_add, Nat.cast_one, le_add_iff_nonneg_right, zero_le_one]
        simp_rw [intervalIntegral.integral_of_le I, ← integral_mul_left]
        apply set_integral_mono_on
        · exact continuous_const.integrableOn_Ioc
        · exact (continuous_id.add continuous_const).integrableOn_Ioc
        · exact measurableSet_Ioc
        · intro x hx
          simp only [Nat.cast_add, Nat.cast_one, Set.mem_Ioc] at hx
          simp [hx.1.le]
      _ = ∫ x in (0)..N, x + 1 ∂ρ := by
        rw [intervalIntegral.sum_integral_adjacent_intervals fun k _ => ?_]
        · norm_cast
        · exact (continuous_id.add continuous_const).intervalIntegrable _ _
      _ = ∫ x in (0)..N, x ∂ρ + ∫ x in (0)..N, 1 ∂ρ := by
        rw [intervalIntegral.integral_add]
        · exact continuous_id.intervalIntegrable _ _
        · exact continuous_const.intervalIntegrable _ _
      _ = 𝔼[truncation X N] + ∫ x in (0)..N, 1 ∂ρ := by
        rw [integral_truncation_eq_intervalIntegral_of_nonneg hint.1 hnonneg]
      _ ≤ 𝔼[X] + ∫ x in (0)..N, 1 ∂ρ :=
        (add_le_add_right (integral_truncation_le_integral_of_nonneg hint hnonneg) _)
      _ ≤ 𝔼[X] + 1 := by
        refine' add_le_add le_rfl _
        rw [intervalIntegral.integral_of_le (Nat.cast_nonneg _)]
        simp only [integral_const, Measure.restrict_apply', measurableSet_Ioc, Set.univ_inter,
          Algebra.id.smul_eq_mul, mul_one]
        rw [← ENNReal.one_toReal]
        exact ENNReal.toReal_mono ENNReal.one_ne_top prob_le_one
  have B : ∀ a b, ℙ {ω | X ω ∈ Set.Ioc a b} = ENNReal.ofReal (∫ _ in Set.Ioc a b, (1 : ℝ) ∂ρ) := by
    intro a b
    rw [ofReal_set_integral_one ρ _,
      Measure.map_apply_of_aemeasurable hint.aemeasurable measurableSet_Ioc]
    rfl
  calc
    ∑ j in range K, ℙ {ω | X ω ∈ Set.Ioc (j : ℝ) N} =
        ∑ j in range K, ENNReal.ofReal (∫ _ in Set.Ioc (j : ℝ) N, (1 : ℝ) ∂ρ) := by simp_rw [B]
    _ = ENNReal.ofReal (∑ j in range K, ∫ _ in Set.Ioc (j : ℝ) N, (1 : ℝ) ∂ρ) := by
      rw [ENNReal.ofReal_sum_of_nonneg]
      simp only [integral_const, Algebra.id.smul_eq_mul, mul_one, ENNReal.toReal_nonneg,
        imp_true_iff]
    _ = ENNReal.ofReal (∑ j in range K, ∫ _ in (j : ℝ)..N, (1 : ℝ) ∂ρ) := by
      congr 1
      refine' sum_congr rfl fun j hj => _
      rw [intervalIntegral.integral_of_le (Nat.cast_le.2 ((mem_range.1 hj).le.trans hKN))]
    _ ≤ ENNReal.ofReal (𝔼[X] + 1) := ENNReal.ofReal_le_ofReal A
#align probability_theory.sum_prob_mem_Ioc_le ProbabilityTheory.sum_prob_mem_Ioc_le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/StrongLaw/Variant7b3b4ed4944a3091833e5bcd78171993f17386d67dd463268ea0657450eee54e.lean#L236).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bbf3a64c371d7e3f4c818827c1555abf63483c3e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
