# mellin_inversion

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "35e5e95105a6a7314570a93629a73db8d2e17988",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 90,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/c6/c6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6d40827b-4e5d-f3cf-4188-99b2dc57e873",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e94ee6f5-a77c-1abc-c6ce-8d99f843815e",
  "kind": "theorem",
  "lexical_name": "mellin_inversion",
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
  "slug": "mellin-inversion--499ef288b211f3a2b23a6046",
  "source": {
    "blob": "35e5e95105a6a7314570a93629a73db8d2e17988",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 122,
    "line": 90,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:499ef288b211f3a2b23a6046e97412f076a905938a8e401b4f713fc190fe8ca8",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e94ee6f5-a77c-1abc-c6ce-8d99f843815e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 90–122.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mellin_inversion (σ : ℝ) (f : ℝ → E) {x : ℝ} (hx : 0 < x) (hf : MellinConvergent f σ)
    (hFf : VerticalIntegrable (mellin f) σ) (hfx : ContinuousAt f x) :
    mellinInv σ (mellin f) x = f x := by
  let g := fun (u : ℝ) => Real.exp (-σ * u) • f (Real.exp (-u))
  replace hf : Integrable g := by
    rw [MellinConvergent, ← rexp_neg_image_aux, integrableOn_image_iff_integrableOn_abs_deriv_smul
      MeasurableSet.univ rexp_neg_deriv_aux rexp_neg_injOn_aux] at hf
    replace hf : Integrable fun (x : ℝ) ↦ cexp (-↑σ * ↑x) • f (rexp (-x)) := by
      simpa [rexp_cexp_aux] using hf
    norm_cast at hf
  replace hFf : Integrable (𝓕 g) := by
    have h2π : 2 * π ≠ 0 := by norm_num; exact pi_ne_zero
    have : Integrable (𝓕 (fun u ↦ rexp (-(σ * u)) • f (rexp (-u)))) := by
      simpa [mellin_eq_fourierIntegral, mul_div_cancel_right₀ _ h2π] using hFf.comp_mul_right' h2π
    simp_rw [neg_mul_eq_neg_mul] at this
    exact this
  replace hfx : ContinuousAt g (-Real.log x) := by
    refine ContinuousAt.smul (by fun_prop) (ContinuousAt.comp ?_ (by fun_prop))
    simpa [Real.exp_log hx] using hfx
  calc
    mellinInv σ (mellin f) x
      = mellinInv σ (fun s ↦ 𝓕 g (s.im / (2 * π))) x := by
      simp [g, mellinInv, mellin_eq_fourierIntegral]
    _ = (x : ℂ) ^ (-σ : ℂ) • g (-Real.log x) := by
      rw [mellinInv_eq_fourierIntegralInv _ _ hx, ← hf.fourier_inversion hFf hfx]
      simp [mul_div_cancel_left₀ _ (show 2 * π ≠ 0 by norm_num; exact pi_ne_zero)]
    _ = (x : ℂ) ^ (-σ : ℂ) • rexp (σ * Real.log x) • f (rexp (Real.log x)) := by simp [g]
    _ = f x := by
      norm_cast
      rw [mul_comm σ, ← rpow_def_of_pos hx, Real.exp_log hx, ← Complex.ofReal_cpow hx.le]
      norm_cast
      rw [← smul_assoc, smul_eq_mul, Real.rpow_neg hx.le,
        inv_mul_cancel₀ (ne_of_gt (rpow_pos_of_pos hx σ)), one_smul]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/MellinInversion/Variantc6301dacbf437116376d7e14f6a0b20e122d89b43b4c297e09aae2fa2dcf8562.lean#L90).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `35e5e95105a6a7314570a93629a73db8d2e17988` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
