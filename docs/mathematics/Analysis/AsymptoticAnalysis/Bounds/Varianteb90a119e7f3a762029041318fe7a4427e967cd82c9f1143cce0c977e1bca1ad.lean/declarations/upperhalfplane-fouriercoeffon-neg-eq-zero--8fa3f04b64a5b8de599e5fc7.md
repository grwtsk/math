# UpperHalfPlane.fourierCoeffOn_neg_eq_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "cbbbfa79dea632b1ec883c05050e549f0ac423d9",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 247,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/eb/eb90a119e7f3a762029041318fe7a4427e967cd82c9f1143cce0c977e1bca1ad.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:2cac69c9-569f-0ea3-24f0-dc17ae94465a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ba577e66-55f7-bcb1-19f3-a9ea5ea150d1",
  "kind": "lemma",
  "lexical_name": "UpperHalfPlane.fourierCoeffOn_neg_eq_zero",
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
  "slug": "upperhalfplane-fouriercoeffon-neg-eq-zero--8fa3f04b64a5b8de599e5fc7",
  "source": {
    "blob": "cbbbfa79dea632b1ec883c05050e549f0ac423d9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 247,
    "path": "GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Varianteb90a119e7f3a762029041318fe7a4427e967cd82c9f1143cce0c977e1bca1ad.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8fa3f04b64a5b8de599e5fc77297fc9c372f9096d07eb96fd6397f85fd380bff",
  "verification": {
    "reference": "docs/verification/Analysis/AsymptoticAnalysis/Bounds/Varianteb90a119e7f3a762029041318fe7a4427e967cd82c9f1143cce0c977e1bca1ad.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ba577e66-55f7-bcb1-19f3-a9ea5ea150d1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 247–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma UpperHalfPlane.fourierCoeffOn_neg_eq_zero {f : ℍ → ℂ} {h : ℝ} (hh : 0 < h)
    (hfper : Function.Periodic (f ∘ ofComplex) h) (hfhol : MDiff f)
    (hfbdd : IsBoundedAtImInfty f) {y : ℝ} (hy : 0 < y) (n : ℕ) :
    fourierCoeffOn hh (fun x : ℝ ↦ f ⟨x + y * UpperHalfPlane.I, by simpa using hy⟩)
      (-(n + 1 : ℕ) : ℤ) = 0 := by
  -- Up to a constant, this is the constant term of the `q`-expansion of `g = 𝕢 ^ (n + 1) * f`,
  -- which vanishes since `g` tends to `0` at `I∞`.
  let g (τ : ℍ) := 𝕢 h τ ^ (n + 1) * f τ
  have hgper : Function.Periodic (g ∘ ofComplex) h := fun z ↦ by
    rcases le_or_gt z.im 0 with hz | hz
    · simp [g, ofComplex_apply_of_im_nonpos hz,
        ofComplex_apply_of_im_nonpos (by simpa using hz : (z + h).im ≤ 0)]
    · have := hfper z
      simp only [Function.comp_apply, ofComplex_apply_of_im_pos hz,
        ofComplex_apply_of_im_pos (by simpa using hz : 0 < (z + h).im), g, coe_mk] at this ⊢
      rw [this, Function.Periodic.qParam, Function.Periodic.qParam, mul_add, add_div,
        mul_div_cancel_right₀ _ (Complex.ofReal_ne_zero.mpr hh.ne'), Complex.exp_add,
        Complex.exp_two_pi_mul_I, mul_one]
  have hghol : MDiff g := ((Function.Periodic.differentiable_qParam.mdifferentiable.comp
    mdifferentiable_coe).pow _).mul hfhol
  have hgzero : IsZeroAtImInfty g :=
    (by simpa using (qParam_tendsto_atImInfty hh).pow (n + 1) :
      Tendsto (fun τ : ℍ ↦ 𝕢 h τ ^ (n + 1)) atImInfty (𝓝 0)).zero_mul_isBoundedUnder_le
      hfbdd.isBoundedUnder_le
  have h0 : (qExpansion h g).coeff 0 = 0 := by
    rw [qExpansion_coeff_zero hh (analyticAt_cuspFunction_zero hh hgper hghol
      hgzero.isBoundedAtImInfty) hgper, hgzero.valueAtInfty_eq_zero]
  have hint : ∫ u in 0..h, g (⟨u + y * I, by simpa using hy⟩) = 0 := by
    have := qExpansion_coeff_eq_intervalIntegral hh hgper hghol hgzero.isBoundedAtImInfty 0 hy
    simp only [h0, pow_zero, div_one, one_mul] at this
    rwa [eq_comm, mul_eq_zero_iff_left (by simpa using hh.ne')] at this
  have key (u : ℝ) : fourier (-(-(n + 1 : ℕ) : ℤ)) (u : AddCircle h) •
      f ⟨u + y * UpperHalfPlane.I, by simpa using hy⟩ =
        Real.exp (2 * π * (n + 1) * y / h) * g ⟨u + y * UpperHalfPlane.I, by simpa using hy⟩ := by
    simp only [g, neg_neg, fourier_coe_apply, smul_eq_mul, Function.Periodic.qParam,
      ← Complex.exp_nat_mul, Complex.ofReal_exp, ← mul_assoc, ← Complex.exp_add]
    congr 2
    push_cast
    grind [Complex.I_sq]
  rw [fourierCoeffOn_eq_integral, sub_zero]
  simp only [key, intervalIntegral.integral_const_mul, hint, mul_zero, smul_zero]

/-- **Parseval's identity** for the `q`-expansion: the sum of the squared norms of the
`q`-expansion coefficients, weighted by `exp (-4 * π * n * y / h)`, is the mean square of `f`
along the horizontal line `im τ = y`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/AsymptoticAnalysis/Bounds/Varianteb90a119e7f3a762029041318fe7a4427e967cd82c9f1143cce0c977e1bca1ad.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/AsymptoticAnalysis/Bounds/Varianteb90a119e7f3a762029041318fe7a4427e967cd82c9f1143cce0c977e1bca1ad.lean#L247).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cbbbfa79dea632b1ec883c05050e549f0ac423d9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
