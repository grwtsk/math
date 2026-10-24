# first_contour_bottom_vanishes

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
      "line": 3998,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/38/3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cfd5d4f4-74b6-d3b1-da4d-df0ee9e79bd2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0546d4cd-e2b0-ed86-1d1a-1aff15a204f3",
  "kind": "lemma",
  "lexical_name": "first_contour_bottom_vanishes",
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
  "slug": "first-contour-bottom-vanishes--d867aae88faca11c790ea8db",
  "source": {
    "blob": "ff796b0e5ce50fb625a95391f29798f81bd649bf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 4065,
    "line": 3998,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d867aae88faca11c790ea8db63e66aa84a5a2cbf423d34eff70cc53c6e41a7a9",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0546d4cd-e2b0-ed86-1d1a-1aff15a204f3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3998–4065.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma first_contour_bottom_vanishes (ν ε : ℝ) (x : ℝ) (hx : x > 0) :
    Filter.Tendsto (fun T : ℝ ↦ ∫ t in (-1/2 : ℝ)..1/2, (fun z ↦ Phi_circ ν ε z * E (-z * x)) (t - I * T))
      Filter.atTop (nhds 0) := by
  let f : ℂ → ℂ := fun z ↦ Phi_circ ν ε z * E (-z * x)
  have h_f_bound : ∃ C : ℝ, ∃ T₀ : ℝ, T₀ ≥ ν / (2 * π) + 1 ∧ ∀ T : ℝ, T ≥ T₀ → ∀ t ∈ Set.Icc (-1/2 : ℝ) (1/2 : ℝ), ‖f (↑t - I * ↑T)‖ ≤ C * Real.exp (-2 * π * x * T) := by
    obtain ⟨C₁, hC₁⟩ := ϕ_circ_bound_left ν ν ε (-(ν / (2 * π) + 1)) (by ring_nf; linarith)
    refine ⟨C₁, ν / (2 * π) + 1, le_refl _, fun T hT t ht => ?_⟩
    have h_phi : ‖Phi_circ ν ε (↑t - I * ↑T)‖ ≤ C₁ :=
      hC₁ ν (Set.left_mem_Icc.mpr (le_refl _)) _ (by
        simp only [Complex.sub_im, Complex.ofReal_im, Complex.mul_im, Complex.I_re, Complex.I_im,
                    Complex.ofReal_re, mul_zero, zero_sub, zero_add]
        linarith)
    have h_E : ‖E (-(↑t - I * ↑T) * ↑x)‖ = rexp (-2 * π * x * T) := by
      rw [E, Complex.norm_exp]
      simp only [Complex.mul_re, Complex.neg_re, Complex.sub_re, Complex.sub_im, Complex.neg_im,
                  Complex.mul_im, Complex.I_re, Complex.I_im, Complex.ofReal_re, Complex.ofReal_im,
                  Complex.re_ofNat, Complex.im_ofNat, mul_zero, sub_zero, zero_mul, add_zero,
                  mul_one, zero_sub, zero_add]
      congr 1; ring
    change ‖Phi_circ ν ε (↑t - I * ↑T) * E (-(↑t - I * ↑T) * ↑x)‖ ≤ C₁ * rexp (-2 * π * x * T)
    rw [norm_mul, h_E]
    exact mul_le_mul_of_nonneg_right h_phi (Real.exp_nonneg _)
  obtain ⟨C, T₀, hT₀_ge, hC⟩ := h_f_bound
  have h_int_le (T : ℝ) (hT : T > ν / (2 * π)) (hT_T₀ : T ≥ T₀) : ‖∫ t in -1 / 2..1 / 2, f (t - I * T)‖ ≤ C * Real.exp (-2 * π * x * T) := by
    calc ‖∫ (t : ℝ) in -1 / 2..1 / 2, f (↑t - I * ↑T)‖
      _ ≤ ∫ (t : ℝ) in -1 / 2..1 / 2, ‖f (↑t - I * ↑T)‖ :=
          intervalIntegral.norm_integral_le_integral_norm (by norm_num)
      _ ≤ ∫ (t : ℝ) in -1 / 2..1 / 2, C * Real.exp (-2 * π * x * T) := by
          apply intervalIntegral.integral_mono_on (by norm_num)
          · apply IntervalIntegrable.norm
            rw [intervalIntegrable_iff_integrableOn_Icc_of_le (by norm_num)]
            apply integrable_fourier_path (f := fun t ↦ Phi_circ ν ε (↑t - I * ↑T)) (p := fun t ↦ ↑t - I * ↑T)
            · intro t _
              have h_anal : AnalyticAt ℂ (Phi_circ ν ε) (↑t - I * ↑T) := by
                apply Phi_circ.analyticAt_of_im_ne_pole
                simp only [sub_im, ofReal_im, mul_im, I_re,
                  mul_zero, I_im, ofReal_re, one_mul, zero_add, zero_sub, ne_eq]
                intro h
                rw [gt_iff_lt, ← neg_lt_neg_iff, h] at hT
                ring_nf at hT
                exact lt_irrefl _ hT
              have key : ContinuousAt (fun s : ℝ ↦ Phi_circ ν ε ((s : ℂ) - I * ↑T)) t := by
                rw [show (fun s : ℝ ↦ Phi_circ ν ε ((s : ℂ) - I * ↑T)) =
                      Phi_circ ν ε ∘ (fun s : ℝ ↦ (s : ℂ) - I * ↑T) from rfl]
                apply ContinuousAt.comp
                · exact h_anal.continuousAt
                · exact continuous_ofReal.continuousAt.sub continuousAt_const
              exact key.continuousWithinAt
            · fun_prop
          · exact intervalIntegrable_const
          · intro t ht; exact hC T hT_T₀ t ht
      _ = C * Real.exp (-2 * π * x * T) := by
          simp only [intervalIntegral.integral_const]; norm_num
  have h_lim : Filter.Tendsto (fun T ↦ C * Real.exp (-2 * π * x * T)) Filter.atTop (nhds 0) := by
    have hk : -2 * π * x < 0 := by nlinarith [hx, Real.pi_pos]
    have h_vanish : Filter.Tendsto (fun T ↦ Real.exp ((-2 * π * x) * T)) Filter.atTop (nhds 0) := by
      have hu : Filter.Tendsto (fun T ↦ (2 * π * x) * T) Filter.atTop Filter.atTop :=
        Filter.tendsto_id.const_mul_atTop (by nlinarith [hx, Real.pi_pos])
      have h0 := Real.tendsto_pow_mul_exp_neg_atTop_nhds_zero 0
      simpa [Function.comp_def, pow_zero, neg_mul] using h0.comp hu
    simpa only [mul_zero] using Filter.Tendsto.const_mul C h_vanish
  rw [tendsto_zero_iff_norm_tendsto_zero]
  apply squeeze_zero' (Filter.Eventually.of_forall (fun T ↦ norm_nonneg _))
  · filter_upwards [Filter.eventually_ge_atTop T₀] with T hT_T₀
    have hT_pole : T > ν / (2 * π) := by linarith [hT₀_ge]
    exact h_int_le T hT_pole hT_T₀
  · exact h_lim

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/CH2Part1/Variant3861a18c353a028274e3a45d75582be6d4ddc577bafa3a8147f92e32f09635dc.lean#L3998).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ff796b0e5ce50fb625a95391f29798f81bd649bf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
