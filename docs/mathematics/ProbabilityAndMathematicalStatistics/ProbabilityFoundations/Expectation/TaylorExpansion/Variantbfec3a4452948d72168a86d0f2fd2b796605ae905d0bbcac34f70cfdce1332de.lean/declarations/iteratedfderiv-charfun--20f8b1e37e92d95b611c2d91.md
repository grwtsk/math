# iteratedFDeriv_charFun

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "83160a39258640a390bb5d1979e904c5724aae32",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 71,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/bf/bfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:f378cf14-d7de-4559-f580-b607d08cff57",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e822f7ce-e711-a2c8-9aef-e61c4202cf93",
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
  "slug": "iteratedfderiv-charfun--20f8b1e37e92d95b611c2d91",
  "source": {
    "blob": "83160a39258640a390bb5d1979e904c5724aae32",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 104,
    "line": 71,
    "path": "GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20f8b1e37e92d95b611c2d910dcd7f3d168ffc9f5b2b7aadc542166a3137595b",
  "verification": {
    "reference": "docs/verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e822f7ce-e711-a2c8-9aef-e61c4202cf93`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 71–104.

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

[Verification target and public status](../../../../../../../verification/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/ProbabilityAndMathematicalStatistics/ProbabilityFoundations/Expectation/TaylorExpansion/Variantbfec3a4452948d72168a86d0f2fd2b796605ae905d0bbcac34f70cfdce1332de.lean#L71).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `83160a39258640a390bb5d1979e904c5724aae32` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
