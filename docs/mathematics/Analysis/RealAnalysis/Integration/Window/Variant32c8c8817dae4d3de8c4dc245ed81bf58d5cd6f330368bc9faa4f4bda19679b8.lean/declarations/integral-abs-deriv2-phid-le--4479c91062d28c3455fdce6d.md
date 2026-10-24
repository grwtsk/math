# integral_abs_deriv2_phiD_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 610,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3eed1628-8747-c477-91a5-45684ffd1a82",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:88d82739-4d3a-7b55-bf6e-a875b8b011d6",
  "kind": "theorem",
  "lexical_name": "integral_abs_deriv2_phiD_le",
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
  "slug": "integral-abs-deriv2-phid-le--4479c91062d28c3455fdce6d",
  "source": {
    "blob": "749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 988,
    "line": 610,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4479c91062d28c3455fdce6d8a09515b39a1df389cb4bdaa462e2200c55e588d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:88d82739-4d3a-7b55-bf6e-a875b8b011d6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 610–988.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_deriv2_phiD_le (hϱ : TaperProfile ϱ) (h0 : 0 < lam) (h1 : lam ≤ 1)
    (hw : 1 ≤ w) (hwL : 8 * w ≤ L) :
    ∫ u, |deriv (deriv (phiD ϱ lam L w)) u| ≤ cDT ϱ lam / w := by
  have hw0 : 0 < w := by linarith
  have hwL' : 2 * w ≤ L := by linarith
  have hL : 0 < L := by linarith
  have hs32 : Real.sqrt 2 ≤ 3 / 2 := by
    nlinarith [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 2), Real.sqrt_nonneg 2]
  set ω : ℝ := Real.sqrt 2 * lam * (1 / L) with hωdef
  have hω0 : 0 ≤ ω := by positivity
  have hωle : ω ≤ 2 / L := by
    rw [hωdef, div_eq_mul_one_div 2 L]
    apply mul_le_mul_of_nonneg_right _ (by positivity)
    nlinarith
  set c : ℝ → ℝ := fun u => vStar lam (u / L) with hcdef
  set U : Set ℝ := {v : ℝ | |v| < 2 * L / 3} with hUdef
  have hUopen : IsOpen U := (continuous_abs).isOpen_preimage _ isOpen_Iio
  have hIccU : Set.Icc (-(L/2)) (L/2) ⊆ U := by
    intro x hx
    show |x| < 2 * L / 3
    have : |x| ≤ L / 2 := abs_le.mpr ⟨hx.1, hx.2⟩
    linarith
  have hUc : ∀ u ∈ U, 1 / 2 < c u := by
    intro u hu
    have hu' : |u| < 2 * L / 3 := hu
    have h1' : Real.sqrt 2 * lam ≤ 3 / 2 := by
      calc Real.sqrt 2 * lam ≤ (3/2) * 1 := mul_le_mul hs32 h1 h0.le (by norm_num)
        _ = 3 / 2 := mul_one _
    have h2' : |u| / L < 2 / 3 := by
      rw [div_lt_iff₀ hL]
      linarith
    have habs : |Real.sqrt 2 * lam * (u / L)| < 1 := by
      rw [abs_mul, abs_div, abs_of_nonneg (by positivity : (0:ℝ) ≤ Real.sqrt 2 * lam),
        abs_of_pos hL]
      calc Real.sqrt 2 * lam * (|u| / L) ≤ (3/2) * (|u| / L) :=
            mul_le_mul_of_nonneg_right h1' (by positivity)
        _ < (3/2) * (2/3) := mul_lt_mul_of_pos_left h2' (by norm_num)
        _ = 1 := by norm_num
    have harg2 : (Real.sqrt 2 * lam * (u / L)) ^ 2 < 1 := by
      calc (Real.sqrt 2 * lam * (u / L)) ^ 2 = |Real.sqrt 2 * lam * (u / L)| ^ 2 :=
            (sq_abs _).symm
        _ < 1 ^ 2 := by
            apply pow_lt_pow_left₀ habs (abs_nonneg _) (by norm_num)
        _ = 1 := one_pow 2
    have := Real.one_sub_sq_div_two_le_cos (x := Real.sqrt 2 * lam * (u / L))
    rw [hcdef]
    simp only
    unfold vStar
    linarith
  have hUc0 : ∀ u ∈ U, c u ≠ 0 := fun u hu => by linarith [hUc u hu]
  have hsqrtc : ∀ u ∈ U, 1 / 2 ≤ Real.sqrt (c u) := by
    intro u hu
    rw [show (1:ℝ)/2 = Real.sqrt ((1/2)^2) from (Real.sqrt_sq (by norm_num)).symm]
    apply Real.sqrt_le_sqrt
    nlinarith [hUc u hu]
  have hsqrtc1 : ∀ u : ℝ, Real.sqrt (c u) ≤ 1 := by
    intro u
    rw [show (1:ℝ) = Real.sqrt 1 from Real.sqrt_one.symm]
    apply Real.sqrt_le_sqrt
    rw [hcdef]
    simp only
    unfold vStar
    exact Real.cos_le_one _
  -- cosine-factor derivatives (global)
  have hc1 : ∀ u : ℝ, HasDerivAt c (-ω * Real.sin (Real.sqrt 2 * lam * (u / L))) u := by
    intro u
    have h := hasDerivAt_cosFactor (lam := lam) (L := L) u
    rw [hcdef]
    convert h using 1
  set c1 : ℝ → ℝ := fun u => -ω * Real.sin (Real.sqrt 2 * lam * (u / L)) with hc1def
  have hc2 : ∀ u : ℝ, HasDerivAt c1 (-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L))) u := by
    intro u
    have h := hasDerivAt_cosFactor' (lam := lam) (L := L) u
    have e : c1 = fun u : ℝ => -(Real.sqrt 2 * lam * (1 / L))
        * Real.sin (Real.sqrt 2 * lam * (u / L)) := by
      rw [hc1def, hωdef]
    rw [e]
    convert h using 1
  have hc1abs : ∀ u : ℝ, |c1 u| ≤ ω := by
    intro u
    rw [hc1def]
    simp only
    rw [abs_mul, abs_neg, abs_of_nonneg hω0]
    calc ω * |Real.sin (Real.sqrt 2 * lam * (u / L))| ≤ ω * 1 :=
          mul_le_mul_of_nonneg_left (Real.abs_sin_le_one _) hω0
      _ = ω := mul_one _
  have hc2abs : ∀ u : ℝ, |(-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L)))| ≤ ω ^ 2 := by
    intro u
    rw [abs_mul, abs_neg, abs_pow, abs_of_nonneg hω0]
    calc ω ^ 2 * |Real.cos (Real.sqrt 2 * lam * (u / L))| ≤ ω ^ 2 * 1 :=
          mul_le_mul_of_nonneg_left (Real.abs_cos_le_one _) (by positivity)
      _ = ω ^ 2 := mul_one _
  -- √(cosine factor) and its derivatives on U
  set q : ℝ → ℝ := fun u => Real.sqrt (c u) with hqdef
  set q1 : ℝ → ℝ := fun u => c1 u / (2 * Real.sqrt (c u)) with hq1def
  have hq1 : ∀ u ∈ U, HasDerivAt q (q1 u) u := fun u hu => (hc1 u).sqrt (hUc0 u hu)
  have hq1abs : ∀ u ∈ U, |q1 u| ≤ ω := by
    intro u hu
    rw [hq1def]
    simp only
    rw [abs_div]
    have hden : (1:ℝ) ≤ |2 * Real.sqrt (c u)| := by
      rw [abs_of_pos (by nlinarith [hsqrtc u hu] : (0:ℝ) < 2 * Real.sqrt (c u))]
      nlinarith [hsqrtc u hu]
    calc |c1 u| / |2 * Real.sqrt (c u)| ≤ |c1 u| / 1 :=
          div_le_div_of_nonneg_left (abs_nonneg _) one_pos hden
      _ = |c1 u| := div_one _
      _ ≤ ω := hc1abs u
  set q2 : ℝ → ℝ := fun u => ((-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L)))
      * (2 * Real.sqrt (c u)) - c1 u * (2 * q1 u)) / (2 * Real.sqrt (c u)) ^ 2 with hq2def
  have hq2 : ∀ u ∈ U, HasDerivAt q1 (q2 u) u := by
    intro u hu
    have hden : (2 : ℝ) * Real.sqrt (c u) ≠ 0 := by nlinarith [hsqrtc u hu]
    have h2q : HasDerivAt (fun y => 2 * Real.sqrt (c y)) (2 * q1 u) u := (hq1 u hu).const_mul 2
    exact (hc2 u).div h2q hden
  have hq2abs : ∀ u ∈ U, |q2 u| ≤ 4 * ω ^ 2 := by
    intro u hu
    rw [hq2def]
    simp only
    rw [abs_div]
    have hs05 := hsqrtc u hu
    have hs1 := hsqrtc1 u
    have hdenge : (1:ℝ) ≤ |(2 * Real.sqrt (c u)) ^ 2| := by
      rw [abs_of_pos (by nlinarith : (0:ℝ) < (2 * Real.sqrt (c u)) ^ 2)]
      nlinarith
    have hnum : |(-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L))) * (2 * Real.sqrt (c u))
        - c1 u * (2 * q1 u)| ≤ 4 * ω ^ 2 := by
      have e1 : |(-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L))) * (2 * Real.sqrt (c u))|
          ≤ 2 * ω ^ 2 := by
        rw [abs_mul]
        calc |(-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L)))| * |2 * Real.sqrt (c u)|
            ≤ ω ^ 2 * 2 := by
              apply mul_le_mul (hc2abs u) ?_ (abs_nonneg _) (by positivity)
              rw [abs_of_pos (by nlinarith : (0:ℝ) < 2 * Real.sqrt (c u))]
              nlinarith
          _ = 2 * ω ^ 2 := by ring
      have e2 : |c1 u * (2 * q1 u)| ≤ 2 * ω ^ 2 := by
        rw [abs_mul]
        have h2q : |2 * q1 u| ≤ 2 * ω := by
          rw [abs_mul, show |(2:ℝ)| = 2 from abs_of_pos two_pos]
          exact mul_le_mul_of_nonneg_left (hq1abs u hu) (by norm_num)
        calc |c1 u| * |2 * q1 u| ≤ ω * (2 * ω) :=
              mul_le_mul (hc1abs u) h2q (abs_nonneg _) hω0
          _ = 2 * ω ^ 2 := by ring
      calc |(-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L))) * (2 * Real.sqrt (c u))
          - c1 u * (2 * q1 u)|
          ≤ |(-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L))) * (2 * Real.sqrt (c u))|
            + |c1 u * (2 * q1 u)| := abs_sub _ _
        _ ≤ 4 * ω ^ 2 := by linarith
    calc |(-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L))) * (2 * Real.sqrt (c u))
        - c1 u * (2 * q1 u)| / |(2 * Real.sqrt (c u)) ^ 2|
        ≤ |(-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L))) * (2 * Real.sqrt (c u))
            - c1 u * (2 * q1 u)| / 1 :=
          div_le_div_of_nonneg_left (abs_nonneg _) one_pos hdenge
      _ ≤ 4 * ω ^ 2 := by rw [div_one]; exact hnum
  -- φ and its derivatives
  set φf : ℝ → ℝ := Taper.phi ϱ L w with hφdef
  have hφC : ContDiff ℝ 3 φf := Taper.phi_contDiff hϱ hw0 hwL'
  have hφd : Differentiable ℝ φf := hφC.differentiable (by norm_num)
  have hφ1C : ContDiff ℝ 2 (deriv φf) := hφC.deriv'
  have hφ1d : Differentiable ℝ (deriv φf) := hφ1C.differentiable (by norm_num)
  have hφ1 : ∀ u, HasDerivAt φf (deriv φf u) u := fun u => (hφd u).hasDerivAt
  have hφ2 : ∀ u, HasDerivAt (deriv φf) (deriv (deriv φf) u) u := fun u => (hφ1d u).hasDerivAt
  have hφ1cont : Continuous (deriv φf) := hφ1C.continuous
  have hφ2cont : Continuous (deriv (deriv φf)) := hφ1C.continuous_deriv (by norm_num)
  -- first derivative of φ_D on U
  have hD1 : ∀ u ∈ U, HasDerivAt (phiD ϱ lam L w) (q1 u * φf u + q u * deriv φf u) u := by
    intro u hu
    have h := (hq1 u hu).mul (hφ1 u)
    exact h
  have hder1 : ∀ u ∈ U, deriv (phiD ϱ lam L w) u = q1 u * φf u + q u * deriv φf u :=
    fun u hu => (hD1 u hu).deriv
  -- second derivative on U
  have hdd : ∀ x ∈ U, deriv (deriv (phiD ϱ lam L w)) x
      = q2 x * φf x + 2 * (q1 x * deriv φf x) + q x * deriv (deriv φf) x := by
    intro x hx
    have hEq : deriv (phiD ϱ lam L w) =ᶠ[nhds x]
        (fun u => q1 u * φf u + q u * deriv φf u) := by
      filter_upwards [hUopen.mem_nhds hx] with v hv
      exact hder1 v hv
    rw [hEq.deriv_eq]
    have hstep : HasDerivAt (fun u => q1 u * φf u + q u * deriv φf u)
        (q2 x * φf x + q1 x * deriv φf x + (q1 x * deriv φf x + q x * deriv (deriv φf) x)) x :=
      ((hq2 x hx).mul (hφ1 x)).add ((hq1 x hx).mul (hφ2 x))
    rw [hstep.deriv]
    ring
  -- support restriction
  have hsuppD : ∀ x : ℝ, L / 2 ≤ |x| → phiD ϱ lam L w x = 0 := fun x hx =>
    phiD_eq_zero hϱ hw0 hx
  have hrestr : ∫ u, |deriv (deriv (phiD ϱ lam L w)) u|
      = ∫ u in Set.Icc (-(L/2)) (L/2), |deriv (deriv (phiD ϱ lam L w)) u| :=
    integral_abs_eq_setIntegral (by positivity)
      (fun x hx => deriv2_eq_zero_outside hsuppD hx)
  rw [hrestr]
  -- pointwise bound on the support interval
  have hpt : ∀ u ∈ Set.Icc (-(L/2)) (L/2), |deriv (deriv (phiD ϱ lam L w)) u|
      ≤ 4 * ω ^ 2 + 2 * ω * |deriv φf u| + |deriv (deriv φf) u| := by
    intro u hu
    have huU := hIccU hu
    rw [hdd u huU]
    have e1 : |q2 u * φf u| ≤ 4 * ω ^ 2 := by
      rw [abs_mul]
      calc |q2 u| * |φf u| ≤ (4 * ω ^ 2) * 1 := by
            apply mul_le_mul (hq2abs u huU) ?_ (abs_nonneg _) (by positivity)
            rw [hφdef, abs_of_nonneg (Taper.phi_nonneg hϱ u)]
            exact Taper.phi_le_one hϱ u
        _ = 4 * ω ^ 2 := mul_one _
    have e2 : |2 * (q1 u * deriv φf u)| ≤ 2 * ω * |deriv φf u| := by
      rw [abs_mul, abs_mul, show |(2:ℝ)| = 2 from abs_of_pos two_pos]
      calc 2 * (|q1 u| * |deriv φf u|) ≤ 2 * (ω * |deriv φf u|) := by
            apply mul_le_mul_of_nonneg_left _ (by norm_num)
            exact mul_le_mul_of_nonneg_right (hq1abs u huU) (abs_nonneg _)
        _ = 2 * ω * |deriv φf u| := by ring
    have e3 : |q u * deriv (deriv φf) u| ≤ |deriv (deriv φf) u| := by
      rw [abs_mul]
      have : |q u| ≤ 1 := by
        rw [hqdef, abs_of_nonneg (Real.sqrt_nonneg _)]
        exact hsqrtc1 u
      calc |q u| * |deriv (deriv φf) u| ≤ 1 * |deriv (deriv φf) u| :=
            mul_le_mul_of_nonneg_right this (abs_nonneg _)
        _ = _ := one_mul _
    calc |q2 u * φf u + 2 * (q1 u * deriv φf u) + q u * deriv (deriv φf) u|
        ≤ |q2 u * φf u + 2 * (q1 u * deriv φf u)| + |q u * deriv (deriv φf) u| := abs_add_le _ _
      _ ≤ |q2 u * φf u| + |2 * (q1 u * deriv φf u)| + |q u * deriv (deriv φf) u| := by
          linarith [abs_add_le (q2 u * φf u) (2 * (q1 u * deriv φf u))]
      _ ≤ _ := by linarith
  -- integrability and evaluation of the majorant
  have iconst : MeasureTheory.IntegrableOn (fun _ : ℝ => (4 * ω ^ 2 : ℝ))
      (Set.Icc (-(L/2)) (L/2)) :=
    MeasureTheory.integrableOn_const (by rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top)
  have iabs1 : MeasureTheory.IntegrableOn (fun u => 2 * ω * |deriv φf u|)
      (Set.Icc (-(L/2)) (L/2)) :=
    ((hφ1cont.abs.continuousOn).integrableOn_compact isCompact_Icc).const_mul _
  have iabs2 : MeasureTheory.IntegrableOn (fun u => |deriv (deriv φf) u|)
      (Set.Icc (-(L/2)) (L/2)) :=
    (hφ2cont.abs.continuousOn).integrableOn_compact isCompact_Icc
  have isum : MeasureTheory.IntegrableOn (fun u => 4 * ω ^ 2 + 2 * ω * |deriv φf u|)
      (Set.Icc (-(L/2)) (L/2)) :=
    ((by fun_prop : Continuous fun u : ℝ => 4 * ω ^ 2 + 2 * ω * |deriv φf u|)).continuousOn.integrableOn_compact
      isCompact_Icc
  have hmajint : MeasureTheory.IntegrableOn
      (fun u => 4 * ω ^ 2 + 2 * ω * |deriv φf u| + |deriv (deriv φf) u|)
      (Set.Icc (-(L/2)) (L/2)) :=
    ((by fun_prop : Continuous fun u : ℝ =>
      4 * ω ^ 2 + 2 * ω * |deriv φf u| + |deriv (deriv φf) u|)).continuousOn.integrableOn_compact
      isCompact_Icc
  have hIφD : MeasureTheory.IntegrableOn (fun u => |deriv (deriv (phiD ϱ lam L w)) u|)
      (Set.Icc (-(L/2)) (L/2)) := by
    have hd1C : ContDiff ℝ 1 (deriv (phiD ϱ lam L w)) :=
      (phiD_contDiff hϱ h0 h1 hw0 hwL').deriv'
    have hcont2 : Continuous (deriv (deriv (phiD ϱ lam L w))) :=
      hd1C.continuous_deriv (by norm_num)
    exact (hcont2.abs.continuousOn).integrableOn_compact isCompact_Icc
  have hmono : ∫ u in Set.Icc (-(L/2)) (L/2), |deriv (deriv (phiD ϱ lam L w)) u|
      ≤ ∫ u in Set.Icc (-(L/2)) (L/2),
          (4 * ω ^ 2 + 2 * ω * |deriv φf u| + |deriv (deriv φf) u|) :=
    MeasureTheory.setIntegral_mono_on hIφD hmajint measurableSet_Icc hpt
  refine le_trans hmono ?_
  -- integrals of |φ'| and |φ''| over ℝ (compact support)
  have hIg1 : Integrable (fun u => |deriv φf u|) := by
    apply hφ1cont.abs.integrable_of_hasCompactSupport
    apply HasCompactSupport.abs
    apply HasCompactSupport.of_support_subset_isCompact
      (isCompact_Icc (a := -(L/2)) (b := L/2))
    intro x hx
    rw [Function.mem_support] at hx
    by_contra hmem
    apply hx
    rw [Set.mem_Icc, not_and_or, not_le, not_le] at hmem
    have hgt : L / 2 < |x| := by
      rcases hmem with h | h
      · rw [abs_of_neg (by linarith : x < 0)]; linarith
      · rw [abs_of_pos (by linarith : 0 < x)]; linarith
    have hopen : IsOpen {v : ℝ | L / 2 < |v|} := (continuous_abs).isOpen_preimage _ isOpen_Ioi
    have hEq : φf =ᶠ[nhds x] (fun _ => (0:ℝ)) := by
      filter_upwards [hopen.mem_nhds hgt] with v hv
      rw [hφdef]
      exact Taper.phi_eq_zero hϱ hw0 (le_of_lt hv)
    rw [hEq.deriv_eq, deriv_const]
  have hIg2 : Integrable (fun u => |deriv (deriv φf) u|) := by
    apply hφ2cont.abs.integrable_of_hasCompactSupport
    apply HasCompactSupport.abs
    apply HasCompactSupport.of_support_subset_isCompact
      (isCompact_Icc (a := -(L/2)) (b := L/2))
    intro x hx
    rw [Function.mem_support] at hx
    by_contra hmem
    apply hx
    rw [Set.mem_Icc, not_and_or, not_le, not_le] at hmem
    have hgt : L / 2 < |x| := by
      rcases hmem with h | h
      · rw [abs_of_neg (by linarith : x < 0)]; linarith
      · rw [abs_of_pos (by linarith : 0 < x)]; linarith
    exact deriv2_eq_zero_outside (fun t ht => by
      rw [hφdef]; exact Taper.phi_eq_zero hϱ hw0 ht) hgt
  have hsplit2 : ∫ u in Set.Icc (-(L/2)) (L/2),
      (4 * ω ^ 2 + 2 * ω * |deriv φf u| + |deriv (deriv φf) u|)
      ≤ 4 * ω ^ 2 * L + 2 * ω * 2 + Taper.cRho ϱ / (2 * w) := by
    have ea : ∫ u in Set.Icc (-(L/2)) (L/2), (4 * ω ^ 2 + 2 * ω * |deriv φf u|)
        = (∫ u in Set.Icc (-(L/2)) (L/2), (4 * ω ^ 2 : ℝ))
          + ∫ u in Set.Icc (-(L/2)) (L/2), (2 * ω * |deriv φf u|) :=
      MeasureTheory.integral_add iconst iabs1
    have eb : ∫ u in Set.Icc (-(L/2)) (L/2), (2 * ω * |deriv φf u|)
        = 2 * ω * ∫ u in Set.Icc (-(L/2)) (L/2), |deriv φf u| :=
      MeasureTheory.integral_const_mul _ _
    have e1 : ∫ u in Set.Icc (-(L/2)) (L/2), (4 * ω ^ 2 + 2 * ω * |deriv φf u|
        + |deriv (deriv φf) u|)
        = (∫ u in Set.Icc (-(L/2)) (L/2), (4 * ω ^ 2 : ℝ))
          + 2 * ω * (∫ u in Set.Icc (-(L/2)) (L/2), |deriv φf u|)
          + ∫ u in Set.Icc (-(L/2)) (L/2), |deriv (deriv φf) u| := by
      calc ∫ u in Set.Icc (-(L/2)) (L/2),
            (4 * ω ^ 2 + 2 * ω * |deriv φf u| + |deriv (deriv φf) u|)
          = (∫ u in Set.Icc (-(L/2)) (L/2), (4 * ω ^ 2 + 2 * ω * |deriv φf u|))
            + ∫ u in Set.Icc (-(L/2)) (L/2), |deriv (deriv φf) u| :=
            MeasureTheory.integral_add isum iabs2
        _ = _ := by rw [ea, eb]
    rw [e1]
    have c1b : ∫ u in Set.Icc (-(L/2)) (L/2), (4 * ω ^ 2 : ℝ) ≤ 4 * ω ^ 2 * L := by
      rw [MeasureTheory.setIntegral_const, MeasureTheory.measureReal_def, Real.volume_Icc,
        ENNReal.toReal_ofReal (by linarith), smul_eq_mul]
      nlinarith [sq_nonneg ω]
    have c2b : ∫ u in Set.Icc (-(L/2)) (L/2), |deriv φf u| ≤ 2 := by
      refine le_trans (MeasureTheory.setIntegral_le_integral hIg1
        (MeasureTheory.ae_of_all _ fun u => abs_nonneg _)) ?_
      rw [hφdef]
      exact le_of_eq (Taper.integral_abs_deriv_phi hϱ hw0 hwL')
    have c3b : ∫ u in Set.Icc (-(L/2)) (L/2), |deriv (deriv φf) u|
        ≤ Taper.cRho ϱ / (2 * w) := by
      refine le_trans (MeasureTheory.setIntegral_le_integral hIg2
        (MeasureTheory.ae_of_all _ fun u => abs_nonneg _)) ?_
      rw [hφdef]
      rw [Taper.integral_abs_deriv2_phi hϱ hw0 hwL']
      rw [div_le_div_iff₀ hw0 (by positivity)]
      have hcr := Taper.cRho_eq ϱ
      have hsup0 : 0 ≤ Taper.supDeriv ϱ := Real.iSup_nonneg fun x => abs_nonneg _
      nlinarith [mul_nonneg hsup0 hw0.le]
    have hω0' : (0:ℝ) ≤ 2 * ω := by positivity
    nlinarith [mul_le_mul_of_nonneg_left c2b hω0']
  refine le_trans hsplit2 ?_
  -- final arithmetic
  have hc4 : (0:ℝ) ≤ Taper.cRho ϱ := by linarith [Taper.four_le_cRho hϱ]
  have hωL : 4 * ω ^ 2 * L ≤ 16 / L := by
    calc 4 * ω ^ 2 * L ≤ 4 * (2/L) ^ 2 * L := by
          apply mul_le_mul_of_nonneg_right _ hL.le
          apply mul_le_mul_of_nonneg_left (pow_le_pow_left₀ hω0 hωle 2) (by norm_num)
      _ = 16 / L := by field_simp; ring
  have h4L : 16 / L ≤ 2 / w := by
    rw [div_le_div_iff₀ hL hw0]
    linarith
  have h2ω : 2 * ω * 2 ≤ 1 / w := by
    have h8 : 8 / L ≤ 1 / w := by
      rw [div_le_div_iff₀ hL hw0]
      linarith
    have h4ω : 2 * ω * 2 ≤ 8 / L := by
      have e : (8:ℝ) / L = 4 * (2 / L) := by ring
      rw [e]
      linarith
    linarith
  have hcrw : Taper.cRho ϱ / (2 * w) ≤ Taper.cRho ϱ / w := by
    apply div_le_div_of_nonneg_left hc4 hw0
    linarith
  have hcdt : (3 + Taper.cRho ϱ) / w ≤ cDT ϱ lam / w := by
    apply div_le_div_of_nonneg_right ?_ hw0.le
    unfold cDT
    nlinarith [hc4, sq_nonneg lam]
  calc 4 * ω ^ 2 * L + 2 * ω * 2 + Taper.cRho ϱ / (2 * w)
      ≤ 2 / w + 1 / w + Taper.cRho ϱ / w := by linarith [hωL, h4L, h2ω, hcrw]
    _ = (3 + Taper.cRho ϱ) / w := by
        field_simp
        ring
    _ ≤ cDT ϱ lam / w := hcdt


/-! ### the moments [eq:abJ] vs their scale-free limits (last sentence of the [thm:D] proof:
"Its constants [eq:abJ] differ from those of v*_1 by O(1/L)") -/

/-- shared edge estimate for the moment comparisons: for |h| ≤ 1 and a plateau function
0 ≤ p ≤ 1 with p = 1 on [−L/2+w, L/2−w] and p = 0 off [−L/2, L/2],
|∫ h·p − ∫_{[−L/2,L/2]} h| ≤ 2w (the integrands differ only on the two ramps). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean#L610).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
