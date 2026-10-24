# iteratedFDeriv_charFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b1bf2bc2-e5e6-b262-bc09-6aff38af4d41",
  "kind": "theorem",
  "lexical_name": "iteratedFDeriv_charFun",
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
  "slug": "iteratedfderiv-charfun--f8b63cb6466c77740b9b10d7",
  "source": {
    "blob": "6de8d53bdfb87882b57f3602abeb4db89faaa449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 112,
    "line": 79,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f8b63cb6466c77740b9b10d7341265c6a7b01c0c78a3b7408033eb64e634c084",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b1bf2bc2-e5e6-b262-bc09-6aff38af4d41`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 79–112.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem iteratedFDeriv_charFun {n : ℕ} {t : E} (hint : MemLp id n μ) (x : Fin n → E) :
    iteratedFDeriv ℝ n (charFun μ) t x = I ^ n * ∫ y, (∏ i, ⟪y, x i⟫) * exp (⟪y, t⟫ * I) ∂μ := by
  have h : innerₗ E = (innerSL ℝ).toLinearMap₁₂ := rfl
  have hint' (k : ℕ) (hk : k ≤ (n : ℕ∞)) : Integrable (fun x ↦ ‖x‖ ^ k * ‖(1 : E → ℂ) x‖) μ := by
    simp only [Pi.one_apply, one_mem, CStarRing.norm_of_mem_unitary, mul_one]
    refine MemLp.integrable_norm_pow' (hint.mono_exponent (by simp_all))
  simp_rw [funext charFun_eq_fourierIntegral']
  rw [iteratedFDeriv_comp_const_smul]
  swap
  · rw [h]
    exact contDiff_fourierIntegral _ hint'
  simp only [mul_inv_rev, neg_smul]
  rw [h, iteratedFDeriv_fourierIntegral _ hint' (by fun_prop) le_rfl]
  simp only [smul_apply, real_smul, ofReal_pow, ofReal_neg, ofReal_mul, ofReal_inv, ofReal_ofNat,
    ofReal_prod]
  rw [fourierIntegral_continuousMultilinearMap_apply Real.continuous_fourierChar]
  swap;
  · exact integrable_fourierPowSMulRight _ (by simpa using hint.integrable_norm_pow') (by fun_prop)
  simp only [fourierIntegral, Real.fourierChar, Circle.coe_exp, ofReal_mul,
    ofReal_ofNat, innerSL, map_neg, map_smul, ContinuousLinearMap.toLinearMap₁₂_apply_apply_apply,
    LinearMap.mkContinuous₂_apply, innerₛₗ_apply_apply, smul_eq_mul, neg_neg, AddChar.coe_mk,
    ofReal_inv, fourierPowSMulRight_apply, Pi.ofNat_apply, real_smul, ofReal_prod, mul_one,
    Circle.smul_def]
  simp_rw [mul_left_comm (exp _), integral_const_mul, ← mul_assoc, ← mul_pow]
  field_simp
  congr with
  ring

end InnerProductSpace

section Real

variable {μ : Measure ℝ} [IsFiniteMeasure μ]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variant47ae9c5573076ca795c5e25d00b6b874decb298ff75c3399385e3206c74cd6dd.lean#L79).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6de8d53bdfb87882b57f3602abeb4db89faaa449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
