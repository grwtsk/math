# lintegral_pow_le_pow_lintegral_fderiv_aux

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "7146d1d3bcc835725b3310445922e60c3b456c1d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 302,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/42/4216f4bdca902a6170998ad3841f168642d552a59f0d63dcd05b464dca1fced9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:68572357-1993-15eb-76ab-7dc3e1605633",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f6d6abc0-9119-b202-12e0-0ac574ea4fd7",
  "kind": "theorem",
  "lexical_name": "lintegral_pow_le_pow_lintegral_fderiv_aux",
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
  "slug": "lintegral-pow-le-pow-lintegral-fderiv-aux--fdf72950cba82536236e37a8",
  "source": {
    "blob": "7146d1d3bcc835725b3310445922e60c3b456c1d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 370,
    "line": 302,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variant4216f4bdca902a6170998ad3841f168642d552a59f0d63dcd05b464dca1fced9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fdf72950cba82536236e37a8bc074fb4c5520b0613d2f79672f99a7ac1ca3bae",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variant4216f4bdca902a6170998ad3841f168642d552a59f0d63dcd05b464dca1fced9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f6d6abc0-9119-b202-12e0-0ac574ea4fd7`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 302–370.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem lintegral_pow_le_pow_lintegral_fderiv_aux [Fintype ι]
    {p : ℝ} (hp : Real.HolderConjugate #ι p)
    {u : (ι → ℝ) → F} (hu : ContDiff ℝ 1 u)
    (h2u : HasCompactSupport u) :
    ∫⁻ x, ‖u x‖ₑ ^ p ≤ (∫⁻ x, ‖fderiv ℝ u x‖ₑ) ^ p := by
  classical
  /- For a function `f` in one variable and `t ∈ ℝ` we have
  `|f(t)| = `|∫_{-∞}^t Df(s)∂s| ≤ ∫_ℝ |Df(s)| ∂s` where we use the fundamental theorem of calculus.
  For each `x ∈ ℝⁿ` we let `u` vary in one of the `n` coordinates and apply the inequality above.
  By taking the product over these `n` factors, raising them to the power `(n-1)⁻¹` and integrating,
  we get the inequality `∫ |u| ^ (n/(n-1)) ≤ ∫ x, ∏ i, (∫ xᵢ, |Du(update x i xᵢ)|)^(n-1)⁻¹`.
  The result then follows from the grid-lines lemma. -/
  have : (1 : ℝ) ≤ ↑#ι - 1 := by
    have hι : (2 : ℝ) ≤ #ι := by exact_mod_cast hp.lt
    linarith
  calc ∫⁻ x, ‖u x‖ₑ ^ p
      = ∫⁻ x, (‖u x‖ₑ ^ (1 / (#ι - 1 : ℝ))) ^ (#ι : ℝ) := by
        -- a little algebraic manipulation of the exponent
        congr! 2 with x
        rw [← ENNReal.rpow_mul, hp.conjugate_eq]
        field_simp
    _ = ∫⁻ x, ∏ _i : ι, ‖u x‖ₑ ^ (1 / (#ι - 1 : ℝ)) := by
        -- express the left-hand integrand as a product of identical factors
        congr! 2 with x
        simp_rw [prod_const]
        norm_cast
    _ ≤ ∫⁻ x, ∏ i, (∫⁻ xᵢ, ‖fderiv ℝ u (update x i xᵢ)‖ₑ) ^ ((1 : ℝ) / (#ι - 1 : ℝ)) := ?_
    _ ≤ (∫⁻ x, ‖fderiv ℝ u x‖ₑ) ^ p := by
        -- apply the grid-lines lemma
        grw [volume_pi, ← lintegral_prod_lintegral_pow_le _ hp (by fun_prop)]
  -- we estimate |u x| using the fundamental theorem of calculus.
  gcongr with x i
  calc ‖u x‖ₑ
    _ ≤ ∫⁻ xᵢ in Iic (x i), ‖deriv (u ∘ update x i) xᵢ‖ₑ := by
        apply le_trans (by simp) (HasCompactSupport.enorm_le_lintegral_Ici_deriv _ _ _)
        · exact hu.comp (by convert! contDiff_update 1 x i)
        · exact h2u.comp_isClosedEmbedding (isClosedEmbedding_update x i)
    _ ≤ ∫⁻ xᵢ, ‖fderiv ℝ u (update x i xᵢ)‖ₑ := ?_
  gcongr with y
  · exact Measure.restrict_le_self
  -- bound the derivative which appears
  calc ‖deriv (u ∘ update x i) y‖ₑ = ‖fderiv ℝ u (update x i y) (deriv (update x i) y)‖ₑ := by
        rw [fderiv_comp_deriv _ (hu.differentiable one_ne_zero).differentiableAt
          (hasDerivAt_update x i y).differentiableAt]
    _ ≤ ‖fderiv ℝ u (update x i y)‖ₑ * ‖deriv (update x i) y‖ₑ := ContinuousLinearMap.le_opENorm _ _
    _ ≤ ‖fderiv ℝ u (update x i y)‖ₑ := by simp [deriv_update, Pi.enorm_single]

variable {E : Type*} [NormedAddCommGroup E] [NormedSpace ℝ E] [MeasurableSpace E] [BorelSpace E]
  [FiniteDimensional ℝ E] (μ : Measure E) [IsAddHaarMeasure μ]

open Module

/-- The constant factor occurring in the conclusion of `lintegral_pow_le_pow_lintegral_fderiv`.
It only depends on `E`, `μ` and `p`.
It is determined by the ratio of the measures on `E` and `ℝⁿ` and
the operator norm of a chosen equivalence `E ≃ ℝⁿ` (raised to suitable powers involving `p`). -/
irreducible_def lintegralPowLePowLIntegralFDerivConst (p : ℝ) : ℝ≥0 := by
  let ι := Fin (finrank ℝ E)
  have : finrank ℝ E = finrank ℝ (ι → ℝ) := by
    rw [finrank_fintype_fun_eq_card, Fintype.card_fin (finrank ℝ E)]
  let e : E ≃L[ℝ] ι → ℝ := ContinuousLinearEquiv.ofFinrankEq this
  let c := addHaarScalarFactor μ ((volume : Measure (ι → ℝ)).map e.symm)
  exact (c * ‖(e.symm : (ι → ℝ) →L[ℝ] E)‖₊ ^ p) * (c ^ p)⁻¹

/-- The **Gagliardo-Nirenberg-Sobolev inequality**.  Let `u` be a continuously differentiable
compactly-supported function `u` on a normed space `E` of finite dimension `n ≥ 2`, equipped
with Haar measure. Then the Lebesgue integral of the pointwise expression
`|u x| ^ (n / (n - 1))` is bounded above by a constant times the `n / (n - 1)`-th power of the
Lebesgue integral of the Fréchet derivative of `u`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variant4216f4bdca902a6170998ad3841f168642d552a59f0d63dcd05b464dca1fced9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SobolevInequality/Variant4216f4bdca902a6170998ad3841f168642d552a59f0d63dcd05b464dca1fced9.lean#L302).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7146d1d3bcc835725b3310445922e60c3b456c1d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
