# L_logDeriv_partial_fraction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:63c0fd79-fb8d-60c0-cf71-d39d54e0d08c",
  "kind": "theorem",
  "lexical_name": "L_logDeriv_partial_fraction",
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
  "slug": "l-logderiv-partial-fraction--67f217064d1931c2f86fad2e",
  "source": {
    "blob": "830978bf2e8ccc5b3f973a0eda8013b62f8f1c3a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 147,
    "line": 41,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LandauChi/Variant6e57b77c1d7ea65be8bd5dfc7ba0f84c0cc47eb9e0f56396eebca7c6d20de9c9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:67f217064d1931c2f86fad2e6309ac0c12ae54af681d98cb00fdc6328170c517",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LandauChi/Variant6e57b77c1d7ea65be8bd5dfc7ba0f84c0cc47eb9e0f56396eebca7c6d20de9c9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:63c0fd79-fb8d-60c0-cf71-d39d54e0d08c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–147.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem L_logDeriv_partial_fraction (hχ1 : χ ≠ 1) : ∃ C : ℝ, 0 < C ∧ ∀ t : ℝ, 6 ≤ |t| →
    ∃ Z : Finset ℂ,
      ((Z : Set ℂ) = {ρ ∈ Metric.closedBall (2 + t * I) (22/25 * (91/50)) | χ.LFunction ρ = 0}) ∧
      ((∑ ρ ∈ Z, (analyticOrderNatAt χ.LFunction ρ : ℝ))
        ≤ C * Real.log ((q : ℝ) * (|t| + 3))) ∧
      ∀ s ∈ Metric.closedBall (2 + t * I) (3/2), χ.LFunction s ≠ 0 →
        ‖logDeriv χ.LFunction s - ∑ ρ ∈ Z, (analyticOrderNatAt χ.LFunction ρ : ℂ) / (s - ρ)‖
          ≤ C * Real.log ((q : ℝ) * (|t| + 3)) := by
  have hq1 : (1 : ℝ) ≤ (q : ℝ) := by exact_mod_cast NeZero.pos q
  refine ⟨(44795000 * 50 / 91) * (Real.log 72 + 3) + 12 * (Real.log 72 + 3), by positivity,
    fun t ht => ?_⟩
  set s₀ : ℂ := 2 + t * I with hs₀
  have hs₀re : s₀.re = 2 := by simp [hs₀]
  have hLs₀ : χ.LFunction s₀ ≠ 0 :=
    LFunction_ne_zero_of_two_le_re (by rw [hs₀re])
  have hlow : (1/3 : ℝ) ≤ ‖χ.LFunction s₀‖ := LFunction_lower_bound_two (by rw [hs₀re])
  have hfa : AnalyticOnNhd ℂ χ.LFunction (Metric.closedBall s₀ (91/50)) := fun s _ =>
    (DirichletCharacter.differentiable_LFunction hχ1).analyticAt s
  set B : ℝ := 24 * (q : ℝ) * (|t| + 5) with hB
  have hB2 : 2 ≤ B := by
    rw [hB]
    nlinarith [abs_nonneg t]
  have hfB : ∀ w ∈ Metric.closedBall s₀ (24/25 * (91/50)),
      ‖χ.LFunction w‖ ≤ B * ‖χ.LFunction s₀‖ := by
    intro w hw
    rw [Metric.mem_closedBall, Complex.dist_eq] at hw
    have hwre : (0.15 : ℝ) ≤ w.re := by
      have h := Complex.abs_re_le_norm (w - s₀)
      have hre : (w - s₀).re = w.re - 2 := by simp [hs₀]
      rw [hre] at h
      have := abs_le.mp (h.trans hw)
      linarith [this.1]
    have hwim : |w.im| ≤ |t| + 2 := by
      have h := Complex.abs_im_le_norm (w - s₀)
      have him : (w - s₀).im = w.im - t := by simp [hs₀]
      rw [him] at h
      have h4 : |w.im - t| ≤ 24/25 * (91/50) := h.trans hw
      have h3 : |w.im| - |t| ≤ |w.im - t| := abs_sub_abs_le_abs_sub w.im t
      linarith
    calc ‖χ.LFunction w‖ ≤ 8 * q * (|w.im| + 3) := LFunction_growth_right_uniform hχ1 hwre
      _ ≤ 8 * q * (|t| + 5) := by
          have h8q : (0:ℝ) ≤ 8 * (q:ℝ) := by positivity
          nlinarith [mul_le_mul_of_nonneg_left (show |w.im| + 3 ≤ |t| + 5 by linarith) h8q]
      _ = B * (1/3) := by rw [hB]; ring
      _ ≤ B * ‖χ.LFunction s₀‖ := by
          refine mul_le_mul_of_nonneg_left hlow ?_
          rw [hB]
          positivity
  obtain ⟨Z, hZset, hZcount, hZpf⟩ := Zeta23.WeilEF.logDeriv_partial_fraction_disk
    (f := χ.LFunction) (by norm_num : (0:ℝ) < 91/50) hfa hLs₀ hB2 hfB
  have hlogB : Real.log B ≤ (Real.log 72 + 3) * Real.log ((q:ℝ) * (|t| + 3)) := by
    have hqt3 : (1:ℝ) < (q:ℝ) * (|t| + 3) := by nlinarith [abs_nonneg t]
    have hlog1 : (2:ℝ) ≤ Real.log ((q:ℝ) * (|t| + 3)) := by
      rw [Real.le_log_iff_exp_le (by nlinarith [abs_nonneg t])]
      have h1 := Real.exp_one_lt_d9
      calc Real.exp 2 = Real.exp 1 * Real.exp 1 := by rw [← Real.exp_add]; norm_num
        _ ≤ 2.7182818286 * 2.7182818286 := by nlinarith [Real.exp_pos 1]
        _ ≤ 9 := by norm_num
        _ ≤ (q:ℝ) * (|t| + 3) := by nlinarith
    have h1 : B ≤ 72 * ((q:ℝ) * (|t| + 3)) := by
      rw [hB]
      nlinarith [abs_nonneg t]
    have h2 : Real.log B ≤ Real.log 72 + Real.log ((q:ℝ) * (|t| + 3)) := by
      calc Real.log B ≤ Real.log (72 * ((q:ℝ) * (|t| + 3))) :=
            Real.log_le_log (by rw [hB]; positivity) h1
        _ = Real.log 72 + Real.log ((q:ℝ) * (|t| + 3)) :=
            Real.log_mul (by norm_num) (by positivity)
    have h72 : (0:ℝ) ≤ Real.log 72 := Real.log_nonneg (by norm_num)
    nlinarith [mul_nonneg h72 (by linarith : (0:ℝ) ≤ Real.log ((q:ℝ) * (|t| + 3)) - 1)]
  have hlogpos : (0:ℝ) < Real.log ((q:ℝ) * (|t| + 3)) := by
    have : (1:ℝ) < (q:ℝ) * (|t| + 3) := by nlinarith [abs_nonneg t]
    exact Real.log_pos this
  refine ⟨Z, hZset, ?_, ?_⟩
  · refine hZcount.trans ?_
    have hlog1211 : (1:ℝ)/12 ≤ Real.log ((24/25 : ℝ)/(22/25)) := by
      rw [show ((24/25 : ℝ))/(22/25) = 12/11 by norm_num]
      have h := Real.log_le_sub_one_of_pos (show (0:ℝ) < 11/12 by norm_num)
      rw [show (11/12:ℝ) = (12/11)⁻¹ by norm_num, Real.log_inv] at h
      linarith
    have hlp : (0:ℝ) < Real.log ((24/25 : ℝ)/(22/25)) := by
      rw [show ((24/25 : ℝ))/(22/25) = 12/11 by norm_num]
      exact Real.log_pos (by norm_num)
    have hlogBnn : (0:ℝ) ≤ Real.log B := Real.log_nonneg (by linarith)
    calc 1 / Real.log ((24/25 : ℝ)/(22/25)) * Real.log B ≤ 12 * Real.log B := by
          refine mul_le_mul_of_nonneg_right ?_ hlogBnn
          rw [div_le_iff₀ hlp]
          linarith
      _ ≤ 12 * ((Real.log 72 + 3) * Real.log ((q:ℝ) * (|t| + 3))) :=
          mul_le_mul_of_nonneg_left hlogB (by norm_num)
      _ ≤ ((44795000 * 50 / 91) * (Real.log 72 + 3) + 12 * (Real.log 72 + 3))
            * Real.log ((q:ℝ) * (|t| + 3)) := by
          have h72 : (0:ℝ) ≤ Real.log 72 := Real.log_nonneg (by norm_num)
          nlinarith
  · intro s hs hLs
    have hs' : s ∈ Metric.closedBall s₀ (83/100 * (91/50)) :=
      Metric.closedBall_subset_closedBall (by norm_num) hs
    refine (hZpf s hs' hLs).trans ?_
    calc 44795000 / (91/50) * Real.log B
        ≤ 44795000 / (91/50) * ((Real.log 72 + 3) * Real.log ((q:ℝ) * (|t| + 3))) :=
          mul_le_mul_of_nonneg_left hlogB (by norm_num)
      _ ≤ ((44795000 * 50 / 91) * (Real.log 72 + 3) + 12 * (Real.log 72 + 3))
            * Real.log ((q:ℝ) * (|t| + 3)) := by
          have h72 : (0:ℝ) ≤ Real.log 72 := Real.log_nonneg (by norm_num)
          nlinarith

end ThmE
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LandauChi/Variant6e57b77c1d7ea65be8bd5dfc7ba0f84c0cc47eb9e0f56396eebca7c6d20de9c9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/LandauChi/Variant6e57b77c1d7ea65be8bd5dfc7ba0f84c0cc47eb9e0f56396eebca7c6d20de9c9.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `830978bf2e8ccc5b3f973a0eda8013b62f8f1c3a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
