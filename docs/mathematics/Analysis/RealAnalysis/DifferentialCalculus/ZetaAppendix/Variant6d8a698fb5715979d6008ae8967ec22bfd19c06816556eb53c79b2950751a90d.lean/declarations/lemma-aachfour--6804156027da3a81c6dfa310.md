# lemma_aachfour

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
      "line": 1235,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6d/6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eaa383b6-aa1f-628e-e2f6-498ca01d4451",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5f19d61b-fff7-4a54-fd38-92a17af6f85f",
  "kind": "theorem",
  "lexical_name": "lemma_aachfour",
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
  "slug": "lemma-aachfour--6804156027da3a81c6dfa310",
  "source": {
    "blob": "0a0f3aece12c9562ccb5ca1c7447b813a4348cb7",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1531,
    "line": 1235,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6804156027da3a81c6dfa3107427beb7201737414e53c96a386e18d597c00e22",
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

Occurrence: `result:5f19d61b-fff7-4a54-fd38-92a17af6f85f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1235–1531.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lemma_aachfour (s : ℂ) (hsigma : 0 ≤ s.re) (ν : ℝ) (hν : ν ≠ 0) (a b : ℝ)
    (ha : a > |s.im| / (2 * π * |ν|)) (hb : b > a) :
    let φ : ℝ → ℝ := fun t ↦ ν * t - (s.im / (2 * π)) * Real.log t
    let Φ : ℝ → ℂ := fun t ↦ (t ^ (-s.re) : ℝ) * e (φ t) / (2 * π * I * (deriv φ t))
    let ϑ : ℝ := s.im / (2 * π * a)
    ∃ E, ∫ t in Set.Icc a b, t ^ (-s) * e (ν * t) = Φ b - Φ a +
      ((a ^ (-s.re - 1) : ℝ) / (2 * π ^ 2)) * E ∧
      ‖E‖ ≤ s.re / (|ν - ϑ| ^ 2) + |ϑ| / (|ν - ϑ| ^ 3) := by
  intro φ Φ ϑ
  rw [lemma_aachIBP s ν hν a b ha hb]
  dsimp only [φ, Φ]
  let g_1 : ℝ → ℝ := fun t ↦ t ^ (-s.re - 1) / (deriv φ t) ^ 2
  have ha_pos : 0 < a := lt_of_le_of_lt (div_nonneg (abs_nonneg _) (by positivity)) ha
  have hsmooth : ContDiffOn ℝ 2 φ (Set.Ioi 0) := by
    simp only [φ]
    apply ContDiffOn.sub
    · fun_prop
    · apply ContDiffOn.mul contDiffOn_const
      exact contDiffOn_log.mono (fun x hx ↦ ne_of_gt hx)
  have hcontdiffφ : ContDiffOn ℝ 1 φ (Set.Icc a b) := (hsmooth.mono (fun x hx ↦ lt_of_lt_of_le ha_pos hx.1)).of_le (by norm_num)
  have h_cont : ContinuousOn φ (Set.Icc a b) :=
    (hsmooth.mono (fun x hx ↦ lt_of_lt_of_le ha_pos hx.1)).continuousOn
  have h_deriv_cont : ContinuousOn (fun t ↦ deriv φ t) (Set.Icc a b) := by
    have h1 : ContinuousOn (deriv φ) (Set.Ioi 0) :=
      hsmooth.continuousOn_deriv_of_isOpen isOpen_Ioi (by norm_num)
    exact h1.mono (fun x hx ↦ lt_of_lt_of_le ha_pos hx.1)
  have h_deriv2_cont : ContinuousOn (fun t ↦ deriv (deriv φ) t) (Set.Icc a b) := by
    have h1 : ContDiffOn ℝ 1 (deriv φ) (Set.Ioi 0) :=
      ((contDiffOn_succ_iff_deriv_of_isOpen isOpen_Ioi).mp hsmooth).2.2
    exact (h1.continuousOn_deriv_of_isOpen isOpen_Ioi (by norm_num)).mono
      (fun x hx ↦ lt_of_lt_of_le ha_pos hx.1)
  have hφ_deriv : ∀ t ∈ Set.Icc a b, deriv φ t = ν - s.im / (2 * π * t) := by
    intro t ht
    have ht_pos : 0 < t := lt_of_lt_of_le (lt_of_le_of_lt (by positivity) ha) ht.1
    rw [show φ = fun x ↦ ν * x - (s.im / (2 * π)) * Real.log x from rfl]
    convert HasDerivAt.deriv (HasDerivAt.sub (HasDerivAt.const_mul ν (hasDerivAt_id t))
      (HasDerivAt.const_mul (s.im / (2 * π)) (Real.hasDerivAt_log ht_pos.ne'))) using 1
    field_simp
  have hφ_deriv2 : ∀ t ∈ Set.Icc a b, deriv (deriv φ) t = s.im / (2 * π * t^2) := by
    intro t ht
    have ht_pos : 0 < t := lt_of_lt_of_le (lt_of_le_of_lt (by positivity) ha) ht.1
    have h_deriv_φ : ∀ x ∈ Set.Ioi 0, deriv φ x = ν - s.im / (2 * π * x) := by
      intro x hx
      rw [show φ = fun x ↦ ν * x - (s.im / (2 * π)) * Real.log x from rfl]
      convert HasDerivAt.deriv (HasDerivAt.sub (HasDerivAt.const_mul ν (hasDerivAt_id x))
        (HasDerivAt.const_mul (s.im / (2 * π)) (Real.hasDerivAt_log (ne_of_gt hx)))) using 1
      field_simp
    have : deriv φ =ᶠ[𝓝 t] fun x ↦ ν - s.im / (2 * π * x) := by
      apply eventuallyEq_of_mem (isOpen_Ioi.mem_nhds ht_pos)
      intro x hx
      exact h_deriv_φ x hx
    rw [this.deriv_eq]
    apply HasDerivAt.deriv
    rw [show (fun x ↦ ν - s.im / (2 * π * x)) = (fun x ↦ ν - (s.im / (2 * π)) * x⁻¹) by ext; field_simp]
    convert HasDerivAt.sub (hasDerivAt_const t ν)
      (HasDerivAt.const_mul (s.im / (2 * π)) (hasDerivAt_inv ht_pos.ne')) using 1
    field_simp [Real.two_pi_pos.ne']
    ring
  have h_deriv_ne_zero : (∀ t ∈ Set.Icc a b, deriv φ t ≠ 0) := by
    intro t ht
    exact phi_deriv_ne_zero s ν a t ha ha_pos hν ht.1
  have g_1_cont : ContinuousOn g_1 (Set.Icc a b) := by
    apply ContinuousOn.div
    · apply continuousOn_rpow_const_Icc (ha_pos := ha_pos)
    · exact h_deriv_cont.pow 2
    · intro t ht
      specialize h_deriv_ne_zero t ht
      exact pow_ne_zero 2 h_deriv_ne_zero
  have hg_1_antitone : AntitoneOn (fun t ↦ |g_1 t|) (Set.Icc a b) := by
    let f : ℝ → ℝ := fun t ↦ t ^ (-s.re - 1) * |2 * π * ν - s.im / t| ^ (-2 : ℝ)
    have hf_anti : AntitoneOn f (Set.Icc a b) := by
      convert lemma_aachdecre s.re hsigma s.im ν hν a b ha 1 (by norm_num) using 1
      ext t
      dsimp [f]
      congr 2
      · simp
      · norm_num
    have h_scaled_anti : AntitoneOn (fun t ↦ (2 * π) ^ 2 * f t) (Set.Icc a b) := by
      intro x hx y hy hxy
      apply mul_le_mul_of_nonneg_left (hf_anti hx hy hxy)
      positivity
    have hg_eq : Set.EqOn (fun t ↦ |g_1 t|) (fun t ↦ (2 * π) ^ 2 * f t) (Set.Icc a b) := by
      intro t ht
      have ht_pos : 0 < t := lt_of_lt_of_le (lt_of_le_of_lt (by positivity) ha) ht.1
      dsimp only [g_1, f]
      rw [abs_div, abs_pow, abs_rpow_of_nonneg ht_pos.le]
      have hφ' : deriv φ t = ν - s.im / (2 * π * t) := by
        rw [show φ = fun x ↦ ν * x - (s.im / (2 * π)) * Real.log x from rfl]
        convert HasDerivAt.deriv (HasDerivAt.sub (HasDerivAt.const_mul ν (hasDerivAt_id t))
          (HasDerivAt.const_mul (s.im / (2 * π)) (Real.hasDerivAt_log ht_pos.ne'))) using 1
        field_simp
      rw [hφ']
      have h_inner : 2 * π * ν - s.im / t = 2 * π * (ν - s.im / (2 * π * t)) := by
        field_simp [ht_pos.ne', Real.two_pi_pos.ne']
      rw [h_inner]
      rw [abs_mul, abs_of_pos Real.two_pi_pos, mul_rpow Real.two_pi_pos.le (abs_nonneg _),
        abs_of_pos ht_pos, mul_left_comm ((2 * π) ^ 2)]
      field_simp
      have : 2 ^ 2 * π ^ 2 * (2 * π) ^ (-2 : ℝ) = 1 := by
        rw [Real.rpow_neg (by positivity), Real.rpow_two, mul_pow]
        field_simp [Real.two_pi_pos.ne']
      rw [this]
      simp only [sq_abs, one_div, rpow_neg_ofNat, Int.reduceNeg, zpow_neg, one_mul,
        inv_inj]
      symm; apply sq_abs
    exact h_scaled_anti.congr hg_eq.symm
  have g_1_integral_bound : ‖∫ t in Set.Icc a b, (t : ℂ) ^ ((-s.re - 1) : ℂ) / (2 * π * I * deriv φ t) * e (φ t)‖ ≤
    1 / (2 * π ^ 2) * (a ^ (-s.re - 1) / |ν - ϑ| ^ 2) := by
    let h : ℝ → ℝ := fun t ↦ t^(-s.re - 1) / deriv φ t
    have hg_1_eq_h_div_deriv_φ : (∀ (t : ℝ), g_1 t = h t / deriv φ t) := by
      intro t
      dsimp [g_1, h]
      rw [div_div, pow_two]
    have hmonophase := lemma_aachmonophase (a := a) (b := b) (φ := φ) (by simp [hb])
      (hcontdiffφ) (h_deriv_ne_zero) h g_1 hg_1_eq_h_div_deriv_φ g_1_cont hg_1_antitone
    simp only [ofReal_div, h] at hmonophase
    have h_factor : (fun t => (t ^ (-s.re - 1 : ℂ) / (2 * π * I * deriv φ t)) * e (φ t)) =
                (fun t => (1 / (2 * π * I)) * (t ^ (-s.re - 1 : ℂ) / deriv φ t * e (φ t))) := by
      ext t
      field_simp
    rw [h_factor]
    have step1 : ∫ (t : ℝ) in Set.Icc a b, 1 / (2 * π * I) * ((t : ℂ) ^ ((-s.re - 1) : ℂ) / (deriv φ t) * e (φ t))
           = 1 / (2 * π * I) * ∫ (t : ℝ) in Set.Icc a b, (t : ℂ) ^ ((-s.re - 1) : ℂ) / (deriv φ t) * e (φ t) :=
      integral_const_mul _ _
    rw [step1, norm_mul]
    have h_norm_const : ‖1 / (2 * ↑π * I)‖ = 1 / (2 * π) := by
      simp only [one_div, mul_inv_rev, inv_I, neg_mul, norm_neg, Complex.norm_mul, norm_I, norm_inv,
        norm_real, norm_eq_abs, Complex.norm_ofNat, one_mul, mul_eq_mul_right_iff, inv_inj,
        abs_eq_self, inv_eq_zero, OfNat.ofNat_ne_zero, or_false]
      positivity
    rw [h_norm_const]
    trans (1 / (2 * π)) * (|g_1 a| / π)
    · have h_int_eq : ∫ (t : ℝ) in Set.Icc a b, (t : ℂ) ^ (-s.re - 1 : ℂ) / ↑(deriv φ t) * e (φ t)
              = ∫ (t : ℝ) in Set.Icc a b, ↑(t ^ (-s.re - 1)) / ↑(deriv φ t) * e (φ t) := by
        refine setIntegral_congr_fun measurableSet_Icc fun t ht ↦ ?_
        rw [Complex.ofReal_cpow]
        · simp only [Complex.ofReal_sub, Complex.ofReal_neg, Complex.ofReal_one]
        · have : 0 ≤ |s.im| / (2 * π * |ν|) := by positivity
          linarith [ht.1, ha]
      rw [h_int_eq]
      apply mul_le_mul_of_nonneg_left hmonophase (by positivity)
    · rw [div_mul_eq_mul_div, mul_div_assoc]
      dsimp only [g_1]
      field_simp
      have hderivφ_eq_nu_minus_theta : deriv φ a = ν - ϑ := by
        rw [hφ_deriv _ (left_mem_Icc.mpr hb.le)]
      rw [hderivφ_eq_nu_minus_theta, abs_div, Real.abs_rpow_of_nonneg ha_pos.le,
        abs_pow, abs_of_pos ha_pos]
  let g_2 : ℝ → ℝ := fun t ↦ t ^ (-s.re) * deriv (deriv φ) t / (deriv φ t) ^ 3
  have g_2_cont : ContinuousOn g_2 (Set.Icc a b) := by
    apply ContinuousOn.div
    · refine ContinuousOn.mul ?_ h_deriv2_cont
      apply continuousOn_rpow_const_Icc (ha_pos := ha_pos)
    · exact h_deriv_cont.pow 3
    · intro t ht
      specialize h_deriv_ne_zero t ht
      exact pow_ne_zero 3 h_deriv_ne_zero
  have g_2_antitone : AntitoneOn (fun t ↦ |g_2 t|) (Set.Icc a b) := by
    set f : ℝ → ℝ := fun t ↦ t ^ (-s.re - 2) * |2 * π * ν - s.im / t| ^ (-3 : ℝ) with hf
    have hf_antitone : AntitoneOn f (Set.Icc a b) := by
      convert lemma_aachdecre s.re hsigma s.im ν hν a b ha 2 (by norm_num : 1 ≤ 2) using 1
      ext t
      simp only [hf]
      ring_nf
    have g2_eq_const_mul_f : ∀ t ∈ Set.Icc a b, |g_2 t| = |s.im| * (2 * π)^2 * f t := by
      intro t ht
      have ht_pos : 0 < t := lt_of_lt_of_le (lt_of_le_of_lt (by positivity) ha) ht.1
      dsimp [g_2, f]
      rw [hφ_deriv t ht, hφ_deriv2 t ht]
      calc
        |t ^ (-s.re) * (s.im / (2 * π * t ^ 2)) / (ν - s.im / (2 * π * t)) ^ 3|
        = |t ^ (-s.re)| * (|s.im| / |2 * π * t ^ 2|) / |ν - s.im / (2 * π * t)| ^ 3 := by
          rw [abs_div, abs_mul, abs_pow, abs_div]
        _ = t ^ (-s.re) * (|s.im| / (2 * π * t ^ 2)) / (|2 * π * ν - s.im / t| / (2 * π)) ^ 3 := by
          rw [Real.abs_rpow_of_nonneg ht_pos.le, abs_of_pos (by positivity : 0 < 2 * π * t ^ 2)]
          rw [abs_of_pos ht_pos]
          congr 1; congr 1
          field_simp [Real.two_pi_pos.ne', ht_pos.ne']
          rw [abs_div]
          ring_nf; field_simp
          rw [abs_of_pos (by positivity : 0 < π * t * 2), abs_div, abs_of_pos ht_pos]
          field_simp [ht_pos.ne']
        _ = (t ^ (-s.re) * t ^ (-2 : ℝ) * |s.im| * (2 * π) ^ 2) * |2 * π * ν - s.im / t| ^ (-3 : ℝ) := by
          field_simp
          rw [div_eq_mul_inv, ← Real.rpow_natCast, Real.rpow_neg (abs_nonneg _)]
          simp only [Nat.cast_ofNat, rpow_ofNat, rpow_neg_ofNat, Int.reduceNeg, zpow_neg,
            mul_eq_mul_right_iff, inv_eq_zero, ne_eq, OfNat.ofNat_ne_zero, not_false_eq_true,
            pow_eq_zero_iff, abs_eq_zero, div_eq_zero_iff]
          left; field_simp [ht_pos.ne']
        _ = |s.im| * (2 * π) ^ 2 * (t ^ (-s.re - 2) * |2 * π * ν - s.im / t| ^ (-3 : ℝ)) := by
          rw [← Real.rpow_add ht_pos]
          ring_nf
    intro x hx y hy hxy
    simp_rw [g2_eq_const_mul_f x hx, g2_eq_const_mul_f y hy]
    exact mul_le_mul_of_nonneg_left (hf_antitone hx hy hxy) (by positivity)
  have g_2_integral_bound : ‖∫ t in Set.Icc a b, (t : ℂ) ^ (-s.re : ℂ) * (deriv (deriv φ) t) /
      (2 * π * I * (deriv φ t) ^ 2) * e (φ t)‖ ≤
    1 / (2 * π ^ 2) * (a ^ (-s.re - 1) * |ϑ| / |ν - ϑ| ^ 3) := by
    let h : ℝ → ℝ := fun t ↦ t ^ (-s.re) * deriv (deriv φ) t / (deriv φ t) ^ 2
    have hg_2_eq_h_div_deriv_φ : (∀ (t : ℝ), g_2 t = h t / deriv φ t) := by
      intro t
      dsimp [g_2, h]
      rw [div_div, ← pow_succ]
    have hmonophase := lemma_aachmonophase (a := a) (b := b) (φ := φ) (by simp [hb])
      (hcontdiffφ) (h_deriv_ne_zero) h g_2 hg_2_eq_h_div_deriv_φ g_2_cont g_2_antitone
    simp only [ofReal_div, h, g_2] at hmonophase
    have h_factor : ∫ t in Set.Icc a b, (t : ℂ) ^ (-s.re : ℂ) * (deriv (deriv φ) t) /
        (2 * π * I * (deriv φ t) ^ 2) * e (φ t) =
        ∫ t in Set.Icc a b, (1 / (2 * π * I)) * (↑(h t) * e (φ t)) := by
      apply setIntegral_congr_fun measurableSet_Icc
      intro t ht
      dsimp [h]
      simp only [Complex.ofReal_mul, Complex.ofReal_div, Complex.ofReal_pow, Complex.ofReal_neg,
        Complex.ofReal_cpow (ha_pos.trans_le ht.1).le]
      field_simp [h_deriv_ne_zero t ht]
    rw [h_factor, integral_const_mul, norm_mul]
    have h_norm_const : ‖1 / (2 * ↑π * I)‖ = 1 / (2 * π) := by
      rw [norm_div, norm_one, Complex.norm_mul, Complex.norm_I, mul_one]
      simp only [Complex.norm_mul, Complex.norm_ofNat, norm_real, norm_eq_abs, one_div, mul_inv_rev,
        mul_eq_mul_right_iff, inv_inj, abs_eq_self, inv_eq_zero, OfNat.ofNat_ne_zero, or_false]; positivity
    rw [h_norm_const]
    calc
      1 / (2 * π) * ‖∫ t in Set.Icc a b, ↑(h t) * e (φ t)‖
      _ ≤ 1 / (2 * π) * (|g_2 a| / π) := by
        gcongr
        convert hmonophase using 1
        simp [h, ofReal_div, ofReal_mul]
      _ = 1 / (2 * π ^ 2) * |g_2 a| := by ring
      _ = 1 / (2 * π ^ 2) * (a ^ (-s.re - 1) * |ϑ| / |ν - ϑ| ^ 3) := by
        dsimp [g_2, ϑ]
        rw [hφ_deriv _ (left_mem_Icc.mpr hb.le), hφ_deriv2 _ (left_mem_Icc.mpr hb.le)]
        have : s.im / (2 * π * a ^ 2) = (s.im / (2 * π * a)) / a := by field_simp
        rw [this]
        simp only [abs_div, abs_mul, abs_pow, abs_of_pos ha_pos, ha_pos.le, Real.abs_rpow_of_nonneg]
        field_simp [Real.pi_pos.ne', ha_pos.ne', ϑ]
        rw [mul_assoc |s.im|, mul_comm a, ← Real.rpow_add_one ha_pos.ne']
        ring_nf
  let I1 := ∫ t in Set.Icc a b, (t ^ (-s.re - 1) : ℝ) / (2 * π * I * deriv φ t) * e (φ t)
  let I2 := ∫ t in Set.Icc a b, (t ^ (-s.re) : ℝ) * (deriv (deriv φ) t) /
      (2 * π * I * (deriv φ t) ^ 2) * e (φ t)
  abel_nf
  simp only [add_left_cancel_iff]
  refine ⟨(2 * π ^ 2 * a ^ (s.re + 1 : ℂ)) * (s.re * I1 + I2), ?_, ?_⟩
  · abel_nf
    field_simp [I1, I2]
    rw [Complex.ofReal_cpow ha_pos.le, ← Complex.cpow_add _ _ (ofReal_ne_zero.mpr ha_pos.ne')]
    ring_nf
    have : 1 + (s.re : ℂ) + ↑(-1 - s.re) = 0 := by push_cast; ring
    rw [this, Complex.cpow_zero]
    simp only [mul_one]
    congr 1
    · simp only [I1]; congr
      rw [show (fun t ↦ ν * t + s.im * π⁻¹ * Real.log t * (-1 / 2)) = φ by ext; dsimp [φ]; ring]
      ext x; ring_nf; -- simp
      simp only [mul_assoc]
      congr 1
      rw [show (ν * x + s.im * (Real.log x * (π⁻¹ * (-1 / 2))) = φ x) by dsimp [φ]; ring]
      ring
    · rw [one_mul]; congr 1; ext t
      simp only [div_eq_mul_inv, pow_two, mul_inv]
      rw [mul_comm, mul_assoc, mul_left_comm]
      ring_nf
      have h_fun : (fun t ↦ ν * t + s.im * π⁻¹ * Real.log t * (-1 / 2)) = φ := by
        ext x; simp only [φ, div_eq_mul_inv]; ring
      simp only [h_fun]; field_simp
      congr; unfold φ; field_simp; ring
  · calc
    ‖2 * ↑π ^ 2 * (a : ℂ) ^ ((s.re : ℂ) + 1) * (↑s.re * I1 + I2)‖
      = (2 * π ^ 2 * a ^ (s.re + 1)) * ‖↑s.re * I1 + I2‖ := by
        rw [norm_mul]
        congr
        simp only [Complex.norm_mul, Complex.norm_ofNat, norm_pow, norm_real, norm_eq_abs, sq_abs,
          mul_eq_mul_left_iff, mul_eq_zero, OfNat.ofNat_ne_zero, ne_eq, not_false_eq_true,
          pow_eq_zero_iff, pi_ne_zero, or_self, or_false]
        rw [Complex.norm_cpow_eq_rpow_re_of_pos ha_pos]
        simp
    _ ≤ (2 * π ^ 2 * a ^ (s.re + 1)) * (s.re * ‖I1‖ + ‖I2‖) := by
      field_simp
      refine (norm_add_le _ _).trans ?_
      simp [abs_of_nonneg hsigma]
    _ ≤ (2 * π ^ 2 * a ^ (s.re + 1)) * (s.re * (1 / (2 * π ^ 2) * (a ^ (-s.re - 1) / |ν - ϑ| ^ 2))
          + (1 / (2 * π ^ 2) * (a ^ (-s.re - 1) * |ϑ| / |ν - ϑ| ^ 3))) := by
      gcongr
      · convert g_1_integral_bound using 2
        refine setIntegral_congr_fun measurableSet_Icc fun t ht ↦ ?_
        rw [Complex.ofReal_cpow (by linarith [ht.1, ha_pos]), Complex.ofReal_sub, Complex.ofReal_one]
        ring_nf; simp only [Complex.ofReal_neg]; ring_nf
      · convert g_2_integral_bound using 2
        refine setIntegral_congr_fun measurableSet_Icc fun t ht ↦ ?_
        rw [Complex.ofReal_cpow (by linarith [ht.1, ha_pos])]
        ring_nf; simp only [Complex.ofReal_neg]; ring
    _ = s.re / |ν - ϑ| ^ 2 + |ϑ| / |ν - ϑ| ^ 3 := by
      field_simp [Real.pi_pos.ne', ha_pos.ne']
      rw [← Real.rpow_add ha_pos]; ring_nf; rw [Real.rpow_zero]; ring
    _ = s.re / |ν + -1 • ϑ| ^ 2 + |ϑ| / |ν + -1 • ϑ| ^ 3 := by
      simp only [sq_abs, Int.reduceNeg, neg_smul, one_smul]; ring_nf

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_SOURCE_DEPENDENCY`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ZetaAppendix/Variant6d8a698fb5715979d6008ae8967ec22bfd19c06816556eb53c79b2950751a90d.lean#L1235).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a0f3aece12c9562ccb5ca1c7447b813a4348cb7` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
