# first_contour_limit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4098,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:756d953a-4bb9-62b7-2eb8-c8b88e56eb0b",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:255bc6f9-a24b-01b9-5e73-b14a2b69055d",
  "kind": "theorem",
  "lexical_name": "first_contour_limit",
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
  "slug": "first-contour-limit--3b4e729d0383adc5fd458792",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4274,
    "line": 4098,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b4e729d0383adc5fd4587929a54e190f16ab8b4b3eee9eae99cf1272fb5e8a2",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:255bc6f9-a24b-01b9-5e73-b14a2b69055d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4098–4274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem first_contour_limit (ν ε : ℝ) (hν : ν > 0) (x : ℝ) (hx : x > 0) :
    Filter.atTop.Tendsto (fun T:ℝ ↦
      (I * ∫ t in Set.Icc 0 T, ((Phi_circ ν ε (-1/2 - I * t)) * E (-(-1/2 - I * ↑t) * x)))
        + (∫ t in Set.Icc (-1/2:ℝ) (1/2:ℝ), (Phi_circ ν ε t * E (-t * x)))
        - (I * ∫ t in Set.Icc 0 T, ((Phi_circ ν ε (1/2 - I * t)) * E (- (1/2 - I * ↑t) * x))))
      (nhds (Complex.exp (-ν * x))) := by
  let f : ℂ → ℂ := fun z ↦ Phi_circ ν ε z * E (-z * x)
  have h_pole : ∃ z₀ : ℂ, z₀ = - (I * ν) / (2 * π) ∧ z₀.im < 0 ∧ -1/2 < z₀.re ∧ z₀.re < 1/2 := by
    refine ⟨- (I * ν) / (2 * π), rfl, ?_, ?_, ?_⟩
    · rw [pole_im ν]
      apply div_neg_of_neg_of_pos
      · exact neg_lt_zero.mpr hν
      · exact mul_pos (by norm_num) Real.pi_pos
    · rw [neg_div, neg_div, Complex.neg_re, pole_re]
      norm_num
    · rw [neg_div, Complex.neg_re, pole_re]
      norm_num
  have h_res : ∀ z₀, z₀ = - (I * ν) / (2 * π) →
      Filter.Tendsto (fun z ↦ (z - z₀) * f z) (nhdsWithin z₀ {z₀}ᶜ) (nhds ((I / (2 * π)) * Complex.exp (-ν * x))) := by
    intro z₀ hz₀
    have h_prod : Filter.Tendsto (fun z ↦ ((z - z₀) * Phi_circ ν ε z) * E (-z * x))
        (nhdsWithin z₀ {z₀}ᶜ) (nhds (I / (2 * π) * Complex.exp (-ν * x))) := by
      have h_lim_circ : Filter.Tendsto (fun z ↦ (z - z₀) * Phi_circ ν ε z) (nhdsWithin z₀ {z₀}ᶜ) (nhds (I / (2 * π))) := by
        rw [hz₀, show -(I * ↑ν) / (2 * ↑π) = 0 - I * ↑ν / (2 * ↑π) by ring]
        exact_mod_cast Phi_circ.residue ν ε hν 0
      have h_lim_E : Filter.Tendsto (fun z ↦ E (-z * x)) (nhdsWithin z₀ {z₀}ᶜ) (nhds (Complex.exp (-ν * x))) := by
        have h_E_val : E (-z₀ * x) = Complex.exp (-ν * x) := by
          rw [hz₀, E]
          field_simp [Real.pi_ne_zero]; ring_nf; simp [Complex.I_sq]
        rw [← h_E_val]
        refine (ContinuousAt.tendsto ?_).mono_left nhdsWithin_le_nhds
        fun_prop
      exact h_lim_circ.mul h_lim_E
    simpa [f, mul_assoc] using h_prod
  have h_cauchy (T : ℝ) (hT : T > ν / (2 * π)) :
      RectangleIntegral f (-1/2) (1/2 - I * T) = Complex.exp (-ν * x) := by
    obtain ⟨z₀, hz₀, hz₀_im, hz₀_re_neg, hz₀_re_pos⟩ := h_pole
    set z' : ℂ := -1/2 - I * T
    set w' : ℂ := 1/2
    have h_symm : RectangleIntegral f (-1/2) (1/2 - I * T) = - RectangleIntegral f z' w' := by
      rw [rectangleIntegral_symm f z' w']
      have : RectangleIntegral f w' z' = - RectangleIntegral f (-1/2) (1/2 - I * T) := by
        convert rectangleIntegral_symm_re f (-1/2 : ℂ) (1/2 - I * T : ℂ) using 1
        · simp [w', z', Complex.ext_iff]; ring_nf; simp
      rw [this, neg_neg]
    have h_p_in_interior : Rectangle z' w' ∈ nhds z₀ := by
      rw [rectangle_mem_nhds_iff]
      simp only [sub_re, div_ofNat_re, neg_re, one_re, mul_re, I_re, ofReal_re, zero_mul, I_im,
        ofReal_im, mul_zero, sub_self, sub_zero, one_div, inv_re, re_ofNat, normSq_ofNat,
        div_self_mul_self', sub_im, div_ofNat_im, neg_im, one_im, neg_zero, zero_div, mul_im,
        one_mul, zero_add, zero_sub, inv_im, im_ofNat, z', w']
      rw [hz₀]
      constructor
      · simp only [neg_div, one_div, neg_le_self_iff, inv_nonneg, Nat.ofNat_nonneg, Set.uIoo_of_le,
        Set.mem_preimage, neg_re, Set.mem_Ioo, neg_lt_neg_iff]
        rw [pole_re ν, neg_zero]
        simp only [inv_pos, Nat.ofNat_pos, and_self]
      · have : (-(I * ν) / (2 * π)).im = -ν / (2 * π) := pole_im ν
        rw [Set.mem_preimage, this]
        rw [Set.uIoo_of_lt (by linarith [div_pos hν (by positivity : (0 : ℝ) < 2 * π)]), Set.mem_Ioo]
        constructor
        · field_simp at hT ⊢
          exact neg_lt_neg_iff.mpr hT
        · apply div_neg_of_neg_of_pos
          · linarith
          · linarith [Real.pi_pos]
    have h_f_holo : HolomorphicOn f (Rectangle z' w' \ {z₀}) := by
      apply first_contour_integrand_holomorphicOn ν ε x z' w' z₀ hz₀
      simp only [sub_re, div_ofNat_re, neg_re, one_re, mul_re, I_re, ofReal_re, zero_mul,
        I_im, ofReal_im, mul_zero, sub_self, sub_zero, one_div, inv_re, re_ofNat,
        normSq_ofNat, div_self_mul_self', z', w']
      exact Set.uIcc_of_le (by norm_num)
    set A : ℂ := (I / (2 * π)) * Complex.exp (-ν * x)
    have h_rect' : RectangleIntegral' f z' w' = A := by
      apply ResidueTheoremOnRectangleWithSimplePole'
      · simp [z', w']; field_simp; linarith -- z'.re ≤ w'.re
      · simp only [sub_im, div_ofNat_im, neg_im, one_im, neg_zero, zero_div, mul_im, I_re,
        ofReal_im, mul_zero, I_im, ofReal_re, one_mul, zero_add, zero_sub, one_div, inv_im,
        im_ofNat, normSq_ofNat, Left.neg_nonpos_iff, z', w']
        have h_denom : 0 < 2 * π := by linarith [Real.pi_pos]
        have h_bound : 0 < ν / (2 * π) := div_pos hν h_denom
        linarith [hT, h_bound]
      · exact h_p_in_interior
      · exact h_f_holo
      · let g : ℂ → ℂ := fun z ↦ if z = z₀ then A else (z - z₀) * f z
        have h_g_an : AnalyticAt ℂ g z₀ := by
          apply analyticAt_of_differentiable_on_punctured_nhds_of_continuousAt
          · have h_f_mero : MeromorphicAt f z₀ :=
              (Phi_circ.meromorphic ν ε).meromorphicAt.mul (by unfold E; fun_prop)
            obtain ⟨V, hV_nhds, hV_anal⟩ := h_f_mero.eventually_analyticAt
            filter_upwards [nhdsWithin_le_nhds hV_nhds, self_mem_nhdsWithin] with w hwV hw_ne
            have h_eq : g =ᶠ[nhds w] (fun z ↦ (z - z₀) * f z) :=
              (eventually_ne_nhds hw_ne).mono (fun z hz ↦ by simp [g, hz])
            refine DifferentiableAt.congr_of_eventuallyEq ?_ h_eq
            obtain ⟨b, hb, h_set_eq⟩ := hV_anal
            have hw_f_anal : AnalyticAt ℂ f w := by
              have : w ∈ V ∩ b := ⟨hwV, hb hw_ne⟩
              rwa [← h_set_eq] at this
            exact ((analyticAt_id.sub analyticAt_const).mul hw_f_anal).differentiableAt
          · rw [continuousAt_iff_punctured_nhds]
            convert (h_res z₀ hz₀).congr' ?_
            · exact (by simp [g])
            · filter_upwards [self_mem_nhdsWithin] with z (hz : z ≠ z₀)
              simp only [g, if_neg hz]
        have h_g_val : g z₀ = A := by simp [g]
        have h_lim : Filter.Tendsto (fun z ↦ f z - A / (z - z₀)) (nhdsWithin z₀ {z₀}ᶜ) (nhds (deriv g z₀)) := by
          have h_g_deriv : HasDerivAt g (deriv g z₀) z₀ := (AnalyticAt.differentiableAt h_g_an).hasDerivAt
          rw [hasDerivAt_iff_tendsto_slope] at h_g_deriv
          refine h_g_deriv.congr' ?_
          filter_upwards [self_mem_nhdsWithin] with z h_ne
          simp only [slope, smul_eq_mul, vsub_eq_sub, h_g_val]
          have hne : z ≠ z₀ := h_ne
          simp only [g, if_neg hne]
          have : z - z₀ ≠ 0 := sub_ne_zero.mpr h_ne
          field_simp
        exact h_lim.isBigO_one ℂ
    rw [h_symm]
    have h_rel : RectangleIntegral f z' w' = (2 * π * I) * RectangleIntegral' f z' w' := by
      simp [RectangleIntegral', smul_eq_mul]
      field_simp [Real.pi_ne_zero, I_ne_zero]
      simp
    rw [h_rel, h_rect']
    simp only [A]
    field_simp [Real.pi_ne_zero, I_ne_zero]
    ring_nf; simp [Complex.I_sq]
  have h_bottom := first_contour_bottom_vanishes ν ε x hx
  have h_vertical : Filter.atTop.Tendsto (fun T : ℝ ↦
      (I * ∫ t in Set.Icc 0 T, f (-1/2 - I * t)) +
      (∫ t in Set.Icc (-1/2:ℝ) (1/2:ℝ), f t) -
      (I * ∫ t in Set.Icc 0 T, f (1/2 - I * t)))
    (nhds (Complex.exp (-ν * x))) := by
    have h_decomp (T : ℝ) : RectangleIntegral f (-1/2) (1/2 - I * T) =
        (∫ t in (-1/2:ℝ)..1/2, f t) - (∫ t in (-1/2:ℝ)..1/2, f (t - I * T)) +
        (I * ∫ t in 0..-T, f ((1/2 : ℝ) + I * t)) - (I * ∫ t in 0..-T, f ((-1/2 : ℝ) + I * t)) := by
      simp only [RectangleIntegral, HIntegral, div_ofNat_im, neg_im, one_im, neg_zero, zero_div,
        ofReal_zero, zero_mul, add_zero, div_ofNat_re, neg_re, one_re, one_div, sub_re, inv_re,
        re_ofNat, normSq_ofNat, div_self_mul_self', mul_re, I_re, ofReal_re, I_im, ofReal_im,
        mul_zero, sub_self, sub_zero, sub_im, inv_im, im_ofNat, mul_im, one_mul, zero_add, zero_sub,
        ofReal_neg, neg_mul, VIntegral, ofReal_inv, ofReal_ofNat, smul_eq_mul, ofReal_div,
        ofReal_one]
      ring_nf
      simp only [one_div, sub_right_inj]
      congr 1; ext t; congr; ring
    have h_reparam (T : ℝ) (σ : ℝ) (hT : 0 ≤ T) : (I * ∫ t in 0..-T, f (σ + I * t)) = - I * ∫ t in Set.Icc 0 T, f (σ - I * t) := by
      let g (t : ℝ) : ℂ := f (σ + I * t)
      have : (∫ t in 0..-T, g t) = ∫ t in T..0, g (-t) := by
        conv => lhs; rw [← neg_neg (0 : ℝ), ← neg_neg (-T)]
        rw [← intervalIntegral.integral_comp_neg]
        simp
      rw [this, intervalIntegral.integral_symm, MeasureTheory.integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hT]
      simp only [g]; field_simp
      congr; ext t; congr;
      push_cast; ring
    have h_sum (T : ℝ) (hT : 0 ≤ T) : (I * ∫ t in Set.Icc 0 T, f (-1/2 - I * t)) +
        (∫ t in Set.Icc (-1/2:ℝ) (1/2:ℝ), f t) -
        (I * ∫ t in Set.Icc 0 T, f (1/2 - I * t)) =
        RectangleIntegral f (-1/2) (1/2 - I * T) + (∫ t in (-1/2:ℝ)..1/2, f (t - I * T)) := by
      rw [h_decomp T]
      rw [h_reparam T (1/2) hT, h_reparam T (-1/2) hT]
      rw [intervalIntegral.integral_of_le (by norm_num)]
      have hTop : ∫ (t : ℝ) in Set.Icc (-1 / 2) (1 / 2), f t = ∫ (x : ℝ) in Set.Ioc (-1 / 2) (1 / 2), f ↑x := by
        rw [MeasureTheory.integral_Icc_eq_integral_Ioc]
      have h1 : ∫ (t : ℝ) in Set.Icc 0 T, f (-1 / 2 - I * ↑t) = ∫ (t : ℝ) in Set.Icc 0 T, f (-(I * ↑t) + ↑(-1 / 2)) := by
        congr 1; ext t; congr 1; ring
      have h2 : ∫ (t : ℝ) in Set.Icc 0 T, f (1 / 2 - I * ↑t) = ∫ (t : ℝ) in Set.Icc 0 T, f (-(I * ↑t) + ↑(1 / 2)) := by
        congr 1; ext t; congr 1; ring
      rw [hTop, h1, h2]
      push_cast; ring_nf
    refine Filter.Tendsto.congr' ((Filter.eventually_ge_atTop 0).mono (fun T hT ↦ (h_sum T hT).symm)) ?_
    · rw [show Complex.exp (-ν * x) = Complex.exp (-ν * x) + 0 by simp]
      apply Filter.Tendsto.add
      · refine Filter.Tendsto.congr' ?_ tendsto_const_nhds
        filter_upwards [Filter.eventually_gt_atTop (ν / (2 * π))] with T hT
        symm; exact h_cauchy T hT
      · exact h_bottom
  simpa only [f] using h_vertical

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L4098).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
