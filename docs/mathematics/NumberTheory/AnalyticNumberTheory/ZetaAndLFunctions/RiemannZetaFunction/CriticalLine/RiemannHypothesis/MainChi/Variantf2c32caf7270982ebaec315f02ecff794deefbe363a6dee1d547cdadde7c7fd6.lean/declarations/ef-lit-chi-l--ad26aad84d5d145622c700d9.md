# EF_lit_chi_L

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:48e2cc29-0a6c-6700-7b7e-dc7332ef3ed6",
  "kind": "theorem",
  "lexical_name": "EF_lit_chi_L",
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
  "slug": "ef-lit-chi-l--ad26aad84d5d145622c700d9",
  "source": {
    "blob": "f2a7629c4b069b495dc61a7bb110c24ac8f97374",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 273,
    "line": 45,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainChi/Variantf2c32caf7270982ebaec315f02ecff794deefbe363a6dee1d547cdadde7c7fd6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ad26aad84d5d145622c700d9ae1d0803bc88fc58495a129cc437c7b8963e7565",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainChi/Variantf2c32caf7270982ebaec315f02ecff794deefbe363a6dee1d547cdadde7c7fd6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:48e2cc29-0a6c-6700-7b7e-dc7332ef3ed6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 45–273.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EF_lit_chi_L (hq : 1 < q) (hprim : χ.IsPrimitive) :
    EF_lit_chi (parity χ) q (coeff χ) (LZeros (LSeam_of hq hprim)) := by
  intro k hk hkc
  refine ⟨EF_zero_sum_summable_chi hq hprim hk hkc, ?_⟩
  have hχ1 : χ ≠ 1 := ne_one_of_primitive hq hprim
  have hχi1 : χ⁻¹ ≠ 1 := inv_ne_one hχ1
  have h54a : (1:ℝ) < 5/4 := by norm_num
  have h54b : (5/4:ℝ) ≤ 3/2 := by norm_num
  have hkneg2 : ContDiff ℝ 2 (fun u : ℝ => k (-u)) := hk.comp contDiff_neg
  have hknegc : HasCompactSupport (fun u : ℝ => k (-u)) := by
    exact hkc.comp_homeomorph (Homeomorph.neg ℝ)
  have hfull := full_line_identity_chi' hq hprim hk hkc h54a h54b
  have hH2eq : ∀ t : ℝ, Hfn k (1 - (5/4:ℝ) - t * I)
      = Hfn (fun u => k (-u)) (((5/4:ℝ):ℂ) + t * I) := fun t => Hfn_mirror k (5/4) t
  -- pointwise: Λsym-split into the common archimedean part and each character's L
  have hsplitpt : ∀ (ψ : DirichletCharacter ℂ q), ψ ≠ 1 → ∀ t : ℝ,
      logDeriv (completedLSym ψ) (((5/4:ℝ):ℂ) + t * I)
        = (logDeriv (completedLSym ψ) (((5/4:ℝ):ℂ) + t * I)
            - logDeriv ψ.LFunction (((5/4:ℝ):ℂ) + t * I))
          + logDeriv ψ.LFunction (((5/4:ℝ):ℂ) + t * I) := by
    intro ψ hψ t
    ring
  have hintL : ∀ (g : ℝ → ℂ), ContDiff ℝ 2 g → HasCompactSupport g →
      ∀ (ψ : DirichletCharacter ℂ q), ψ ≠ 1 →
      Integrable (fun t : ℝ => Hfn g (((5/4:ℝ):ℂ) + t * I)
        * logDeriv ψ.LFunction (((5/4:ℝ):ℂ) + t * I)) := fun g hg hgc ψ hψ =>
    integrable_Hfn_mul_logDeriv_L hψ hg hgc h54a h54b
  have hline_re : ∀ t : ℝ, (0:ℝ) < ((((5/4:ℝ)):ℂ) + t * I).re := by
    intro t
    simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im,
      Complex.I_re, Complex.I_im]
    norm_num
  have hline_re1 : ∀ t : ℝ, (1:ℝ) ≤ ((((5/4:ℝ)):ℂ) + t * I).re := by
    intro t
    simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.ofReal_im,
      Complex.I_re, Complex.I_im]
    norm_num
  have harchdiff : ∀ t : ℝ,
      logDeriv (completedLSym χ⁻¹) (((5/4:ℝ):ℂ) + t * I)
          - logDeriv (χ⁻¹).LFunction (((5/4:ℝ):ℂ) + t * I)
        = logDeriv (completedLSym χ) (((5/4:ℝ):ℂ) + t * I)
          - logDeriv χ.LFunction (((5/4:ℝ):ℂ) + t * I) := by
    intro t
    exact logDeriv_completedLSym_sub_L_inv hq hχ1 hχi1 (hline_re t)
      (DirichletCharacter.LFunction_ne_zero_of_one_le_re χ (Or.inl hχ1) (hline_re1 t))
      (DirichletCharacter.LFunction_ne_zero_of_one_le_re χ⁻¹ (Or.inl hχi1) (hline_re1 t))
  have hintΓ : Integrable (fun t : ℝ => (Hfn k (((5/4:ℝ):ℂ) + t * I)
      + Hfn k (1 - (5/4:ℝ) - t * I))
      * (logDeriv (completedLSym χ) (((5/4:ℝ):ℂ) + t * I)
        - logDeriv χ.LFunction (((5/4:ℝ):ℂ) + t * I))) :=
    integrable_Hsum_mul_archDiff hq hχ1 hk hkc h54a h54b
  have hint1 := hintL k hk hkc χ hχ1
  have hint2 : Integrable (fun t : ℝ => Hfn k (1 - (5/4:ℝ) - t * I)
      * logDeriv (χ⁻¹).LFunction (((5/4:ℝ):ℂ) + t * I)) := by
    have heq : (fun t : ℝ => Hfn k (1 - (5/4:ℝ) - t * I)
        * logDeriv (χ⁻¹).LFunction (((5/4:ℝ):ℂ) + t * I))
        = fun t : ℝ => Hfn (fun u => k (-u)) (((5/4:ℝ):ℂ) + t * I)
          * logDeriv (χ⁻¹).LFunction (((5/4:ℝ):ℂ) + t * I) := by
      funext t
      rw [hH2eq t]
    rw [heq]
    exact hintL (fun u => k (-u)) hkneg2 hknegc χ⁻¹ hχi1
  -- split the full-line integral into Γ-common + two prime legs
  have hsplitint : (∫ t : ℝ,
        (Hfn k (((5/4:ℝ):ℂ) + t * I) * logDeriv (completedLSym χ) (((5/4:ℝ):ℂ) + t * I)
          + Hfn k (1 - (5/4:ℝ) - t * I)
            * logDeriv (completedLSym χ⁻¹) (((5/4:ℝ):ℂ) + t * I)))
      = (∫ t : ℝ, (Hfn k (((5/4:ℝ):ℂ) + t * I) + Hfn k (1 - (5/4:ℝ) - t * I))
          * (logDeriv (completedLSym χ) (((5/4:ℝ):ℂ) + t * I)
            - logDeriv χ.LFunction (((5/4:ℝ):ℂ) + t * I)))
        + ((∫ t : ℝ, Hfn k (((5/4:ℝ):ℂ) + t * I)
              * logDeriv χ.LFunction (((5/4:ℝ):ℂ) + t * I))
          + ∫ t : ℝ, Hfn k (1 - (5/4:ℝ) - t * I)
              * logDeriv (χ⁻¹).LFunction (((5/4:ℝ):ℂ) + t * I)) := by
    have hintsum : Integrable (fun t : ℝ =>
        Hfn k (((5/4:ℝ):ℂ) + t * I) * logDeriv χ.LFunction (((5/4:ℝ):ℂ) + t * I)
        + Hfn k (1 - (5/4:ℝ) - t * I) * logDeriv (χ⁻¹).LFunction (((5/4:ℝ):ℂ) + t * I)) := by
      refine (hint1.add hint2).congr (Filter.Eventually.of_forall fun t => ?_)
      simp only [Pi.add_apply]
    calc (∫ t : ℝ,
          (Hfn k (((5/4:ℝ):ℂ) + t * I) * logDeriv (completedLSym χ) (((5/4:ℝ):ℂ) + t * I)
            + Hfn k (1 - (5/4:ℝ) - t * I)
              * logDeriv (completedLSym χ⁻¹) (((5/4:ℝ):ℂ) + t * I)))
        = ∫ t : ℝ, ((Hfn k (((5/4:ℝ):ℂ) + t * I) + Hfn k (1 - (5/4:ℝ) - t * I))
            * (logDeriv (completedLSym χ) (((5/4:ℝ):ℂ) + t * I)
              - logDeriv χ.LFunction (((5/4:ℝ):ℂ) + t * I))
          + (Hfn k (((5/4:ℝ):ℂ) + t * I) * logDeriv χ.LFunction (((5/4:ℝ):ℂ) + t * I)
            + Hfn k (1 - (5/4:ℝ) - t * I)
              * logDeriv (χ⁻¹).LFunction (((5/4:ℝ):ℂ) + t * I))) := by
          congr 1
          funext t
          linear_combination (Hfn k (1 - (5/4:ℝ) - t * I)) * (harchdiff t)
      _ = (∫ t : ℝ, (Hfn k (((5/4:ℝ):ℂ) + t * I) + Hfn k (1 - (5/4:ℝ) - t * I))
            * (logDeriv (completedLSym χ) (((5/4:ℝ):ℂ) + t * I)
              - logDeriv χ.LFunction (((5/4:ℝ):ℂ) + t * I)))
          + ∫ t : ℝ, (Hfn k (((5/4:ℝ):ℂ) + t * I) * logDeriv χ.LFunction (((5/4:ℝ):ℂ) + t * I)
            + Hfn k (1 - (5/4:ℝ) - t * I)
              * logDeriv (χ⁻¹).LFunction (((5/4:ℝ):ℂ) + t * I)) :=
          integral_add hintΓ hintsum
      _ = _ := by rw [integral_add hint1 hint2]
  -- prime legs
  have hζ1 : (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, Hfn k (((5/4:ℝ):ℂ) + t * I)
      * logDeriv χ.LFunction (((5/4:ℝ):ℂ) + t * I)
      = -∑' n : ℕ, (χ n : ℂ) * ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n) := by
    have h := prime_side_line_chi hχ1 hk hkc h54a
    have h2 : (∫ t : ℝ, Hfn k ((5/4:ℝ) + t * I)
        * (-logDeriv χ.LFunction (((5/4:ℝ):ℂ) + t * I)))
        = -∫ t : ℝ, Hfn k (((5/4:ℝ):ℂ) + t * I)
          * logDeriv χ.LFunction (((5/4:ℝ):ℂ) + t * I) := by
      rw [← integral_neg]
      congr 1
      funext t
      ring
    rw [h2] at h
    linear_combination -h
  have hζ2 : (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, Hfn k (1 - (5/4:ℝ) - t * I)
      * logDeriv (χ⁻¹).LFunction (((5/4:ℝ):ℂ) + t * I)
      = -∑' n : ℕ, (starRingEnd ℂ) (χ n) * ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (-Real.log n) := by
    have h := prime_side_line_chi hχi1 (k := fun u => k (-u)) hkneg2 hknegc h54a
    have h2 : (∫ t : ℝ, Hfn (fun u => k (-u)) ((5/4:ℝ) + t * I)
        * (-logDeriv (χ⁻¹).LFunction (((5/4:ℝ):ℂ) + t * I)))
        = -∫ t : ℝ, Hfn k (1 - (5/4:ℝ) - t * I)
          * logDeriv (χ⁻¹).LFunction (((5/4:ℝ):ℂ) + t * I) := by
      rw [← integral_neg]
      congr 1
      funext t
      rw [hH2eq t]
      ring
    rw [h2] at h
    have h3 : (∑' n : ℕ, ((χ⁻¹) n : ℂ) * ((Λ n / Real.sqrt n : ℝ) : ℂ)
        * (fun u => k (-u)) (Real.log n))
        = ∑' n : ℕ, (starRingEnd ℂ) (χ n) * ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (-Real.log n) := by
      refine tsum_congr fun n => ?_
      rw [inv_coeff_eq_conj]
    rw [h3] at h
    linear_combination -h
  -- Γ-part
  have hΓeval : (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ,
      (Hfn k (((5/4:ℝ):ℂ) + t * I) + Hfn k (1 - (5/4:ℝ) - t * I))
        * (logDeriv (completedLSym χ) (((5/4:ℝ):ℂ) + t * I)
          - logDeriv χ.LFunction (((5/4:ℝ):ℂ) + t * I))
      = (1 / (2 * Real.pi) : ℂ) * ∫ r : ℝ, paperFT k r
          * ((((Complex.digamma (1 / 4 + ((parity χ : ℕ) : ℂ) / 2 + I * r / 2)).re
            + Real.log ((q:ℝ) / Real.pi) : ℝ)) : ℂ) := by
    congr 1
    rw [gamma_line_shift_chi' hq hprim hk hkc h54a h54b]
    congr 1
    funext t
    congr 1
    have hreal : (2 * Real.pi * muq (parity χ) q t : ℝ)
        = (Complex.digamma (1 / 4 + ((parity χ : ℕ) : ℂ) / 2 + I * t / 2)).re
          + Real.log ((q:ℝ) / Real.pi) := by
      simp only [muq]
      have hπ : (Real.pi : ℝ) ≠ 0 := Real.pi_ne_zero
      field_simp
      ring
    rw [hreal]
  -- final assembly into literatureRHSchi
  obtain ⟨B₁, hB₁⟩ := Zeta23.EF.exists_abs_le_of_hasCompactSupport hkc
  have hsummable_gen : ∀ (g : ℝ → ℂ), (∀ u, g u ≠ 0 → |u| ≤ max B₁ 0) →
      ∀ (cf : ℕ → ℂ), (∀ n, ‖cf n‖ ≤ 1) →
      Summable (fun n : ℕ => cf n * ((Λ n / Real.sqrt n : ℝ) : ℂ) * g (Real.log n)) := by
    intro g hg cf hcf
    refine summable_of_hasFiniteSupport ?_
    have hsub : Function.support (fun n : ℕ => cf n * ((Λ n / Real.sqrt n : ℝ) : ℂ)
        * g (Real.log n)) ⊆ Set.Iic ⌈Real.exp (max B₁ 0)⌉₊ := by
      intro n hn
      rw [Function.mem_support] at hn
      have hgne : g (Real.log n) ≠ 0 := by
        intro h
        rw [h, mul_zero] at hn
        exact hn rfl
      have hlog := hg _ hgne
      have hn0 : n ≠ 0 := by
        rintro rfl
        simp at hn
      have hn1 : (1:ℝ) ≤ (n:ℝ) := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr hn0
      have hle : (n:ℝ) ≤ Real.exp (max B₁ 0) := by
        have h2 : Real.log n ≤ max B₁ 0 := (le_abs_self _).trans hlog
        calc (n:ℝ) = Real.exp (Real.log n) := (Real.exp_log (by linarith)).symm
          _ ≤ Real.exp (max B₁ 0) := Real.exp_le_exp.mpr h2
      rw [Set.mem_Iic]
      exact_mod_cast hle.trans (Nat.le_ceil _)
    exact (Set.finite_Iic _).subset hsub
  have hnormcoeff : ∀ n : ℕ, ‖((coeff χ) n : ℂ)‖ ≤ 1 := fun n =>
    DirichletCharacter.norm_le_one χ _
  have hnormcoeffc : ∀ n : ℕ, ‖(starRingEnd ℂ) ((coeff χ) n)‖ ≤ 1 := fun n => by
    rw [RCLike.norm_conj]
    exact hnormcoeff n
  have hsummable1 : Summable (fun n : ℕ => (coeff χ) n * ((Λ n / Real.sqrt n : ℝ) : ℂ)
      * k (Real.log n)) :=
    hsummable_gen k (fun u hu => (hB₁ u hu).trans (le_max_left _ _)) _ hnormcoeff
  have hsummable2 : Summable (fun n : ℕ => (starRingEnd ℂ) ((coeff χ) n)
      * ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (-Real.log n)) := by
    refine hsummable_gen (fun u => k (-u)) (fun u hu => ?_) _ hnormcoeffc
    have h2 := hB₁ (-u) hu
    rw [abs_neg] at h2
    exact h2.trans (le_max_left _ _)
  have hmerge : (∑' n : ℕ, (coeff χ) n * ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n))
      + (∑' n : ℕ, (starRingEnd ℂ) ((coeff χ) n) * ((Λ n / Real.sqrt n : ℝ) : ℂ)
        * k (-Real.log n))
      = ∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ)
        * ((coeff χ) n * k (Real.log n) + (starRingEnd ℂ) ((coeff χ) n) * k (-Real.log n)) := by
    rw [← Summable.tsum_add hsummable1 hsummable2]
    refine tsum_congr fun n => ?_
    ring
  unfold literatureRHSchi
  calc ∑' ρ : (LZeros (LSeam_of hq hprim)).carrier,
        ((LZeros (LSeam_of hq hprim)).mult ρ : ℂ) * paperFT k (gammaOf (ρ:ℂ))
      = ∑' ρ : (LZeros (LSeam_of hq hprim)).carrier,
        ((LZeros (LSeam_of hq hprim)).mult ρ : ℂ) * Hfn k (ρ:ℂ) := by
        refine tsum_congr fun ρ => rfl
    _ = (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ,
          (Hfn k (((5/4:ℝ):ℂ) + t * I) * logDeriv (completedLSym χ) (((5/4:ℝ):ℂ) + t * I)
            + Hfn k (1 - (5/4:ℝ) - t * I)
              * logDeriv (completedLSym χ⁻¹) (((5/4:ℝ):ℂ) + t * I)) := hfull.symm
    _ = - (∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ)
          * ((coeff χ) n * k (Real.log n)
            + (starRingEnd ℂ) ((coeff χ) n) * k (-Real.log n)))
        + (1 / (2 * Real.pi) : ℂ) * ∫ r : ℝ, paperFT k r
          * ((((Complex.digamma (1 / 4 + ((parity χ : ℕ) : ℂ) / 2 + I * r / 2)).re
            + Real.log ((q:ℝ) / Real.pi) : ℝ)) : ℂ) := by
        rw [hsplitint, mul_add, hΓeval, mul_add, hζ1, hζ2, ← hmerge]
        simp only [coeff]
        ring
    _ = _ := rfl

end ThmE
end Zeta23
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainChi/Variantf2c32caf7270982ebaec315f02ecff794deefbe363a6dee1d547cdadde7c7fd6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/MainChi/Variantf2c32caf7270982ebaec315f02ecff794deefbe363a6dee1d547cdadde7c7fd6.lean#L45).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f2a7629c4b069b495dc61a7bb110c24ac8f97374` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
