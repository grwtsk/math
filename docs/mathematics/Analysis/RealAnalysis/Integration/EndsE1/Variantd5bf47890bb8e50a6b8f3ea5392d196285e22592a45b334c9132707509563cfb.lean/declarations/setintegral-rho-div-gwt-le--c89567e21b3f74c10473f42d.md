# setIntegral_rho_div_gwt_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "2ffe779b70efce4c0c54915abcb2286eaa0edfca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 432,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:78736352-b9f3-494f-d22b-f1a91b9e970a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e03405bc-8184-383f-3a27-124cdfab6e12",
  "kind": "theorem",
  "lexical_name": "setIntegral_rho_div_gwt_le",
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
  "slug": "setintegral-rho-div-gwt-le--c89567e21b3f74c10473f42d",
  "source": {
    "blob": "2ffe779b70efce4c0c54915abcb2286eaa0edfca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 615,
    "line": 432,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c89567e21b3f74c10473f42db7a5c54251ef9b90272243b84567594686bdb5aa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e03405bc-8184-383f-3a27-124cdfab6e12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 432–615.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setIntegral_rho_div_gwt_le (hF : LocalHypsCoreW cϱ p F) (_hν : NuBound p B ν) (hT : 1 ≤ p.T) :
    ∫ τ in Icc p.T (2 * p.T), rho p F τ / gwt p τ
      ≤ 2 * (4 * p.L ^ 2 + 4 * (cϱ / p.w) ^ 2
            + (p.h)⁻¹ * (32 * p.L + 4 / 3 * (cϱ / p.w) ^ 2 * Real.log p.T))
        + (18 * p.L ^ 2 + 18 * (cϱ / p.w) ^ 2) := by
  have hT0 : 0 < p.T := by linarith
  have hL := hF.L_pos
  have hh := h_pos hF
  have hh1 := h_le_one hF
  have htd := tau_d_gt hL hT0
  have hψ0 := psiA_nonneg_of hF
  -- the tail integral J(u) := ∫_{(u,∞)} ψ²
  have hJ_nonneg : ∀ u : ℝ, 0 ≤ ∫ r in Set.Ioi u, psiA cϱ p r ^ 2 := fun u =>
    setIntegral_nonneg measurableSet_Ioi (fun r _ => sq_nonneg _)
  have hJ_le : ∀ u : ℝ, ∫ r in Set.Ioi u, psiA cϱ p r ^ 2 ≤ 8 * p.L := fun u =>
    setIntegral_psiA_sq_Ioi_le hF u
  have hJ_anti : Antitone (fun u : ℝ => ∫ r in Set.Ioi u, psiA cϱ p r ^ 2) := by
    intro u v huv
    exact setIntegral_mono_set hF.psi_sq_integrable.integrableOn
      (ae_of_all _ fun r => sq_nonneg _) (Set.Ioi_subset_Ioi huv).eventuallyLE
  have hJ_meas : Measurable (fun u : ℝ => ∫ r in Set.Ioi u, psiA cϱ p r ^ 2) :=
    hJ_anti.measurable
  have hW_nonneg : ∀ u, 0 ≤ Wfun cϱ p u := fun u =>
    add_nonneg (sq_nonneg _) (mul_nonneg (inv_nonneg.mpr hh.le) (hJ_nonneg u))
  -- local integrability of J, of the W-majorant Φ(u) := W(u)(1+u)², and of its two pieces
  have hJon : ∀ s : Set ℝ, volume s ≠ ⊤ → ∀ (e : ℝ → ℝ), Measurable e →
      IntegrableOn (fun u => ∫ r in Set.Ioi (e u), psiA cϱ p r ^ 2) s := by
    intro s hs e he
    refine Integrable.mono' (g := fun _ => 8 * p.L) (integrableOn_const hs)
      ((hJ_meas.comp he).aestronglyMeasurable) (ae_of_all _ fun u => ?_)
    rw [Real.norm_of_nonneg (hJ_nonneg _)]
    exact hJ_le _
  have hvol : ∀ a b : ℝ, volume (Icc a b) ≠ ⊤ := fun a b => by
    rw [Real.volume_Icc]; exact ENNReal.ofReal_ne_top
  have hΦon : ∀ a b : ℝ, IntegrableOn (fun u => Wfun cϱ p u * (1 + u) ^ 2) (Icc a b) := by
    intro a b
    have h1 : IntegrableOn (fun u => Wfun cϱ p u) (Icc a b) := by
      simp only [Wfun]
      exact hF.psi_sq_integrable.integrableOn.add
        ((hJon _ (hvol a b) id measurable_id).const_mul _)
    exact h1.mul_continuousOn (by fun_prop : Continuous fun u : ℝ => (1 + u) ^ 2).continuousOn
      isCompact_Icc
  have hP1on : ∀ a b : ℝ, IntegrableOn (fun u => psiA cϱ p u ^ 2 * (1 + u) ^ 2) (Icc a b) :=
    fun a b => hF.psi_sq_integrable.integrableOn.mul_continuousOn
      (by fun_prop : Continuous fun u : ℝ => (1 + u) ^ 2).continuousOn isCompact_Icc
  have hP2on : ∀ a b : ℝ, IntegrableOn
      (fun u => (∫ r in Set.Ioi u, psiA cϱ p r ^ 2) * (1 + u) ^ 2) (Icc a b) :=
    fun a b => (hJon _ (hvol a b) id measurable_id).mul_continuousOn
      (by fun_prop : Continuous fun u : ℝ => (1 + u) ^ 2).continuousOn isCompact_Icc
  have hii : ∀ {f : ℝ → ℝ} {a b : ℝ}, a ≤ b → IntegrableOn f (Icc a b) →
      IntervalIntegrable f volume a b := by
    intro f a b hab h
    exact (h.mono_set (by rw [Set.uIcc_of_le hab])).intervalIntegrable
  -- STEP 1: pointwise majorant on I
  have hpt : ∀ τ ∈ Icc p.T (2 * p.T), rho p F τ / gwt p τ
      ≤ Wfun cϱ p (τ - p.T) * (1 + (τ - p.T)) ^ 2
        + Wfun cϱ p (2 * p.T - τ) * (1 + (2 * p.T - τ)) ^ 2
        + psiA cϱ p (p.tau p.d - τ) ^ 2 * (2 + |p.tau p.d - τ|) ^ 2 := by
    intro τ hτ
    have hm0 := distB_nonneg hτ
    have hmaj := rho_le_majorant hF hT0 hτ
    have e : rho p F τ / gwt p τ = rho p F τ * (1 + distB p τ) ^ 2 := by
      unfold gwt; rw [div_inv_eq_mul]
    rw [e]
    have hmL : distB p τ ≤ τ - p.T := min_le_left _ _
    have hmR : distB p τ ≤ 2 * p.T - τ := min_le_right _ _
    have hmS : 1 + distB p τ ≤ 2 + |p.tau p.d - τ| := by
      have := le_abs_self (p.tau p.d - τ); linarith
    have hW1 := hW_nonneg (τ - p.T)
    have hW2 := hW_nonneg (2 * p.T - τ)
    have hsqL : (1 + distB p τ) ^ 2 ≤ (1 + (τ - p.T)) ^ 2 :=
      pow_le_pow_left₀ (by linarith) (by linarith) 2
    have hsqR : (1 + distB p τ) ^ 2 ≤ (1 + (2 * p.T - τ)) ^ 2 :=
      pow_le_pow_left₀ (by linarith) (by linarith) 2
    have hsqS : (1 + distB p τ) ^ 2 ≤ (2 + |p.tau p.d - τ|) ^ 2 :=
      pow_le_pow_left₀ (by linarith) hmS 2
    calc rho p F τ * (1 + distB p τ) ^ 2
        ≤ (Wfun cϱ p (τ - p.T) + Wfun cϱ p (2 * p.T - τ) + psiA cϱ p (p.tau p.d - τ) ^ 2)
            * (1 + distB p τ) ^ 2 := mul_le_mul_of_nonneg_right hmaj (sq_nonneg _)
      _ = Wfun cϱ p (τ - p.T) * (1 + distB p τ) ^ 2
          + Wfun cϱ p (2 * p.T - τ) * (1 + distB p τ) ^ 2
          + psiA cϱ p (p.tau p.d - τ) ^ 2 * (1 + distB p τ) ^ 2 := by ring
      _ ≤ _ := add_le_add (add_le_add (mul_le_mul_of_nonneg_left hsqL hW1)
            (mul_le_mul_of_nonneg_left hsqR hW2))
            (mul_le_mul_of_nonneg_left hsqS (sq_nonneg _))
  -- STEP 2: integrability of the three majorant pieces on I
  set I : Set ℝ := Icc p.T (2 * p.T) with hIdef
  have hIvol : volume I ≠ ⊤ := hvol _ _
  have hA : IntegrableOn (fun τ => Wfun cϱ p (τ - p.T) * (1 + (τ - p.T)) ^ 2) I := by
    have h1 : IntegrableOn (fun τ => Wfun cϱ p (τ - p.T)) I := by
      simp only [Wfun]
      exact (hF.psi_sq_integrable.comp_sub_right p.T).integrableOn.add
        ((hJon _ hIvol (fun τ => τ - p.T) (measurable_id.sub_const _)).const_mul _)
    exact h1.mul_continuousOn
      (by fun_prop : Continuous fun τ : ℝ => (1 + (τ - p.T)) ^ 2).continuousOn isCompact_Icc
  have hB : IntegrableOn (fun τ => Wfun cϱ p (2 * p.T - τ) * (1 + (2 * p.T - τ)) ^ 2) I := by
    have h1 : IntegrableOn (fun τ => Wfun cϱ p (2 * p.T - τ)) I := by
      simp only [Wfun]
      exact (hF.psi_sq_integrable.comp_sub_left (2 * p.T)).integrableOn.add
        ((hJon _ hIvol (fun τ => 2 * p.T - τ) (measurable_const.sub measurable_id)).const_mul _)
    exact h1.mul_continuousOn
      (by fun_prop : Continuous fun τ : ℝ => (1 + (2 * p.T - τ)) ^ 2).continuousOn
      isCompact_Icc
  have hC : IntegrableOn
      (fun τ => psiA cϱ p (p.tau p.d - τ) ^ 2 * (2 + |p.tau p.d - τ|) ^ 2) I :=
    ((W3 hF).1.comp_sub_left (p.tau p.d)).integrableOn
  -- STEP 3: integrate the pointwise bound
  have hmono : ∫ τ in I, rho p F τ / gwt p τ
      ≤ ∫ τ in I, (Wfun cϱ p (τ - p.T) * (1 + (τ - p.T)) ^ 2
        + Wfun cϱ p (2 * p.T - τ) * (1 + (2 * p.T - τ)) ^ 2
        + psiA cϱ p (p.tau p.d - τ) ^ 2 * (2 + |p.tau p.d - τ|) ^ 2) := by
    refine integral_mono_of_nonneg ?_ ((hA.add hB).add hC) ?_
    · exact ae_restrict_of_forall_mem measurableSet_Icc fun τ hτ =>
        div_nonneg (rho_nonneg hF τ) (gwt_pos hτ).le
    · exact ae_restrict_of_forall_mem measurableSet_Icc hpt
  -- STEP 4: the three integrals
  -- (C) the stray term
  have hCval : ∫ τ in I, psiA cϱ p (p.tau p.d - τ) ^ 2 * (2 + |p.tau p.d - τ|) ^ 2
      ≤ 18 * p.L ^ 2 + 18 * (cϱ / p.w) ^ 2 := by
    calc ∫ τ in I, psiA cϱ p (p.tau p.d - τ) ^ 2 * (2 + |p.tau p.d - τ|) ^ 2
        ≤ ∫ τ, psiA cϱ p (p.tau p.d - τ) ^ 2 * (2 + |p.tau p.d - τ|) ^ 2 :=
          setIntegral_le_integral ((W3 hF).1.comp_sub_left (p.tau p.d))
            (ae_of_all _ fun τ => by positivity)
      _ = ∫ r, psiA cϱ p r ^ 2 * (2 + |r|) ^ 2 :=
          integral_sub_left_eq_self (fun r => psiA cϱ p r ^ 2 * (2 + |r|) ^ 2) volume (p.tau p.d)
      _ ≤ _ := (W3 hF).2
  -- (A),(B): change of variables to ∫_0^T W(u)(1+u)²
  have hT2 : p.T ≤ 2 * p.T := by linarith
  have hAval : ∫ τ in I, Wfun cϱ p (τ - p.T) * (1 + (τ - p.T)) ^ 2
      = ∫ u in (0:ℝ)..p.T, Wfun cϱ p u * (1 + u) ^ 2 := by
    rw [hIdef, integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hT2,
      intervalIntegral.integral_comp_sub_right (fun u => Wfun cϱ p u * (1 + u) ^ 2) p.T,
      sub_self, show 2 * p.T - p.T = p.T by ring]
  have hBval : ∫ τ in I, Wfun cϱ p (2 * p.T - τ) * (1 + (2 * p.T - τ)) ^ 2
      = ∫ u in (0:ℝ)..p.T, Wfun cϱ p u * (1 + u) ^ 2 := by
    rw [hIdef, integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hT2,
      intervalIntegral.integral_comp_sub_left (fun u => Wfun cϱ p u * (1 + u) ^ 2) (2 * p.T),
      sub_self, show 2 * p.T - p.T = p.T by ring]
  -- the main 1-D integral: split at 1 and expand W = ψ² + h⁻¹ J
  have hΦ01 := hii zero_le_one (hΦon 0 1)
  have hΦ1T := hii hT (hΦon 1 p.T)
  have hexpand : ∀ {a b : ℝ}, a ≤ b →
      ∫ u in a..b, Wfun cϱ p u * (1 + u) ^ 2
        = (∫ u in a..b, psiA cϱ p u ^ 2 * (1 + u) ^ 2)
          + (p.h)⁻¹ * ∫ u in a..b, (∫ r in Set.Ioi u, psiA cϱ p r ^ 2) * (1 + u) ^ 2 := by
    intro a b hab
    have e : (fun u => Wfun cϱ p u * (1 + u) ^ 2)
        = fun u => psiA cϱ p u ^ 2 * (1 + u) ^ 2
          + (p.h)⁻¹ * ((∫ r in Set.Ioi u, psiA cϱ p r ^ 2) * (1 + u) ^ 2) := by
      funext u; simp only [Wfun]; ring
    rw [e, intervalIntegral.integral_add (hii hab (hP1on a b))
      ((hii hab (hP2on a b)).const_mul _), intervalIntegral.integral_const_mul]
  have hmain : ∫ u in (0:ℝ)..p.T, Wfun cϱ p u * (1 + u) ^ 2
      ≤ 4 * p.L ^ 2 + 4 * (cϱ / p.w) ^ 2
        + (p.h)⁻¹ * (32 * p.L + 4 / 3 * (cϱ / p.w) ^ 2 * Real.log p.T) := by
    rw [← intervalIntegral.integral_add_adjacent_intervals hΦ01 hΦ1T,
      hexpand zero_le_one, hexpand hT]
    have h1 := W1a hF
    have h2 := W1b hF hT
    have h3 := W1c hF
    have h4 := W1d hF hT
    have hhi : 0 ≤ (p.h)⁻¹ := inv_nonneg.mpr hh.le
    nlinarith [mul_le_mul_of_nonneg_left h3 hhi, mul_le_mul_of_nonneg_left h4 hhi]
  -- assemble
  calc ∫ τ in I, rho p F τ / gwt p τ
      ≤ ∫ τ in I, (Wfun cϱ p (τ - p.T) * (1 + (τ - p.T)) ^ 2
          + Wfun cϱ p (2 * p.T - τ) * (1 + (2 * p.T - τ)) ^ 2
          + psiA cϱ p (p.tau p.d - τ) ^ 2 * (2 + |p.tau p.d - τ|) ^ 2) := hmono
    _ = (∫ τ in I, (Wfun cϱ p (τ - p.T) * (1 + (τ - p.T)) ^ 2
          + Wfun cϱ p (2 * p.T - τ) * (1 + (2 * p.T - τ)) ^ 2))
        + ∫ τ in I, psiA cϱ p (p.tau p.d - τ) ^ 2 * (2 + |p.tau p.d - τ|) ^ 2 :=
          integral_add (hA.add hB) hC
    _ = (∫ τ in I, Wfun cϱ p (τ - p.T) * (1 + (τ - p.T)) ^ 2)
        + (∫ τ in I, Wfun cϱ p (2 * p.T - τ) * (1 + (2 * p.T - τ)) ^ 2)
        + ∫ τ in I, psiA cϱ p (p.tau p.d - τ) ^ 2 * (2 + |p.tau p.d - τ|) ^ 2 := by
          rw [integral_add hA hB]
    _ ≤ _ := by rw [hAval, hBval]; linarith [hmain, hCval]

/-! ### Assembly -/

section Bounds
variable (cϱ lam : ℝ)

/-- **Majorant bound behind 𝓔₁**: ∬_{I×I} majK1(ν) ≤ C·L³B²·l for T ≥ T₀. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean#L432).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ffe779b70efce4c0c54915abcb2286eaa0edfca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
