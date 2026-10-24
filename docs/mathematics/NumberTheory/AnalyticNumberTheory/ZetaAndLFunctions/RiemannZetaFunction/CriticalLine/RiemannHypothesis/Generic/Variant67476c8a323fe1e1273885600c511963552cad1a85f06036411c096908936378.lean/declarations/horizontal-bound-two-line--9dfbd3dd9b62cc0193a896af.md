# horizontal_bound_two_line

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "58012f458575d1efeb286634aea144124e4207a3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 148,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/67/67476c8a323fe1e1273885600c511963552cad1a85f06036411c096908936378.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:bf5cc674-e265-7fcc-f632-5e4d77ef43cd",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:14a1f274-94e0-fdde-e28c-f4e11a9e8710",
  "kind": "theorem",
  "lexical_name": "horizontal_bound_two_line",
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
  "slug": "horizontal-bound-two-line--9dfbd3dd9b62cc0193a896af",
  "source": {
    "blob": "58012f458575d1efeb286634aea144124e4207a3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 148,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant67476c8a323fe1e1273885600c511963552cad1a85f06036411c096908936378.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9dfbd3dd9b62cc0193a896af7c74db28360d320386537b1990162a12a81206fa",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant67476c8a323fe1e1273885600c511963552cad1a85f06036411c096908936378.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:14a1f274-94e0-fdde-e28c-f4e11a9e8710`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 148–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem horizontal_bound_two_line {f : ℂ → ℂ} {Cf t₀ : ℝ} {k : ℕ}
    (hfa : ∀ t : ℝ, t₀ ≤ |t| → AnalyticOnNhd ℂ f (closedBall (2 + t * I) (91 / 50)))
    (hCf : 0 < Cf)
    (hgrow : ∀ s : ℂ, 1 / 8 ≤ s.re → s.re ≤ 4 → 2 ≤ |s.im| → ‖f s‖ ≤ Cf * |s.im| ^ k)
    (hlow' : ∀ t : ℝ, t₀ ≤ |t| → 1 ≤ ‖f (2 + t * I)‖) :
    ∃ C t₁ : ℝ, 0 < C ∧ 4 ≤ t₁ ∧ t₀ ≤ t₁ ∧ ∀ T : ℝ, t₁ ≤ |T| →
    (∀ ρ : ℂ, 0 < ρ.re → f ρ = 0 → ρ.im ≠ T) →
    |(∫ σ in (1 / 2 : ℝ)..2, logDeriv f (σ + T * I)).im| ≤ C * Real.log (|T| + 3) := by
  classical
  obtain ⟨C, t₁, hC, ht₁, ht₀, hpf⟩ := logDeriv_partial_fraction_two_line hfa hCf hgrow hlow'
  refine ⟨5 * C, t₁, by positivity, ht₁, ht₀, fun T hT hgood => ?_⟩
  obtain ⟨-, Z, hZset, hZcount, hZpf⟩ := hpf T hT
  have hfaT := hfa T (le_trans ht₀ hT)
  set s₀ : ℂ := 2 + T * I with hs₀
  have hL := Real.log_nonneg (by linarith [abs_nonneg T] : (1:ℝ) ≤ |T| + 3)
  -- facts at segment points
  have hseg : ∀ σ ∈ Icc (1 / 2 : ℝ) 2,
      ((σ : ℂ) + T * I) ∈ closedBall s₀ (3 / 2) ∧ 0 < ((σ : ℂ) + T * I).re ∧ f ((σ : ℂ) + T * I) ≠ 0 := by
    intro σ hσ
    have hre : ((σ : ℂ) + T * I).re = σ := by simp
    refine ⟨?_, by rw [hre]; linarith [hσ.1], ?_⟩
    · rw [mem_closedBall, Complex.dist_eq]
      have : (σ : ℂ) + T * I - s₀ = ((σ - 2 : ℝ) : ℂ) := by
        simp [hs₀]
      rw [this, Complex.norm_real, Real.norm_eq_abs, abs_le]
      constructor <;> linarith [hσ.1, hσ.2]
    · intro h0
      exact hgood _ (by rw [hre]; linarith [hσ.1]) h0 (by simp)
  -- zeros in Z are zeros of ξ′, hence off the line Im = T
  have hZoff : ∀ ρ ∈ Z, ∀ σ ∈ Icc (1 / 2 : ℝ) 2, (σ : ℂ) + T * I ≠ ρ := by
    intro ρ hρ σ _ hEq
    have hρ' : ρ ∈ (↑Z : Set ℂ) := hρ
    rw [hZset] at hρ'
    obtain ⟨hρball, hρ0⟩ := hρ'
    have hρre : 0 < ρ.re := by
      rw [mem_closedBall, Complex.dist_eq] at hρball
      have := Complex.abs_re_le_norm (ρ - s₀)
      have e : (ρ - s₀).re = ρ.re - 2 := by simp [hs₀]
      rw [e, abs_le] at this
      linarith [this.1]
    exact hgood ρ hρre hρ0 (by rw [← hEq]; simp)
  have hZoff' : ∀ ρ ∈ Z, ∀ σ ∈ uIcc (1 / 2 : ℝ) 2, (σ : ℂ) + T * I ≠ ρ := by
    rw [uIcc_of_le (by norm_num : (1/2:ℝ) ≤ 2)]; exact hZoff
  -- the partial-fraction sum along the segment and the remainder
  set PF : ℝ → ℂ := fun σ => ∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℂ) / ((σ : ℂ) + T * I - ρ) with hPF
  set E : ℝ → ℂ := fun σ => logDeriv f ((σ : ℂ) + T * I) - PF σ with hE
  have hEbound : ∀ σ ∈ Set.uIoc (1 / 2 : ℝ) 2, ‖E σ‖ ≤ C * Real.log (|T| + 3) := by
    intro σ hσ
    have hσ' : σ ∈ Icc (1 / 2 : ℝ) 2 := by
      rw [uIoc_of_le (by norm_num : (1/2:ℝ) ≤ 2)] at hσ
      exact ⟨hσ.1.le, hσ.2⟩
    obtain ⟨hball, _, hY⟩ := hseg σ hσ'
    exact hZpf _ hball hY
  -- continuity / integrability
  have hcontLD : ContinuousOn (fun σ : ℝ => logDeriv f ((σ : ℂ) + T * I)) (uIcc (1 / 2 : ℝ) 2) := by
    intro σ hσ
    rw [uIcc_of_le (by norm_num : (1/2:ℝ) ≤ 2)] at hσ
    obtain ⟨hball, hre, hY⟩ := hseg σ hσ
    have ha : AnalyticAt ℂ f ((σ : ℂ) + T * I) :=
      hfaT _ (closedBall_subset_closedBall (by norm_num) hball)
    have hc : ContinuousAt (logDeriv f) ((σ : ℂ) + T * I) := by
      have := (ha.deriv.continuousAt).div ha.continuousAt hY
      simpa only [logDeriv] using this
    exact (hc.comp (f := fun σ : ℝ => (σ : ℂ) + T * I) (by fun_prop)).continuousWithinAt
  have hintLD : IntervalIntegrable (fun σ : ℝ => logDeriv f ((σ : ℂ) + T * I)) volume (1 / 2) 2 :=
    hcontLD.intervalIntegrable
  have hintTerm : ∀ ρ ∈ Z, IntervalIntegrable
      (fun σ : ℝ => (analyticOrderNatAt f ρ : ℂ) / ((σ : ℂ) + T * I - ρ)) volume (1 / 2) 2 := by
    intro ρ hρ
    have := (intervalIntegrable_inv_sub (hZoff' ρ hρ)).const_mul (analyticOrderNatAt f ρ : ℂ)
    exact this.congr fun σ _ => by simp [div_eq_mul_inv]
  have hintPF : IntervalIntegrable PF volume (1 / 2) 2 := by
    have := IntervalIntegrable.sum Z hintTerm
    exact this.congr fun σ _ => by simp [hPF, Finset.sum_apply]
  have hintE : IntervalIntegrable E volume (1 / 2) 2 := hintLD.sub hintPF
  -- split the integral
  have hsplit : (∫ σ in (1 / 2 : ℝ)..2, logDeriv f ((σ : ℂ) + T * I))
      = (∫ σ in (1 / 2 : ℝ)..2, PF σ) + ∫ σ in (1 / 2 : ℝ)..2, E σ := by
    rw [← integral_add hintPF hintE]
    apply integral_congr
    intro σ _
    simp [hE]
  -- the partial-fraction part: Im = Σ m_ρ · Im ∫ (s−ρ)⁻¹, each |·| ≤ π
  have hPFint : (∫ σ in (1 / 2 : ℝ)..2, PF σ)
      = ∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℂ) * ∫ σ in (1 / 2 : ℝ)..2, ((σ : ℂ) + T * I - ρ)⁻¹ := by
    simp only [hPF]
    rw [integral_finset_sum hintTerm]
    refine Finset.sum_congr rfl (fun ρ _ => ?_)
    simp only [div_eq_mul_inv]
    exact intervalIntegral.integral_const_mul _ _
  have hPFim : |(∫ σ in (1 / 2 : ℝ)..2, PF σ).im| ≤ Real.pi * (C * Real.log (|T| + 3)) := by
    rw [hPFint, Complex.im_sum]
    refine (Finset.abs_sum_le_sum_abs _ _).trans ?_
    have hterm : ∀ ρ ∈ Z, |((analyticOrderNatAt f ρ : ℂ)
        * ∫ σ in (1 / 2 : ℝ)..2, ((σ : ℂ) + T * I - ρ)⁻¹).im|
        ≤ (analyticOrderNatAt f ρ : ℝ) * Real.pi := by
      intro ρ hρ
      have him : ((analyticOrderNatAt f ρ : ℂ) * ∫ σ in (1 / 2 : ℝ)..2, ((σ : ℂ) + T * I - ρ)⁻¹).im
          = (analyticOrderNatAt f ρ : ℝ) * (∫ σ in (1 / 2 : ℝ)..2, ((σ : ℂ) + T * I - ρ)⁻¹).im := by
        rw [Complex.mul_im]; simp
      rw [him, abs_mul, abs_of_nonneg (Nat.cast_nonneg _)]
      exact mul_le_mul_of_nonneg_left
        (abs_im_integral_inv_sub_le_pi (by norm_num) T ρ (hZoff ρ hρ)) (Nat.cast_nonneg _)
    calc ∑ ρ ∈ Z, |((analyticOrderNatAt f ρ : ℂ)
            * ∫ σ in (1 / 2 : ℝ)..2, ((σ : ℂ) + T * I - ρ)⁻¹).im|
        ≤ ∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℝ) * Real.pi := Finset.sum_le_sum hterm
      _ = Real.pi * ∑ ρ ∈ Z, (analyticOrderNatAt f ρ : ℝ) := by rw [Finset.mul_sum]; simp [mul_comm]
      _ ≤ Real.pi * (C * Real.log (|T| + 3)) := mul_le_mul_of_nonneg_left hZcount Real.pi_pos.le
  -- the remainder part
  have hEim : |(∫ σ in (1 / 2 : ℝ)..2, E σ).im| ≤ 3 / 2 * (C * Real.log (|T| + 3)) := by
    refine (Complex.abs_im_le_norm _).trans ?_
    have := intervalIntegral.norm_integral_le_of_norm_le_const hEbound
    calc ‖∫ σ in (1 / 2 : ℝ)..2, E σ‖ ≤ C * Real.log (|T| + 3) * |2 - 1 / 2| := this
      _ = 3 / 2 * (C * Real.log (|T| + 3)) := by norm_num; ring
  rw [hsplit, Complex.add_im]
  calc |(∫ σ in (1 / 2 : ℝ)..2, PF σ).im + (∫ σ in (1 / 2 : ℝ)..2, E σ).im|
      ≤ |(∫ σ in (1 / 2 : ℝ)..2, PF σ).im| + |(∫ σ in (1 / 2 : ℝ)..2, E σ).im| := abs_add_le _ _
    _ ≤ Real.pi * (C * Real.log (|T| + 3)) + 3 / 2 * (C * Real.log (|T| + 3)) := add_le_add hPFim hEim
    _ ≤ 5 * C * Real.log (|T| + 3) := by
        have h0 : 0 ≤ C * Real.log (|T| + 3) := by positivity
        have hπ : Real.pi ≤ 3.5 := by linarith [Real.pi_lt_d2]
        nlinarith [mul_nonneg (by linarith : (0:ℝ) ≤ 3.5 - Real.pi) h0]


/-! ### local count -/

/-- the β ≥ 1/2 half of the window (t, t+1] counted with multiplicity is ≪ log(|t|+3), for |t + 1/2| ≥ t₁. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant67476c8a323fe1e1273885600c511963552cad1a85f06036411c096908936378.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Generic/Variant67476c8a323fe1e1273885600c511963552cad1a85f06036411c096908936378.lean#L148).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58012f458575d1efeb286634aea144124e4207a3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
