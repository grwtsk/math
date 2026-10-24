# Efn_line_identity

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e700ef7b-3b69-838c-2f2e-f783fcdc999c",
  "kind": "theorem",
  "lexical_name": "Efn_line_identity",
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
  "slug": "efn-line-identity--7675e3920c2b2bd9621bc830",
  "source": {
    "blob": "5994379f36207f5dde75c32a242c74443f519d79",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 288,
    "line": 183,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/LitCorr/Variant81070f608591b49683c462e6350453227244d540f602d76ec5b946b5025e8277.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7675e3920c2b2bd9621bc83034a8a6dc46edb0548945ef2d13ceebad32d1fd69",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/LitCorr/Variant81070f608591b49683c462e6350453227244d540f602d76ec5b946b5025e8277.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e700ef7b-3b69-838c-2f2e-f783fcdc999c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 183–288.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Efn_line_identity {c : ℝ} (hc1 : 1 < c) (hc2 : c ≤ 3/2) {k : ℝ → ℂ} (hk : ContDiff ℝ 2 k)
    (hkc : HasCompactSupport k) :
    Integrable (fun t : ℝ => HwC c k t * Efn ((c:ℂ) + t * I)) ∧
    (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, HwC c k t * Efn ((c:ℂ) + t * I)) = Zeta23.EF.literatureRHS k := by
  have hkneg2 : ContDiff ℝ 2 (fun u : ℝ => k (-u)) := hk.comp contDiff_neg
  have hknegc : HasCompactSupport (fun u : ℝ => k (-u)) := hkc.comp_homeomorph (Homeomorph.neg ℝ)
  have hH2eq : ∀ t : ℝ, Hfn k (1 - c - t * I) = Hfn (fun u => k (-u)) ((c:ℂ) + t * I) :=
    fun t => Hfn_mirror k c t
  -- integrable pieces
  have hint1 := integrable_Hfn_mul_logDeriv_zeta hk hkc hc1 hc2
  have hint2 : Integrable (fun t : ℝ => Hfn k (1 - c - t * I) * logDeriv riemannZeta ((c:ℂ) + t * I)) := by
    have heq : (fun t : ℝ => Hfn k (1 - c - t * I) * logDeriv riemannZeta ((c:ℂ) + t * I))
        = fun t : ℝ => Hfn (fun u => k (-u)) ((c:ℂ) + t * I) * logDeriv riemannZeta ((c:ℂ) + t * I) := by
      funext t; rw [hH2eq t]
    rw [heq]; exact integrable_Hfn_mul_logDeriv_zeta hkneg2 hknegc hc1 hc2
  have hintζ : Integrable (fun t : ℝ => HwC c k t * logDeriv riemannZeta ((c:ℂ) + t * I)) := by
    refine (hint1.add hint2).congr (Eventually.of_forall fun t => ?_)
    simp only [Pi.add_apply, HwC]; ring
  have hintΓ : Integrable (fun t : ℝ => HwC c k t * logDeriv Complex.Gammaℝ ((c:ℂ) + t * I)) :=
    integrable_weight_mul_logDeriv_Gammaℝ hk hkc hc1 hc2
  obtain ⟨hintR0, hR⟩ := rational_line hk hkc hc1 hc2
  have hintR : Integrable (fun t : ℝ => HwC c k t * (1 / ((c:ℂ) + t * I) + 1 / ((c:ℂ) + t * I - 1))) := hintR0
  have hintL : Integrable (fun t : ℝ => HwC c k t * Lfn ((c:ℂ) + t * I)) := by
    refine (hintΓ.add hintR).congr (Eventually.of_forall fun t => ?_)
    simp only [Pi.add_apply, Lfn]; ring
  have hintE : Integrable (fun t : ℝ => HwC c k t * Efn ((c:ℂ) + t * I)) := by
    refine (hintL.add hintζ).congr (Eventually.of_forall fun t => ?_)
    simp only [Pi.add_apply, Efn]; ring
  refine ⟨hintE, ?_⟩
  -- evaluations
  have hArch : (1 / (2 * Real.pi) : ℂ) * (∫ t : ℝ, HwC c k t * Lfn ((c:ℂ) + t * I))
      = Hfn k 0 + Hfn k 1 + (1 / (2 * Real.pi) : ℂ) * ∫ r : ℝ, paperFT k r * ((Zeta23.EF.gammaBracket r : ℝ) : ℂ) :=
    archimedean_line hk hkc hc1 hc2
  have hζ1 : (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, Hfn k ((c:ℂ) + t * I) * logDeriv riemannZeta ((c:ℂ) + t * I)
      = -∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (Real.log n) := by
    have h := prime_side_line hk hkc hc1
    have h2 : (∫ t : ℝ, Hfn k ((c:ℂ) + t * I) * (-logDeriv riemannZeta ((c:ℂ) + t * I)))
        = -∫ t : ℝ, Hfn k ((c:ℂ) + t * I) * logDeriv riemannZeta ((c:ℂ) + t * I) := by
      rw [← integral_neg]; congr 1; funext t; ring
    rw [h2] at h
    linear_combination -h
  have hζ2 : (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, Hfn k (1 - c - t * I) * logDeriv riemannZeta ((c:ℂ) + t * I)
      = -∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (-Real.log n) := by
    have h := prime_side_line hkneg2 hknegc hc1
    have h2 : (∫ t : ℝ, Hfn (fun u => k (-u)) ((c:ℂ) + t * I) * (-logDeriv riemannZeta ((c:ℂ) + t * I)))
        = -∫ t : ℝ, Hfn k (1 - c - t * I) * logDeriv riemannZeta ((c:ℂ) + t * I) := by
      rw [← integral_neg]; congr 1; funext t; rw [hH2eq t]; ring
    rw [h2] at h
    have h3 : (∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ) * (fun u => k (-u)) (Real.log n))
        = ∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (-Real.log n) := rfl
    rw [h3] at h
    linear_combination -h
  have hζ : (1 / (2 * Real.pi) : ℂ) * ∫ t : ℝ, HwC c k t * logDeriv riemannZeta ((c:ℂ) + t * I)
      = -∑' n : ℕ, ((Λ n / Real.sqrt n : ℝ) : ℂ) * (k (Real.log n) + k (-Real.log n)) := by
    have hsum2 : (∫ t : ℝ, HwC c k t * logDeriv riemannZeta ((c:ℂ) + t * I))
        = (∫ t : ℝ, Hfn k ((c:ℂ) + t * I) * logDeriv riemannZeta ((c:ℂ) + t * I))
          + ∫ t : ℝ, Hfn k (1 - c - t * I) * logDeriv riemannZeta ((c:ℂ) + t * I) := by
      rw [← integral_add hint1 hint2]; congr 1; funext t; simp only [HwC]; ring
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
          intro h; rw [h, mul_zero] at hn; exact hn rfl
        have hlog := hg _ hgne
        have hn0 : n ≠ 0 := by rintro rfl; simp at hn
        have hn1 : (1:ℝ) ≤ (n:ℝ) := by exact_mod_cast Nat.one_le_iff_ne_zero.mpr hn0
        have : (n:ℝ) ≤ Real.exp (max B₁ 0) := by
          have h2 : Real.log n ≤ max B₁ 0 := (le_abs_self _).trans hlog
          calc (n:ℝ) = Real.exp (Real.log n) := (Real.exp_log (by linarith)).symm
            _ ≤ Real.exp (max B₁ 0) := Real.exp_le_exp.mpr h2
        rw [Set.mem_Iic]
        exact_mod_cast this.trans (Nat.le_ceil _)
      exact (Set.finite_Iic _).subset hsub
    have hsummable1 := hsummable_gen k (fun u hu => (hB₁ u hu).trans (le_max_left _ _))
    have hsummable2 : Summable (fun n : ℕ => ((Λ n / Real.sqrt n : ℝ) : ℂ) * k (-Real.log n)) := by
      refine hsummable_gen (fun u => k (-u)) (fun u hu => ?_)
      have h2 := hB₁ (-u) hu
      rw [abs_neg] at h2
      exact h2.trans (le_max_left _ _)
    rw [hsum2, mul_add, hζ1, hζ2, ← neg_add, ← Summable.tsum_add hsummable1 hsummable2]
    congr 1
    exact tsum_congr fun n => by ring
  have hpole0 : Hfn k 0 = paperFT k (I / 2) := by
    unfold Hfn; congr 1
    rw [div_eq_iff Complex.I_ne_zero, div_mul_eq_mul_div, Complex.I_mul_I]; norm_num
  have hpole1 : Hfn k 1 = paperFT k (-I / 2) := by
    unfold Hfn; congr 1
    rw [div_eq_iff Complex.I_ne_zero]
    rw [show (-I / 2) * I = -(I * I) / 2 by ring, Complex.I_mul_I]; norm_num
  have hsplit : (∫ t : ℝ, HwC c k t * Efn ((c:ℂ) + t * I))
      = (∫ t : ℝ, HwC c k t * Lfn ((c:ℂ) + t * I)) + ∫ t : ℝ, HwC c k t * logDeriv riemannZeta ((c:ℂ) + t * I) := by
    rw [← integral_add hintL hintζ]; congr 1; funext t; simp only [Efn]; ring
  rw [hsplit, mul_add, hArch, hζ, Zeta23.EF.literatureRHS, hpole0, hpole1]
  ring

/-! ## §C. ξ′ at c = 5/4: input Props, the correction functional J, literature form with correction -/

/-! ## Input propositions (discharged elsewhere) -/

/-- (EF1) on the line c = 5/4, as a Prop (proved in `Main.full_line_identity`). -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/LitCorr/Variant81070f608591b49683c462e6350453227244d540f602d76ec5b946b5025e8277.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/LitCorr/Variant81070f608591b49683c462e6350453227244d540f602d76ec5b946b5025e8277.lean#L183).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5994379f36207f5dde75c32a242c74443f519d79` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
