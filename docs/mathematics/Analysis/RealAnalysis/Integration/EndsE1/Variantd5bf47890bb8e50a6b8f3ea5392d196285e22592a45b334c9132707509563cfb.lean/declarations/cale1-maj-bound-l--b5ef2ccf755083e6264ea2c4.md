# calE1_maj_bound_L

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
      "line": 727,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/d5/d5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f7a16ecb-8c1d-8a8b-5cca-bbfc728a318a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a9ca4cd2-aef3-48de-ee90-2005d25c28e5",
  "kind": "theorem",
  "lexical_name": "calE1_maj_bound_L",
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
  "slug": "cale1-maj-bound-l--b5ef2ccf755083e6264ea2c4",
  "source": {
    "blob": "2ffe779b70efce4c0c54915abcb2286eaa0edfca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 843,
    "line": 727,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b5ef2ccf755083e6264ea2c4d3343dfb93d9c53be020e7c094d1ccd9211de606",
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

Occurrence: `result:a9ca4cd2-aef3-48de-ee90-2005d25c28e5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 727–843.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem calE1_maj_bound_L :
    ∃ C T₀ : ℝ, ∀ (p : Setting) (F : LocalFun) (B : ℝ) (ν : ℝ → ℝ), T₀ ≤ p.T →
      LocalHypsCoreW cϱ p F → Continuous ν → NuBound p B ν →
      ∫ q in sqI p, majK1 p F ν q ≤ C * (p.L ^ 3 * B ^ 2 * (p.L + p.l)) := by
  refine ⟨4 * (90 + 32 * cϱ ^ 2), (2 * π) ^ 2, fun p F B ν hT hF hνc hν => ?_⟩
  -- regime
  have hπ := Real.pi_gt_three
  have hT1 : (1:ℝ) ≤ p.T := by nlinarith
  have hT0 : (0:ℝ) < p.T := by linarith
  have hL8 := hF.eight_le_L
  have hL0 := hF.L_pos
  have hc4 := hF.four_le_cϱ
  have hw1 := hF.one_le_w
  have hl1 : (1:ℝ) ≤ p.l := hF.one_le_l
  have hlogT : Real.log p.T ≤ 2 * p.l := by
    -- log T = l + log(2π) and log(2π) ≤ l since T ≥ (2π)²
    have e : Real.log p.T = p.l + Real.log (2 * π) := by
      show Real.log p.T = Real.log (p.T / (2 * π)) + Real.log (2 * π)
      rw [Real.log_div (by linarith) (by positivity)]; ring
    have h2 : Real.log (2 * π) ≤ p.l := by
      show Real.log (2 * π) ≤ Real.log (p.T / (2 * π))
      apply Real.log_le_log (by positivity)
      rw [le_div_iff₀ (by positivity)]; nlinarith
    linarith
  have hB0 : 0 ≤ B := by
    have := abs_nuX_le_B_onI hν hT0 (τ := p.T) ⟨le_rfl, by linarith⟩
    exact le_trans (abs_nonneg _) this
  -- the two 1-D integrals
  have hIg := setIntegral_gwt_le (p := p) hT0
  have hR := setIntegral_rho_div_gwt_le hF hν hT1
  set R := ∫ τ in Icc p.T (2 * p.T), rho p F τ / gwt p τ with hRdef
  set G := ∫ τ in Icc p.T (2 * p.T), gwt p τ with hGdef
  have hG0 : 0 ≤ G := setIntegral_nonneg measurableSet_Icc fun τ hτ => (gwt_pos hτ).le
  have hR0 : 0 ≤ R := setIntegral_nonneg measurableSet_Icc fun τ hτ =>
    div_nonneg (rho_nonneg hF τ) (gwt_pos hτ).le
  -- continuity / integrability on the compact square
  have hρc : Continuous (rho p F) := by
    have := hF.phiHat_cont; unfold rho; fun_prop
  have hdistc : Continuous (distB p) := by unfold distB; fun_prop
  have hgc : ContinuousOn (gwt p) (Icc p.T (2 * p.T)) := by
    unfold gwt
    refine ContinuousOn.inv₀ (by fun_prop) fun τ hτ => ?_
    have := distB_nonneg (p := p) hτ; positivity
  have hρg : ContinuousOn (fun τ => rho p F τ / gwt p τ) (Icc p.T (2 * p.T)) :=
    hρc.continuousOn.div hgc fun τ hτ => (gwt_pos hτ).ne'
  have hfst : ∀ {f : ℝ → ℝ}, ContinuousOn f (Icc p.T (2 * p.T)) →
      ContinuousOn (fun q : ℝ × ℝ => f q.1) (sqI p) := fun hf =>
    hf.comp continuous_fst.continuousOn fun q hq => hq.1
  have hsnd : ∀ {f : ℝ → ℝ}, ContinuousOn f (Icc p.T (2 * p.T)) →
      ContinuousOn (fun q : ℝ × ℝ => f q.2) (sqI p) := fun hf =>
    hf.comp continuous_snd.continuousOn fun q hq => hq.2
  have hM1c : ContinuousOn (fun q : ℝ × ℝ => rho p F q.1 / gwt p q.1 * gwt p q.2) (sqI p) :=
    (hfst hρg).mul (hsnd hgc)
  have hM2c : ContinuousOn (fun q : ℝ × ℝ => gwt p q.1 * (rho p F q.2 / gwt p q.2)) (sqI p) :=
    (hfst hgc).mul (hsnd hρg)
  have hcpt : IsCompact (sqI p) := isCompact_sqI
  have hM1i : IntegrableOn (fun q : ℝ × ℝ => rho p F q.1 / gwt p q.1 * gwt p q.2) (sqI p) :=
    hM1c.integrableOn_compact hcpt
  have hM2i : IntegrableOn (fun q : ℝ × ℝ => gwt p q.1 * (rho p F q.2 / gwt p q.2)) (sqI p) :=
    hM2c.integrableOn_compact hcpt
  have hfi : IntegrableOn (majK1 p F ν) (sqI p) := by
    have hνa : ContinuousOn (fun τ => |ν τ|) (Icc p.T (2 * p.T)) := hνc.abs.continuousOn
    have hc : ContinuousOn (majK1 p F ν) (sqI p) := by
      have := ((hM1c.add hM2c).const_smul (p.L ^ 2)).mul ((hfst hνa).mul (hsnd hνa))
      refine this.congr fun q hq => ?_
      simp only [majK1, Pi.smul_apply, Pi.add_apply, Pi.mul_apply, smul_eq_mul]
    exact hc.integrableOn_compact hcpt
  -- ∫_{sqI} majK1 ≤ L²B²(RG + GR)
  have hmain : ∫ q in sqI p, majK1 p F ν q ≤ p.L ^ 2 * B ^ 2 * (R * G + G * R) := by
    have step2 : ∫ q in sqI p, majK1 p F ν q
        ≤ ∫ q in sqI p, p.L ^ 2 * B ^ 2 *
          (rho p F q.1 / gwt p q.1 * gwt p q.2 + gwt p q.1 * (rho p F q.2 / gwt p q.2)) := by
      refine setIntegral_mono_on hfi ((hM1i.add hM2i).const_mul _) measurableSet_sqI
        fun q hq => majK1_le hF hν hT0 hq
    have step3 : ∫ q in sqI p, p.L ^ 2 * B ^ 2 *
          (rho p F q.1 / gwt p q.1 * gwt p q.2 + gwt p q.1 * (rho p F q.2 / gwt p q.2))
        = p.L ^ 2 * B ^ 2 * (R * G + G * R) := by
      rw [integral_const_mul, integral_add hM1i hM2i]
      congr 1
      unfold sqI
      rw [Measure.volume_eq_prod, setIntegral_prod_mul (fun τ => rho p F τ / gwt p τ) (gwt p),
        setIntegral_prod_mul (gwt p) (fun τ => rho p F τ / gwt p τ)]
      rfl
    linarith
  -- numerics
  have hcw : (cϱ / p.w) ^ 2 ≤ cϱ ^ 2 := by
    have : cϱ / p.w ≤ cϱ := div_le_self (by linarith) hw1
    have : 0 ≤ cϱ / p.w := by positivity
    nlinarith
  have hh : (p.h)⁻¹ = p.L / (2 * π) := by unfold Setting.h; rw [inv_div]
  have hhL : (p.h)⁻¹ ≤ p.L := by
    rw [hh, div_le_iff₀ (by positivity)]; nlinarith
  have hRle : R ≤ (90 + 32 * cϱ ^ 2) * (p.L * (p.L + p.l)) := by
    have hlog0 : 0 ≤ Real.log p.T := Real.log_nonneg hT1
    have h1 : (p.h)⁻¹ * (32 * p.L + 4 / 3 * (cϱ / p.w) ^ 2 * Real.log p.T)
        ≤ p.L * (32 * p.L + 4 / 3 * cϱ ^ 2 * (2 * p.l)) := by
      apply mul_le_mul hhL _ (by positivity) hL0.le
      gcongr
    set M := p.L * (p.L + p.l) with hM
    have hLL : p.L ^ 2 ≤ M := by rw [hM]; nlinarith
    have hLl' : p.L * p.l ≤ M := by rw [hM]; nlinarith
    have hM1 : 1 ≤ M := by rw [hM]; nlinarith
    have hc2 : cϱ ^ 2 ≤ cϱ ^ 2 * M := by nlinarith [sq_nonneg cϱ]
    have hc3 : cϱ ^ 2 * (p.L * p.l) ≤ cϱ ^ 2 * M := mul_le_mul_of_nonneg_left hLl' (sq_nonneg _)
    nlinarith
  calc ∫ q in sqI p, majK1 p F ν q ≤ p.L ^ 2 * B ^ 2 * (R * G + G * R) := hmain
    _ = 2 * (p.L ^ 2 * B ^ 2) * (R * G) := by ring
    _ ≤ 2 * (p.L ^ 2 * B ^ 2) * ((90 + 32 * cϱ ^ 2) * (p.L * (p.L + p.l)) * 2) := by
        gcongr
    _ = 4 * (90 + 32 * cϱ ^ 2) * (p.L ^ 3 * B ^ 2 * (p.L + p.l)) := by ring

end Bounds

section BoundsCor
variable {cϱ : ℝ} {p : Setting} {F : LocalFun} {ν : ℝ → ℝ} {B : ℝ}

/-- `|𝓔₁(ν)| ≤ ∬_{I×I} majK1(ν)`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/EndsE1/Variantd5bf47890bb8e50a6b8f3ea5392d196285e22592a45b334c9132707509563cfb.lean#L727).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2ffe779b70efce4c0c54915abcb2286eaa0edfca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
