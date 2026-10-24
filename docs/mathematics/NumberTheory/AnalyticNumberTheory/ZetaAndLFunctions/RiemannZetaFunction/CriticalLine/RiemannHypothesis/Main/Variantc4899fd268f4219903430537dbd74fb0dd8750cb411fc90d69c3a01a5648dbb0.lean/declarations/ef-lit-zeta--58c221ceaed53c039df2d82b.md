# EF_lit_zeta

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "75a3ef8d5ea39205412e007bc80b22ba17993e04",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 51,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c4/c4899fd268f4219903430537dbd74fb0dd8750cb411fc90d69c3a01a5648dbb0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:51c28371-08e4-35ce-5037-be52a4c6ad8c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c88d24c3-7c1e-ac41-2ac5-a21c8df578c4",
  "kind": "theorem",
  "lexical_name": "EF_lit_zeta",
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
  "slug": "ef-lit-zeta--58c221ceaed53c039df2d82b",
  "source": {
    "blob": "75a3ef8d5ea39205412e007bc80b22ba17993e04",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 269,
    "line": 51,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantc4899fd268f4219903430537dbd74fb0dd8750cb411fc90d69c3a01a5648dbb0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:58c221ceaed53c039df2d82b29198299c0567b0b0eaea15eb1a122ad92c409a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantc4899fd268f4219903430537dbd74fb0dd8750cb411fc90d69c3a01a5648dbb0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c88d24c3-7c1e-ac41-2ac5-a21c8df578c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–269.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem EF_lit_zeta (hs : ZetaSeam) : Zeta23.EF.EF_lit (zetaZeros hs) := by
  intro k hk hkc
  refine ⟨EF_zero_sum_summable hs hk hkc, ?_⟩
  -- Fix c := 5/4; split LΛ = LΓℝ + Lζ on the line; evaluate the three parts; rearrange.
  have h54a : (1:ℝ) < 5/4 := by norm_num
  have h54b : (5/4:ℝ) ≤ 3/2 := by norm_num
  have hkneg2 : ContDiff ℝ 2 (fun u : ℝ => k (-u)) := hk.comp contDiff_neg
  have hknegc : HasCompactSupport (fun u : ℝ => k (-u)) := by
    have := hkc.comp_homeomorph (Homeomorph.neg ℝ)
    exact this
  have hfull := full_line_identity hs hk hkc h54a h54b
  -- pointwise split of Λ'/Λ on the line Re = 5/4
  have hsne : ∀ t : ℝ, ((5/4:ℝ) : ℂ) + t * I ≠ 0 ∧ ((5/4:ℝ) : ℂ) + t * I ≠ 1
      ∧ riemannZeta (((5/4:ℝ) : ℂ) + t * I) ≠ 0 ∧ 0 < ((((5/4:ℝ) : ℂ)) + t * I).re := by
    intro t
    have hre : ((((5/4:ℝ) : ℂ)) + t * I).re = 5/4 := by simp
    refine ⟨fun h => ?_, fun h => ?_, riemannZeta_ne_zero_of_one_lt_re (by rw [hre]; norm_num), by
      rw [hre]; norm_num⟩
    · rw [h] at hre
      simp at hre
      linarith
    · rw [h] at hre
      simp at hre
      linarith
  have hsplit : ∀ t : ℝ, logDeriv completedRiemannZeta (((5/4:ℝ):ℂ) + t * I)
      = logDeriv Complex.Gammaℝ (((5/4:ℝ):ℂ) + t * I)
        + logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I) := by
    intro t
    obtain ⟨h0, h1, hζ, hpos⟩ := hsne t
    exact logDeriv_completedZeta _ h1 hζ hpos
  -- notation
  have hH2eq : ∀ t : ℝ, Hfn k (1 - (5/4:ℝ) - t * I)
      = Hfn (fun u => k (-u)) (((5/4:ℝ):ℂ) + t * I) := fun t => Hfn_mirror k (5/4) t
  -- integrability of the ζ-parts
  have hint1 : Integrable (fun t : ℝ => Hfn k (((5/4:ℝ):ℂ) + t * I)
      * logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I)) :=
    integrable_Hfn_mul_logDeriv_zeta hk hkc h54a h54b
  have hint2 : Integrable (fun t : ℝ => Hfn k (1 - (5/4:ℝ) - t * I)
      * logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I)) := by
    have heq : (fun t : ℝ => Hfn k (1 - (5/4:ℝ) - t * I)
        * logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I))
        = fun t : ℝ => Hfn (fun u => k (-u)) (((5/4:ℝ):ℂ) + t * I)
          * logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I) := by
      funext t
      rw [hH2eq t]
    rw [heq]
    exact integrable_Hfn_mul_logDeriv_zeta hkneg2 hknegc h54a h54b
  have hintζ : Integrable (fun t : ℝ => (Hfn k (((5/4:ℝ):ℂ) + t * I)
      + Hfn k (1 - (5/4:ℝ) - t * I)) * logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I)) := by
    refine (hint1.add hint2).congr (Filter.Eventually.of_forall fun t => ?_)
    simp only [Pi.add_apply]
    ring
  -- integrability of the Γℝ-part
  have hintΓ1 : Integrable (fun t : ℝ => Hfn k (((5/4:ℝ):ℂ) + t * I)
      * logDeriv Complex.Gammaℝ (((5/4:ℝ):ℂ) + t * I)) :=
    integrable_Hfn_mul_logDeriv_Gammaℝ hk hkc (by norm_num) (by norm_num)
  have hintΓ2 : Integrable (fun t : ℝ => Hfn k (1 - (5/4:ℝ) - t * I)
      * logDeriv Complex.Gammaℝ (((5/4:ℝ):ℂ) + t * I)) := by
    have heq : (fun t : ℝ => Hfn k (1 - (5/4:ℝ) - t * I)
        * logDeriv Complex.Gammaℝ (((5/4:ℝ):ℂ) + t * I))
        = fun t : ℝ => Hfn (fun u => k (-u)) (((5/4:ℝ):ℂ) + t * I)
          * logDeriv Complex.Gammaℝ (((5/4:ℝ):ℂ) + t * I) := by
      funext t
      rw [hH2eq t]
    rw [heq]
    exact integrable_Hfn_mul_logDeriv_Gammaℝ hkneg2 hknegc (σ := 5/4) (by norm_num) (by norm_num)
  have hintΓ : Integrable (fun t : ℝ => (Hfn k (((5/4:ℝ):ℂ) + t * I)
      + Hfn k (1 - (5/4:ℝ) - t * I)) * logDeriv Complex.Gammaℝ (((5/4:ℝ):ℂ) + t * I)) := by
    refine (hintΓ1.add hintΓ2).congr (Filter.Eventually.of_forall fun t => ?_)
    simp only [Pi.add_apply]
    ring
  -- split the full-line integral
  have hsplitint : (∫ t : ℝ, (Hfn k (((5/4:ℝ):ℂ) + t * I) + Hfn k (1 - (5/4:ℝ) - t * I))
        * logDeriv completedRiemannZeta (((5/4:ℝ):ℂ) + t * I))
      = (∫ t : ℝ, (Hfn k (((5/4:ℝ):ℂ) + t * I) + Hfn k (1 - (5/4:ℝ) - t * I))
          * logDeriv Complex.Gammaℝ (((5/4:ℝ):ℂ) + t * I))
        + ∫ t : ℝ, (Hfn k (((5/4:ℝ):ℂ) + t * I) + Hfn k (1 - (5/4:ℝ) - t * I))
          * logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I) := by
    rw [← integral_add hintΓ hintζ]
    congr 1
    funext t
    show (Hfn k (((5/4:ℝ):ℂ) + t * I) + Hfn k (1 - (5/4:ℝ) - t * I))
      * logDeriv completedRiemannZeta (((5/4:ℝ):ℂ) + t * I) = _
    rw [hsplit t]
    ring
  -- ζ-part evaluation via prime_side_line (both lines)
  have hζ1 : (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, Hfn k (((5/4:ℝ):ℂ) + t * I)
      * logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I)
      = -∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n) := by
    have h := prime_side_line hk hkc h54a
    have h2 : (∫ t : ℝ, Hfn k (((5/4:ℝ):ℂ) + t * I)
        * (-logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I)))
        = -∫ t : ℝ, Hfn k (((5/4:ℝ):ℂ) + t * I)
          * logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I) := by
      rw [← integral_neg]
      congr 1
      funext t
      ring
    rw [h2] at h
    linear_combination -h
  have hζ2 : (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, Hfn k (1 - (5/4:ℝ) - t * I)
      * logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I)
      = -∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (-Real.log n) := by
    have h := prime_side_line hkneg2 hknegc h54a
    have h2 : (∫ t : ℝ, Hfn (fun u => k (-u)) (((5/4:ℝ):ℂ) + t * I)
        * (-logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I)))
        = -∫ t : ℝ, Hfn k (1 - (5/4:ℝ) - t * I)
          * logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I) := by
      rw [← integral_neg]
      congr 1
      funext t
      rw [hH2eq t]
      ring
    rw [h2] at h
    have h3 : (∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ) * (fun u => k (-u)) (Real.log n))
        = ∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (-Real.log n) := rfl
    rw [h3] at h
    linear_combination -h
  -- Γ-part evaluation
  have hΓeval : (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, (Hfn k (((5/4:ℝ):ℂ) + t * I)
      + Hfn k (1 - (5/4:ℝ) - t * I)) * logDeriv Complex.Gammaℝ (((5/4:ℝ):ℂ) + t * I)
      = (1 / (2 * Real.pi) : ℂ) * ∫ r : ℝ, paperFT k r * ((Zeta23.EF.gammaBracket r : ℝ) : ℂ) := by
    congr 1
    rw [gamma_line_shift hk hkc h54a h54b]
    congr 1
    funext t
    rw [gammaR_bracket t]
    congr 2
    unfold Zeta23.EF.gammaBracket
    congr 3
    ring
  -- pole values
  have hpole0 : Hfn k 0 = paperFT k (I / 2) := by
    unfold Hfn
    congr 1
    rw [div_eq_iff Complex.I_ne_zero, div_mul_eq_mul_div, Complex.I_mul_I]
    norm_num
  have hpole1 : Hfn k 1 = paperFT k (-I / 2) := by
    unfold Hfn
    congr 1
    rw [div_eq_iff Complex.I_ne_zero]
    rw [show (-I / 2) * I = -(I * I) / 2 by ring, Complex.I_mul_I]
    norm_num
  -- summability of the two prime sums (finite support)
  obtain ⟨B₁, hB₁⟩ := Zeta23.EF.exists_abs_le_of_hasCompactSupport hkc
  have hsummable_gen : ∀ (g : ℝ → ℂ), (∀ u, g u ≠ 0 → |u| ≤ max B₁ 0) →
      Summable (fun n : ℕ => ((Λ n / Real.sqrt n : ℝ) : ℂ) * g (Real.log n)) := by
    intro g hg
    refine summable_of_hasFiniteSupport ?_
    have hsub : Function.support (fun n : ℕ => ((Λ n / Real.sqrt n : ℝ) : ℂ) * g (Real.log n))
        ⊆ Set.Iic ⌈Real.exp (max B₁ 0)⌉₊ := by
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
      have : (n:ℝ) ≤ Real.exp (max B₁ 0) := by
        have h2 : Real.log n ≤ max B₁ 0 := (le_abs_self _).trans hlog
        calc (n:ℝ) = Real.exp (Real.log n) := (Real.exp_log (by linarith)).symm
          _ ≤ Real.exp (max B₁ 0) := Real.exp_le_exp.mpr h2
      rw [Set.mem_Iic]
      exact_mod_cast this.trans (Nat.le_ceil _)
    exact (Set.finite_Iic _).subset hsub
  have hsummable1 : Summable (fun n : ℕ => ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n)) :=
    hsummable_gen k (fun u hu => (hB₁ u hu).trans (le_max_left _ _))
  have hsummable2 : Summable (fun n : ℕ => ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (-Real.log n)) := by
    refine hsummable_gen (fun u => k (-u)) (fun u hu => ?_)
    have h2 := hB₁ (-u) hu
    rw [abs_neg] at h2
    exact h2.trans (le_max_left _ _)
  -- assemble
  have hmerge : (∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n))
      + (∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (-Real.log n))
      = ∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ) * (k (Real.log n) + k (-Real.log n)) := by
    rw [← Summable.tsum_add hsummable1 hsummable2]
    refine tsum_congr fun n => ?_
    ring
  -- paperFT k (gammaOf ρ) = Hfn k ρ definitionally
  have hgammaOf : ∀ ρ : (zetaZeros hs).carrier,
      paperFT k (gammaOf (ρ : ℂ)) = Hfn k (ρ : ℂ) := fun ρ => rfl
  rw [Zeta23.EF.literatureRHS]
  calc ∑' ρ : (zetaZeros hs).carrier, ((zetaZeros hs).mult ρ : ℂ) * paperFT k (gammaOf (ρ:ℂ))
      = ∑' ρ : (zetaZeros hs).carrier, ((zetaZeros hs).mult ρ : ℂ) * Hfn k (ρ:ℂ) := by
        refine tsum_congr fun ρ => by rw [hgammaOf ρ]
    _ = (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, (Hfn k (((5/4:ℝ):ℂ) + t * I)
          + Hfn k (1 - (5/4:ℝ) - t * I)) * logDeriv completedRiemannZeta (((5/4:ℝ):ℂ) + t * I))
        + Hfn k 0 + Hfn k 1 := by
        rw [hfull]
        ring
    _ = paperFT k (I / 2) + paperFT k (-I / 2)
        - (∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ) * (k (Real.log n) + k (-Real.log n)))
        + (1 / (2 * Real.pi) : ℂ) * ∫ r : ℝ, paperFT k r * ((Zeta23.EF.gammaBracket r : ℝ) : ℂ) := by
        rw [hsplitint, mul_add, hΓeval, hpole0, hpole1]
        have hζboth : (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, (Hfn k (((5/4:ℝ):ℂ) + t * I)
            + Hfn k (1 - (5/4:ℝ) - t * I)) * logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I))
            = -∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ) * (k (Real.log n) + k (-Real.log n)) := by
          have hsum2 : (∫ t : ℝ, (Hfn k (((5/4:ℝ):ℂ) + t * I) + Hfn k (1 - (5/4:ℝ) - t * I))
              * logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I))
              = (∫ t : ℝ, Hfn k (((5/4:ℝ):ℂ) + t * I)
                  * logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I))
                + ∫ t : ℝ, Hfn k (1 - (5/4:ℝ) - t * I)
                  * logDeriv riemannZeta (((5/4:ℝ):ℂ) + t * I) := by
            rw [← integral_add hint1 hint2]
            congr 1
            funext t
            ring
          rw [hsum2, mul_add, hζ1, hζ2, ← hmerge]
          ring
        rw [hζboth]
        ring

/-- **Hypothesis-free form**: [eq:EFstd] holds for the canonical
unconditional ζ zero configuration. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantc4899fd268f4219903430537dbd74fb0dd8750cb411fc90d69c3a01a5648dbb0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Main/Variantc4899fd268f4219903430537dbd74fb0dd8750cb411fc90d69c3a01a5648dbb0.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `75a3ef8d5ea39205412e007bc80b22ba17993e04` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
