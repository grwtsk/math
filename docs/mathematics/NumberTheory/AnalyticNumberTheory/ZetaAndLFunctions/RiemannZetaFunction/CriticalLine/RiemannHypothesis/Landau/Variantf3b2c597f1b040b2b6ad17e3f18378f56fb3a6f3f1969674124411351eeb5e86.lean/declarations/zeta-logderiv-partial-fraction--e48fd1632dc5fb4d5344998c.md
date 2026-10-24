# zeta_logDeriv_partial_fraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5ac6ea0b92c92c51f499e17ab83114401b76e66c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 512,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f3/f3b2c597f1b040b2b6ad17e3f18378f56fb3a6f3f1969674124411351eeb5e86.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3ffe55ab-9058-a029-6840-0fd34c35d5ba",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:b8d39998-2c7e-1bbb-b796-b48057bc50af",
  "kind": "theorem",
  "lexical_name": "zeta_logDeriv_partial_fraction",
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
  "slug": "zeta-logderiv-partial-fraction--e48fd1632dc5fb4d5344998c",
  "source": {
    "blob": "5ac6ea0b92c92c51f499e17ab83114401b76e66c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 661,
    "line": 512,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf3b2c597f1b040b2b6ad17e3f18378f56fb3a6f3f1969674124411351eeb5e86.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e48fd1632dc5fb4d5344998c04e12e3e56f4de92e44efcbaec72c36a2530fd94",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf3b2c597f1b040b2b6ad17e3f18378f56fb3a6f3f1969674124411351eeb5e86.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b8d39998-2c7e-1bbb-b796-b48057bc50af`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 512–661.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem zeta_logDeriv_partial_fraction : ∃ C : ℝ, 0 < C ∧ ∀ t : ℝ, 6 ≤ |t| →
    ∃ Z : Finset ℂ,
      (↑Z = {ρ ∈ Metric.closedBall (2 + t * I) (22/25 * (91/50)) | riemannZeta ρ = 0}) ∧
      ((∑ ρ ∈ Z, (analyticOrderNatAt riemannZeta ρ : ℝ)) ≤ C * Real.log (|t| + 3)) ∧
      ∀ s ∈ Metric.closedBall (2 + t * I) (3/2), riemannZeta s ≠ 0 →
        ‖logDeriv riemannZeta s - ∑ ρ ∈ Z, (analyticOrderNatAt riemannZeta ρ : ℂ) / (s - ρ)‖
          ≤ C * Real.log (|t| + 3) := by
  obtain ⟨A, C₀, hC₀, hgrow⟩ := Zeta23.RvM.zeta_growth_quarter
  set A' : ℝ := max A 0 with hA'
  have hA'0 : 0 ≤ A' := le_max_right _ _
  have hCpos : (0:ℝ) < (44795000 * 50 / 91) * (Real.log 3 + Real.log (C₀ + 2) + A' + 1) := by
    have h1 : (0:ℝ) ≤ Real.log 3 := Real.log_nonneg (by norm_num)
    have h2 : (0:ℝ) ≤ Real.log (C₀ + 2) := Real.log_nonneg (by linarith)
    positivity
  refine ⟨(44795000 * 50 / 91) * (Real.log 3 + Real.log (C₀ + 2) + A' + 1), hCpos,
    fun t ht => ?_⟩
  set s₀ : ℂ := 2 + t * I with hs₀
  have hs₀re : s₀.re = 2 := by simp [hs₀]
  have hs₀im : s₀.im = t := by simp [hs₀]
  have hζs₀ : riemannZeta s₀ ≠ 0 :=
    riemannZeta_ne_zero_of_one_lt_re (by rw [hs₀re]; norm_num)
  have hlow : (1/3 : ℝ) ≤ ‖riemannZeta s₀‖ := Zeta23.RvM.zeta_lower_bound_two t
  -- analyticity on the closed ball of radius 91/50
  have hone : (1 : ℂ) ∉ Metric.closedBall s₀ (91/50) := by
    intro h
    rw [Metric.mem_closedBall, Complex.dist_eq] at h
    have him : ((1 : ℂ) - s₀).im = -t := by simp [hs₀]
    have : |t| ≤ ‖(1 : ℂ) - s₀‖ := by
      calc |t| = |((1:ℂ) - s₀).im| := by rw [him, abs_neg]
        _ ≤ ‖(1:ℂ) - s₀‖ := Complex.abs_im_le_norm _
    linarith
  have hfa : AnalyticOnNhd ℂ riemannZeta (Metric.closedBall s₀ (91/50)) :=
    Zeta23.RvM.analyticOnNhd_riemannZeta hone
  -- the B-bound on the (24/25)·(91/50)-ball
  set B : ℝ := 3 * (C₀ * (|t| + 2) ^ A' + 2) with hB
  have ht2 : (1:ℝ) ≤ |t| + 2 := by linarith
  have hpow1 : (1:ℝ) ≤ (|t| + 2) ^ A' := Real.one_le_rpow ht2 hA'0
  have hB2 : 2 ≤ B := by
    rw [hB]
    nlinarith [mul_nonneg hC₀.le (le_trans zero_le_one hpow1)]
  have hfB : ∀ w ∈ Metric.closedBall s₀ (24/25 * (91/50)), ‖riemannZeta w‖ ≤ B * ‖riemannZeta s₀‖ := by
    intro w hw
    rw [Metric.mem_closedBall, Complex.dist_eq] at hw
    have hwre : |w.re - 2| ≤ 24/25 * (91/50) := by
      have := Complex.abs_re_le_norm (w - s₀)
      have hre : (w - s₀).re = w.re - 2 := by simp [hs₀]
      rw [hre] at this
      linarith
    have hwim : |w.im - t| ≤ 24/25 * (91/50) := by
      have := Complex.abs_im_le_norm (w - s₀)
      have him : (w - s₀).im = w.im - t := by simp [hs₀]
      rw [him] at this
      linarith
    have hwim1 : 1 ≤ |w.im| := by
      have h3 : |t| - |w.im| ≤ |t - w.im| := abs_sub_abs_le_abs_sub t w.im
      have h4 : |t - w.im| = |w.im - t| := abs_sub_comm t w.im
      linarith [hwim]
    have hwimt : |w.im| ≤ |t| + 2 := by
      have := abs_sub_abs_le_abs_sub w.im t
      have h2 : |w.im| - |t| ≤ |w.im - t| := this
      linarith [hwim]
    have hbound : ‖riemannZeta w‖ ≤ C₀ * (|t| + 2) ^ A' + 2 := by
      rcases le_or_gt w.re 2 with hre2 | hre2
      · have h14 : (1/4 : ℝ) ≤ w.re := by
          rw [abs_le] at hwre
          linarith
        have := hgrow w h14 hre2 hwim1
        calc ‖riemannZeta w‖ ≤ C₀ * |w.im| ^ A := this
          _ ≤ C₀ * (|t| + 2) ^ A' := by
              refine mul_le_mul_of_nonneg_left ?_ hC₀.le
              calc |w.im| ^ A ≤ |w.im| ^ A' :=
                    Real.rpow_le_rpow_of_exponent_le hwim1 (le_max_left _ _)
                _ ≤ (|t| + 2) ^ A' := Real.rpow_le_rpow (by linarith) hwimt hA'0
          _ ≤ C₀ * (|t| + 2) ^ A' + 2 := by linarith
      · have := Zeta23.RvM.norm_riemannZeta_le_of_two_le_re (s := w) (by linarith)
        have hπ : (Real.pi : ℝ) ^ 2 / 6 ≤ 2 := by nlinarith [Real.pi_lt_d2, Real.pi_gt_three]
        calc ‖riemannZeta w‖ ≤ Real.pi ^ 2 / 6 := this
          _ ≤ 2 := hπ
          _ ≤ C₀ * (|t| + 2) ^ A' + 2 := by
              nlinarith [mul_nonneg hC₀.le (le_trans zero_le_one hpow1)]
    calc ‖riemannZeta w‖ ≤ C₀ * (|t| + 2) ^ A' + 2 := hbound
      _ = (B * (1/3)) := by rw [hB]; ring
      _ ≤ B * ‖riemannZeta s₀‖ := by
          refine mul_le_mul_of_nonneg_left hlow (by rw [hB]; positivity)
  obtain ⟨Z, hZset, hZcount, hZpf⟩ := logDeriv_partial_fraction_disk (f := riemannZeta)
    (by norm_num : (0:ℝ) < 91/50) hfa hζs₀ hB2 hfB
  -- logarithmic bookkeeping shared by the count bound and the partial-fraction bound
  have hT3 : (2:ℝ) ≤ Real.log (|t| + 3) := by
    rw [Real.le_log_iff_exp_le (by linarith)]
    have h1 := Real.exp_one_lt_d9
    calc Real.exp 2 = Real.exp 1 * Real.exp 1 := by rw [← Real.exp_add]; norm_num
      _ ≤ 2.7182818286 * 2.7182818286 := by nlinarith [Real.exp_pos 1]
      _ ≤ 9 := by norm_num
      _ ≤ |t| + 3 := by linarith
  have hlogB : Real.log B ≤ (Real.log 3 + Real.log (C₀ + 2) + A') * Real.log (|t| + 3) := by
    have h1 : B ≤ 3 * ((C₀ + 2) * (|t| + 2) ^ A') := by
      rw [hB]
      nlinarith [hpow1, hC₀]
    have h2 : Real.log B ≤ Real.log (3 * ((C₀ + 2) * (|t| + 2) ^ A')) :=
      Real.log_le_log (by rw [hB]; positivity) h1
    rw [Real.log_mul (by norm_num : (3:ℝ) ≠ 0) (by positivity),
      Real.log_mul (by norm_num : (3:ℝ) ≠ 0) (by positivity),
      Real.log_mul (by positivity : (C₀ + 2 : ℝ) ≠ 0) (by positivity),
      Real.log_rpow (by linarith : (0:ℝ) < |t| + 2)] at h2
    have h3 : Real.log (|t| + 2) ≤ Real.log (|t| + 3) :=
      Real.log_le_log (by linarith) (by linarith)
    have h4 : (0:ℝ) ≤ Real.log 3 := Real.log_nonneg (by norm_num)
    have h5 : (0:ℝ) ≤ Real.log (C₀ + 2) := Real.log_nonneg (by linarith)
    have hBeq : Real.log B = Real.log 3 + Real.log (C₀ * (|t| + 2) ^ A' + 2) := by
      rw [hB, Real.log_mul (by norm_num : (3:ℝ) ≠ 0) (by positivity)]
    rw [hBeq]
    nlinarith [mul_nonneg hA'0 (by linarith : (0:ℝ) ≤ Real.log (|t|+3) - Real.log (|t|+2)),
      mul_nonneg h4 (by linarith : (0:ℝ) ≤ Real.log (|t|+3) - 1),
      mul_nonneg h5 (by linarith : (0:ℝ) ≤ Real.log (|t|+3) - 1), hT3]
  have h4 : (0:ℝ) ≤ Real.log 3 := Real.log_nonneg (by norm_num)
  have h5 : (0:ℝ) ≤ Real.log (C₀ + 2) := Real.log_nonneg (by linarith)
  refine ⟨Z, ?_, ?_, ?_⟩
  · rw [hZset]
  · refine hZcount.trans ?_
    have hratio : ((24/25 : ℝ))/(22/25) = 12/11 := by norm_num
    have hlog1211 : (1:ℝ)/12 ≤ Real.log ((24/25)/(22/25)) := by
      rw [hratio]
      have h := Real.log_le_sub_one_of_pos (show (0:ℝ) < 11/12 by norm_num)
      rw [show (11/12:ℝ) = (12/11)⁻¹ by norm_num, Real.log_inv] at h
      linarith
    have hlogpos : (0:ℝ) < Real.log ((24/25)/(22/25)) := by
      rw [hratio]
      exact Real.log_pos (by norm_num)
    have hlogBnn : (0:ℝ) ≤ Real.log B := Real.log_nonneg (by linarith)
    calc 1 / Real.log ((24/25)/(22/25)) * Real.log B ≤ 12 * Real.log B := by
          refine mul_le_mul_of_nonneg_right ?_ hlogBnn
          rw [div_le_iff₀ hlogpos]
          linarith
      _ ≤ 12 * ((Real.log 3 + Real.log (C₀ + 2) + A') * Real.log (|t| + 3)) :=
          mul_le_mul_of_nonneg_left hlogB (by norm_num)
      _ ≤ 44795000 * 50 / 91 * (Real.log 3 + Real.log (C₀ + 2) + A' + 1) * Real.log (|t| + 3) := by
          nlinarith [hT3, hA'0]
  · intro s hs hζs
    have hs' : s ∈ Metric.closedBall s₀ (83/100 * (91/50)) :=
      Metric.closedBall_subset_closedBall (by norm_num) hs
    refine (hZpf s hs' hζs).trans ?_
    calc 44795000 / (91/50) * Real.log B
        ≤ 44795000 / (91/50) * ((Real.log 3 + Real.log (C₀ + 2) + A') * Real.log (|t| + 3)) :=
          mul_le_mul_of_nonneg_left hlogB (by norm_num)
      _ ≤ (44795000 * 50 / 91) * (Real.log 3 + Real.log (C₀ + 2) + A' + 1) * Real.log (|t| + 3) := by
          nlinarith [hT3, hA'0]


end WeilEF
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf3b2c597f1b040b2b6ad17e3f18378f56fb3a6f3f1969674124411351eeb5e86.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Landau/Variantf3b2c597f1b040b2b6ad17e3f18378f56fb3a6f3f1969674124411351eeb5e86.lean#L512).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5ac6ea0b92c92c51f499e17ab83114401b76e66c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
