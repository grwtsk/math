# SmoothedChebyshevPull1

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cdfa5dce-7fa3-eda6-27a8-8c958b5c2356",
  "kind": "theorem",
  "lexical_name": "SmoothedChebyshevPull1",
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
  "slug": "smoothedchebyshevpull1--8b91d5d73d1baf3d87fc4f3b",
  "source": {
    "blob": "a1365e51b2cf5fd8a3efb9c2e8ed59f5304fb93a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 924,
    "line": 757,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8b91d5d73d1baf3d87fc4f3b6c8135ecd4bb950b43002d4614a010e6308f2283",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cdfa5dce-7fa3-eda6-27a8-8c958b5c2356`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 757–924.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem SmoothedChebyshevPull1 {SmoothingF : ℝ → ℝ} {ε : ℝ} (ε_pos : 0 < ε)
    (ε_lt_one : ε < 1)
    (X : ℝ) (X_gt : 3 < X)
    {T : ℝ} (T_pos : 0 < T) {σ₁ : ℝ}
    (σ₁_pos : 0 < σ₁) (σ₁_lt_one : σ₁ < 1)
    (holoOn : HolomorphicOn (ζ' / ζ) ((Icc σ₁ 2) ×ℂ (Icc (-T) T) \ {1}))
    (suppSmoothingF : Function.support SmoothingF ⊆ Icc (1 / 2) 2)
    (SmoothingFnonneg : ∀ x > 0, 0 ≤ SmoothingF x)
    (mass_one : ∫ x in Ioi 0, SmoothingF x / x = 1)
    (ContDiffSmoothingF : ContDiff ℝ 1 SmoothingF) :
    SmoothedChebyshev SmoothingF ε X =
      I₁ SmoothingF ε X T -
      I₂ SmoothingF ε T X σ₁ +
      I₃₇ SmoothingF ε T X σ₁ +
      I₈ SmoothingF ε T X σ₁ +
      I₉ SmoothingF ε X T
      + 𝓜 (fun x ↦ (Smooth1 SmoothingF ε x : ℂ)) 1 * X := by
  unfold SmoothedChebyshev
  unfold VerticalIntegral'
  have X_eq_gt_one : 1 < 1 + (Real.log X)⁻¹ := by
    nth_rewrite 1 [← add_zero 1]
    bound
  have X_eq_lt_two : (1 + (Real.log X)⁻¹) < 2 := by
    rw[← one_add_one_eq_two]
    gcongr
    exact inv_lt_one_of_one_lt₀ <| logt_gt_one X_gt.le
  have X_eq_le_two : 1 + (Real.log X)⁻¹ ≤ 2 := X_eq_lt_two.le
  rw [verticalIntegral_split_three (a := -T) (b := T)]
  swap
  · exact SmoothedChebyshevPull1_aux_integrable ε_pos ε_lt_one X_gt X_eq_gt_one
      X_eq_le_two suppSmoothingF SmoothingFnonneg mass_one ContDiffSmoothingF
  · have temp : ↑(1 + (Real.log X)⁻¹) = (1 : ℂ) + ↑(Real.log X)⁻¹ := by simp
    unfold I₁
    simp only [smul_eq_mul, mul_add, temp, sub_eq_add_neg, add_assoc, add_left_cancel_iff]
    unfold I₉
    nth_rewrite 6 [add_comm]
    simp only [← add_assoc]
    rw [add_right_cancel_iff,
        ← add_right_inj (1 / (2 * ↑π * I) *
          -VIntegral (SmoothedChebyshevIntegrand SmoothingF ε X) (1 + (Real.log X)⁻¹) (-T) T),
        ← mul_add, ← sub_eq_neg_add, sub_self, mul_zero]
    unfold VIntegral I₂ I₃₇ I₈
    simp only [smul_eq_mul, temp, ← add_assoc, ← mul_neg, ← mul_add]
    let fTempRR : ℝ → ℝ → ℂ := fun x ↦ fun y ↦
      SmoothedChebyshevIntegrand SmoothingF ε X ((x : ℝ) + (y : ℝ) * I)
    let fTempC : ℂ → ℂ := fun z ↦ fTempRR z.re z.im
    have : ∫ (y : ℝ) in -T..T,
        SmoothedChebyshevIntegrand SmoothingF ε X (1 + ↑(Real.log X)⁻¹ + ↑y * I) =
        ∫ (y : ℝ) in -T..T, fTempRR (1 + (Real.log X)⁻¹) y := by
        unfold fTempRR
        simp only [temp]
    rw[this]
    have : ∫ (σ₀ : ℝ) in σ₁..1 + (Real.log X)⁻¹,
        SmoothedChebyshevIntegrand SmoothingF ε X (↑σ₀ - ↑T * I) =
        ∫ (x : ℝ) in σ₁..1 + (Real.log X)⁻¹, fTempRR x (-T) := by
        unfold fTempRR
        simp only [ofReal_neg, neg_mul, sub_eq_add_neg]
    rw[this]
    have : ∫ (t : ℝ) in -T..T,
        SmoothedChebyshevIntegrand SmoothingF ε X (↑σ₁ + ↑t * I) =
        ∫ (y : ℝ) in -T..T, fTempRR σ₁ y := rfl
    rw[this]
    have : ∫ (σ₀ : ℝ) in σ₁..1 + (Real.log X)⁻¹,
        SmoothedChebyshevIntegrand SmoothingF ε X (↑σ₀ + ↑T * I) =
        ∫ (x : ℝ) in σ₁..1 + (Real.log X)⁻¹, fTempRR x T := rfl
    rw[this]
    have : (((I * -∫ (y : ℝ) in -T..T, fTempRR (1 + (Real.log X)⁻¹) y) +
        -∫ (x : ℝ) in σ₁..1 + (Real.log X)⁻¹, fTempRR x (-T)) +
        I * ∫ (y : ℝ) in -T..T, fTempRR σ₁ y) +
        ∫ (x : ℝ) in σ₁..1 + (Real.log X)⁻¹, fTempRR x T =
        -(2 * ↑π * I) * RectangleIntegral' fTempC (σ₁ - T * I) (1 + ↑(Real.log X)⁻¹ + T * I) := by
        unfold RectangleIntegral' RectangleIntegral HIntegral VIntegral fTempC
        simp only [mul_neg, one_div, mul_inv_rev, inv_I, neg_mul, sub_im, ofReal_im, mul_im,
          ofReal_re, I_im, mul_one, I_re, mul_zero, add_zero, zero_sub, ofReal_neg, add_re,
          neg_re, mul_re, sub_self, neg_zero, add_im, neg_im, zero_add, sub_re, sub_zero,
          ofReal_inv, one_re, inv_re, normSq_ofReal, div_self_mul_self', one_im, inv_im,
          zero_div, ofReal_add, ofReal_one, smul_eq_mul, neg_neg]
        ring_nf
        simp only [I_sq, neg_mul, one_mul, ne_eq, ofReal_eq_zero, pi_ne_zero, not_false_eq_true,
          mul_inv_cancel_right₀, sub_neg_eq_add, I_pow_three]
        ring_nf
    rw[this]
    field_simp
    rw[mul_comm, eq_comm, neg_add_eq_zero]
    have pInRectangleInterior :
        (Rectangle (σ₁ - ↑T * I) (1 + (Real.log X)⁻¹ + T * I) ∈ nhds 1) := by
      refine rectangle_mem_nhds_iff.mpr ?_
      refine mem_reProdIm.mpr ?_
      simp only [sub_re, ofReal_re, mul_re, I_re, mul_zero, ofReal_im, I_im, mul_one, sub_self,
        sub_zero, ofReal_inv, add_re, one_re, inv_re, normSq_ofReal, div_self_mul_self', add_zero,
        sub_im, mul_im, zero_sub, add_im, one_im, inv_im, neg_zero, zero_div, zero_add]
      constructor
      · unfold uIoo
        rw [min_eq_left (by linarith), max_eq_right (by linarith)]
        exact mem_Ioo.mpr ⟨σ₁_lt_one, (by linarith)⟩
      · unfold uIoo
        rw [min_eq_left (by linarith), max_eq_right (by linarith)]
        exact mem_Ioo.mpr ⟨(by linarith), (by linarith)⟩
    apply ResidueTheoremOnRectangleWithSimplePole'
    · simp; linarith
    · simp; linarith
    · simp only [one_div]
      exact pInRectangleInterior
    · apply DifferentiableOn.mul
      · apply DifferentiableOn.mul
        · simp only [re_add_im]
          have : (fun z ↦ -ζ' z / ζ z) = -(ζ' / ζ) := by ext; simp; ring
          rw [this]
          apply DifferentiableOn.neg
          apply holoOn.mono
          apply Set.sdiff_subset_sdiff_left
          apply reProdIm_subset_iff'.mpr
          left
          simp only [sub_re, ofReal_re, mul_re, I_re, mul_zero, ofReal_im, I_im, mul_one, sub_self,
            sub_zero, one_div, ofReal_inv, add_re, one_re, inv_re, normSq_ofReal,
            div_self_mul_self', add_zero, sub_im, mul_im, zero_sub, add_im, one_im, inv_im,
            neg_zero, zero_div, zero_add]
          constructor <;> apply uIcc_subset_Icc <;> constructor <;> linarith
        · intro s hs
          apply DifferentiableAt.differentiableWithinAt
          simp only [re_add_im]
          apply Smooth1MellinDifferentiable ContDiffSmoothingF suppSmoothingF ⟨ε_pos, ε_lt_one⟩
            SmoothingFnonneg mass_one
          have := mem_reProdIm.mp hs.1 |>.1
          simp only [sub_re, ofReal_re, mul_re, I_re, mul_zero, ofReal_im, I_im, mul_one, sub_self,
            sub_zero, one_div, ofReal_inv, add_re, one_re, inv_re, normSq_ofReal,
            div_self_mul_self', add_zero] at this
          rw [uIcc_of_le (by linarith)] at this
          linarith [this.1]
      · intro s hs
        apply DifferentiableAt.differentiableWithinAt
        simp only [re_add_im]
        apply DifferentiableAt.const_cpow (by fun_prop)
        left
        norm_cast
        linarith
    · let U : Set ℂ := Rectangle (σ₁ - ↑T * I) (1 + (Real.log X)⁻¹ + T * I)
      let f : ℂ → ℂ := fun z ↦ -ζ' z / ζ z
      let g : ℂ → ℂ := fun z ↦ 𝓜 (fun x ↦ ↑(Smooth1 SmoothingF ε x)) z * ↑X ^ z
      unfold fTempC fTempRR SmoothedChebyshevIntegrand
      simp only [re_add_im]
      have g_holc : HolomorphicOn g U := by
        intro u uInU
        apply DifferentiableAt.differentiableWithinAt
        simp only [g]
        apply DifferentiableAt.mul
        · apply Smooth1MellinDifferentiable ContDiffSmoothingF suppSmoothingF ⟨ε_pos, ε_lt_one⟩
            SmoothingFnonneg mass_one
          simp only [ofReal_inv, U] at uInU
          unfold Rectangle at uInU
          rw[Complex.mem_reProdIm] at uInU
          have := uInU.1
          simp only [sub_re, ofReal_re, mul_re, I_re, mul_zero, ofReal_im, I_im, mul_one, sub_self,
            sub_zero, add_re, one_re, inv_re, normSq_ofReal, div_self_mul_self', add_zero] at this
          rw [uIcc_of_le (by linarith)] at this
          linarith [this.1]
        · unfold HPow.hPow instHPow
          apply DifferentiableAt.const_cpow differentiableAt_fun_id
          left
          norm_cast
          linarith
      have f_near_p : (f - fun (z : ℂ) => 1 * (z - 1)⁻¹) =O[nhdsWithin 1 {1}ᶜ] (1 : ℂ → ℂ) := by
        simp only [one_mul, f]
        exact riemannZetaLogDerivResidueBigO
      convert ResidueMult g_holc pInRectangleInterior f_near_p using 1
      ext
      simp [f, g]
      ring
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variant1f82bdeaf76ec334ed628d69bf22ee1fcbce37b7a63c1300aea30e7c599e5dff.lean#L757).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1365e51b2cf5fd8a3efb9c2e8ed59f5304fb93a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
