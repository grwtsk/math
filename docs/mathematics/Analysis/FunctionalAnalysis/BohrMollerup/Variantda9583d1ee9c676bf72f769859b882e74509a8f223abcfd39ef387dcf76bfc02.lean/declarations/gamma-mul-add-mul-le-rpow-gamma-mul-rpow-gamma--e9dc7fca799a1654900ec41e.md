# Gamma_mul_add_mul_le_rpow_Gamma_mul_rpow_Gamma

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bfdb7d3c3585c295f3b1919953b4ddae45190113",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 107,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/da/da9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:73a9e425-87ec-7eac-e206-19efb1c80780",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:91e4f7cc-2462-2fa9-25d0-2fbb08760960",
  "kind": "theorem",
  "lexical_name": "Gamma_mul_add_mul_le_rpow_Gamma_mul_rpow_Gamma",
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
  "slug": "gamma-mul-add-mul-le-rpow-gamma-mul-rpow-gamma--e9dc7fca799a1654900ec41e",
  "source": {
    "blob": "bfdb7d3c3585c295f3b1919953b4ddae45190113",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 107,
    "path": "GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e9dc7fca799a1654900ec41e78bc56e9c002e5bf1cd495221bf327a8100216bf",
  "verification": {
    "reference": "docs/verification/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:91e4f7cc-2462-2fa9-25d0-2fbb08760960`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 107–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Gamma_mul_add_mul_le_rpow_Gamma_mul_rpow_Gamma {s t a b : ℝ} (hs : 0 < s) (ht : 0 < t)
    (ha : 0 < a) (hb : 0 < b) (hab : a + b = 1) :
    Gamma (a * s + b * t) ≤ Gamma s ^ a * Gamma t ^ b := by
  -- We will apply Hölder's inequality, for the conjugate exponents `p = 1 / a`
  -- and `q = 1 / b`, to the functions `f a s` and `f b t`, where `f` is as follows:
  let f : ℝ → ℝ → ℝ → ℝ := fun c u x => exp (-c * x) * x ^ (c * (u - 1))
  have e : IsConjugateExponent (1 / a) (1 / b) := Real.isConjugateExponent_one_div ha hb hab
  have hab' : b = 1 - a := by linarith
  have hst : 0 < a * s + b * t := add_pos (mul_pos ha hs) (mul_pos hb ht)
  -- some properties of f:
  have posf : ∀ c u x : ℝ, x ∈ Ioi (0 : ℝ) → 0 ≤ f c u x := fun c u x hx =>
    mul_nonneg (exp_pos _).le (rpow_pos_of_pos hx _).le
  have posf' : ∀ c u : ℝ, ∀ᵐ x : ℝ ∂volume.restrict (Ioi 0), 0 ≤ f c u x := fun c u =>
    (ae_restrict_iff' measurableSet_Ioi).mpr (ae_of_all _ (posf c u))
  have fpow :
    ∀ {c x : ℝ} (_ : 0 < c) (u : ℝ) (_ : 0 < x), exp (-x) * x ^ (u - 1) = f c u x ^ (1 / c) := by
    intro c x hc u hx
    dsimp only
    rw [mul_rpow (exp_pos _).le ((rpow_nonneg_of_nonneg hx.le) _), ← exp_mul, ← rpow_mul hx.le]
    congr 2 <;> · field_simp [hc.ne']; ring
  -- show `f c u` is in `ℒp` for `p = 1/c`:
  have f_mem_Lp :
    ∀ {c u : ℝ} (hc : 0 < c) (hu : 0 < u),
      Memℒp (f c u) (ENNReal.ofReal (1 / c)) (volume.restrict (Ioi 0)) := by
    intro c u hc hu
    have A : ENNReal.ofReal (1 / c) ≠ 0 := by
      rwa [Ne.def, ENNReal.ofReal_eq_zero, not_le, one_div_pos]
    have B : ENNReal.ofReal (1 / c) ≠ ∞ := ENNReal.ofReal_ne_top
    rw [← memℒp_norm_rpow_iff _ A B, ENNReal.toReal_ofReal (one_div_nonneg.mpr hc.le),
      ENNReal.div_self A B, memℒp_one_iff_integrable]
    · apply Integrable.congr (GammaIntegral_convergent hu)
      refine' eventuallyEq_of_mem (self_mem_ae_restrict measurableSet_Ioi) fun x hx => _
      dsimp only
      rw [fpow hc u hx]
      congr 1
      exact (norm_of_nonneg (posf _ _ x hx)).symm
    · refine' ContinuousOn.aestronglyMeasurable _ measurableSet_Ioi
      refine' (Continuous.continuousOn _).mul (ContinuousAt.continuousOn fun x hx => _)
      · exact continuous_exp.comp (continuous_const.mul continuous_id')
      · exact continuousAt_rpow_const _ _ (Or.inl (mem_Ioi.mp hx).ne')
  -- now apply Hölder:
  rw [Gamma_eq_integral hs, Gamma_eq_integral ht, Gamma_eq_integral hst]
  convert
    MeasureTheory.integral_mul_le_Lp_mul_Lq_of_nonneg e (posf' a s) (posf' b t) (f_mem_Lp ha hs)
      (f_mem_Lp hb ht) using
    1
  · refine' set_integral_congr measurableSet_Ioi fun x hx => _
    dsimp only
    have A : exp (-x) = exp (-a * x) * exp (-b * x) := by
      rw [← exp_add, ← add_mul, ← neg_add, hab, neg_one_mul]
    have B : x ^ (a * s + b * t - 1) = x ^ (a * (s - 1)) * x ^ (b * (t - 1)) := by
      rw [← rpow_add hx, hab']; congr 1; ring
    rw [A, B]
    ring
  · rw [one_div_one_div, one_div_one_div]
    congr 2 <;> exact set_integral_congr measurableSet_Ioi fun x hx => fpow (by assumption) _ hx
#align real.Gamma_mul_add_mul_le_rpow_Gamma_mul_rpow_Gamma Real.Gamma_mul_add_mul_le_rpow_Gamma_mul_rpow_Gamma

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/FunctionalAnalysis/BohrMollerup/Variantda9583d1ee9c676bf72f769859b882e74509a8f223abcfd39ef387dcf76bfc02.lean#L107).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfdb7d3c3585c295f3b1919953b4ddae45190113` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
