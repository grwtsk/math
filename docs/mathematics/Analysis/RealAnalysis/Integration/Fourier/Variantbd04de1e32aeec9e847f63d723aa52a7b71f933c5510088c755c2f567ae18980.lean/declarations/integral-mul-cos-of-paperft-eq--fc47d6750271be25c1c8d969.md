# integral_mul_cos_of_paperFT_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea202566-efcb-5fab-6f37-489559334980",
  "kind": "theorem",
  "lexical_name": "integral_mul_cos_of_paperFT_eq",
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
  "slug": "integral-mul-cos-of-paperft-eq--fc47d6750271be25c1c8d969",
  "source": {
    "blob": "58cab2cabe3d30794ee6e204b4ff6fa1c45a683d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 286,
    "line": 229,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fc47d6750271be25c1c8d9695caa21c5e51bf0359fb15908c0f37b65bbaf569c",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea202566-efcb-5fab-6f37-489559334980`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 229–286.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_mul_cos_of_paperFT_eq {A G : ℝ → ℝ} (hA : Continuous A) (hAi : Integrable A)
    (hG : Integrable G) (hFT : ∀ r : ℝ, paperFT (fun u => (A u : ℂ)) r = (G r : ℂ)) (y : ℝ) :
    ∫ r, G r * Real.cos (r * y) = 2 * π * A y := by
  have hπ : (0 : ℝ) < 2 * π := by positivity
  set Ac : ℝ → ℂ := fun u => (A u : ℂ) with hAc
  have hF' : ∀ ξ : ℝ, 𝓕 Ac ξ = (G (-(2 * π) * ξ) : ℂ) := by
    intro ξ
    rw [fourier_eq_paperFT, ← hFT]
    congr 1
    push_cast
    ring
  have hF : 𝓕 Ac = fun ξ : ℝ => (G (-(2 * π) * ξ) : ℂ) := funext hF'
  have hFi : Integrable (𝓕 Ac) := by
    rw [hF]
    exact (hG.comp_mul_left' (by linarith : -(2 * π) ≠ 0)).ofReal
  have e1 : 𝓕⁻ (𝓕 Ac) y = Ac y :=
    hAi.ofReal.fourierInv_fourier_eq hFi (Complex.continuous_ofReal.comp hA).continuousAt
  set g : ℝ → ℂ := fun r => (G r : ℂ) * cexp ((-(y * r) : ℝ) * I) with hg
  have hgc : Continuous fun r : ℝ => cexp ((-(y * r) : ℝ) * I) := by fun_prop
  have hgi : Integrable g := by
    refine (hG.ofReal (𝕜 := ℂ)).norm.mono'
      ((hG.ofReal (𝕜 := ℂ)).aestronglyMeasurable.mul hgc.aestronglyMeasurable)
      (Eventually.of_forall fun r => ?_)
    simp only [hg, norm_mul, Complex.norm_exp_ofReal_mul_I, mul_one]
    exact le_rfl
  have e2 : 𝓕⁻ (𝓕 Ac) y = ∫ ξ, g (-(2 * π) * ξ) := by
    rw [fourierInv_eq_fourier_neg, fourier_eq_paperFT, paperFT_def]
    congr 1 with ξ
    rw [hF']
    simp only [hg]
    congr 2
    push_cast
    ring
  have e3 : (∫ r, g r).re = ∫ r, G r * Real.cos (r * y) := by
    rw [← integral_re_C hgi]
    congr 1 with r
    simp only [hg, Complex.re_ofReal_mul, Complex.exp_ofReal_mul_I_re, Real.cos_neg, mul_comm y r]
  have habs : |(-(2 * π))⁻¹| = (2 * π)⁻¹ := by
    rw [abs_inv, abs_neg, abs_of_pos hπ]
  have e2b : (∫ ξ, g (-(2 * π) * ξ)) = ((2 * π)⁻¹ : ℝ) • ∫ r, g r := by
    have := Measure.integral_comp_mul_left g (-(2 * π))
    rw [habs] at this
    exact this
  have e4 : A y = (2 * π)⁻¹ * ∫ r, G r * Real.cos (r * y) := by
    have := congrArg Complex.re (e1.symm.trans (e2.trans e2b))
    rw [Complex.smul_re, smul_eq_mul, e3] at this
    simpa [hAc] using this
  rw [e4, ← mul_assoc, mul_inv_cancel₀ hπ.ne', one_mul]

end Generic

/-! ## "`φ̂` and `Φ` are real, even, entire; …" (facts stated after [eq:PhigA]) -/

section PhigA
variable {ϱ : ℝ → ℝ} {L w : ℝ}

/-! #### auxiliary packaging of φ and φ² as inputs to the generic lemmas -/

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Fourier/Variantbd04de1e32aeec9e847f63d723aa52a7b71f933c5510088c755c2f567ae18980.lean#L229).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `58cab2cabe3d30794ee6e204b4ff6fa1c45a683d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
