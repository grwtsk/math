# horizontal_integral_phi_fourier_vanish

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
      "line": 3125,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7bdbbdce-69da-e8d2-3220-c9c4b6651819",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:5a81bcb6-0d6f-b04a-aa3e-7ee26a935efe",
  "kind": "lemma",
  "lexical_name": "horizontal_integral_phi_fourier_vanish",
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
  "slug": "horizontal-integral-phi-fourier-vanish--742afdca155cd18a543f11f5",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3181,
    "line": 3125,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:742afdca155cd18a543f11f57a008020173aa2023de543716e9aa55094fc85cb",
  "verification": {
    "reference": "docs/verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:5a81bcb6-0d6f-b04a-aa3e-7ee26a935efe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3125–3181.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma horizontal_integral_phi_fourier_vanish (ν ε x a b : ℝ) (hν : ν > 0) (hx : x < 0)
    (hab_in : Set.Icc a b ⊆ Set.Icc (-1) 1) (hab : a ≤ b)
    (f : ℂ → ℂ)
    (hf_anal : ∀ T : ℝ, T ≥ 1 → ContinuousOn f (Rectangle (↑a) (↑b + I * ↑T)))
    (hf_bound : ∀ T : ℝ, T ≥ 1 → ∀ t ∈ Set.Icc a b, ‖f (t + I * T)‖ ≤ (‖Phi_circ ν ε (t + I * T)‖ + ‖Phi_star ν ε (t + I * T)‖) * ‖E (-(t + I * T) * x)‖) :
    Filter.Tendsto (fun T : ℝ ↦ ∫ t in a..b, f (t + I * T)) Filter.atTop (nhds 0) := by
  obtain ⟨C, hC⟩ := phi_bound_upwards ν ε hν
  have h_int_bound (T : ℝ) (hT : T ≥ 1) : ‖∫ t in a..b, f (t + I * T)‖ ≤ (b - a) * C * (T + 1) * Real.exp (2 * π * x * T) := by
    calc ‖∫ t in a..b, f (↑t + I * ↑T)‖
      _ ≤ ∫ t in a..b, ‖f (↑t + I * ↑T)‖ := intervalIntegral.norm_integral_le_integral_norm hab
      _ ≤ ∫ t in a..b, C * (T + 1) * Real.exp (2 * π * x * T) := by
          apply intervalIntegral.integral_mono_on hab
          · refine ContinuousOn.intervalIntegrable ?_
            refine ContinuousOn.norm ?_
            rw [Set.uIcc_of_le hab]
            have hg : Continuous (fun t : ℝ ↦ (↑t : ℂ) + I * ↑T) := by fun_prop
            have h_seg_in : (fun t ↦ ↑t + I * ↑T) '' Set.Icc a b ⊆ Rectangle a (b + I * T) := by
              intro z ⟨t, ht, hz⟩
              subst hz
              rw [mem_Rect (by simpa using hab) (by simpa using hT.trans' (by norm_num : (0 : ℝ) ≤ 1))]
              simp only [Complex.add_re, Complex.ofReal_re, Complex.mul_re, Complex.I_re, Complex.I_im,
                Complex.ofReal_im, Complex.add_im, Complex.mul_im, mul_zero, zero_mul, sub_zero, add_zero, zero_add]
              exact ⟨ht.1, ht.2, by linarith, le_refl _⟩
            exact (hf_anal T hT).mono h_seg_in |>.comp hg.continuousOn (Set.mapsTo_image _ _)
          · exact intervalIntegrable_const
          · intro t ht
            specialize hf_bound T hT t ht
            have h_phi := hC (↑t + I * T) (by simpa using hT) (hab_in (by simpa using ht))
            calc ‖f (↑t + I * ↑T)‖
              _ ≤ (‖Phi_circ ν ε (↑t + I * ↑T)‖ + ‖Phi_star ν ε (↑t + I * ↑T)‖) * ‖E (-(↑t + I * ↑T) * ↑x)‖ := hf_bound
              _ = (‖Phi_circ ν ε (↑t + I * ↑T)‖ + ‖Phi_star ν ε (↑t + I * ↑T)‖) * Real.exp (2 * π * x * T) := by
                  congr 1; dsimp [E]; rw [Complex.norm_exp]; simp; ring_nf
              _ ≤ C * (T + 1) * Real.exp (2 * π * x * T) := by
                  rw [Complex.add_im ↑t (I * ↑T)] at h_phi
                  simpa using mul_le_mul_of_nonneg_right h_phi (Real.exp_nonneg _)
      _ = (b - a) * (C * (T + 1) * Real.exp (2 * π * x * T)) := intervalIntegral.integral_const _
      _ = (b - a) * C * (T + 1) * Real.exp (2 * π * x * T) := by ring
  rw [tendsto_zero_iff_norm_tendsto_zero]
  let h_decay : ℝ → ℝ := fun T' ↦ (b - a) * C * (T' + 1) * rexp (2 * π * x * T')
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le' (g := fun _ ↦ 0) (h := h_decay) tendsto_const_nhds ?_ ?_ ?_
  · exact tendsto_T_plus_one_mul_exp_atTop_nhds_zero (by nlinarith [hx, Real.pi_pos]) ((b - a) * C)
  · filter_upwards with T'; exact norm_nonneg _
  · filter_upwards [Filter.eventually_ge_atTop 1] with T' hT
    exact h_int_bound T' hT

@[blueprint
  "shift-upwards"
  (title := "Contour shifting upwards")
  (statement := /-- If $x < 0$, then
\begin{multline}\label{eq:1.5}
\widehat{\varphi^{\pm}_{\nu}}(x) = \int_{-1+i\infty}^{-1} \bigl(\Phi^{\pm,\circ}_{\nu}(z) - \Phi^{\pm,\star}_{\nu}(z)\bigr) e(-zx)\, dz \\
+ \int_{1}^{1+i\infty} \bigl(\Phi^{\pm,\circ}_{\nu}(z) + \Phi^{\pm,\star}_{\nu}(z)\bigr) e(-zx)\, dz + 2\int_0^{i\infty} \Phi^{\pm,\star}_{\nu}(z)\, e(-zx)\, dz.
\end{multline}
  -/)
  (proof := /-- Since $\Phi^{\pm,\circ}_{\nu}(z) \pm \Phi^{\pm,\star}_{\nu}(z)$ has no poles in the upper half plane, we can shift contours upwards, as we may: for $\Im z \to \infty$, $e(-zx) = e^{-2\pi i z x}$ decays exponentially on $\Im z$, while, by Lemma~1.3, $\Phi^{\pm,\circ}_{\nu}(z) \pm \Phi^{\pm,\star}_{\nu}(z)$ grows at most linearly, and so the contribution of a moving horizontal segment goes to $0$ as $\Im z \to \infty$. -/)
  (latexEnv := "sublemma")
  (discussion := 1080)]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L3125).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
