# proposition_dadaro_zero_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 3765,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f6d3e477-08c2-3c1c-6dca-661815e87a5d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:830c472b-9fe4-8a8e-0570-ccbdc61e25c6",
  "kind": "lemma",
  "lexical_name": "proposition_dadaro_zero_lt",
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
  "slug": "proposition-dadaro-zero-lt--c6599423b2d248a617896c60",
  "source": {
    "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4136,
    "line": 3765,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c6599423b2d248a617896c60019302cd69bd6687d715a6d0582c0bfbb3b91156",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:830c472b-9fe4-8a8e-0570-ccbdc61e25c6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3765–4136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma proposition_dadaro_zero_lt {s : ℂ} (hs1 : s ≠ 1) (hsigma : 0 < s.re) {a : ℝ} (ha : 0 < a)
    (ha' : a.IsHalfInteger) (haτ : a > |s.im| / (2 * π)) :
    let ϑ : ℝ := s.im / (2 * π * a)
    let C : ℝ :=
      if ϑ ≠ 0 then
        s.re / 2 * ((1 / (Complex.sin (π * ϑ) ^ 2 : ℂ)).re - (1 / ((π * ϑ) ^ 2 : ℂ)).re) +
          |ϑ| / (2 * π ^ 2) * ((1 / ((1 - |ϑ|) ^ 3 : ℝ)) + 2 * (riemannZeta 3).re - 1)
      else
        s.re / 6
    let c : ℂ :=
      if ϑ ≠ 0 then
        I / 2 * ((1 / Complex.sin (π * ϑ) : ℂ) - (1 / (π * ϑ : ℂ)))
      else
        0
    ∃ E : ℂ, riemannZeta s =
      ∑ n ∈ Icc 1 ⌊a⌋₊, (n : ℂ) ^ (-s) -
      (a ^ (1 - s) : ℂ) / (1 - s) - c * (a ^ (-s) : ℂ) + E ∧
      ‖E‖ ≤ C / (a ^ (s.re + 1 : ℝ)) := by
  intro ϑ C c
  let B := {b : ℝ | b.IsHalfInteger ∧ b > a}
  let g := dadaro_g
  have h_b_term_vanishes : Tendsto
      (fun b : ℝ => (b : ℂ) ^ (-s) * dadaro_g (s.im / (2 * π * b)))
      atTop (𝓝 0) := proposition_dadaro_b_tendsto_zero_atTop hsigma
  have h_for_each_b : ∀ b ∈ B, ∃ E₁ E₂ : ℂ,
      ∑ n ∈ Finset.Icc 1 ⌊a⌋₊, (n : ℂ) ^ (-s) =
        riemannZeta s + (a : ℂ) ^ (1 - s) / (1 - s) -
        (a : ℂ) ^ (-s) * g ϑ +
        ((b : ℂ) ^ (-s) * g (s.im / (2 * π * b)) - E₁ + E₂) ∧
      ‖E₁‖ ≤ C / a ^ (s.re + 1) ∧
      ‖E₂‖ ≤ 2 * ‖s‖ / (s.re * b ^ s.re) := by
    intro b hb
    obtain ⟨hb_half, hb_gt⟩ := hb
    obtain ⟨E_zeta, h_step1, h_E_zeta_bd⟩ :=
      lemma_abadtoabsum ha hb_half hb_gt hs1 hsigma
    obtain ⟨L, _hL_tendsto, hL_eq⟩ :=
      lemma_abadusepoisson ha'.not_isInteger hb_half.not_isInteger hb_gt ha hs1
    have h_combined : ∑ n ∈ Finset.Icc 1 ⌊a⌋₊, (n : ℂ) ^ (-s) =
        riemannZeta s + (a : ℂ) ^ (1 - s) / (1 - s) - L + E_zeta := by
      rw [h_step1, hL_eq]; ring
    obtain ⟨E₁, hL_decomp, hE₁_bd⟩ : ∃ E₁ : ℂ,
        L = (a : ℂ) ^ (-s) * g ϑ -
            (b : ℂ) ^ (-s) * g (s.im / (2 * π * b)) + E₁ ∧
        ‖E₁‖ ≤ C / a ^ (s.re + 1) := by
      refine ⟨L - (a : ℂ)^(-s) * g ϑ + (b : ℂ)^(-s) * g (s.im / (2 * π * b)), ?_, ?_⟩
      · ring
      · have h_fourier_ioc_bound :
            ‖L - (a : ℂ)^(-s) * g ϑ + (b : ℂ)^(-s) * g (s.im / (2 * π * b))‖
            ≤ C / a ^ (s.re + 1) := by
          obtain ⟨h_sum, E, h_E_eq, h_E_bd⟩ := lemma_abadsumas hsigma.le ha hb_gt ha' hb_half haτ
          have hL_eq : L = (a : ℂ)^(-s) * g ϑ - (b : ℂ)^(-s) * g (s.im / (2 * π * b)) + E := by
            let f : ℝ → ℂ := fun y ↦ if a ≤ y ∧ y ≤ b then ↑(y ^ (-s.re)) * e (-(s.im / (2 * π)) * Real.log y) else 0
            have hL_tsum : L = ∑' n : ℕ, (FourierTransform.fourier f (n + 1) + FourierTransform.fourier f (-(n + 1 : ℤ))) := by
              apply tendsto_nhds_unique _hL_tendsto
              have h_eq : (fun N : ℕ ↦ ∑ n ∈ Finset.Icc 1 N,
                  (FourierTransform.fourier f ↑n + FourierTransform.fourier f (-↑n))) =ᶠ[atTop]
                  fun N ↦ ∑ n ∈ Finset.range N,
                  (FourierTransform.fourier f (n + 1) + FourierTransform.fourier f (-(n + 1 : ℤ))) := by
                apply Filter.Eventually.of_forall
                intro N
                apply Finset.sum_nbij (fun n => n - 1)
                · intro a ha
                  simp [Finset.mem_range, Finset.mem_Icc] at *
                  omega
                · intro n₁ a n₂ b h
                  simp only [] at h
                  simp only [Finset.coe_Icc, Set.mem_Icc] at a b
                  omega
                · intro n hn
                  simp only [Finset.coe_Icc, Finset.mem_coe, Finset.mem_range] at *
                  simp only [Set.mem_image, Set.mem_Icc]
                  exact ⟨n + 1, by omega, by omega⟩
                · intro n hn
                  simp only [Finset.mem_Icc] at hn
                  have : n = (n - 1) + 1 := (Nat.sub_add_cancel hn.1).symm
                  congr 1
                  · norm_cast
                    rw [this]
                    simp only [Nat.cast_add, Nat.cast_one, add_tsub_cancel_right]
                  · rw [this]
                    norm_cast
              exact h_sum.hasSum.tendsto_sum_nat.congr' h_eq.symm
            have hg_unfold : ∀ t : ℝ, g t =
                (fun t : ℝ ↦ if t ≠ 0 then (1 / Complex.sin (↑π * ↑t) : ℂ) - 1 / (↑π * ↑t) else 0) t / (2 * I) := by
              intro t
              simp only [g, dadaro_g]
              split_ifs with ht
              · rfl
              · simp
            rw [hL_tsum, h_E_eq]
            simp only [hg_unfold]
            have hϑ_def : ϑ = s.im / (2 * π * a) := rfl
            rw [hϑ_def]
            ring_nf
          have hE_eq : L - (a : ℂ)^(-s) * g ϑ + (b : ℂ)^(-s) * g (s.im / (2 * π * b)) = E := by
            rw [hL_eq]; ring
          rwa [hE_eq]
        linarith [h_fourier_ioc_bound]
    refine ⟨E₁, E_zeta, ?_, hE₁_bd, ?_⟩
    · rw [h_combined, hL_decomp]; ring
    · have hpos : (0 : ℝ) < s.re * b ^ s.re :=
        mul_pos hsigma (rpow_pos_of_pos (ha.trans hb_gt) s.re)
      calc ‖E_zeta‖
        _ ≤ ‖s‖ / (2 * s.re * b ^ s.re) := h_E_zeta_bd
        _ ≤ ‖s‖ / (s.re * b ^ s.re) := by
          apply div_le_div_of_nonneg_left (norm_nonneg s) (by positivity)
          linarith [hpos]
        _ ≤ 2 * ‖s‖ / (s.re * b ^ s.re) := by
          gcongr
          field_simp [hpos]
          linarith [norm_nonneg s]
  have h_E₂_vanishes : ∀ ε > 0, ∃ B₀ > a, B₀.IsHalfInteger ∧
      ∀ b, b.IsHalfInteger → b ≥ B₀ →
      (∃ E₂ : ℂ, ‖E₂‖ ≤ 2 * ‖s‖ / (s.re * b ^ s.re) ∧
            2 * ‖s‖ / (s.re * b ^ s.re) < ε) := by
    intro ε hε
    have h_limit : Tendsto (fun b : ℝ ↦ 2 * ‖s‖ / (s.re * b ^ s.re)) atTop (𝓝 0) := by
      have h_rw : (fun b : ℝ ↦ 2 * ‖s‖ / (s.re * b ^ s.re)) =ᶠ[atTop]
                  fun b : ℝ ↦ (2 * ‖s‖ / s.re) * b ^ (-s.re) := by
        filter_upwards [eventually_gt_atTop 0] with b hb
        rw [rpow_neg hb.le, div_mul_eq_div_div, div_eq_mul_one_div (2 * ‖s‖ / s.re)]
        field_simp
      refine (tendsto_congr' h_rw).mpr <| by
        rw [show (0 : ℝ) = (2 * ‖s‖ / s.re) * 0 by ring]
        exact Tendsto.const_mul _ (tendsto_rpow_neg_atTop hsigma)
    obtain ⟨N, hN⟩ := Metric.tendsto_atTop.mp h_limit ε hε
    let M := max a N
    let B₀ : ℝ := ↑⌊M⌋ + 3 / 2
    use B₀
    refine ⟨?_, ?_, ?_⟩
    · have hM_a : M ≥ a := le_max_left a N
      have hB₀_M : B₀ > M := Real.floor_add_three_halfs_gt M
      linarith
    · exact Real.IsHalfInteger.floor_add_three_halfs M
    · intro b hb_hi hb_ge
      have hb_gt_a : b > a := by
        have hM_a : M ≥ a := le_max_left a N
        have hB₀_M : B₀ > M := Real.floor_add_three_halfs_gt M
        linarith
      have hb_in_B : b ∈ B := ⟨hb_hi, hb_gt_a⟩
      obtain ⟨_, E₂, _, _, hE₂_bd⟩ := h_for_each_b b hb_in_B
      use E₂
      refine ⟨hE₂_bd, ?_⟩
      have hb_ge_N : b ≥ N := by
        have hM_N : M ≥ N := le_max_right a N
        have hB₀_M : B₀ > M := Real.floor_add_three_halfs_gt M
        linarith
      have h_dist := hN b hb_ge_N
      rw [dist_zero_right] at h_dist
      have h_pos : 0 < 2 * ‖s‖ / (s.re * b ^ s.re) := by
        apply div_pos
        · have h_s_ne_zero : s ≠ 0 := by
            intro h
            rw [h] at hsigma
            simp at hsigma
          exact mul_pos zero_lt_two (norm_pos_iff.mpr h_s_ne_zero)
        · exact mul_pos hsigma (rpow_pos_of_pos (ha.trans hb_gt_a) _)
      have h_abs := _root_.abs_of_pos h_pos
      rw [Real.norm_eq_abs] at h_dist
      rwa [h_abs] at h_dist
  set c_a : ℂ := g (s.im / (2 * π * a))
  set c_b : ℝ → ℂ := fun b => g (s.im / (2 * π * b))
  set main_a : ℂ :=
    riemannZeta s + ↑a ^ (1 - s) / (1 - s) - ↑a ^ (-s) * c_a
  have h_E₁_exists : ∃ E₁ : ℂ, ‖E₁‖ ≤ C / a ^ (s.re + 1) ∧
      ∀ ε > 0, ∃ B₀ > a, B₀.IsHalfInteger ∧
      ∀ b : ℝ, b.IsHalfInteger → b ≥ B₀ →
      ∀ E₁_lem E₂_lem : ℂ,
      (∑ n ∈ Finset.Icc 1 ⌊a⌋₊, (n : ℂ) ^ (-s) =
        main_a + (((b : ℂ) ^ (-s) * c_b b) - E₁_lem + E₂_lem)) →
      ‖E₂_lem + (E₁ - E₁_lem) +
        (b : ℂ) ^ (-s) * c_b b‖ < ε := by
    refine ⟨main_a - ∑ n ∈ Icc 1 ⌊a⌋₊, (n : ℂ) ^ (-s), ?_, ?_⟩
    · apply le_of_forall_pos_le_add
      intro ε hε
      have hε2 : ε / 2 > 0 := by linarith
      obtain ⟨B₁, hB₁_prop⟩ := Metric.tendsto_atTop.mp h_b_term_vanishes (ε / 2) hε2
      obtain ⟨B₂, _hB₂_gt, _hB₂_hi, hB₂_prop⟩ := h_E₂_vanishes (ε / 2) hε2
      let M := max (max a B₁) B₂
      let b : ℝ := ↑⌊M⌋ + 3 / 2
      have hb_hi : b.IsHalfInteger := Real.IsHalfInteger.floor_add_three_halfs M
      have hb_gt_a : b > a := by
        have : b > M := Real.floor_add_three_halfs_gt M
        exact lt_of_le_of_lt ((le_max_left a B₁).trans (le_max_left (max a B₁) B₂)) this
      have hb_ge_B₁ : b ≥ B₁ := by
        have : b > M := Real.floor_add_three_halfs_gt M
        exact ((le_max_right a B₁).trans (le_max_left (max a B₁) B₂)).trans this.le
      have hb_ge_B₂ : b ≥ B₂ := by
        have : b > M := Real.floor_add_three_halfs_gt M
        exact (le_max_right (max a B₁) B₂).trans this.le
      have hb_in_B : b ∈ B := ⟨hb_hi, hb_gt_a⟩
      obtain ⟨E₁_b, E₂_b, h_formula, hE₁_b_bd, hE₂_b_bd⟩ := h_for_each_b b hb_in_B
      have h_rearrange : main_a - ∑ n ∈ Icc 1 ⌊a⌋₊, (n : ℂ) ^ (-s) =
          E₁_b - ((b : ℂ) ^ (-s) * g (s.im / (2 * π * b)) + E₂_b) := by
        rw [h_formula]; ring
      rw [h_rearrange]
      calc ‖E₁_b - ((b : ℂ) ^ (-s) * g (s.im / (2 * π * b)) + E₂_b)‖
        _ ≤ ‖E₁_b‖ + ‖(b : ℂ) ^ (-s) * g (s.im / (2 * π * b)) + E₂_b‖ := norm_sub_le _ _
        _ ≤ C / a ^ (s.re + 1) + (‖(b : ℂ) ^ (-s) * g (s.im / (2 * π * b))‖ + ‖E₂_b‖) := by
          gcongr; exact norm_add_le _ _
        _ ≤ C / a ^ (s.re + 1) + (ε / 2 + ε / 2) := by
          gcongr
          · specialize hB₁_prop b hb_ge_B₁; rw [dist_zero_right] at hB₁_prop; exact hB₁_prop.le
          · obtain ⟨_, _, hE₂_bd_ε⟩ := hB₂_prop b hb_hi hb_ge_B₂; exact hE₂_b_bd.trans hE₂_bd_ε.le
        _ = C / a ^ (s.re + 1) + ε := by ring
    · intro ε hε
      obtain ⟨B₀, hB₀_gt, hB₀_hi, _⟩ := h_E₂_vanishes ε hε
      refine ⟨B₀, hB₀_gt, hB₀_hi, fun b _hb_hi _hb_ge E₁_lem E₂_lem hformula => ?_⟩
      have hcancel : E₂_lem + ((main_a - ∑ n ∈ Finset.Icc 1 ⌊a⌋₊, (n : ℂ) ^ (-s)) - E₁_lem)
          + (b : ℂ) ^ (-s) * c_b b = 0 := by
        rw [hformula]
        ring
      rwa [hcancel, norm_zero]
  obtain ⟨E₁, hE₁_bound, hE₁_limit⟩ := h_E₁_exists
  use E₁
  let transient_error (b : ℝ) (E₂ : ℂ) : ℂ :=
    E₂ + (b : ℂ) ^ (-s) * g (s.im / (2 * π * b))
  have h_eq_for_large_b : ∀ ε > 0, ∃ B₀ > a, B₀.IsHalfInteger ∧
    ∀ b, b.IsHalfInteger → b ≥ B₀ →
    ∃ E₂ : ℂ,
      ∑ n ∈ Finset.Icc 1 ⌊a⌋₊, (n : ℂ) ^ (-s) =
        riemannZeta s + (a : ℂ) ^ (1 - s) / (1 - s) + c * (a : ℂ) ^ (-s) +
        (-E₁ + transient_error b E₂) ∧
      ‖transient_error b E₂‖ < ε := by
    intro ε hε
    have hε2 : ε / 2 > 0 := by linarith
    obtain ⟨B₁, hB₁_gt, hB₁_hi, hB₁_prop⟩ := h_E₂_vanishes (ε / 2) hε2
    have hB₂_exists : ∃ B₂ : ℝ, B₂ > a ∧ B₂.IsHalfInteger ∧
        ∀ b : ℝ, b.IsHalfInteger → b ≥ B₂ →
          ‖(↑b : ℂ) ^ (-s) * dadaro_g (s.im / (2 * π * b))‖ < ε / 2 := by
      obtain ⟨N, hN⟩ := Metric.tendsto_atTop.mp h_b_term_vanishes (ε / 2) hε2
      let M := max a N
      let B₂ : ℝ := ↑⌊M⌋ + 3 / 2
      use B₂
      refine ⟨?_, ?_, ?_⟩
      · have hM_a : M ≥ a := le_max_left a N
        have hB₂_M : B₂ > M := Real.floor_add_three_halfs_gt M
        linarith
      · exact Real.IsHalfInteger.floor_add_three_halfs M
      · intro b _ hb_B₂
        have hb_N : b ≥ N := by
          have hM_N : M ≥ N := le_max_right a N
          have hB₂_M : B₂ > M := Real.floor_add_three_halfs_gt M
          linarith
        have h_dist := hN b hb_N
        rw [dist_zero_right] at h_dist
        exact h_dist
    obtain ⟨B₂, hB₂_gt, hB₂_hi, hB₂_prop⟩ := hB₂_exists
    obtain ⟨B₃, hB₃_gt, hB₃_hi, hB₃_prop⟩ := hE₁_limit ε hε
    obtain ⟨B₀, hB₀_gt, hB₀_hi, hB₀_ge₁, hB₀_ge₂, hB₀_ge₃⟩ :
      ∃ B₀ : ℝ,
        B₀ > a ∧
        B₀.IsHalfInteger ∧
        B₀ ≥ B₁ ∧
        B₀ ≥ B₂ ∧
        B₀ ≥ B₃ := by
      set M := max (max B₁ B₂) B₃
      set B₀ : ℝ := ↑⌊M⌋ + 3 / 2
      have hB₀M : B₀ > M := Real.floor_add_three_halfs_gt M
      refine ⟨B₀, ?_, ?_, ?_, ?_, ?_⟩
      · have hMa : M > a := by
          have h1 : M ≥ max B₁ B₂ := le_max_left (max B₁ B₂) B₃
          have h2 : max B₁ B₂ ≥ B₁ := le_max_left B₁ B₂
          linarith [h1, h2, hB₁_gt]
        linarith [hB₀M, hMa]
      · exact Real.IsHalfInteger.floor_add_three_halfs M
      · have hMa : M ≥ B₁ := le_trans (le_max_left B₁ B₂) (le_max_left _ _)
        linarith [hB₀M, hMa]
      · have hMa : M ≥ B₂ := le_trans (le_max_right B₁ B₂) (le_max_left _ _)
        linarith [hB₀M, hMa]
      · have hMa : M ≥ B₃ := le_max_right (max B₁ B₂) B₃
        linarith [hB₀M, hMa]
    refine ⟨B₀, hB₀_gt, hB₀_hi, fun b hb_hi hb_ge => ?_⟩
    have hb_gt_a : b > a := lt_of_lt_of_le hB₀_gt hb_ge
    have hb_in_B : b ∈ B := ⟨hb_hi, hb_gt_a⟩
    obtain ⟨E₁_lem, E₂_lem, hfb, _, _⟩ := h_for_each_b b hb_in_B
    have hfb_cb : ∑ n ∈ Finset.Icc 1 ⌊a⌋₊, (n : ℂ) ^ (-s) =
        main_a + (↑b ^ (-s) * c_b b - E₁_lem + E₂_lem) := by
      simp only [c_b, main_a, c_a] at *
      exact hfb
    have hmain : riemannZeta s + ↑a ^ (1 - s) / (1 - s) + c * ↑a ^ (-s) = main_a := by
      simp only [main_a, c_a, c, ϑ, g, dadaro_g] at *
      split_ifs with h
      · have h_sin : Complex.sin (↑π * ↑(s.im / (2 * π * a))) ≠ 0 := by
          set x := (↑π * ↑(s.im / (2 * π * a)) : ℂ)
          have hxnonzero : x ≠ 0 := by
            simp only [ofReal_div, ofReal_mul, ofReal_ofNat, ne_eq, mul_eq_zero, ofReal_eq_zero,
              pi_ne_zero, div_eq_zero_iff, OfNat.ofNat_ne_zero, or_self, ha.ne', or_false, false_or,
              x]
            exact (div_ne_zero_iff.mp h).1
          have hxbound : ‖x‖ < π := by
            calc ‖x‖
              _ = ‖(Real.pi : ℂ) * (s.im / (2 * Real.pi * a) : ℂ)‖ := by simp [x]
              _ = ‖(Real.pi : ℂ)‖ * ‖(s.im / (2 * Real.pi * a) : ℂ)‖ := by
                exact norm_mul (Real.pi : ℂ) (s.im / (2 * Real.pi * a) : ℂ)
              _ = Real.pi * (|s.im| / (2 * Real.pi * a)) := by
                have h1 : ‖(Real.pi : ℂ)‖ = Real.pi := by simp [abs_of_pos pi_pos]
                have h2 : ‖(s.im / (2 * Real.pi * a) : ℂ)‖ = |s.im| / (2 * Real.pi * a) := by
                  simp [abs_of_pos pi_pos, abs_of_pos ha]
                rw [h1, h2]
              _ = |s.im| / (2 * a) := by
                calc Real.pi * (|s.im| / (2 * Real.pi * a))
                  _ = (Real.pi * |s.im|) / (Real.pi * (2 * a)) := by ring
                  _ = |s.im| / (2 * a) := mul_div_mul_left _ _ pi_ne_zero
              _ < Real.pi := by
                rw [div_lt_iff₀ (by positivity)]
                have h4 : |s.im| / (2 * Real.pi) < a := haτ
                have h5 : |s.im| < a * (2 * Real.pi) := (div_lt_iff₀ (by positivity)).mp h4
                linarith
          rw [Complex.sin_ne_zero_iff]
          intro k
          by_cases hk : k = 0
          · simp [hk, hxnonzero]
          · have h_k_bound : π ≤ ‖(k : ℂ) * ↑π‖ := by
              rw [norm_mul]; simp only [norm_intCast, norm_real, norm_eq_abs]
              suffices 1 ≤ ‖(k : ℂ)‖ by
                have habs : 1 ≤ |( k : ℝ)| := by simpa [norm_eq_abs]
                have hpi  : |π| = π         := abs_of_pos Real.pi_pos
                rw [hpi]
                calc π = 1 * π       := (one_mul π).symm
                _ ≤ |(↑k)| * π := by
                  apply mul_le_mul_of_nonneg_right habs (le_of_lt Real.pi_pos)
              simp only [norm_intCast]
              norm_cast
              exact Int.one_le_abs hk
            intro heq
            linarith [heq ▸ hxbound]
        calc riemannZeta s + ↑a ^ (1 - s) / (1 - s) + (I / 2 * (1 / Complex.sin (↑π * ↑(s.im / (2 * π * a))) - 1 / (↑π * ↑(s.im / (2 * π * a))))) * ↑a ^ (-s)
          _ = riemannZeta s + ↑a ^ (1 - s) / (1 - s) - ((1 / Complex.sin (↑π * ↑(s.im / (2 * π * a))) - 1 / (↑π * ↑(s.im / (2 * π * a)))) / (2 * I)) * ↑a ^ (-s) := by
            field_simp [Complex.I_ne_zero, h_sin]
            ring_nf
            simp only [Complex.I_sq]
            ring
          _ = riemannZeta s + ↑a ^ (1 - s) / (1 - s)
          - ↑a ^ (-s) * ((1 / Complex.sin (↑π * ↑(s.im / (2 * π * a)))
              - 1 / (↑π * ↑(s.im / (2 * π * a)))) / (2 * I)) := by ring
          _ = _ := by
                simp only [ofReal_div, ofReal_mul, ofReal_ofNat, one_div, mul_inv_rev, inv_div]
      · simp only [zero_mul, add_zero, mul_zero, sub_zero]
    refine ⟨E₁ - E₁_lem + E₂_lem, ?_, ?_⟩
    · simp only [transient_error]
      have : -E₁ + (E₁ - E₁_lem + E₂_lem + ↑b ^ (-s) * c_b b) =
            ↑b ^ (-s) * c_b b - E₁_lem + E₂_lem := by ring
      rw [hmain, this]
      exact hfb_cb
    · have hnorm_eq : ‖transient_error b (E₁ - E₁_lem + E₂_lem)‖ =
          ‖E₂_lem + (E₁ - E₁_lem) + ↑b ^ (-s) * c_b b‖ := by
        simp only [transient_error, c_b]
        congr 1
        ring_nf
      rw [hnorm_eq]
      exact hB₃_prop b hb_hi (le_trans hB₀_ge₃ hb_ge) E₁_lem E₂_lem hfb_cb
  constructor
  · have h_dist_zero : ∀ ε > 0,
    ‖riemannZeta s - (∑ n ∈ Finset.Icc 1 ⌊a⌋₊, (n : ℂ) ^ (-s) -
                       (a : ℂ) ^ (1 - s) / (1 - s) - c * (a : ℂ) ^ (-s) + E₁)‖ < ε := by
      intro ε hε
      obtain ⟨B₀, hB₀a, hB₀half, hforallb⟩ := h_eq_for_large_b ε hε
      obtain ⟨E₂, hEq, hTbound⟩ := hforallb B₀ hB₀half le_rfl
      rwa [show riemannZeta s -
            (∑ n ∈ Finset.Icc 1 ⌊a⌋₊, (n : ℂ) ^ (-s) -
              (a : ℂ) ^ (1 - s) / (1 - s) -
              c * (a : ℂ) ^ (-s) + E₁) =
          -(transient_error B₀ E₂) by linear_combination -hEq, norm_neg]
    apply eq_of_norm_sub_eq_zero
    rw [norm_eq_zero]
    apply eq_of_forall_dist_le
    intro ε hε
    rw [dist_zero_right]
    exact le_of_lt (h_dist_zero ε hε)
  · exact hE₁_bound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean#L3765).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0f3aece12c9562ccb5ca1c7447b813a4348cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
