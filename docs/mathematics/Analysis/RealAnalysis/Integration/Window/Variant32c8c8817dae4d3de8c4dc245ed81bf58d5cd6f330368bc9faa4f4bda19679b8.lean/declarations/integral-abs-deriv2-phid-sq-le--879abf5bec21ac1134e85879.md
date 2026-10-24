# integral_abs_deriv2_phiD_sq_le

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
      "line": 357,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6be83bbc-5e98-a6cf-75b9-49f8484ef9f8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:bcd69e59-4042-61e8-f897-96213a65bd55",
  "kind": "theorem",
  "lexical_name": "integral_abs_deriv2_phiD_sq_le",
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
  "slug": "integral-abs-deriv2-phid-sq-le--879abf5bec21ac1134e85879",
  "source": {
    "blob": "749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 609,
    "line": 357,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:879abf5bec21ac1134e85879e83f30f9b0da939a8bb203c4e4e38465ca9d69ac",
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

Occurrence: `result:bcd69e59-4042-61e8-f897-96213a65bd55`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 357–609.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_deriv2_phiD_sq_le (hϱ : TaperProfile ϱ) (h0 : 0 < lam) (h1 : lam ≤ 1)
    (hw : 1 ≤ w) (hwL : 8 * w ≤ L) :
    ∫ u, |deriv (deriv (fun u => phiD ϱ lam L w u ^ 2)) u| ≤ cDT ϱ lam / w := by
  have hw0 : 0 < w := by linarith
  have hwL' : 2 * w ≤ L := by linarith
  have hL : 0 < L := by linarith
  have hs32 : Real.sqrt 2 ≤ 3 / 2 := by
    nlinarith [Real.sq_sqrt (by norm_num : (0:ℝ) ≤ 2), Real.sqrt_nonneg 2]
  set ω : ℝ := Real.sqrt 2 * lam * (1 / L) with hωdef
  have hω0 : 0 ≤ ω := by positivity
  have hωle : ω ≤ 2 / L := by
    rw [hωdef]
    rw [div_eq_mul_one_div 2 L]
    apply mul_le_mul_of_nonneg_right _ (by positivity)
    nlinarith
  -- names for the factors
  set c : ℝ → ℝ := fun u => vStar lam (u / L) with hcdef
  set g : ℝ → ℝ := fun u => Taper.phi ϱ L w u ^ 2 with hgdef
  have hgC : ContDiff ℝ 3 g := (Taper.phi_contDiff hϱ hw0 hwL').pow 2
  have hgd : Differentiable ℝ g := hgC.differentiable (by norm_num)
  have hg1C : ContDiff ℝ 2 (deriv g) := hgC.deriv'
  have hg1d : Differentiable ℝ (deriv g) := hg1C.differentiable (by norm_num)
  have hg1 : ∀ u, HasDerivAt g (deriv g u) u := fun u => (hgd u).hasDerivAt
  have hg2 : ∀ u, HasDerivAt (deriv g) (deriv (deriv g) u) u := fun u => (hg1d u).hasDerivAt
  -- first derivative of F := c·g
  have hF1 : deriv (fun u => c u * g u) = fun u => (-ω * Real.sin (Real.sqrt 2 * lam * (u / L)))
      * g u + c u * deriv g u := by
    funext u
    exact ((hasDerivAt_cosFactor u).mul (hg1 u)).deriv
  -- second derivative
  have hF2 : ∀ u, deriv (deriv (fun u => c u * g u)) u
      = (-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L))) * g u
        + 2 * ((-ω * Real.sin (Real.sqrt 2 * lam * (u / L))) * deriv g u)
        + c u * deriv (deriv g) u := by
    intro u
    rw [hF1]
    have hstep : HasDerivAt (fun u => (-ω * Real.sin (Real.sqrt 2 * lam * (u / L))) * g u
        + c u * deriv g u)
        ((-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L))) * g u
          + (-ω * Real.sin (Real.sqrt 2 * lam * (u / L))) * deriv g u
          + ((-ω * Real.sin (Real.sqrt 2 * lam * (u / L))) * deriv g u
            + c u * deriv (deriv g) u)) u :=
      (((hasDerivAt_cosFactor' u).mul (hg1 u)).add ((hasDerivAt_cosFactor u).mul (hg2 u)))
    rw [hstep.deriv]
    ring
  -- rewrite the goal through φ_D² = c·g
  rw [show (fun u => phiD ϱ lam L w u ^ 2) = fun u => c u * g u from
    phiD_sq_eq hϱ h0 h1 hw0 hwL']
  -- support restriction
  have hsupp : ∀ x : ℝ, L / 2 ≤ |x| → c x * g x = 0 := by
    intro x hx
    rw [hgdef]
    simp only
    rw [Taper.phi_eq_zero hϱ hw0 hx]
    ring
  have hrestr : ∫ u, |deriv (deriv (fun u => c u * g u)) u|
      = ∫ u in Set.Icc (-(L/2)) (L/2), |deriv (deriv (fun u => c u * g u)) u| :=
    integral_abs_eq_setIntegral (by positivity) (fun x hx => deriv2_eq_zero_outside hsupp hx)
  rw [hrestr]
  -- pointwise bound and integration
  have hgle : ∀ u, g u ≤ 1 := by
    intro u
    rw [hgdef]
    simp only
    calc Taper.phi ϱ L w u ^ 2 ≤ 1 ^ 2 :=
          pow_le_pow_left₀ (Taper.phi_nonneg hϱ u) (Taper.phi_le_one hϱ u) 2
      _ = 1 := one_pow 2
  have hg0 : ∀ u, 0 ≤ g u := fun u => sq_nonneg _
  have hcle : ∀ u, |c u| ≤ 1 := fun u => Real.abs_cos_le_one _
  have hpt : ∀ u, |deriv (deriv (fun u => c u * g u)) u|
      ≤ ω ^ 2 + 2 * ω * |deriv g u| + |deriv (deriv g) u| := by
    intro u
    rw [hF2 u]
    have e1 : |(-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L))) * g u| ≤ ω ^ 2 := by
      rw [abs_mul, abs_mul, abs_neg, abs_pow, abs_of_nonneg hω0]
      calc ω ^ 2 * |Real.cos (Real.sqrt 2 * lam * (u / L))| * |g u|
          ≤ ω ^ 2 * 1 * 1 := by
            apply mul_le_mul (mul_le_mul_of_nonneg_left (Real.abs_cos_le_one _) (by positivity))
              (by rw [abs_of_nonneg (hg0 u)]; exact hgle u) (abs_nonneg _) (by positivity)
        _ = ω ^ 2 := by ring
    have e2 : |2 * ((-ω * Real.sin (Real.sqrt 2 * lam * (u / L))) * deriv g u)|
        ≤ 2 * ω * |deriv g u| := by
      rw [abs_mul, abs_mul, abs_mul, abs_neg, abs_of_nonneg hω0]
      rw [show |(2:ℝ)| = 2 from abs_of_pos two_pos]
      calc 2 * (ω * |Real.sin (Real.sqrt 2 * lam * (u / L))| * |deriv g u|)
          ≤ 2 * (ω * 1 * |deriv g u|) := by
            apply mul_le_mul_of_nonneg_left _ (by norm_num)
            apply mul_le_mul_of_nonneg_right _ (abs_nonneg _)
            exact mul_le_mul_of_nonneg_left (Real.abs_sin_le_one _) hω0
        _ = 2 * ω * |deriv g u| := by ring
    have e3 : |c u * deriv (deriv g) u| ≤ |deriv (deriv g) u| := by
      rw [abs_mul]
      calc |c u| * |deriv (deriv g) u| ≤ 1 * |deriv (deriv g) u| :=
            mul_le_mul_of_nonneg_right (hcle u) (abs_nonneg _)
        _ = _ := one_mul _
    calc |(-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L))) * g u
          + 2 * ((-ω * Real.sin (Real.sqrt 2 * lam * (u / L))) * deriv g u)
          + c u * deriv (deriv g) u|
        ≤ |(-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L))) * g u
            + 2 * ((-ω * Real.sin (Real.sqrt 2 * lam * (u / L))) * deriv g u)|
          + |c u * deriv (deriv g) u| := abs_add_le _ _
      _ ≤ |(-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L))) * g u|
          + |2 * ((-ω * Real.sin (Real.sqrt 2 * lam * (u / L))) * deriv g u)|
          + |c u * deriv (deriv g) u| := by
            linarith [abs_add_le ((-ω ^ 2 * Real.cos (Real.sqrt 2 * lam * (u / L))) * g u)
              (2 * ((-ω * Real.sin (Real.sqrt 2 * lam * (u / L))) * deriv g u))]
      _ ≤ _ := by linarith [e1, e2, e3]
  -- integrability of the majorant pieces (continuous with compact support / on compact)
  have hg1cont : Continuous (deriv g) := hg1C.continuous
  have hg2cont : Continuous (deriv (deriv g)) := hg1C.continuous_deriv (by norm_num)
  have iconst : MeasureTheory.IntegrableOn (fun _ : ℝ => (ω ^ 2 : ℝ))
      (Set.Icc (-(L/2)) (L/2)) :=
    MeasureTheory.integrableOn_const (by rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top)
  have iabs1 : MeasureTheory.IntegrableOn (fun u => 2 * ω * |deriv g u|)
      (Set.Icc (-(L/2)) (L/2)) :=
    ((hg1cont.abs.continuousOn).integrableOn_compact isCompact_Icc).const_mul _
  have iabs2 : MeasureTheory.IntegrableOn (fun u => |deriv (deriv g) u|)
      (Set.Icc (-(L/2)) (L/2)) :=
    (hg2cont.abs.continuousOn).integrableOn_compact isCompact_Icc
  have isum : MeasureTheory.IntegrableOn (fun u => ω ^ 2 + 2 * ω * |deriv g u|)
      (Set.Icc (-(L/2)) (L/2)) :=
    ((by fun_prop : Continuous fun u : ℝ => ω ^ 2 + 2 * ω * |deriv g u|)).continuousOn.integrableOn_compact
      isCompact_Icc
  have hmajint : MeasureTheory.IntegrableOn
      (fun u => ω ^ 2 + 2 * ω * |deriv g u| + |deriv (deriv g) u|)
      (Set.Icc (-(L/2)) (L/2)) :=
    ((by fun_prop : Continuous fun u : ℝ =>
      ω ^ 2 + 2 * ω * |deriv g u| + |deriv (deriv g) u|)).continuousOn.integrableOn_compact
      isCompact_Icc
  have hmono : ∫ u in Set.Icc (-(L/2)) (L/2), |deriv (deriv (fun u => c u * g u)) u|
      ≤ ∫ u in Set.Icc (-(L/2)) (L/2),
          (ω ^ 2 + 2 * ω * |deriv g u| + |deriv (deriv g) u|) := by
    apply MeasureTheory.integral_mono_of_nonneg
      (MeasureTheory.ae_of_all _ fun u => abs_nonneg _) hmajint
      (MeasureTheory.ae_of_all _ fun u => hpt u)
  refine le_trans hmono ?_
  -- evaluate the majorant integral
  have hIg1 : Integrable (fun u => |deriv g u|) := by
    apply hg1cont.abs.integrable_of_hasCompactSupport
    apply HasCompactSupport.abs
    apply HasCompactSupport.of_support_subset_isCompact
      (isCompact_Icc (a := -(L/2)) (b := L/2))
    intro x hx
    rw [Function.mem_support] at hx
    by_contra hmem
    apply hx
    rw [Set.mem_Icc, not_and_or, not_le, not_le] at hmem
    have : L / 2 < |x| := by
      rcases hmem with h | h
      · rw [abs_of_neg (by linarith)]; linarith
      · rw [abs_of_pos (by linarith)]; linarith
    -- deriv g = 0 beyond the support of g
    have hopen : IsOpen {v : ℝ | L / 2 < |v|} := (continuous_abs).isOpen_preimage _ isOpen_Ioi
    have hEq : g =ᶠ[nhds x] (fun _ => (0:ℝ)) := by
      filter_upwards [hopen.mem_nhds this] with v hv
      rw [hgdef]
      simp only
      rw [Taper.phi_eq_zero hϱ hw0 (le_of_lt hv), zero_pow two_ne_zero]
    rw [hEq.deriv_eq, deriv_const]
  have hIg2 : Integrable (fun u => |deriv (deriv g) u|) := by
    apply hg2cont.abs.integrable_of_hasCompactSupport
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
      · rw [abs_of_neg (by linarith)]; linarith
      · rw [abs_of_pos (by linarith)]; linarith
    exact deriv2_eq_zero_outside (fun t ht => by
      rw [hgdef]; simp only; rw [Taper.phi_eq_zero hϱ hw0 ht, zero_pow two_ne_zero]) hgt
  have hsplit2 : ∫ u in Set.Icc (-(L/2)) (L/2),
      (ω ^ 2 + 2 * ω * |deriv g u| + |deriv (deriv g) u|)
      ≤ ω ^ 2 * L + 2 * ω * 2 + Taper.cRho ϱ / w := by
    have ea : ∫ u in Set.Icc (-(L/2)) (L/2), (ω ^ 2 + 2 * ω * |deriv g u|)
        = (∫ u in Set.Icc (-(L/2)) (L/2), (ω ^ 2 : ℝ))
          + ∫ u in Set.Icc (-(L/2)) (L/2), (2 * ω * |deriv g u|) :=
      MeasureTheory.integral_add iconst iabs1
    have eb : ∫ u in Set.Icc (-(L/2)) (L/2), (2 * ω * |deriv g u|)
        = 2 * ω * ∫ u in Set.Icc (-(L/2)) (L/2), |deriv g u| :=
      MeasureTheory.integral_const_mul _ _
    have e1 : ∫ u in Set.Icc (-(L/2)) (L/2), (ω ^ 2 + 2 * ω * |deriv g u|
        + |deriv (deriv g) u|)
        = (∫ u in Set.Icc (-(L/2)) (L/2), (ω ^ 2 : ℝ))
          + 2 * ω * (∫ u in Set.Icc (-(L/2)) (L/2), |deriv g u|)
          + ∫ u in Set.Icc (-(L/2)) (L/2), |deriv (deriv g) u| := by
      calc ∫ u in Set.Icc (-(L/2)) (L/2), (ω ^ 2 + 2 * ω * |deriv g u| + |deriv (deriv g) u|)
          = (∫ u in Set.Icc (-(L/2)) (L/2), (ω ^ 2 + 2 * ω * |deriv g u|))
            + ∫ u in Set.Icc (-(L/2)) (L/2), |deriv (deriv g) u| :=
            MeasureTheory.integral_add isum iabs2
        _ = _ := by rw [ea, eb]
    rw [e1]
    have c1 : ∫ u in Set.Icc (-(L/2)) (L/2), (ω ^ 2 : ℝ) ≤ ω ^ 2 * L := by
      rw [MeasureTheory.setIntegral_const, MeasureTheory.measureReal_def, Real.volume_Icc,
        ENNReal.toReal_ofReal (by linarith), smul_eq_mul]
      nlinarith [sq_nonneg ω]
    have c2 : ∫ u in Set.Icc (-(L/2)) (L/2), |deriv g u| ≤ 2 := by
      refine le_trans (MeasureTheory.setIntegral_le_integral hIg1
        (MeasureTheory.ae_of_all _ fun u => abs_nonneg _)) ?_
      rw [hgdef]
      exact le_of_eq (Taper.integral_abs_deriv_phi_sq hϱ hw0 hwL')
    have c3 : ∫ u in Set.Icc (-(L/2)) (L/2), |deriv (deriv g) u| ≤ Taper.cRho ϱ / w := by
      refine le_trans (MeasureTheory.setIntegral_le_integral hIg2
        (MeasureTheory.ae_of_all _ fun u => abs_nonneg _)) ?_
      rw [hgdef]
      exact Taper.integral_abs_deriv2_phi_sq_le hϱ hw hwL'
    have hω0' : (0:ℝ) ≤ 2 * ω := by positivity
    nlinarith [mul_le_mul_of_nonneg_left c2 hω0']
  refine le_trans hsplit2 ?_
  -- final arithmetic: ω ≤ 2/L, L ≥ 8w, cRho ≥ 4
  have hcr := Taper.cRho_eq ϱ
  have hc4 : (0:ℝ) ≤ Taper.cRho ϱ := by
    have := Taper.four_le_cRho hϱ
    linarith
  have hωL : ω ^ 2 * L ≤ 4 / L := by
    calc ω ^ 2 * L ≤ (2/L) ^ 2 * L := by
          apply mul_le_mul_of_nonneg_right (pow_le_pow_left₀ hω0 hωle 2) hL.le
      _ = 4 / L := by field_simp; ring
    
  have hLw : 1 / L ≤ 1 / (8 * w) := by
    apply one_div_le_one_div_of_le (by positivity) hwL
  have hfin : 4 / L + 2 * ω * 2 + Taper.cRho ϱ / w ≤ cDT ϱ lam / w := by
    have h4L : 4 / L ≤ 1 / w := by
      rw [div_le_div_iff₀ hL hw0]
      linarith
    have h2ω : 2 * ω * 2 ≤ 1 / w := by
      have h8 : 8 / L ≤ 1 / w := by
        rw [div_le_div_iff₀ hL hw0]
        linarith
      have h4ω : 2 * ω * 2 ≤ 8 / L := by
        have := hωle
        have e : (8:ℝ) / L = 4 * (2 / L) := by ring
        rw [e]
        linarith
      linarith
    have hcdt : (2 + Taper.cRho ϱ) / w ≤ cDT ϱ lam / w := by
      apply div_le_div_of_nonneg_right ?_ hw0.le
      unfold cDT
      nlinarith [hc4, sq_nonneg lam]
    have : 4 / L + 2 * ω * 2 + Taper.cRho ϱ / w ≤ (2 + Taper.cRho ϱ) / w := by
      have expand : (2 + Taper.cRho ϱ) / w = 1 / w + 1 / w + Taper.cRho ϱ / w := by
        field_simp
        ring
      rw [expand]
      linarith [h4L, h2ω]
    linarith [hcdt]
  linarith [hωL, hfin]

set_option maxHeartbeats 1000000 in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Window/Variant32c8c8817dae4d3de8c4dc245ed81bf58d5cd6f330368bc9faa4f4bda19679b8.lean#L357).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `749ca9b7ad43eb4a407475d2aa8aa7c8324b5f67` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
