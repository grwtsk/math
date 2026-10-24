# lemma_abadsumas

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
      "line": 3310,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bfd4b068-9245-0aaf-079e-ee943e293dd0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ef579b05-db4f-c0f9-3c28-bb6dab8b973e",
  "kind": "theorem",
  "lexical_name": "lemma_abadsumas",
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
  "slug": "lemma-abadsumas--3f1cd3f2ae76d946e1bc6282",
  "source": {
    "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3622,
    "line": 3310,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3f1cd3f2ae76d946e1bc62829d10d0c7c6a425f401b5603915649783795ec257",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_SOURCE_DEPENDENCY"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ef579b05-db4f-c0f9-3c28-bb6dab8b973e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3310–3622.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_abadsumas {s : ℂ} (hsigma : 0 ≤ s.re) {a b : ℝ} (ha : 0 < a)
    (hab : a < b) (ha' : a.IsHalfInteger) (hb' : b.IsHalfInteger) (haτ : a > |s.im| / (2 * π)) :
    let ϑ : ℝ := s.im / (2 * π * a)
    let ϑ_minus : ℝ := s.im / (2 * π * b)
    let f : ℝ → ℂ := fun y ↦
      if a ≤ y ∧ y ≤ b then (y ^ (-s.re) : ℝ) * e (-(s.im / (2 * π)) * Real.log y) else 0
    let g : ℝ → ℂ := fun t ↦
      if t ≠ 0 then (1 / Complex.sin (π * t) : ℂ) - (1 / (π * t : ℂ)) else 0
    let C : ℝ :=
      if ϑ ≠ 0 then
        s.re / 2 * ((1 / (Complex.sin (π * ϑ) ^ 2 : ℂ)).re - (1 / ((π * ϑ) ^ 2 : ℂ)).re) +
          |ϑ| / (2 * π ^ 2) * ((1 / ((1 - |ϑ|) ^ 3 : ℝ)) + 2 * (riemannZeta 3).re - 1)
      else
        s.re / 6
    Summable (fun n : ℕ ↦ FourierTransform.fourier f (n + 1) + FourierTransform.fourier f (-(n + 1 : ℤ))) ∧
    ∃ E : ℂ, ∑' n : ℕ, (FourierTransform.fourier f (n + 1) + FourierTransform.fourier f (-(n + 1 : ℤ))) =
      ((a ^ (-s) : ℂ) * g ϑ) / (2 * I) - ((b ^ (-s) : ℂ) * g ϑ_minus) / (2 * I) + E ∧
      ‖E‖ ≤ C / a ^ (s.re + 1) := by
  intro ϑ ϑ_minus f g C
  have h_im_bound : |s.im| < 2 * π * a := by
    have hpos : 0 < 2 * π := by positivity
    rw [gt_iff_lt, div_lt_iff₀ hpos] at haτ
    linarith [mul_comm a (2 * π)]
  have apply_applem : ∀ n : ℕ, ∃ E_n : ℂ,
    FourierTransform.fourier f (n + 1) + FourierTransform.fourier f (-(n + 1 : ℤ)) =
    (↑a ^ (-s) / (2 * ↑π * I)) * ((-1 : ℂ) ^ (n + 2) * 2 * ↑ϑ / ((↑n + 1) ^ 2 - ↑ϑ ^ 2)) -
    (↑b ^ (-s) / (2 * ↑π * I)) * ((-1 : ℂ) ^ (n + 2) * 2 * ↑ϑ_minus / ((↑n + 1) ^ 2 - ↑ϑ_minus ^ 2)) +
    E_n ∧ ‖E_n‖ ≤ a ^ (-(s.re + 1)) / (2 * π ^ 2) *
      (s.re / (↑n + 1 - ϑ) ^ 2 + s.re / (↑n + 1 + ϑ) ^ 2 +
       |ϑ| / |↑n + 1 - ϑ| ^ 3 + |ϑ| / |↑n + 1 + ϑ| ^ 3) := by
    intro n
    obtain ⟨E_prop, hE_eq, hE_bound⟩ :=
      proposition_applem s hsigma haτ hab ha' hb' (n := n + 1) (by omega)
    refine ⟨↑(a ^ (-(s.re + 1))) / (2 * π ^ 2) * E_prop, ?_, ?_⟩
    · have hconv : ∫ y in (a : ℝ)..b, (y : ℂ) ^ (-s) * ↑(Real.cos (2 * π * (↑n + 1) * y)) =
          ∫ y in Set.Icc a b, (↑y : ℂ) ^ (-s) * ↑(Real.cos (2 * π * ↑(n + 1) * y)) := by
        have h_le : a ≤ b := le_of_lt hab
        rw [intervalIntegral.integral_of_le h_le]
        rw [← MeasureTheory.integral_Icc_eq_integral_Ioc]
        congr 1
        ext y
        push_cast
        rfl
      rw [lemma_abadsumas_sum_fourier s ha hab, hconv, hE_eq]
      simp only [ϑ, ϑ_minus]
      rw [show (-1 : ℂ) ^ (n + 2) = -(-1) ^ (n + 1) by ring]
      push_cast; field_simp; ring_nf
    · have hpos : (0 : ℝ) ≤ a ^ (-(s.re + 1)) / (2 * π ^ 2) := by positivity
      rw [show ‖(Complex.ofReal (a ^ (-(s.re + 1))) / (2 * Complex.ofReal π ^ 2)) * E_prop‖ =
        a ^ (-(s.re + 1)) / (2 * π ^ 2) * ‖E_prop‖ by
          have hreal : Complex.ofReal (a ^ (-(s.re + 1))) / (2 * Complex.ofReal π ^ 2) =
              Complex.ofReal (a ^ (-(s.re + 1)) / (2 * π ^ 2)) := by
            rw [Complex.ofReal_div, Complex.ofReal_mul, Complex.ofReal_pow, Complex.ofReal_ofNat]
          rw [hreal, norm_mul, Complex.norm_real, Real.norm_eq_abs, abs_of_nonneg (by positivity)]]
      have hcast : (↑(n + 1) : ℝ) = ↑n + 1 := by push_cast; ring
      have hE_bound' : ‖E_prop‖ ≤
          s.re / (↑n + 1 - ϑ) ^ 2 + s.re / (↑n + 1 + ϑ) ^ 2 +
          |ϑ| / |↑n + 1 - ϑ| ^ 3 + |ϑ| / |↑n + 1 + ϑ| ^ 3 := by
        have hϑ : ϑ = s.im / (2 * π * a) := rfl
        simp only [hϑ, ← hcast]
        exact hE_bound
      exact mul_le_mul_of_nonneg_left hE_bound' hpos
  choose error_term error_term_eq error_term_bound using apply_applem
  have hϑ_lt : |ϑ| < 1 := by
    simp only [ϑ]
    rw [abs_div, abs_of_pos (by positivity : (0:ℝ) < 2 * π * a),
        div_lt_one (by positivity : (0:ℝ) < 2 * π * a)]
    have h2π : (0:ℝ) < 2 * π := by positivity
    have := haτ
    rw [gt_iff_lt, div_lt_iff₀ h2π] at this
    linarith [abs_nonneg s.im]
  have hsin_pos : ϑ ≠ 0 → 0 < Real.sin (π * ϑ) ^ 2 := by
    intro hϑ0
    apply sq_pos_of_ne_zero
    intro hsin
    rw [Real.sin_eq_zero_iff] at hsin
    obtain ⟨n, hn⟩ := hsin
    have hπ : π ≠ 0 := Real.pi_ne_zero
    have hϑn : ϑ = (n : ℝ) := by
      have := mul_left_cancel₀ hπ (by linarith : π * ϑ = π * n)
      linarith
    have hn_abs : |(n : ℝ)| < 1 := hϑn ▸ hϑ_lt
    have hn_zero : n = 0 := by
      have : |n| < 1 := by exact_mod_cast hn_abs
      rw [abs_lt] at this
      omega
    exact hϑ0 (by rw [hϑn]; exact_mod_cast hn_zero)
  have hre : ϑ ≠ 0 → (1 / Complex.sin (π * ϑ : ℂ) ^ 2).re = 1 / (Real.sin (π * ϑ) ^ 2) := by
    intro hϑ0
    have him : (Complex.sin (π * ϑ)).im = 0 := by exact_mod_cast Complex.sin_ofReal_im (π * ϑ)
    have hre_eq : (Complex.sin (π * ϑ)).re = Real.sin (π * ϑ) := by exact_mod_cast Complex.sin_ofReal_re (π * ϑ)
    have h_is_real : Complex.sin (π * ϑ) = ↑(Real.sin (π * ϑ)) :=
      Complex.ext hre_eq (by simp [him])
    rw [h_is_real]
    norm_num [Complex.ofReal_pow]
    field_simp
    rw [show (Complex.sin (π * ϑ) ^ 2).re = Real.sin (π * ϑ) ^ 2 by
          simp [sq, Complex.mul_re, him, hre_eq]]
    have h_normSq : normSq (Complex.sin (π * ϑ)) = Real.sin (π * ϑ) ^ 2 := by
      rw [h_is_real, Complex.normSq_ofReal]
      ring
    calc Real.sin (π * ϑ) ^ 2 / normSq (Complex.sin (↑π * ↑ϑ)) ^ 2
        = Real.sin (π * ϑ) ^ 2 / (Real.sin (π * ϑ) ^ 2) ^ 2 := by
            rw [h_normSq]
      _ = 1 / Real.sin (π * ϑ) ^ 2 := by
            field_simp [hsin_pos hϑ0]
  have main_summable_a : Summable (fun n : ℕ ↦
    ((-1) ^ (n + 2) * 2 * ϑ / ((n + 1) ^ 2 - ϑ ^ 2) : ℂ)) := lemma_abadsumas_summable_alternating_theta ϑ hϑ_lt
  have main_summable_b : Summable (fun n : ℕ ↦
    ((-1) ^ (n + 2) * 2 * ϑ_minus / ((n + 1) ^ 2 - ϑ_minus ^ 2) : ℂ)) := by
    apply lemma_abadsumas_summable_alternating_theta
    dsimp [ϑ_minus, ϑ] at hϑ_lt ⊢
    rw [abs_div]
    have hb_pos : 0 < b := lt_trans ha hab
    rw [abs_of_pos (by positivity : (0 : ℝ) < 2 * π * b),
        div_lt_one (by positivity)]
    nlinarith [Real.pi_pos, hab]
  have summable_term_a : Summable (fun n : ℕ ↦
    a ^ (-s) / (2 * π * I) * ((-1) ^ (n + 2) * 2 * ϑ / ((n + 1) ^ 2 - ϑ ^ 2))) :=
    main_summable_a.mul_left (a ^ (-s) / (2 * π * I))
  have summable_term_b : Summable (fun n : ℕ ↦
    b ^ (-s) / (2 * π * I) * ((-1) ^ (n + 2) * 2 * ϑ_minus / ((n + 1) ^ 2 - ϑ_minus ^ 2))) :=
    main_summable_b.mul_left (b ^ (-s) / (2 * π * I))
  have summable_diff : Summable (fun n : ℕ ↦
    a ^ (-s) / (2 * π * I) * ((-1 : ℂ) ^ (n + 2) * 2 * ϑ / ((n + 1) ^ 2 - ϑ ^ 2)) -
    b ^ (-s) / (2 * π * I) * ((-1 : ℂ) ^ (n + 2) * 2 * ϑ_minus / ((n + 1) ^ 2 - ϑ_minus ^ 2))) :=
    summable_term_a.sub summable_term_b
  have hpos_minus : ∀ n : ℕ, 0 < (n : ℝ) + 1 - ϑ := by
    intro n
    have := hϑ_lt
    have hϑ_le : ϑ ≤ |ϑ| := le_abs_self ϑ
    linarith [Nat.cast_nonneg (α := ℝ) n]
  have hpos_plus : ∀ n : ℕ, 0 < (n : ℝ) + 1 + ϑ := by
    intro n
    have hϑ_le : -|ϑ| ≤ ϑ := neg_abs_le ϑ
    linarith [Nat.cast_nonneg (α := ℝ) n, hϑ_lt]
  have habs_minus : ∀ n : ℕ, |(n : ℝ) + 1 - ϑ| = (n : ℝ) + 1 - ϑ :=
    fun n => abs_of_pos (hpos_minus n)
  have habs_plus : ∀ n : ℕ, |(n : ℝ) + 1 + ϑ| = (n : ℝ) + 1 + ϑ :=
    fun n => abs_of_pos (hpos_plus n)
  have helper_summable {k : ℕ} (hk : 1 < k) (c : ℝ) (hc : |c| < 1) (hpos : ∀ n : ℕ, 0 < (n : ℝ) + 1 + c) :
      Summable (fun n : ℕ => 1 / ((n : ℝ) + 1 + c) ^ k) := by
    apply Summable.of_norm_bounded_eventually (g := fun n : ℕ => 1 / (n : ℝ) ^ k)
    · exact Real.summable_one_div_nat_pow.mpr hk
    · rw [Nat.cofinite_eq_atTop]
      filter_upwards [eventually_ge_atTop 1] with n hn
      rw [norm_div, norm_one, norm_pow, norm_eq_abs, abs_of_pos (hpos n)]
      apply div_le_div_of_nonneg_left (by norm_num) (by positivity)
      apply pow_le_pow_left₀ <;> linarith [abs_lt.mp hc]
  have hc_minus : |-ϑ| < 1 := by rwa [abs_neg]
  have hsumm_q : Summable fun n : ℕ => 1 / ((n : ℝ) + 1 - ϑ) ^ 2 + 1 / ((n : ℝ) + 1 + ϑ) ^ 2 :=
    (helper_summable (by norm_num) (-ϑ) hc_minus (fun n => by simpa using hpos_minus n)).add
      (helper_summable (by norm_num) ϑ hϑ_lt hpos_plus)
  have hsumm_c : Summable fun n : ℕ => 1 / ((n : ℝ) + 1 - ϑ) ^ 3 + 1 / ((n : ℝ) + 1 + ϑ) ^ 3 :=
    (helper_summable (by norm_num) (-ϑ) hc_minus (fun n => by simpa using hpos_minus n)).add
      (helper_summable (by norm_num) ϑ hϑ_lt hpos_plus)
  have sum_main_term_a : ∑' n : ℕ,
    ((-1 : ℂ) ^ (n + 2) * 2 * ϑ / ((n + 1) ^ 2 - ϑ ^ 2)) = π * g ϑ := lemma_abadsumas_sum_main_term_a ϑ hϑ_lt hpos_minus hpos_plus
  have hϑ_minus_lt : |ϑ_minus| < 1 := by
    dsimp [ϑ_minus]
    rw [abs_div]
    have hb_pos : 0 < b := lt_trans ha hab
    rw [abs_of_pos (by positivity : (0 : ℝ) < 2 * π * b),
        div_lt_one (by positivity)]
    nlinarith [Real.pi_pos, hab]
  have sum_main_term_b : ∑' n : ℕ,
    ((-1 : ℂ) ^ (n + 2) * 2 * ϑ_minus / ((n + 1 : ℂ) ^ 2 - ϑ_minus ^ 2)) = π * g ϑ_minus := lemma_abadsumas_sum_main_term_b ϑ_minus hϑ_minus_lt
  let bound : ℕ → ℝ := fun n =>
    a ^ (-(s.re + 1)) / (2 * π ^ 2) *
      (s.re / (n + 1 - ϑ) ^ 2 + s.re / (n + 1 + ϑ) ^ 2 +
      |ϑ| / |n + 1 - ϑ| ^ 3 + |ϑ| / |n + 1 + ϑ| ^ 3)
  have hbound_summable : Summable bound := by
    simp_rw [bound, habs_minus, habs_plus]
    apply Summable.mul_left
    apply ((hsumm_q.mul_left s.re).add (hsumm_c.mul_left |ϑ|)).congr
    intro n
    ring
  have error_summable : Summable error_term := Summable.of_norm_bounded hbound_summable error_term_bound
  have fourier_decomp : (fun n : ℕ ↦ FourierTransform.fourier f (n + 1) +
    FourierTransform.fourier f (-↑(n + 1 : ℤ))) =
    (fun n : ℕ ↦ a ^ (-s) / (2 * π * I) * ((-1) ^ (n + 2) * 2 * ϑ / ((n + 1) ^ 2 - ϑ ^ 2)) -
      b ^ (-s) / (2 * π * I) * ((-1) ^ (n + 2) * 2 * ϑ_minus / ((n + 1) ^ 2 - ϑ_minus ^ 2)) +
      error_term n) := funext error_term_eq
  constructor
  · rw [fourier_decomp]
    exact summable_diff.add error_summable
  · use ∑' n : ℕ, error_term n
    constructor
    · have factor_const_a : ∑' (n : ℕ),
        a ^ (-s) / (2 * π * I) * ((-1 : ℂ) ^ (n + 2) * 2 * ϑ / ((n + 1) ^ 2 - ϑ ^ 2)) =
        a ^ (-s) / (2 * π * I) * ∑' (n : ℕ), ((-1) ^ (n + 2) * 2 * ϑ / ((n + 1 : ℂ) ^ 2 - ϑ ^ 2)) :=
        main_summable_a.tsum_mul_left (a ^ (-s) / (2 * π * I))
      have factor_const_b : ∑' (n : ℕ),
        b ^ (-s) / (2 * π * I) * ((-1 : ℂ) ^ (n + 2) * 2 * ϑ_minus / ((n + 1) ^ 2 - ϑ_minus ^ 2)) =
        b ^ (-s) / (2 * π * I) * ∑' (n : ℕ), ((-1) ^ (n + 2) * 2 * ϑ_minus / ((n + 1 : ℂ) ^ 2 - ϑ_minus ^ 2)) :=
        main_summable_b.tsum_mul_left (b ^ (-s) / (2 * π * I))
      have algebra_simp : ∀ (z : ℂ) (w : ℂ), z / (2 * π * I) * (π * w) = z * w / (2 * I) := by
        intro z w; ring_nf; field_simp
      calc ∑' (n : ℕ), (FourierTransform.fourier f (n + 1) + FourierTransform.fourier f  (-↑(n + 1 : ℤ)))
          = ∑' (n : ℕ), (a ^ (-s) / (2 * π * I) * ((-1) ^ (n + 2) * 2 * ϑ / ((n + 1) ^ 2 - ϑ ^ 2)) -
            b ^ (-s) / (2 * π * I) * ((-1) ^ (n + 2) * 2 * ϑ_minus / ((n + 1) ^ 2 - ϑ_minus ^ 2)) +
            error_term n) := by
            exact congr_arg tsum fourier_decomp
        _ = ∑' (n : ℕ), (a ^ (-s) / (2 * π * I) * ((-1) ^ (n + 2) * 2 * ϑ / ((n + 1) ^ 2 - ϑ ^ 2)) -
            b ^ (-s) / (2 * π * I) * ((-1) ^ (n + 2) * 2 * ϑ_minus / ((n + 1) ^ 2 - ϑ_minus ^ 2))) +
            ∑' (n : ℕ), error_term n := by
            rw [Summable.tsum_add]
            · apply Summable.sub summable_term_a summable_term_b
            · exact error_summable
        _ = ∑' (n : ℕ), a ^ (-s) / (2 * π * I) * ((-1) ^ (n + 2) * 2 * ϑ / ((n + 1 : ℂ) ^ 2 - ϑ ^ 2)) -
            ∑' (n : ℕ), b ^ (-s) / (2 * π * I) * ((-1) ^ (n + 2) * 2 * ϑ_minus / ((n + 1 : ℂ) ^ 2 - ϑ_minus ^ 2)) +
            ∑' (n : ℕ), error_term n := by
            rw [Summable.tsum_sub summable_term_a summable_term_b]
        _ = a ^ (-s) / (2 * π * I) * ∑' (n : ℕ), ((-1) ^ (n + 2) * 2 * ϑ / ((n + 1 : ℂ) ^ 2 - ϑ ^ 2)) -
            b ^ (-s) / (2 * π * I) * ∑' (n : ℕ), ((-1) ^ (n + 2) * 2 * ϑ_minus / ((n + 1 : ℂ) ^ 2 - ϑ_minus ^ 2)) +
            ∑' (n : ℕ), error_term n := by
            rw [factor_const_a, factor_const_b]
        _ = a ^ (-s) / (2 * π * I) * (π * g ϑ) -
            b ^ (-s) / (2 * π * I) * (π * g ϑ_minus) +
            ∑' (n : ℕ), error_term n := by
            rw [sum_main_term_a, sum_main_term_b]
        _ = a ^ (-s) * g ϑ / (2 * I) - b ^ (-s) * g ϑ_minus / (2 * I) + ∑' (n : ℕ), error_term n := by
            rw [algebra_simp (a ^ (-s)) (g ϑ), algebra_simp (b ^ (-s)) (g ϑ_minus)]
    · have hquad : ∑' n : ℕ, (1 / (n + 1 - ϑ)^2 + 1/(n + 1 + ϑ)^2) =
          if ϑ = 0 then π^2/3
          else π^2 / Real.sin (π * ϑ)^2 - 1/ϑ^2 := lemma_abadsumas_quad ha haτ
      have hcubic : ∑' n : ℕ, (1/(n + 1 - ϑ)^3 + 1/(n + 1 + ϑ)^3) ≤
          1/(1-|ϑ|)^3 + 2*(riemannZeta 3).re - 1 :=
        lemma_abadimpseri ϑ hϑ_lt
      have hbound_le_half : ∑' n : ℕ, bound n ≤ (C / a ^ (s.re + 1)) := by
        simp only [bound, C]
        have hfactor : ∑' n : ℕ, bound n =
            a ^ (-(s.re + 1)) / (2 * π ^ 2) *
            (s.re * ∑' n : ℕ, (1/(n + 1 - ϑ)^2 + 1/(n + 1 + ϑ)^2) +
            |ϑ|  * ∑' n : ℕ, (1/(n + 1 - ϑ)^3 + 1/(n + 1 + ϑ)^3)) := by
          simp_rw [bound]
          simp_rw [fun n => habs_minus n, fun n => habs_plus n]
          rw [← tsum_mul_left]
          have hsplit := (hsumm_q.mul_left s.re).tsum_add (hsumm_c.mul_left |ϑ|)
          simp_rw [show ∀ n : ℕ,
              a ^ (-(s.re + 1)) / (2 * π ^ 2) *
                (s.re / (n + 1 - ϑ) ^ 2 + s.re / (n + 1 + ϑ) ^ 2 +
                 |ϑ| / (n + 1 - ϑ) ^ 3 + |ϑ| / (n + 1 + ϑ) ^ 3) =
              a ^ (-(s.re + 1)) / (2 * π ^ 2) *
                (s.re * (1 / (n + 1 - ϑ) ^ 2 + 1 / (n + 1 + ϑ) ^ 2) +
                 |ϑ| * (1 / (n + 1 - ϑ) ^ 3 + 1 / (n + 1 + ϑ) ^ 3))
            from fun n => by ring]
          rw [tsum_mul_left, hsplit, tsum_mul_left, tsum_mul_left]
        rw [hfactor]
        rcases eq_or_ne ϑ 0 with hϑ0 | hϑ0
        · simp only [hϑ0, abs_zero, add_zero, ne_eq, not_true, if_false]
          rw [show 0 = ϑ from hϑ0.symm]
          simp only [neg_add_rev, hϑ0, sub_zero, one_div, zero_mul, add_zero, ge_iff_le]
          have hq : ∑' (n : ℕ), (1 / (↑n + 1 : ℝ) ^ 2 + 1 / (↑n + 1 : ℝ) ^ 2) = π ^ 2 / 3 := by
            simp only [hϑ0, sub_zero, add_zero, if_true] at hquad
            exact hquad
          have hq' : ∑' (n : ℕ), (((↑n + 1 : ℝ) ^ 2)⁻¹ + ((↑n + 1 : ℝ) ^ 2)⁻¹) = π ^ 2 / 3 := by
            convert hq using 3
            simp only [one_div]
          have hexp : a ^ (-1 + -s.re) = a ^ (-(s.re + 1)) := by
            congr 1; ring
          rw [hq', hexp]
          have hpos_a : (0 : ℝ) < a ^ (s.re + 1) := by positivity
          rw [Real.rpow_neg (le_of_lt ha) _]
          have hpi2 : (0 : ℝ) < π ^ 2 := by positivity
          field_simp
          nlinarith [hsigma, hpos_a, hpi2]
        · have hquad' : ∑' n : ℕ, (1/(n+1-ϑ)^2 + 1/((n+1+ϑ)^2)) =
              π^2 / Real.sin (π * ϑ)^2 - 1/ϑ^2 := by
            rw [hquad]; simp [hϑ0]
          rw [hquad']
          simp only [hϑ0, ne_eq, not_false_eq_true, if_true]
          have hre2 : (1 / ((π : ℂ) * (ϑ : ℂ)) ^ 2).re = 1 / (π * ϑ) ^ 2 := by
            have h : ((1 : ℂ) / ((π : ℂ) * (ϑ : ℂ)) ^ 2) = ((1 / (π * ϑ) ^ 2 : ℝ) : ℂ) := by
              push_cast; ring
            simpa only [Complex.ofReal_re] using congr_arg Complex.re h
          rw [hre hϑ0, hre2]
          have hrpow : a ^ (-(s.re + 1)) = (a ^ (s.re + 1))⁻¹ := Real.rpow_neg (le_of_lt ha) _
          have hquad_cancel :
              a ^ (-(s.re + 1)) / (2 * π ^ 2) * (s.re * (π ^ 2 / Real.sin (π * ϑ) ^ 2 - 1 / ϑ ^ 2))
              = (s.re / 2 * (1 / Real.sin (π * ϑ) ^ 2 - 1 / (π * ϑ) ^ 2)) / a ^ (s.re + 1) := by
            rw [hrpow]; field_simp
          have hS3_le :
              a ^ (-(s.re + 1)) / (2 * π ^ 2) *
                (|ϑ| * ∑' (n : ℕ), (1 / (n + 1 - ϑ) ^ 3 + 1 / (n + 1 + ϑ) ^ 3))
              ≤ a ^ (-(s.re + 1)) / (2 * π ^ 2) *
                (|ϑ| * (1 / (1 - |ϑ|) ^ 3 + 2 * (riemannZeta 3).re - 1)) := by
            apply mul_le_mul_of_nonneg_left _ (by positivity)
            exact mul_le_mul_of_nonneg_left hcubic (abs_nonneg ϑ)
          have hrhs_eq :
                ((s.re / 2 * (1 / Real.sin (π * ϑ) ^ 2 - 1 / (π * ϑ) ^ 2) +
                    |ϑ| / (2 * π ^ 2) * (1 / (1 - |ϑ|) ^ 3 + 2 * (riemannZeta 3).re - 1)) /
                  a ^ (s.re + 1)) =
              (s.re / 2 * (1 / Real.sin (π * ϑ) ^ 2 - 1 / (π * ϑ) ^ 2)) / a ^ (s.re + 1) +
              a ^ (-(s.re + 1)) / (2 * π ^ 2) *
                (|ϑ| * (1 / (1 - |ϑ|) ^ 3 + 2 * (riemannZeta 3).re - 1)) := by
            rw [hrpow]; ring
          have hgoal_expand :
              a ^ (-(s.re + 1)) / (2 * π ^ 2) *
                (s.re * (π ^ 2 / Real.sin (π * ϑ) ^ 2 - 1 / ϑ ^ 2) +
                  |ϑ| * ∑' (n : ℕ), (1 / (n + 1 - ϑ) ^ 3 + 1 / (n + 1 + ϑ) ^ 3)) =
              a ^ (-(s.re + 1)) / (2 * π ^ 2) *
                (s.re * (π ^ 2 / Real.sin (π * ϑ) ^ 2 - 1 / ϑ ^ 2)) +
              a ^ (-(s.re + 1)) / (2 * π ^ 2) *
                (|ϑ| * ∑' (n : ℕ), (1 / (n + 1 - ϑ) ^ 3 + 1 / (n + 1 + ϑ) ^ 3)) := by
            ring
          linarith [hgoal_expand, hS3_le, hquad_cancel, hrhs_eq]
      have error_abs_summable : Summable (fun n ↦ ‖error_term n‖) :=
        Summable.of_nonneg_of_le (fun n ↦ norm_nonneg _) error_term_bound hbound_summable
      exact (norm_tsum_le_tsum_norm error_abs_summable).trans
        ((Summable.tsum_le_tsum error_term_bound error_abs_summable hbound_summable).trans
        hbound_le_half)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean#L3310).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0f3aece12c9562ccb5ca1c7447b813a4348cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
