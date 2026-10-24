# auto_cheby_short_interval_bound

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bb3c0dc91a4f2a0c0b740cb4f4d46f2bdcbad179",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3721,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:196d3211-fe12-800d-941f-85b04c9c9ea6",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:728bbb9e-e0ce-aabf-80e5-4211f68f4fe8",
  "kind": "lemma",
  "lexical_name": "auto_cheby_short_interval_bound",
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
  "slug": "auto-cheby-short-interval-bound--c6c8136a4a3403e30e1a4aef",
  "source": {
    "blob": "bb3c0dc91a4f2a0c0b740cb4f4d46f2bdcbad179",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3803,
    "line": 3721,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6c8136a4a3403e30e1a4aef1cf83110b93eea5dc79ae9712f64f8c54015a293",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:728bbb9e-e0ce-aabf-80e5-4211f68f4fe8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3721–3803.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma auto_cheby_short_interval_bound (hpos : 0 ≤ f)
    (hf : ∀ (σ' : ℝ), 1 < σ' → Summable (nterm f σ'))
    (hG : ContinuousOn G {s | 1 ≤ s.re})
    (hG' : Set.EqOn G (fun s ↦ LSeries f s - A / (s - 1)) {s | 1 < s.re})
    (B : ℝ) (ψ : ℝ → ℂ) (hψSmooth : ContDiff ℝ ∞ ψ) (hψCompact : HasCompactSupport ψ)
    (hψpos : ∀ y, 0 ≤ (𝓕 ψ y).re ∧ (𝓕 ψ y).im = 0) (hψ0 : 0 < (𝓕 ψ 0).re)
    (hB_bound : ∀ x ≥ 1, ‖∑' n, f n / n * 𝓕 ψ (1 / (2 * Real.pi) * Real.log (n / x))‖ ≤ B) :
    ∃ (ε : ℝ) (C : ℝ), ε > 0 ∧ ε < 1 ∧ C > 0 ∧ ∀ x ≥ 1,
      ∑' n, (f n) * (Set.indicator (Set.Ioc ((1 - ε) * x) x) (fun _ ↦ 1) (n : ℝ)) ≤ C * x := by
  have hF : Continuous (𝓕 ψ) := VectorFourier.fourierIntegral_continuous Real.continuous_fourierChar
    (by continuity) (hψSmooth.continuous.integrable_of_hasCompactSupport hψCompact)
  have hg : Continuous fun y ↦ (𝓕 ψ y).re := Complex.continuous_re.comp hF
  obtain ⟨δ, hδpos, hball⟩ := Metric.mem_nhds_iff.1 <|
    hg.continuousAt.preimage_mem_nhds (IsOpen.mem_nhds isOpen_Ioi (half_lt_self hψ0))
  let c := (𝓕 ψ 0).re / 2
  have hcpos : 0 < c := by dsimp only [c]; linarith
  have h_psi_ge_c : ∀ y, |y| < δ → c ≤ (𝓕 ψ y).re := fun y hy ↦ (hball (mem_ball_zero_iff.mpr hy)).le
  let ε := 1 - Real.exp (-2 * π * δ)
  have hε : 0 < ε ∧ ε < 1 := by
    have h1 : Real.exp (-2 * π * δ) < 1 := Real.exp_lt_one_iff.mpr (by nlinarith [Real.pi_pos])
    exact ⟨by simp only [ε]; linarith, by simp only [ε]; linarith [Real.exp_pos (-2 * π * δ)]⟩
  have hB_nonneg : 0 ≤ B := (norm_nonneg _).trans (hB_bound 1 le_rfl)
  refine ⟨ε, B / c + 1, hε.1, hε.2, by positivity, fun x hx ↦ ?_⟩
  have h_summable : Summable fun n ↦ (f n : ℂ) / n * 𝓕 ψ (1 / (2 * π) * Real.log (n / x)) :=
    auto_cheby_fourier_summable hpos hf hG hG' ψ hψSmooth hψCompact hψpos x hx
  have hx_pos : 0 < x := by linarith
  have h_sum_lower : c / x * ∑' n, f n * Set.indicator (Set.Ioc ((1 - ε) * x) x) 1 (n : ℝ)
      ≤ ∑' n, f n / n * (𝓕 ψ (1 / (2 * π) * Real.log (n / x))).re := by
    rw [← tsum_mul_left]
    refine Summable.tsum_le_tsum (fun n ↦ ?_) ?_ ?_
    · by_cases hn : (n : ℝ) ∈ Set.Ioc ((1 - ε) * x) x
      · rw [Set.indicator_of_mem hn, Pi.one_apply, mul_one]
        have hn_pos : 0 < (n : ℝ) := by nlinarith [hn.1, hε.2]
        let y := (1 / (2 * π)) * Real.log (n / x)
        have h_arg_small : |y| < δ := by
          have h2pi : 0 < 2 * π := by linarith [Real.pi_pos]
          simp only [y, abs_mul, abs_div, abs_one, abs_of_pos h2pi]
          field_simp [ne_of_gt h2pi]; rw [mul_comm, abs_lt]
          have h_log_lower : -2 * π * δ < Real.log (n / x) := by
            rw [← Real.log_exp (-2 * π * δ), Real.log_lt_log_iff (Real.exp_pos _) (by positivity)]
            have : Real.exp (-2 * π * δ) = 1 - ε := by simp only [ε]; ring
            rw [this]; field_simp; exact hn.1
          have h_log_upper : Real.log (n / x) ≤ 0 :=
            Real.log_nonpos (by positivity) (div_le_one_of_le₀ hn.2 hx_pos.le)
          constructor <;> nlinarith [Real.pi_pos]
        have h1 : x⁻¹ ≤ (n : ℝ)⁻¹ := by rw [inv_le_inv₀ hx_pos hn_pos]; exact hn.2
        have h2 : c ≤ (𝓕 ψ y).re := h_psi_ge_c y h_arg_small
        have hfn : 0 ≤ f n := hpos n
        have hre : 0 ≤ (𝓕 ψ y).re := (hψpos y).1
        have hn_inv : 0 ≤ (n : ℝ)⁻¹ := inv_nonneg.mpr hn_pos.le
        calc c / x * f n = c * x⁻¹ * f n := by rw [div_eq_mul_inv]
          _ ≤ c * (n : ℝ)⁻¹ * f n := by gcongr
          _ ≤ (𝓕 ψ y).re * (n : ℝ)⁻¹ * f n := by gcongr
          _ = (n : ℝ)⁻¹ * (𝓕 ψ y).re * f n := by ring
          _ = f n / n * (𝓕 ψ y).re := by ring
      · rw [Set.indicator_of_notMem hn, mul_zero, mul_zero]
        exact mul_nonneg (div_nonneg (hpos n) (Nat.cast_nonneg n)) (hψpos _).1
    · refine summable_of_hasFiniteSupport <| (Set.finite_le_nat ⌊x⌋₊).subset fun n hn ↦ ?_
      simp only [Function.mem_support, ne_eq, mul_eq_zero, not_or, Set.indicator_apply_ne_zero] at hn
      exact Nat.le_floor hn.2.2.1.2
    · rw [← Complex.summable_ofReal]; convert h_summable using 1; ext n
      rw [Complex.ofReal_mul, Complex.ofReal_div]
      norm_cast
      rw [Complex.ofReal_mul]
      congr 1
      apply Complex.ext
      · simp only [Complex.ofReal_re]
      · simp only [Complex.ofReal_im]; exact (hψpos _).2.symm
  have h_real_eq : ∑' n, f n / n * (𝓕 ψ (1 / (2 * π) * Real.log (n / x))).re =
      (∑' n, (f n : ℂ) / n * 𝓕 ψ (1 / (2 * π) * Real.log (n / x))).re := by
    rw [Complex.re_tsum h_summable]; congr with n
    rw [Complex.mul_re]; norm_cast; simp only [zero_mul, sub_zero]
  calc ∑' n, f n * Set.indicator (Set.Ioc ((1 - ε) * x) x) 1 (n : ℝ)
      = x / c * (c / x * ∑' n, f n * Set.indicator (Set.Ioc ((1 - ε) * x) x) 1 (n : ℝ)) := by
        field_simp [ne_of_gt hcpos, ne_of_gt hx_pos]
    _ ≤ x / c * B := by
        gcongr; rw [h_real_eq] at h_sum_lower
        exact h_sum_lower.trans ((Complex.re_le_norm _).trans (hB_bound x hx))
    _ = (B / c) * x := by field_simp [ne_of_gt hcpos]
    _ ≤ (B / c + 1) * x := by nlinarith

/-- Bootstraps short interval bounds to global Chebyshev bound via strong induction.
If `∑_{(1-ε)x < n ≤ x} f(n) ≤ Cx` for all `x ≥ 1`, then `∑_{n ≤ x} f(n) = O(x)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/Wiener/Variant7cabce495aad8c0d0cb44a8eaec953cc049172f80657f9fd438c746d477ac439.lean#L3721).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bb3c0dc91a4f2a0c0b740cb4f4d46f2bdcbad179` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
