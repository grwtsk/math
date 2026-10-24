# shift_downwards_simplified

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 4510,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8bb37ee6-822c-cce7-b77a-67492cf34af8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:43c48791-42ba-e3fb-d4d3-9629d8c2348f",
  "kind": "theorem",
  "lexical_name": "shift_downwards_simplified",
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
  "slug": "shift-downwards-simplified--91223680de1cb1429107a8aa",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4656,
    "line": 4510,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:91223680de1cb1429107a8aa7788c86d1171fdb8eabc1e7c9c70d65a13f99e23",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:43c48791-42ba-e3fb-d4d3-9629d8c2348f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 4510–4656.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem shift_downwards_simplified (ν ε : ℝ) (hν : ν > 0) (x : ℝ) (hx : x > 0) :
    Filter.atTop.Tendsto (fun T:ℝ ↦ - (Real.sin (π * x))^2 / π^2 * ∫ t in Set.Icc 0 T, ((B ε (ν - t) - B ε ν) * Real.exp (-x * t))) (nhds (𝓕 (ϕ_pm ν ε) x - Complex.exp (-ν * x))) := by
  have h_circ_periodic := Phi_circ_periodic ν ε
  have h_re {t : ℝ} (ht : t ≠ ν / (2 * π)) : (-2 : ℂ) * ↑π * I * (-I * ↑t) + ↑ν ≠ 0 := by
    intro h; apply_fun Complex.re at h; rw [w_re] at h; simp at h
    apply ht; field_simp [Real.pi_pos.ne.symm]; linarith [Real.pi_pos]
  have h_im {t : ℝ} (m : ℤ) (hm : m ≠ 0) : (-2 : ℂ) * ↑π * I * (-I * ↑t - ↑m) + ↑ν ≠ 0 := by
    intro h; apply_fun Complex.im at h; simp [Real.pi_pos.ne.symm, hm] at h
  have h_sub (t : ℝ) (ht_pole : t ≠ ν / (2 * π)) :
      Phi_circ ν ε (-1 - I * t) - Phi_star ν ε (-1 - I * t) = -Phi_star ν ε (-I * t) := by
    have h_circ : Phi_circ ν ε (-1 - I * t) = Phi_circ ν ε (-I * t) := by
      rw [show -I * t = (-1 - I * t) + 1 by ring, h_circ_periodic]
    have haff : Phi_star ν ε (-1 - I * t) = Phi_star ν ε (-I * t) + Phi_circ ν ε (-I * t) := by
      have h := phi_star_affine_periodic ν ε hν (-I * t) 1 (h_re ht_pole) (h_im 1 (by norm_num))
      simp only [Int.cast_one, one_mul] at h
      ring_nf at h ⊢; exact h
    rw [h_circ, haff]; ring
  have h_add (t : ℝ) (ht_pole : t ≠ ν / (2 * π)) :
      Phi_circ ν ε (1 - I * t) + Phi_star ν ε (1 - I * t) = Phi_star ν ε (-I * t) := by
    have h_circ : Phi_circ ν ε (1 - I * t) = Phi_circ ν ε (-I * t) := by
      rw [show 1 - I * t = -I * t + 1 by ring, h_circ_periodic]
    have haff : Phi_star ν ε (1 - I * t) = Phi_star ν ε (-I * t) - Phi_circ ν ε (-I * t) := by
      have h := phi_star_affine_periodic ν ε hν (-I * t) (-1) (h_re ht_pole) (h_im (-1) (by norm_num))
      simp only [Int.cast_neg, Int.cast_one, neg_mul, one_mul, sub_neg_eq_add] at h
      ring_nf at h ⊢; exact h
    rw [h_circ, haff]; ring
  have h_factor (T : ℝ) :
      (-I * ∫ t in Set.Icc 0 T,
          (Phi_circ ν ε (-1 - I * t) - Phi_star ν ε (-1 - I * t)) * E (-(-1 - I * t) * x)) +
      (I * ∫ t in Set.Icc 0 T,
          (Phi_circ ν ε (1 - I * t) + Phi_star ν ε (1 - I * t)) * E (-(1 - I * t) * x)) -
      (2 * I * ∫ t in Set.Icc 0 T,
          Phi_star ν ε (-I * t) * E (-(-I * t) * x))
      = (2 - E (-↑x) - E ↑x) * (-I * ∫ t in Set.Icc 0 T, Phi_star ν ε (-I * t) * E (-(-I * t) * x)) := by
    have hE_shift_neg (t : ℝ) : E (-(-1 - I * ↑t) * ↑x) = E ↑x * E (-(-I * ↑t) * ↑x) := by
      simp only [E, ← Complex.exp_add]; congr 1; ring
    have hE_shift_pos (t : ℝ) : E (-(1 - I * ↑t) * ↑x) = E (-↑x) * E (-(-I * ↑t) * ↑x) := by
      simp only [E, ← Complex.exp_add]; congr 1; ring
    have h1 : ∫ t in Set.Icc 0 T, (Phi_circ ν ε (-1 - I * t) - Phi_star ν ε (-1 - I * t)) * E (-(-1 - I * t) * x) =
              ∫ t in Set.Icc 0 T, -(E ↑x * (Phi_star ν ε (-I * t) * E (-(-I * t) * x))) := by
      apply MeasureTheory.integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Icc, Measure.ae_ne (volume.restrict (Set.Icc 0 T)) (ν / (2 * π))] with t ht ht_pole
      rw [h_sub t ht_pole, hE_shift_neg]
      ring
    have h2 : ∫ t in Set.Icc 0 T, (Phi_circ ν ε (1 - I * t) + Phi_star ν ε (1 - I * t)) * E (-(1 - I * t) * x) =
              ∫ t in Set.Icc 0 T, E (-↑x) * (Phi_star ν ε (-I * t) * E (-(-I * t) * x)) := by
      apply MeasureTheory.integral_congr_ae
      filter_upwards [ae_restrict_mem measurableSet_Icc, Measure.ae_ne (volume.restrict (Set.Icc 0 T)) (ν / (2 * π))] with t ht ht_pole
      rw [h_add t ht_pole, hE_shift_pos]
      ring
    rw [h1, h2, integral_neg]
    set g : ℝ → ℂ := fun t => Phi_star ν ε (-I * ↑t) * E (-(-I * ↑t) * ↑x)
    rw [show (∫ t in Set.Icc 0 T, E ↑x * g t) = E ↑x * ∫ t in Set.Icc 0 T, g t from
      MeasureTheory.integral_const_mul _ _]
    rw [show (∫ t in Set.Icc 0 T, E (-↑x) * g t) = E (-↑x) * ∫ t in Set.Icc 0 T, g t from
      MeasureTheory.integral_const_mul _ _]
    ring
  have h_prefactor : (2 : ℂ) - E (-↑x) - E ↑x = 4 * (Real.sin (π * x)) ^ 2 := by
    linear_combination two_sub_E_sq x
  have h_Phi_star_neg_imag (t : ℝ) :
      Phi_star ν ε (-I * ↑t) = (B ε ↑(ν - 2 * π * t) - B ε ↑ν) / (2 * ↑π * I) := by
    simp only [Phi_star]; congr 1; push_cast; ring_nf; simp [Complex.I_sq]; ring_nf
  have h_E_neg_imag (t : ℝ) : E (-(-I * ↑t) * ↑x) = ↑(Real.exp (-2 * π * x * t)) := by
    simp only [E]; push_cast; ring_nf; congr; simp
  have h_imag_integral (T : ℝ) :
      -I * ∫ t in Set.Icc 0 T, Phi_star ν ε (-I * ↑t) * E (-(-I * ↑t) * ↑x)
      = -(1 / (2 * ↑π)) *
        ∫ t in Set.Icc 0 T,
          (B ε ↑(ν - 2 * π * t) - B ε ↑ν) * ↑(Real.exp (-2 * π * x * t)) := by
    simp_rw [h_Phi_star_neg_imag, h_E_neg_imag]
    rw [show (-I * ∫ t in Set.Icc 0 T, (B ε ↑(ν - 2 * π * t) - B ε ↑ν) / (2 * ↑π * I) *
            ↑(rexp (-2 * π * x * t))) = ∫ t in Set.Icc 0 T, -I * ((B ε ↑(ν - 2 * π * t) -
            B ε ↑ν) / (2 * ↑π * I) * ↑(rexp (-2 * π * x * t))) from
      (MeasureTheory.integral_const_mul _ _).symm]
    rw [show -((1 : ℂ) / (2 * ↑π)) * ∫ t in Set.Icc 0 T,
        (B ε ↑(ν - 2 * π * t) - B ε ↑ν) * ↑(rexp (-2 * π * x * t))
      = ∫ t in Set.Icc 0 T, -((1 : ℂ) / (2 * ↑π)) *
        ((B ε ↑(ν - 2 * π * t) - B ε ↑ν) * ↑(rexp (-2 * π * x * t))) from
      (MeasureTheory.integral_const_mul _ _).symm]
    congr 1; ext t
    field_simp [Complex.I_ne_zero, Real.pi_pos.ne.symm]
  have h_cov (T : ℝ) (hT : 0 ≤ T) :
      ∫ t in Set.Icc 0 T,
          (B ε ↑(ν - 2 * π * t) - B ε ↑ν) * ↑(Real.exp (-2 * π * x * t))
      = (1 / (2 * π)) *
        ∫ s in Set.Icc 0 (2 * π * T),
          (B ε (ν - s) - B ε ν) * Real.exp (-x * s) := by
    rw [MeasureTheory.integral_Icc_eq_integral_Ioc, ← intervalIntegral.integral_of_le hT]
    rw [MeasureTheory.integral_Icc_eq_integral_Ioc,
        ← intervalIntegral.integral_of_le (by positivity)]
    let f : ℝ → ℂ := fun s ↦ (B ε (ν - s) - B ε ν) * (Real.exp (-x * s) : ℂ)
    have h_scale : ((2 * π : ℝ) • ∫ x_1 in (0 : ℝ)..T, f (2 * π * x_1))
        = ∫ x_1 in (2 * π : ℝ) * 0..2 * π * T, f x_1 :=
      intervalIntegral.smul_integral_comp_mul_left (f := f) (2 * π)
    dsimp [f] at h_scale
    rw [show ((2 * π : ℝ) * 0) = 0 by ring] at h_scale
    rw [show ∫ t in (0 : ℝ)..T, (B ε ↑(ν - 2 * π * t) - B ε ↑ν) * (↑(Real.exp (-2 * π * x * t)) : ℂ)
          = ∫ x_1 in (0 : ℝ)..T, f (2 * π * x_1) from by
        apply intervalIntegral.integral_congr; intro t _; dsimp [f]; push_cast; ring_nf,
        ← h_scale]
    rw [show (1 : ℂ) / (2 * ↑π) * (↑(2 * π) * ∫ x_1 in (0 : ℝ)..T, f (2 * π * x_1))
          = ∫ x_1 in (0 : ℝ)..T, f (2 * π * x_1) by push_cast; field_simp]
  let combined_expr : ℝ → ℂ := fun T ↦
    (-I * ∫ t in Set.Icc 0 T, (Phi_circ ν ε (-1 - I*t) - Phi_star ν ε (-1 - I*t)) * E (-(-1 - I*↑t) * x)) +
    (I  * ∫ t in Set.Icc 0 T, (Phi_circ ν ε (1 - I*t) + Phi_star ν ε (1 - I*t)) * E (-(1 - I*↑t) * x)) -
    (2 * I * ∫ t in Set.Icc 0 T, Phi_star ν ε (-I * t) * E (-(-I * t) * x))
  have h_key (T : ℝ) (hT : 0 ≤ T) :
      - (Real.sin (π * x))^2 / π^2 *
        ∫ t in Set.Icc 0 (2*π*T), (B ε (ν - t) - B ε ν) * Real.exp (-x * t)
      = combined_expr T := by
    simp only [combined_expr]
    rw [h_factor T, h_imag_integral T, h_prefactor, h_cov T hT]
    push_cast; field_simp [Real.pi_ne_zero]; ring
  have h_combined_limit : Filter.atTop.Tendsto combined_expr
      (nhds (𝓕 (ϕ_pm ν ε) x - Complex.exp (-↑ν * ↑x))) := by
    have h_arith := (((shift_downwards ν ε hν x hx).sub (first_contour_limit ν ε hν x hx)).sub
        (second_contour_limit ν ε hν x hx)).sub (third_contour_limit ν ε hν x hx)
    have h_lim_ident : (𝓕 (ϕ_pm ν ε) x - Complex.exp (-↑ν * ↑x) - 0 - 0) = (𝓕 (ϕ_pm ν ε) x - cexp (-(↑ν * ↑x))) := by
      simp only [sub_zero]; congr; ring
    rw [h_lim_ident] at h_arith
    ring_nf; apply h_arith.congr'
    filter_upwards [Filter.eventually_ge_atTop 0] with T hT
    simp only [combined_expr, E]
    simp_rw [sub_mul, add_mul]
    rw [integral_sub (integrableOn_Phi_circ_m12 ν ε x T) (integrableOn_Phi_star_m12 ν ε x T),
        integral_add (integrableOn_Phi_circ_p12 ν ε x T) (integrableOn_Phi_star_p12 ν ε x T)]
    ring
  apply (h_combined_limit.comp tendsto_div_two_pi).congr'
  filter_upwards [Filter.eventually_ge_atTop 0] with T hT
  simp only [Function.comp_apply, ofReal_sin, ofReal_mul, neg_mul, ofReal_exp, ofReal_neg]
  rw [← h_key (T / (2*π)) (by positivity)]
  congr 1
  · norm_cast
  · field_simp; norm_cast; simp_rw [mul_comm]

@[blueprint
  "fourier-formula-neg"
  (title := "Fourier formula for negative $x$")
  (statement := /--
Let $\nu > 0$, $x < 0$. Since $x < 0$, $I_{\nu}(x) = 0$, and
$$
\widehat{\varphi^{\pm}_{\nu}}(x) - I_{\nu}(x) = \frac{\sin^2 \pi x}{\pi^2} \int_0^{\infty} (B^{\pm}(\nu + y) - B^{\pm}(\nu))\, e^{xy}\, dy.
$$
  -/)
  (proof := /-- This follows from the previous lemma. -/)
  (latexEnv := "lemma")
  (discussion := 1089)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L4510).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
