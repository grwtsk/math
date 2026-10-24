# integral_mul_norm_le_Lp_mul_Lq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ffef985a-9942-a951-246c-daf50a0117e4",
  "kind": "theorem",
  "lexical_name": "integral_mul_norm_le_Lp_mul_Lq",
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
  "slug": "integral-mul-norm-le-lp-mul-lq--fba72162cf88f7fb082ef991",
  "source": {
    "blob": "c106e503fa9c417660c266949e0ac67b7dc6f042",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1771,
    "line": 1723,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fba72162cf88f7fb082ef99180d3cccb8965f3b5147970be6cca18e9a6108203",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ffef985a-9942-a951-246c-daf50a0117e4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1723–1771.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_mul_norm_le_Lp_mul_Lq {E} [NormedAddCommGroup E] {f g : α → E} {p q : ℝ}
    (hpq : p.IsConjugateExponent q) (hf : Memℒp f (ENNReal.ofReal p) μ)
    (hg : Memℒp g (ENNReal.ofReal q) μ) :
    ∫ a, ‖f a‖ * ‖g a‖ ∂μ ≤ (∫ a, ‖f a‖ ^ p ∂μ) ^ (1 / p) * (∫ a, ‖g a‖ ^ q ∂μ) ^ (1 / q) := by
  -- translate the Bochner integrals into Lebesgue integrals.
  rw [integral_eq_lintegral_of_nonneg_ae, integral_eq_lintegral_of_nonneg_ae,
    integral_eq_lintegral_of_nonneg_ae]
  rotate_left
  · exact eventually_of_forall fun x => Real.rpow_nonneg_of_nonneg (norm_nonneg _) _
  · exact (hg.1.norm.aemeasurable.pow aemeasurable_const).aestronglyMeasurable
  · exact eventually_of_forall fun x => Real.rpow_nonneg_of_nonneg (norm_nonneg _) _
  · exact (hf.1.norm.aemeasurable.pow aemeasurable_const).aestronglyMeasurable
  · exact eventually_of_forall fun x => mul_nonneg (norm_nonneg _) (norm_nonneg _)
  · exact hf.1.norm.mul hg.1.norm
  rw [ENNReal.toReal_rpow, ENNReal.toReal_rpow, ← ENNReal.toReal_mul]
  -- replace norms by nnnorm
  have h_left : ∫⁻ a, ENNReal.ofReal (‖f a‖ * ‖g a‖) ∂μ =
      ∫⁻ a, ((fun x => (‖f x‖₊ : ℝ≥0∞)) * fun x => (‖g x‖₊ : ℝ≥0∞)) a ∂μ := by
    simp_rw [Pi.mul_apply, ← ofReal_norm_eq_coe_nnnorm, ENNReal.ofReal_mul (norm_nonneg _)]
  have h_right_f : ∫⁻ a, ENNReal.ofReal (‖f a‖ ^ p) ∂μ = ∫⁻ a, (‖f a‖₊ : ℝ≥0∞) ^ p ∂μ := by
    refine' lintegral_congr fun x => _
    rw [← ofReal_norm_eq_coe_nnnorm, ENNReal.ofReal_rpow_of_nonneg (norm_nonneg _) hpq.nonneg]
  have h_right_g : ∫⁻ a, ENNReal.ofReal (‖g a‖ ^ q) ∂μ = ∫⁻ a, (‖g a‖₊ : ℝ≥0∞) ^ q ∂μ := by
    refine' lintegral_congr fun x => _
    rw [← ofReal_norm_eq_coe_nnnorm, ENNReal.ofReal_rpow_of_nonneg (norm_nonneg _) hpq.symm.nonneg]
  rw [h_left, h_right_f, h_right_g]
  -- we can now apply `ENNReal.lintegral_mul_le_Lp_mul_Lq` (up to the `toReal` application)
  refine' ENNReal.toReal_mono _ _
  · refine' ENNReal.mul_ne_top _ _
    · convert hf.snorm_ne_top
      rw [snorm_eq_lintegral_rpow_nnnorm]
      · rw [ENNReal.toReal_ofReal hpq.nonneg]
      · rw [Ne.def, ENNReal.ofReal_eq_zero, not_le]
        exact hpq.pos
      · exact ENNReal.coe_ne_top
    · convert hg.snorm_ne_top
      rw [snorm_eq_lintegral_rpow_nnnorm]
      · rw [ENNReal.toReal_ofReal hpq.symm.nonneg]
      · rw [Ne.def, ENNReal.ofReal_eq_zero, not_le]
        exact hpq.symm.pos
      · exact ENNReal.coe_ne_top
  · exact ENNReal.lintegral_mul_le_Lp_mul_Lq μ hpq hf.1.nnnorm.aemeasurable.coe_nnreal_ennreal
      hg.1.nnnorm.aemeasurable.coe_nnreal_ennreal
set_option linter.uppercaseLean3 false in
#align measure_theory.integral_mul_norm_le_Lp_mul_Lq MeasureTheory.integral_mul_norm_le_Lp_mul_Lq

/-- Hölder's inequality for functions `α → ℝ`. The integral of the product of two nonnegative
functions is bounded by the product of their `ℒp` and `ℒq` seminorms when `p` and `q` are conjugate
exponents. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Bochner/Variant4d5deacc74fce80bc05256c88a2351e8bdfd694bd3ff4efec4500cce1bac0156.lean#L1723).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c106e503fa9c417660c266949e0ac67b7dc6f042` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
