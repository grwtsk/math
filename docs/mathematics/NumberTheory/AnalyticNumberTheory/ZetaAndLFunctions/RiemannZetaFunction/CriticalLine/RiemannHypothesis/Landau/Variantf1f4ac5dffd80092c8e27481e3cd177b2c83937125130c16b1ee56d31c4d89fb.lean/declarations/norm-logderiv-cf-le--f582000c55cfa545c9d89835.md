# norm_logDeriv_Cf_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5b6d356d64a6e7a1bf6bc0e98406d3dfe5a7f4d6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 129,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f1/f1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f096970e-662a-54f2-070c-58a82112cd3c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0bf328bc-ea9b-6578-b1d5-9fcb0ce7c034",
  "kind": "lemma",
  "lexical_name": "norm_logDeriv_Cf_le",
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
  "slug": "norm-logderiv-cf-le--f582000c55cfa545c9d89835",
  "source": {
    "blob": "5b6d356d64a6e7a1bf6bc0e98406d3dfe5a7f4d6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 298,
    "line": 129,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f582000c55cfa545c9d898352b55e786fb197d211986e429e2b4ffdddd64f0e1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0bf328bc-ea9b-6578-b1d5-9fcb0ce7c034`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–298.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma norm_logDeriv_Cf_le {f : ℂ → ℂ} {B : ℝ}
    (hfa : AnalyticOnNhd ℂ f (Metric.closedBall (0 : ℂ) 1)) (hf0 : f 0 = 1)
    (hfin : (SetOfZeros 1 f).Finite) (hB2 : 2 ≤ B)
    (hfB : ∀ w : ℂ, ‖w‖ ≤ 24/25 → ‖f w‖ ≤ B)
    {z : ℂ} (hz : ‖z‖ ≤ 83/100) :
    ‖logDeriv (Cf (22/25) f) z‖ ≤ 44795000 * Real.log B := by
  have hf0' : f 0 ≠ 0 := by rw [hf0]; exact one_ne_zero
  have hfinr : (SetOfZeros (22/25) f).Finite := finiteSetOfZeros_mono (by norm_num) hfin
  have hlogB : 0 < Real.log B := Real.log_pos (by linarith)
  -- total multiplicity bound (ZerosBound with r = 22/25, R = 24/25)
  have hcount : ((∑ ρ ∈ (finiteSetOfZeros_mono (by norm_num : (22/25 : ℝ) < 1) hfin).toFinset,
      analyticOrderNatAt f ρ : ℕ) : ℝ) ≤ 1 / Real.log ((24/25) / (22/25)) * Real.log B := by
    exact_mod_cast ZerosBound (by norm_num) (by norm_num)
      (by norm_num : (22/25:ℝ) < 24/25) (by norm_num) hfa hf0 hfin (fun w hw => hfB w hw)
  set K : ℕ := ∑ ρ ∈ (finiteSetOfZeros_mono (by norm_num : (22/25 : ℝ) < 1) hfin).toFinset,
    analyticOrderNatAt f ρ with hK
  -- Cf on the sphere of radius 24/25
  have hsphere : ∀ w : ℂ, ‖w‖ = 24/25 → ‖Cf (22/25) f w‖ ≤ B * (25/2 : ℝ) ^ K := by
    intro w hw
    have hwmem : w ∉ SetOfZeros (22/25) f := by
      intro h
      have := h.1
      rw [hw] at this
      norm_num at this
    have hfinr34 := finiteSetOfZeros_mono (by norm_num : (22/25 : ℝ) < 1) hfin
    have hdist : ∀ ρ ∈ hfinr34.toFinset, (2/25 : ℝ) ≤ ‖w - ρ‖ := by
      intro ρ hρ
      have hρ' := hfinr34.mem_toFinset.mp hρ
      calc (2/25 : ℝ) = 24/25 - 22/25 := by norm_num
        _ ≤ ‖w‖ - ‖ρ‖ := by
            have := hρ'.1
            rw [hw]
            linarith
        _ ≤ ‖w - ρ‖ := norm_sub_norm_le w ρ
    have hprod_lb : ((2/25 : ℝ)) ^ K ≤ ‖∏ ρ ∈ hfinr34.toFinset, (w - ρ) ^ analyticOrderNatAt f ρ‖ := by
      rw [norm_prod, hK, ← Finset.prod_pow_eq_pow_sum]
      refine Finset.prod_le_prod (fun ρ _ => by positivity) (fun ρ hρ => ?_)
      rw [norm_pow]
      exact pow_le_pow_left₀ (by norm_num) (hdist ρ hρ) _
    unfold Cf
    rw [dif_pos hfinr34, dif_neg hwmem]
    rw [norm_div]
    have hprod_pos : (0:ℝ) < ‖∏ ρ ∈ hfinr34.toFinset, (w - ρ) ^ analyticOrderNatAt f ρ‖ :=
      lt_of_lt_of_le (by positivity) hprod_lb
    rw [div_le_iff₀ hprod_pos]
    calc ‖f w‖ ≤ B := hfB w (le_of_eq hw)
      _ = B * (25/2 : ℝ) ^ K * (2/25 : ℝ) ^ K := by
          rw [mul_assoc, ← mul_pow]
          norm_num
      _ ≤ B * (25/2 : ℝ) ^ K * ‖∏ ρ ∈ hfinr34.toFinset, (w - ρ) ^ analyticOrderNatAt f ρ‖ := by
          have hB0 : (0:ℝ) ≤ B * (25/2 : ℝ) ^ K := by positivity
          exact mul_le_mul_of_nonneg_left hprod_lb hB0
  -- inside by the maximum principle
  have hball : ∀ w : ℂ, ‖w‖ ≤ 24/25 → ‖Cf (22/25) f w‖ ≤ B * (25/2 : ℝ) ^ K := by
    intro w hw
    have hCfa : AnalyticOn ℂ (Cf (22/25) f) (Metric.closedBall 0 (24/25)) :=
      ((CfAnalytic (by norm_num : (22/25:ℝ) < 39/40) (by norm_num) hfa hf0').mono
        (Metric.closedBall_subset_closedBall (by norm_num))).analyticOn
    refine AnalyticOn.norm_le_of_norm_le_on_sphere le_rfl hCfa (fun v hv => ?_)
      (by rwa [Metric.mem_closedBall, Complex.dist_eq, sub_zero])
    refine hsphere v ?_
    rw [mem_sphere_iff_norm, sub_zero] at hv
    exact hv
  -- lower bound at the centre
  have hCf0 : (1:ℝ) ≤ ‖Cf (22/25) f 0‖ := by
    have h0mem : (0:ℂ) ∉ SetOfZeros (22/25) f := fun h => hf0' h.2
    have hfinr34 := finiteSetOfZeros_mono (by norm_num : (22/25 : ℝ) < 1) hfin
    unfold Cf
    rw [dif_pos hfinr34, dif_neg h0mem, norm_div, hf0, norm_one]
    rw [le_div_iff₀]
    · rw [one_mul, norm_prod]
      refine Finset.prod_le_one (fun ρ _ => by positivity) (fun ρ hρ => ?_)
      have hρ' := hfinr34.mem_toFinset.mp hρ
      rw [norm_pow]
      refine pow_le_one₀ (norm_nonneg _) ?_
      rw [zero_sub, norm_neg]
      linarith [hρ'.1]
    · rw [norm_prod]
      refine Finset.prod_pos (fun ρ hρ => ?_)
      have hρ' := hfinr34.mem_toFinset.mp hρ
      have hρ0 : ρ ≠ 0 := by
        rintro rfl
        exact hf0' hρ'.2
      rw [norm_pow, zero_sub, norm_neg]
      exact pow_pos (norm_pos_iff.mpr hρ0) _
  -- the analytic logarithm and Borel–Carathéodory
  obtain ⟨J, hJa, hJ0, hJd, hJre⟩ := LogOfAnalyticFunction
    (by norm_num : (0:ℝ) < 17/20) (by norm_num : (17/20:ℝ) < 22/25)
    ((CfAnalytic (by norm_num : (22/25:ℝ) < 9/10) (by norm_num) hfa hf0').mono
      (Metric.closedBall_subset_closedBall (by norm_num)))
    (fun v hv => Cf_ne_zero hfa hf0' (by norm_num) hfin
      (by rwa [Metric.mem_closedBall, Complex.dist_eq, sub_zero] at hv))
  set M' : ℝ := (1 + Real.log (25/2) / Real.log ((24/25) / (22/25))) * Real.log B with hM'
  have hlog76 : (0:ℝ) < Real.log ((24/25) / (22/25)) := Real.log_pos (by norm_num)
  have hM'pos : 0 < M' := by
    rw [hM']
    have : (0:ℝ) < 1 + Real.log (25/2) / Real.log ((24/25) / (22/25)) := by positivity
    positivity
  have hre : ∀ v ∈ Metric.closedBall (0:ℂ) (17/20), (J v).re ≤ M' := by
    intro v hv
    rw [← (hJre v (Metric.closedBall_subset_ball (by norm_num) hv))]
    have hv' : ‖v‖ ≤ 24/25 := by
      rw [Metric.mem_closedBall, Complex.dist_eq, sub_zero] at hv
      linarith
    have h1 : Real.log ‖Cf (22/25) f v‖ ≤ Real.log (B * (25/2 : ℝ) ^ K) := by
      rcases eq_or_ne (Cf (22/25) f v) 0 with h | h
      · rw [h, norm_zero, Real.log_zero]
        refine Real.log_nonneg ?_
        calc (1:ℝ) = 1 * 1 := by ring
          _ ≤ B * (25/2 : ℝ) ^ K := by
              refine mul_le_mul (by linarith) (one_le_pow₀ (by norm_num)) (by norm_num)
                (by linarith)
      · exact Real.log_le_log (norm_pos_iff.mpr h) (hball v hv')
    have h2 : (0:ℝ) ≤ Real.log ‖Cf (22/25) f 0‖ := Real.log_nonneg hCf0
    have h3 : Real.log (B * (25/2 : ℝ) ^ K) = Real.log B + K * Real.log (25/2) := by
      rw [Real.log_mul (by linarith) (by positivity), Real.log_pow]
    have h4 : (K : ℝ) * Real.log (25/2) ≤ (Real.log B / Real.log ((24/25)/(22/25))) * Real.log (25/2) := by
      have hlog8 : (0:ℝ) ≤ Real.log (25/2) := Real.log_nonneg (by norm_num)
      have hKle : (K:ℝ) ≤ Real.log B / Real.log ((24/25)/(22/25)) := by
        rw [div_eq_inv_mul, ← one_div]
        exact hcount
      exact mul_le_mul_of_nonneg_right hKle hlog8
    have h5 : Real.log ‖Cf (22/25) f v‖ - Real.log ‖Cf (22/25) f 0‖
        ≤ Real.log B + (K:ℝ) * Real.log (25/2) := by
      rw [← h3]
      linarith
    rw [hM']
    calc Real.log ‖Cf (22/25) f v‖ - Real.log ‖Cf (22/25) f 0‖
        ≤ Real.log B + (K:ℝ) * Real.log (25/2) := h5
      _ ≤ Real.log B + (Real.log B / Real.log ((24/25)/(22/25))) * Real.log (25/2) := by linarith
      _ = (1 + Real.log (25/2) / Real.log ((24/25) / (22/25))) * Real.log B := by
          field_simp
  have hbc := BorelCaratheodoryDeriv hM'pos (by norm_num : (0:ℝ) < 83/100)
    (by norm_num : (83/100:ℝ) < 17/20)
    ((hJa.mono (Metric.ball_subset_ball (by norm_num))).analyticOn) hJ0
    (fun v hv => hre v (Metric.ball_subset_closedBall hv))
    (by rwa [Metric.mem_closedBall, Complex.dist_eq, sub_zero])
  have hzmem : z ∈ Metric.closedBall (0:ℂ) (17/20) := by
    rw [Metric.mem_closedBall, Complex.dist_eq, sub_zero]
    linarith
  have hderivJ : deriv J z = logDeriv (Cf (22/25) f) z := by
    rw [hJd z (by
      rw [Metric.mem_closedBall, Complex.dist_eq, sub_zero]
      linarith), logDeriv]
    rfl
  rw [← hderivJ]
  refine hbc.trans ?_
  -- 16 * M' * (17/20)^2 / (17/20 - 83/100)^3 = 1445000 * M' ≤ 1445000 * 31 * log B
  have hM'le : M' ≤ 31 * Real.log B := by
    rw [hM']
    have h8 : Real.log (25/2) ≤ 30 * Real.log ((24/25) / (22/25)) := by
      have h714 : (25/2:ℝ) ≤ ((24/25)/(22/25)) ^ (30:ℕ) := by norm_num
      calc Real.log (25/2) ≤ Real.log (((24/25)/(22/25)) ^ (30:ℕ)) :=
            Real.log_le_log (by norm_num) h714
        _ = 30 * Real.log ((24/25)/(22/25)) := by rw [Real.log_pow]; push_cast; ring
    have hcoef : 1 + Real.log (25/2) / Real.log ((24/25) / (22/25)) ≤ 31 := by
      have hd : Real.log (25/2) / Real.log ((24/25)/(22/25)) ≤ 30 :=
        (div_le_iff₀ hlog76).mpr (by linarith)
      linarith
    exact mul_le_mul_of_nonneg_right hcoef hlogB.le
  calc 16 * M' * (17/20:ℝ) ^ 2 / ((17/20:ℝ) - 83/100) ^ 3 = 1445000 * M' := by
        field_simp
        ring
    _ ≤ 1445000 * (31 * Real.log B) := by
        exact mul_le_mul_of_nonneg_left hM'le (by norm_num)
    _ = 44795000 * Real.log B := by ring

/-- **Landau partial fraction, unit-disk form**: f analytic on the closed unit disk, f(0) = 1,
‖f‖ ≤ B on ‖z‖ ≤ 24/25 (2 ≤ B), finite zero set.  Then for ‖z‖ ≤ 83/100 with f(z) ≠ 0,
logDeriv f z is the sum of m_ρ/(z−ρ) over zeros with ‖ρ‖ ≤ 22/25, up to an error ≤ 44795000 log B. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf1f4ac5dffd80092c8e27481e3cd177b2c83937125130c16b1ee56d31c4d89fb.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5b6d356d64a6e7a1bf6bc0e98406d3dfe5a7f4d6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
