# digamma_growth_strip

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cfc4a8b030c00845c3242faa3dbec21eaae5522b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 245,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/2d/2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:34c49039-5073-a26a-02a5-8632392a3d59",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3f7ce093-583c-2e0b-8b85-2b104d7eb32d",
  "kind": "theorem",
  "lexical_name": "digamma_growth_strip",
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
  "slug": "digamma-growth-strip--20785c98a55197aa20f76539",
  "source": {
    "blob": "cfc4a8b030c00845c3242faa3dbec21eaae5522b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 413,
    "line": 245,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20785c98a55197aa20f76539cc0cf0115039d6b0d4114d1e0009a09fc19d6069",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3f7ce093-583c-2e0b-8b85-2b104d7eb32d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 245–413.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem digamma_growth_strip : ∃ C : ℝ, 0 < C ∧ ∀ s : ℂ, 1/4 ≤ s.re → s.re ≤ 1 →
    ‖Complex.digamma s‖ ≤ C * Real.log (2 + |s.im|) := by
  -- differentiability of ψ on the right half-plane
  have hdiff : ∀ s : ℂ, 0 < s.re → DifferentiableAt ℂ Complex.digamma s := by
    intro s hs
    have hzero : ∀ m : ℕ, s ≠ -(m : ℂ) := by
      intro m h
      rw [h] at hs
      simp only [Complex.neg_re, Complex.natCast_re] at hs
      nlinarith [Nat.cast_nonneg (α := ℝ) m]
    have hopen : IsOpen {w : ℂ | 0 < w.re} := isOpen_lt continuous_const Complex.continuous_re
    have hΓan : AnalyticAt ℂ Complex.Gamma s := by
      rw [Complex.analyticAt_iff_eventually_differentiableAt]
      filter_upwards [hopen.mem_nhds hs] with w hw
      refine Complex.differentiableAt_Gamma w fun m => ?_
      intro h
      rw [h] at hw
      simp only [Complex.neg_re, Complex.natCast_re] at hw
      nlinarith [Nat.cast_nonneg (α := ℝ) m]
    have hΓne : Complex.Gamma s ≠ 0 := Complex.Gamma_ne_zero hzero
    have hψan : AnalyticAt ℂ Complex.digamma s := by
      have h1 : AnalyticAt ℂ (deriv Complex.Gamma) s := hΓan.deriv
      have h2 := h1.div hΓan hΓne
      exact h2.congr (by
        filter_upwards with w
        rw [Complex.digamma_def, logDeriv_apply]
        rfl)
    exact hψan.differentiableAt
  -- bound on the compact rectangle |Im| ≤ 1/2
  have hK : IsCompact (Complex.reProdIm (Set.Icc (1/4 : ℝ) 1) (Set.Icc (-(1/2) : ℝ) (1/2))) :=
    isCompact_Icc.reProdIm isCompact_Icc
  have hcontK : ContinuousOn Complex.digamma
      (Complex.reProdIm (Set.Icc (1/4 : ℝ) 1) (Set.Icc (-(1/2) : ℝ) (1/2))) := by
    intro s hs
    have hsre : 1/4 ≤ s.re := (Complex.mem_reProdIm.mp hs).1.1
    exact ((hdiff s (by linarith)).continuousAt).continuousWithinAt
  obtain ⟨M, hM⟩ := hK.exists_bound_of_continuousOn hcontK
  have hM0 : (0 : ℝ) ≤ M := by
    have h := hM (1/2 : ℂ) (by
      rw [Complex.mem_reProdIm]
      constructor
      · simp only [Complex.div_ofNat_re, Complex.one_re]
        norm_num
      · simp only [Complex.div_ofNat_im, Complex.one_im]
        norm_num)
    exact le_trans (norm_nonneg _) h
  have hlog2 : (0 : ℝ) < Real.log 2 := Real.log_pos (by norm_num)
  have hπ : (0 : ℝ) < Real.pi := Real.pi_pos
  set K₀ : ℝ := 14 + Real.pi + Real.log 4 with hK₀
  have hK₀0 : (0 : ℝ) < K₀ := by positivity
  refine ⟨max (M / Real.log 2) (1 + K₀ / Real.log 2) + 1, by positivity, fun s hre1 hre2 => ?_⟩
  have hlogmono : Real.log 2 ≤ Real.log (2 + |s.im|) := by
    apply Real.log_le_log (by norm_num)
    have := abs_nonneg s.im
    linarith
  have hlogpos : (0 : ℝ) < Real.log (2 + |s.im|) := lt_of_lt_of_le hlog2 hlogmono
  rcases le_or_gt (|s.im|) (1/2) with him | him
  · -- compact part
    have hsK : s ∈ Complex.reProdIm (Set.Icc (1/4 : ℝ) 1) (Set.Icc (-(1/2) : ℝ) (1/2)) := by
      rw [Complex.mem_reProdIm]
      refine ⟨⟨hre1, hre2⟩, ?_⟩
      rw [Set.mem_Icc]
      constructor <;> [linarith [neg_abs_le s.im]; linarith [le_abs_self s.im]]
    calc ‖Complex.digamma s‖ ≤ M := hM s hsK
      _ = (M / Real.log 2) * Real.log 2 := by
          field_simp
      _ ≤ (max (M / Real.log 2) (1 + K₀ / Real.log 2) + 1) * Real.log (2 + |s.im|) := by
          apply mul_le_mul ?_ hlogmono hlog2.le (by positivity)
          calc M / Real.log 2 ≤ max (M / Real.log 2) (1 + K₀ / Real.log 2) := le_max_left _ _
            _ ≤ max (M / Real.log 2) (1 + K₀ / Real.log 2) + 1 := by linarith
  · -- Stirling part: ‖ψ‖ ≤ ‖ψ − log s + (1/2)/s‖ + ‖log s‖ + ‖(1/2)/s‖
    have hsre0 : (0 : ℝ) < s.re := by linarith
    have hst := Zeta23.StirlingVert.digamma_stirling (w := s) hsre0 (by linarith)
    have hsnorm_lo : (1/4 : ℝ) ≤ ‖s‖ :=
      le_trans hre1 (le_trans (le_abs_self _) (Complex.abs_re_le_norm s))
    have hsnorm0 : (0 : ℝ) < ‖s‖ := by linarith
    have hs0 : s ≠ 0 := by
      intro h
      rw [h, norm_zero] at hsnorm0
      exact lt_irrefl 0 hsnorm0
    have hsnorm_hi : ‖s‖ ≤ 1 + |s.im| := by
      calc ‖s‖ ≤ |s.re| + |s.im| := Complex.norm_le_abs_re_add_abs_im s
        _ ≤ 1 + |s.im| := by
            have : |s.re| ≤ 1 := by
              rw [abs_le]
              constructor <;> linarith
            linarith
    -- ‖log s‖ ≤ |log ‖s‖| + π ≤ (log 4 + log(2+|im|)) + π
    have hlog_s : ‖Complex.log s‖ ≤ |Real.log ‖s‖| + Real.pi := by
      calc ‖Complex.log s‖ ≤ |(Complex.log s).re| + |(Complex.log s).im| :=
            Complex.norm_le_abs_re_add_abs_im _
        _ ≤ |Real.log ‖s‖| + Real.pi := by
            rw [Complex.log_re, Complex.log_im]
            have := Complex.abs_arg_le_pi s
            linarith [abs_nonneg (Complex.arg s)]
    have hlog_abs : |Real.log ‖s‖| ≤ Real.log 4 + Real.log (2 + |s.im|) := by
      rcases le_or_gt (Real.log ‖s‖) 0 with hneg | hpos
      · -- ‖s‖ ≤ 1-ish: |log| = −log ≤ log 4 since ‖s‖ ≥ 1/4
        have h1 : Real.log (1/4 : ℝ) ≤ Real.log ‖s‖ := Real.log_le_log (by norm_num) hsnorm_lo
        have h2 : Real.log (1/4 : ℝ) = -Real.log 4 := by
          rw [show (1/4 : ℝ) = 4⁻¹ by norm_num, Real.log_inv]
        rw [abs_of_nonpos hneg]
        have h3 : (0 : ℝ) ≤ Real.log (2 + |s.im|) := by
          apply Real.log_nonneg
          have := abs_nonneg s.im
          linarith
        linarith
      · rw [abs_of_pos hpos]
        have h1 : Real.log ‖s‖ ≤ Real.log (2 + |s.im|) := by
          apply Real.log_le_log hsnorm0
          have := abs_nonneg s.im
          linarith
        have h2 : (0 : ℝ) ≤ Real.log 4 := Real.log_nonneg (by norm_num)
        linarith
    have hinv_s : ‖(1/2 : ℂ) / s‖ ≤ 2 := by
      rw [norm_div]
      have h1 : ‖(1/2 : ℂ)‖ = 1/2 := by
        rw [show (1/2 : ℂ) = ((1/2 : ℝ) : ℂ) by norm_num, Complex.norm_real,
          Real.norm_eq_abs, abs_of_pos (by norm_num)]
      rw [h1, div_le_iff₀ hsnorm0]
      linarith
    have him2 : 3 / s.im ^ 2 ≤ 12 := by
      have h1 : (1/4 : ℝ) ≤ s.im ^ 2 := by
        have h2 : (1/2 : ℝ) ≤ |s.im| := him.le
        nlinarith [abs_nonneg s.im, sq_abs s.im]
      rw [div_le_iff₀ (by nlinarith)]
      nlinarith
    have htot : ‖Complex.digamma s‖
        ≤ Real.log (2 + |s.im|) + K₀ := by
      have h1 : ‖Complex.digamma s‖
          ≤ ‖Complex.digamma s - Complex.log s + (1/2 : ℂ) / s‖ + ‖Complex.log s‖
            + ‖(1/2 : ℂ) / s‖ := by
        have h2 : Complex.digamma s = (Complex.digamma s - Complex.log s + (1/2 : ℂ) / s)
            + Complex.log s - (1/2 : ℂ) / s := by ring
        calc ‖Complex.digamma s‖
            = ‖(Complex.digamma s - Complex.log s + (1/2 : ℂ) / s)
                + Complex.log s - (1/2 : ℂ) / s‖ := by rw [← h2]
          _ ≤ ‖(Complex.digamma s - Complex.log s + (1/2 : ℂ) / s) + Complex.log s‖
              + ‖(1/2 : ℂ) / s‖ := norm_sub_le _ _
          _ ≤ ‖Complex.digamma s - Complex.log s + (1/2 : ℂ) / s‖ + ‖Complex.log s‖
              + ‖(1/2 : ℂ) / s‖ := by
              have := norm_add_le (Complex.digamma s - Complex.log s + (1/2 : ℂ) / s)
                (Complex.log s)
              linarith
      rw [hK₀]
      have hπ4 : Real.pi < 4 := Real.pi_lt_four
      calc ‖Complex.digamma s‖
          ≤ ‖Complex.digamma s - Complex.log s + (1/2 : ℂ) / s‖ + ‖Complex.log s‖
            + ‖(1/2 : ℂ) / s‖ := h1
        _ ≤ 3 / s.im ^ 2 + (|Real.log ‖s‖| + Real.pi) + 2 := by
            have := hst
            linarith [hlog_s, hinv_s]
        _ ≤ 12 + ((Real.log 4 + Real.log (2 + |s.im|)) + Real.pi) + 2 := by
            linarith [him2, hlog_abs]
        _ ≤ Real.log (2 + |s.im|) + (14 + Real.pi + Real.log 4) := by linarith
    calc ‖Complex.digamma s‖ ≤ Real.log (2 + |s.im|) + K₀ := htot
      _ ≤ Real.log (2 + |s.im|) + (K₀ / Real.log 2) * Real.log (2 + |s.im|) := by
          have h3 : K₀ / Real.log 2 * Real.log 2 ≤ K₀ / Real.log 2 * Real.log (2 + |s.im|) :=
            mul_le_mul_of_nonneg_left hlogmono (by positivity)
          have h4 : K₀ / Real.log 2 * Real.log 2 = K₀ := by field_simp
          linarith
      _ = (1 + K₀ / Real.log 2) * Real.log (2 + |s.im|) := by ring
      _ ≤ (max (M / Real.log 2) (1 + K₀ / Real.log 2) + 1) * Real.log (2 + |s.im|) := by
          apply mul_le_mul_of_nonneg_right ?_ hlogpos.le
          calc (1 + K₀ / Real.log 2) ≤ max (M / Real.log 2) (1 + K₀ / Real.log 2) :=
                le_max_right _ _
            _ ≤ max (M / Real.log 2) (1 + K₀ / Real.log 2) + 1 := by linarith

/-- continuity ⇒ integrability on vertical lines under a majorant (used by vertical_line_shift). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/VerticalLine/Variant2df131b682e2a2bcee51de18059c4e336a94fa5900f9e47399031a195bdcbfcf.lean#L245).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfc4a8b030c00845c3242faa3dbec21eaae5522b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
