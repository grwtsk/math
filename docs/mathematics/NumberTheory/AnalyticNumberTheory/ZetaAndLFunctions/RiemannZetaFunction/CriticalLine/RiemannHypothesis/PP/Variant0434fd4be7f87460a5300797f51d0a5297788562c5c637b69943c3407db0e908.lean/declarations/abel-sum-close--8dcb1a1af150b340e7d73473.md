# abel_sum_close

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "a6e31fd189e82edf2b54f95f5fd74a990f917cfe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 36,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/04/0434fd4be7f87460a5300797f51d0a5297788562c5c637b69943c3407db0e908.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:13bf27f3-1795-3a5b-ce54-a63e21c44b93",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5fdcf400-3045-db7f-8b88-7c10bcefc61b",
  "kind": "theorem",
  "lexical_name": "abel_sum_close",
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
  "slug": "abel-sum-close--8dcb1a1af150b340e7d73473",
  "source": {
    "blob": "a6e31fd189e82edf2b54f95f5fd74a990f917cfe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 36,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant0434fd4be7f87460a5300797f51d0a5297788562c5c637b69943c3407db0e908.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8dcb1a1af150b340e7d73473a05c23eac697caff65ed9bed95aba7afeef8489d",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant0434fd4be7f87460a5300797f51d0a5297788562c5c637b69943c3407db0e908.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5fdcf400-3045-db7f-8b88-7c10bcefc61b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 36–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem abel_sum_close {c : ℕ → ℝ} {C₀ : ℝ} (hc0 : c 0 = 0) (hc1 : c 1 = 0)
    (hC₀ : ∀ t : ℝ, 2 ≤ t →
      |(∑ k ∈ Finset.Ioc 0 ⌊t⌋₊, c k) - Real.log t ^ 2 / 2| ≤ C₀ * Real.log t) :
    ∀ (L X : ℝ) (g : ℝ → ℝ), 8 ≤ L → X = Real.exp L →
      Differentiable ℝ g → Continuous (deriv g) → (∀ y : ℝ, |deriv g y| ≤ 2) →
      (∀ y : ℝ, L ≤ y → g y = 0) →
      |(∑ n ∈ PrimeSide.primeRange X, c n * g (Real.log n)) - ∫ y in (0:ℝ)..L, g y * y|
        ≤ (2 * |C₀| + 10) * L ^ 2 := by
  classical
  intro L X g hL hX hgd hg'c hg'le hgsupp
  have hL0 : 0 < L := by linarith
  have hX1 : 1 < X := by
    rw [hX]
    calc (1:ℝ) = Real.exp 0 := Real.exp_zero.symm
      _ < Real.exp L := Real.exp_lt_exp.mpr hL0
  have hX0 : 0 < X := by linarith
  have hlogX : Real.log X = L := by rw [hX, Real.log_exp]
  -- the Abel data
  set f : ℝ → ℝ := fun t => g (Real.log t) with hfdef
  -- differentiability and derivative of f on t > 0
  have hfderiv : ∀ t : ℝ, 0 < t → HasDerivAt f (deriv g (Real.log t) / t) t := by
    intro t ht
    have h1 := (hgd (Real.log t)).hasDerivAt
    have h2 := Real.hasDerivAt_log ht.ne'
    have := h1.comp t h2
    rw [hfdef]
    exact this.congr_deriv (by ring)
  have hdiff : ∀ t ∈ Set.Icc (1:ℝ) X, DifferentiableAt ℝ f t := fun t ht =>
    (hfderiv t (by linarith [ht.1])).differentiableAt
  have hderiv_eq : Set.EqOn (deriv f) (fun t => deriv g (Real.log t) / t)
      (Set.Icc (1:ℝ) X) := fun t ht => (hfderiv t (by linarith [ht.1])).deriv
  have hint : MeasureTheory.IntegrableOn (deriv f) (Set.Icc (1:ℝ) X) := by
    apply MeasureTheory.IntegrableOn.congr_fun _ (fun t ht => (hderiv_eq ht).symm)
      measurableSet_Icc
    apply ContinuousOn.integrableOn_compact isCompact_Icc
    apply ContinuousOn.div
    · exact (hg'c.comp_continuousOn (Real.continuousOn_log.mono (by
        intro t ht
        simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
        intro h
        rw [h] at ht
        linarith [ht.1])))
    · exact continuousOn_id
    · intro t ht
      have := ht.1
      intro h
      rw [h] at this
      linarith
  -- Abel's summation formula
  have habel := sum_mul_eq_sub_integral_mul₀ c hc0 (f := f) X hdiff hint
  have hfX : f X = 0 := by
    rw [hfdef]
    simp only
    rw [hlogX]
    exact hgsupp L le_rfl
  rw [hfX, zero_mul, zero_sub] at habel
  -- the weighted sum as the Abel sum
  have hsum_eq : (∑ n ∈ PrimeSide.primeRange X, c n * g (Real.log n))
      = ∑ k ∈ Finset.Icc 0 ⌊X⌋₊, f k * c k := by
    unfold PrimeSide.primeRange
    rw [Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons, hc0, mul_zero, zero_add]
    apply Finset.sum_congr rfl
    intro n _
    rw [hfdef, mul_comm]
  -- the partial sums vs (log t)²/2
  have hSIoc : ∀ t : ℝ, (∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k) = ∑ k ∈ Finset.Ioc 0 ⌊t⌋₊, c k := by
    intro t
    rw [Finset.Icc_eq_cons_Ioc (Nat.zero_le _), Finset.sum_cons, hc0, zero_add]
  have hSbound : ∀ t ∈ Set.Ioc (1:ℝ) X,
      |(∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k) - Real.log t ^ 2 / 2| ≤ |C₀| * Real.log t + 1 := by
    intro t ht
    have hlogt : 0 ≤ Real.log t := Real.log_nonneg (by linarith [ht.1])
    rw [hSIoc t]
    rcases le_or_gt 2 t with h2 | h2
    · have := hC₀ t h2
      calc |(∑ k ∈ Finset.Ioc 0 ⌊t⌋₊, c k) - Real.log t ^ 2 / 2| ≤ C₀ * Real.log t := this
        _ ≤ |C₀| * Real.log t := mul_le_mul_of_nonneg_right (le_abs_self C₀) hlogt
        _ ≤ |C₀| * Real.log t + 1 := by linarith
    · -- 1 < t < 2: the sum is c 1 = 0 and log²t/2 ≤ 1
      have hfl : ⌊t⌋₊ = 1 := by
        rw [Nat.floor_eq_iff (by linarith [ht.1] : (0:ℝ) ≤ t)]
        constructor
        · push_cast
          linarith [ht.1]
        · push_cast
          linarith
      rw [hfl]
      have he : Finset.Ioc 0 1 = {1} := rfl
      rw [he, Finset.sum_singleton, hc1]
      have hlt : Real.log t ^ 2 / 2 ≤ 1 := by
        have ha : Real.log t ≤ Real.log 2 := Real.log_le_log (by linarith [ht.1]) h2.le
        have hb : Real.log 2 ≤ 1 := by
          have := Real.log_le_sub_one_of_pos (by norm_num : (0:ℝ) < 2)
          linarith
        nlinarith [hlogt]
      calc |(0:ℝ) - Real.log t ^ 2 / 2| = Real.log t ^ 2 / 2 := by
            rw [zero_sub, abs_neg, abs_of_nonneg (by positivity)]
        _ ≤ 1 := hlt
        _ ≤ |C₀| * Real.log t + 1 := by
            linarith [mul_nonneg (abs_nonneg C₀) hlogt]
  -- error piece
  have hlogcont : ContinuousOn Real.log (Set.Icc (1:ℝ) X) := by
    apply Real.continuousOn_log.mono
    intro t ht
    simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
    intro h0
    rw [h0] at ht
    linarith [ht.1]
  have hi1 : MeasureTheory.IntegrableOn
      (fun t => deriv f t * ∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k) (Set.Ioc (1:ℝ) X) :=
    (integrableOn_mul_sum_Icc c (by norm_num : (0:ℝ) ≤ 1) hint).mono_set
      Set.Ioc_subset_Icc_self
  have hi2 : MeasureTheory.IntegrableOn (fun t => deriv f t * (Real.log t ^ 2 / 2))
      (Set.Ioc (1:ℝ) X) := by
    refine MeasureTheory.IntegrableOn.mono_set ?_ (Set.Ioc_subset_Icc_self)
    exact hint.mul_continuousOn ((hlogcont.pow 2).div_const 2) isCompact_Icc
  have herr : |(∫ t in Set.Ioc (1:ℝ) X, deriv f t * ∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k)
      - ∫ t in Set.Ioc (1:ℝ) X, deriv f t * (Real.log t ^ 2 / 2)| ≤ (2 * |C₀| + 4) * L ^ 2 := by
    rw [← MeasureTheory.integral_sub hi1 hi2]
    -- pointwise majorant 2|C₀| log t/t + 2/t on (1, X]
    have hmajint : MeasureTheory.IntegrableOn
        (fun t => 2 * |C₀| * Real.log t / t + 2 / t) (Set.Ioc (1:ℝ) X) := by
      refine MeasureTheory.IntegrableOn.mono_set ?_ (Set.Ioc_subset_Icc_self)
      apply ContinuousOn.integrableOn_compact isCompact_Icc
      apply ContinuousOn.add
      · apply ContinuousOn.div (hlogcont.const_smul (2 * |C₀|) |>.congr ?_) continuousOn_id ?_
        · intro t ht
          simp [smul_eq_mul]
        · intro t ht h0
          simp only [id_eq] at h0
          rw [h0] at ht
          linarith [ht.1]
      · apply ContinuousOn.div continuousOn_const continuousOn_id ?_
        intro t ht h0
        simp only [id_eq] at h0
        rw [h0] at ht
        linarith [ht.1]
    have hptw : ∀ t ∈ Set.Ioc (1:ℝ) X,
        |deriv f t * (∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k) - deriv f t * (Real.log t ^ 2 / 2)|
          ≤ 2 * |C₀| * Real.log t / t + 2 / t := by
      intro t ht
      have ht1 : 1 < t := ht.1
      have ht0 : 0 < t := by linarith
      have hfd : deriv f t = deriv g (Real.log t) / t :=
        hderiv_eq ⟨ht1.le, ht.2⟩
      have hfdabs : |deriv f t| ≤ 2 / t := by
        rw [hfd, abs_div, abs_of_pos ht0]
        exact div_le_div_of_nonneg_right (hg'le _) ht0.le
      have e : deriv f t * (∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k)
          - deriv f t * (Real.log t ^ 2 / 2)
          = deriv f t * ((∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k) - Real.log t ^ 2 / 2) := by ring
      rw [e, abs_mul]
      calc |deriv f t| * |(∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k) - Real.log t ^ 2 / 2|
          ≤ (2 / t) * (|C₀| * Real.log t + 1) := by
            apply mul_le_mul hfdabs (hSbound t ht) (abs_nonneg _) (by positivity)
        _ = 2 * |C₀| * Real.log t / t + 2 / t := by
            field_simp
            try ring
    have hmono : |∫ t in Set.Ioc (1:ℝ) X,
        (deriv f t * (∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k) - deriv f t * (Real.log t ^ 2 / 2))|
        ≤ ∫ t in Set.Ioc (1:ℝ) X, (2 * |C₀| * Real.log t / t + 2 / t) := by
      calc |∫ t in Set.Ioc (1:ℝ) X,
          (deriv f t * (∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k) - deriv f t * (Real.log t ^ 2 / 2))|
          ≤ ∫ t in Set.Ioc (1:ℝ) X,
            |deriv f t * (∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k) - deriv f t * (Real.log t ^ 2 / 2)| :=
            MeasureTheory.abs_integral_le_integral_abs
        _ ≤ ∫ t in Set.Ioc (1:ℝ) X, (2 * |C₀| * Real.log t / t + 2 / t) := by
            apply MeasureTheory.setIntegral_mono_on ((hi1.sub hi2).abs) hmajint
              measurableSet_Ioc hptw
    -- evaluate the majorant integral: |C₀| L² + 2 L
    have hmaj_eval : ∫ t in Set.Ioc (1:ℝ) X, (2 * |C₀| * Real.log t / t + 2 / t)
        = |C₀| * L ^ 2 + 2 * L := by
      rw [← intervalIntegral.integral_of_le hX1.le]
      have hH : ∀ t ∈ Set.uIcc (1:ℝ) X, HasDerivAt
          (fun t => |C₀| * Real.log t ^ 2 + 2 * Real.log t)
          (2 * |C₀| * Real.log t / t + 2 / t) t := by
        intro t ht
        rw [Set.uIcc_of_le hX1.le] at ht
        have ht0 : 0 < t := by linarith [ht.1]
        have hlog := Real.hasDerivAt_log ht0.ne'
        have h1 : HasDerivAt (fun t => |C₀| * Real.log t ^ 2)
            (|C₀| * (2 * Real.log t * t⁻¹)) t := by
          have := ((hlog.pow 2)).const_mul |C₀|
          exact this.congr_deriv (by push_cast; ring)
        have h2 : HasDerivAt (fun t => 2 * Real.log t) (2 * t⁻¹) t := hlog.const_mul 2
        have := h1.add h2
        exact this.congr_deriv (by ring)
      rw [intervalIntegral.integral_eq_sub_of_hasDerivAt hH ?_]
      · rw [hlogX, Real.log_one]
        try ring
      · apply ContinuousOn.intervalIntegrable
        rw [Set.uIcc_of_le hX1.le]
        apply ContinuousOn.add
        · apply ContinuousOn.div ?_ continuousOn_id ?_
          · exact (hlogcont.const_smul (2 * |C₀|)).congr (fun t ht => by simp [smul_eq_mul])
          · intro t ht h0
            simp only [id_eq] at h0
            rw [h0] at ht
            linarith [ht.1]
        · apply ContinuousOn.div continuousOn_const continuousOn_id ?_
          intro t ht h0
          simp only [id_eq] at h0
          rw [h0] at ht
          linarith [ht.1]
    rw [hmaj_eval] at hmono
    calc |∫ t in Set.Ioc (1:ℝ) X,
        (deriv f t * (∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k) - deriv f t * (Real.log t ^ 2 / 2))|
        ≤ |C₀| * L ^ 2 + 2 * L := hmono
      _ ≤ (2 * |C₀| + 4) * L ^ 2 := by
          nlinarith [abs_nonneg C₀, sq_nonneg L]
  -- main piece: change of variables + integration by parts
  have hmain : ∫ t in Set.Ioc (1:ℝ) X, deriv f t * (Real.log t ^ 2 / 2)
      = -∫ y in (0:ℝ)..L, g y * y := by
    rw [← intervalIntegral.integral_of_le hX1.le]
    rw [intervalIntegral.integral_congr (g := fun t => (deriv g (Real.log t) / t)
        * (Real.log t ^ 2 / 2)) (by
      rw [Set.uIcc_of_le hX1.le]
      intro t ht
      simp only
      rw [hderiv_eq ht])]
    have hsub : ∫ t in (1:ℝ)..X, (deriv g (Real.log t) / t) * (Real.log t ^ 2 / 2)
        = ∫ y in (0:ℝ)..L, deriv g y * (y ^ 2 / 2) := by
      have hXL : Real.exp L = X := hX.symm
      have himg : Real.exp '' Set.uIcc (0:ℝ) L ⊆ {t : ℝ | 0 < t} := by
        rintro t ⟨y, _, rfl⟩
        exact Real.exp_pos y
      have hgcont : ContinuousOn (fun t => (deriv g (Real.log t) / t)
          * (Real.log t ^ 2 / 2)) {t : ℝ | 0 < t} := by
        have hlogc : ContinuousOn Real.log {t : ℝ | 0 < t} := by
          apply Real.continuousOn_log.mono
          intro t ht
          simp only [Set.mem_compl_iff, Set.mem_singleton_iff]
          intro h0
          rw [h0] at ht
          exact lt_irrefl 0 (Set.mem_setOf_eq ▸ ht)
        apply ContinuousOn.mul
        · apply ContinuousOn.div (hg'c.comp_continuousOn hlogc) continuousOn_id
          intro t ht h0
          simp only [id_eq] at h0
          rw [h0] at ht
          exact lt_irrefl 0 (Set.mem_setOf_eq ▸ ht)
        · exact (hlogc.pow 2).div_const 2
      have := intervalIntegral.integral_comp_mul_deriv' (f := Real.exp) (f' := Real.exp)
        (g := fun t => (deriv g (Real.log t) / t) * (Real.log t ^ 2 / 2)) (a := (0:ℝ)) (b := L)
        (fun x _ => Real.hasDerivAt_exp x) Real.continuous_exp.continuousOn
        (hgcont.mono himg)
      rw [Real.exp_zero, hXL] at this
      rw [← this]
      apply intervalIntegral.integral_congr
      intro y hy
      simp only [Function.comp_apply]
      rw [Real.log_exp]
      have he : Real.exp y ≠ 0 := (Real.exp_pos y).ne'
      field_simp
      try ring
    rw [hsub]
    have hv : ∀ y ∈ Set.uIcc (0:ℝ) L, HasDerivAt (fun y : ℝ => y ^ 2 / 2) y y := by
      intro y _
      have := (hasDerivAt_pow 2 y).div_const 2
      exact this.congr_deriv (by push_cast; ring)
    have hparts := intervalIntegral.integral_mul_deriv_eq_deriv_mul
      (u := g) (u' := deriv g) (v := fun y : ℝ => y ^ 2 / 2) (v' := fun y : ℝ => y)
      (fun y _ => (hgd y).hasDerivAt) hv (hg'c.intervalIntegrable 0 L)
      (continuous_id.intervalIntegrable 0 L)
    have hgL : g L = 0 := hgsupp L le_rfl
    rw [hgL] at hparts
    have e2 : ∫ y in (0:ℝ)..L, deriv g y * (y ^ 2 / 2)
        = -∫ y in (0:ℝ)..L, g y * y := by
      have : (∫ y in (0:ℝ)..L, g y * y)
          = 0 * (L ^ 2 / 2) - g 0 * (0 ^ 2 / 2) - ∫ y in (0:ℝ)..L, deriv g y * (y ^ 2 / 2) :=
        hparts
      have e3 : (0:ℝ) * (L ^ 2 / 2) - g 0 * (0 ^ 2 / 2) = 0 := by ring
      rw [e3, zero_sub] at this
      linarith
    exact e2
  -- assemble
  rw [hsum_eq, habel]
  have e : -(∫ t in Set.Ioc (1:ℝ) X, deriv f t * ∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k)
      - ∫ y in (0:ℝ)..L, g y * y
      = -((∫ t in Set.Ioc (1:ℝ) X, deriv f t * ∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k)
          - ∫ t in Set.Ioc (1:ℝ) X, deriv f t * (Real.log t ^ 2 / 2))
        - ((∫ t in Set.Ioc (1:ℝ) X, deriv f t * (Real.log t ^ 2 / 2))
          + ∫ y in (0:ℝ)..L, g y * y) := by ring
  rw [e]
  have hzero : (∫ t in Set.Ioc (1:ℝ) X, deriv f t * (Real.log t ^ 2 / 2))
      + ∫ y in (0:ℝ)..L, g y * y = 0 := by
    rw [hmain]
    ring
  rw [hzero]
  calc |-((∫ t in Set.Ioc (1:ℝ) X, deriv f t * ∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k)
        - ∫ t in Set.Ioc (1:ℝ) X, deriv f t * (Real.log t ^ 2 / 2)) - 0|
      = |(∫ t in Set.Ioc (1:ℝ) X, deriv f t * ∑ k ∈ Finset.Icc 0 ⌊t⌋₊, c k)
        - ∫ t in Set.Ioc (1:ℝ) X, deriv f t * (Real.log t ^ 2 / 2)| := by
        rw [sub_zero, abs_neg]
    _ ≤ (2 * |C₀| + 4) * L ^ 2 := herr
    _ ≤ (2 * |C₀| + 10) * L ^ 2 := by
        nlinarith [abs_nonneg C₀, sq_nonneg L]

/-- **[thm:D proof], the partial-summation step** (replaces [eq:gbounds]+sandwich):
for any C¹ weight g with |g'| ≤ 2 and g ≡ 0 on [L, ∞),
  Σ_{n≤X} Λ(n)²/n · g(log n) = ∫_0^L g(y)·y dy + O(L²),   X = e^L
(from [eq:cheb2] by Abel summation). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant0434fd4be7f87460a5300797f51d0a5297788562c5c637b69943c3407db0e908.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/PP/Variant0434fd4be7f87460a5300797f51d0a5297788562c5c637b69943c3407db0e908.lean#L36).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a6e31fd189e82edf2b54f95f5fd74a990f917cfe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
