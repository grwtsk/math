# horizontal_integral_phi_fourier_vanish_downwards

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
      "line": 3586,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/7c/7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:199ea41e-3ce0-7b02-38c1-7fbf1ab749f5",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:c375e1ce-f21a-d7f7-89e7-87ddbc3c0776",
  "kind": "lemma",
  "lexical_name": "horizontal_integral_phi_fourier_vanish_downwards",
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
  "slug": "horizontal-integral-phi-fourier-vanish-downwards--e32679d1b6a2e692151b62ca",
  "source": {
    "blob": "9ef2608fe2b2171a00303ea2d042ad23b0efe93d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 3642,
    "line": 3586,
    "path": "GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e32679d1b6a2e692151b62caa30d033133e8cfb06bf1d214fc6ed9678734eca4",
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

Occurrence: `result:c375e1ce-f21a-d7f7-89e7-87ddbc3c0776`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 3586–3642.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma horizontal_integral_phi_fourier_vanish_downwards (ν ε x a b : ℝ) (hν : ν > 0) (hx : x > 0)
    (hab_in : Set.Icc a b ⊆ Set.Icc (-1) 1) (hab : a ≤ b)
    (f : ℂ → ℂ)
    (hf_anal : ∀ (T : ℝ), T ≥ 1 → ContinuousOn f (Rectangle (a : ℂ) (b - I * T)))
    (hf_bound : ∀ᶠ (T : ℝ) in Filter.atTop, ∀ (t : ℝ), t ∈ Set.Icc a b → ‖f (t - I * T)‖ ≤ (‖Phi_circ ν ε (t - I * T)‖ + ‖Phi_star ν ε (t - I * T)‖) * ‖E (-(t - I * T) * x)‖) :
    Filter.Tendsto (fun (T : ℝ) ↦ ∫ t in a..b, f (t - I * T)) Filter.atTop (nhds 0) := by
  obtain ⟨C, T₀, hT₀_bound, hC⟩ := phi_bound_downwards ν ε hν
  obtain ⟨T_bound, hf_bound'⟩ := Filter.eventually_atTop.mp hf_bound
  let T_max := max (max 1 T₀) T_bound
  have h_int_bound (T : ℝ) (hT : T ≥ T_max) :
      ‖∫ t in a..b, f (t - I * T)‖ ≤ (b - a) * C * (T + 1) * Real.exp (-2 * π * x * T) := by
    calc ‖∫ t in a..b, f (↑t - I * ↑T)‖
      _ ≤ ∫ t in a..b, ‖f (↑t - I * ↑T)‖ := intervalIntegral.norm_integral_le_integral_norm hab
      _ ≤ ∫ t in a..b, C * (T + 1) * Real.exp (-2 * π * x * T) := by
          apply intervalIntegral.integral_mono_on hab
          · apply ContinuousOn.intervalIntegrable
            · refine ContinuousOn.norm ?_
              rw [Set.uIcc_of_le hab]
              apply ContinuousOn.congr (f := f ∘ fun (x : ℝ) ↦ (x : ℂ) - I * (T : ℂ))
              · apply ContinuousOn.comp
                · exact hf_anal T (by linarith [hT, le_max_left (max 1 T₀) T_bound, le_max_left 1 T₀])
                · exact (continuous_ofReal.sub continuous_const).continuousOn
                · intro u hu
                  simp only [Rectangle, ofReal_re, sub_re, mul_re, I_re, zero_mul, I_im, ofReal_im,
                    mul_zero, sub_self, sub_zero, sub_im, mul_im, one_mul, zero_add, zero_sub]
                  constructor
                  · simp only [Set.mem_preimage, sub_re, ofReal_re, mul_re, I_re, zero_mul, I_im,
                    ofReal_im, mul_zero, sub_self, sub_zero]
                    rw [Set.uIcc_of_le hab]; exact hu
                  · simp
              · intro x _; rfl
          · exact intervalIntegrable_const
          · intro t ht
            calc ‖f (↑t - I * ↑T)‖
              _ ≤ (‖Phi_circ ν ε (↑t - I * ↑T)‖ + ‖Phi_star ν ε (↑t - I * ↑T)‖) * ‖E (-(↑t - I * ↑T) * ↑x)‖ := hf_bound' T (by linarith [hT, le_max_right (max 1 T₀) T_bound]) t ht
              _ = (‖Phi_circ ν ε (↑t - I * ↑T)‖ + ‖Phi_star ν ε (↑t - I * ↑T)‖) * Real.exp (-2 * π * x * T) := by
                  congr 1; dsimp [E]; rw [Complex.norm_exp]; simp; ring_nf
              _ ≤ C * (1 - (↑t - I * T).im) * Real.exp (-2 * π * x * T) := by
                  apply mul_le_mul_of_nonneg_right _ (by positivity)
                  norm_cast
                  rw [show 1 - (↑t - I * ↑T).im = -(↑t - I * ↑T).im + 1 by ring]
                  apply hC
                  · simp
                    linarith [hT, le_max_left (max 1 T₀) T_bound, le_max_right 1 T₀]
                  · simp only [sub_re, ofReal_re, mul_re, I_re, zero_mul, I_im, ofReal_im,
                    mul_zero, sub_self, sub_zero, Set.mem_Icc]
                    exact_mod_cast hab_in ht
              _ = C * (T + 1) * Real.exp (-2 * π * x * T) := by simp [Complex.sub_im]; ring_nf; simp
      _ = (b - a) * (C * (T + 1) * Real.exp (-2 * π * x * T)) := intervalIntegral.integral_const _
      _ = (b - a) * C * (T + 1) * Real.exp (-2 * π * x * T) := by ring
  rw [tendsto_zero_iff_norm_tendsto_zero]
  let h_decay : ℝ → ℝ := fun T' ↦ (b - a) * C * (T' + 1) * rexp (-2 * π * x * T')
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le' (g := fun _ ↦ 0) (h := h_decay) tendsto_const_nhds ?_ ?_ ?_
  · exact tendsto_T_plus_one_mul_exp_atTop_nhds_zero (by nlinarith [hx, Real.pi_pos]) ((b - a) * C)
  · exact Filter.Eventually.of_forall fun T' ↦ norm_nonneg _
  · exact (Filter.eventually_ge_atTop T_max).mono h_int_bound

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/ComplexAnalysis/CH2Part1/Variant7c1a2de3303b954b26dd55f872a3d2ae470ca7bf90b0f36e095a5958cdc14f48.lean#L3586).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9ef2608fe2b2171a00303ea2d042ad23b0efe93d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
