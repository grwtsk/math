# correctedQuotient_norm_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "bf04c9d295c90427b76ef18c5de93a5ce7bcbb18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 175,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/98/986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:fb8fe738-c1df-151e-1e00-a3fc805c6ba0",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:0704e70f-29be-883e-e9b1-664aebb98ddc",
  "kind": "theorem",
  "lexical_name": "correctedQuotient_norm_le",
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
  "slug": "correctedquotient-norm-le--8e8abef6e4a2cbacc934ade4",
  "source": {
    "blob": "bf04c9d295c90427b76ef18c5de93a5ce7bcbb18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 228,
    "line": 175,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:8e8abef6e4a2cbacc934ade4c28f3d61a403d9fb2012ab6968d67641013e20a1",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0704e70f-29be-883e-e9b1-664aebb98ddc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 175–228.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correctedQuotient_norm_le (X : ℕ) (hX : 1 ≤ X) (w : ℂ) (hw : 0 ≤ w.re) :
    ‖correctedQuotient X w‖ ≤ 2 * Real.sqrt (X : ℝ) * (1 + Real.log (X : ℝ)) := by
  have hXr : (1 : ℝ) ≤ X := by exact_mod_cast hX
  have hC : 0 ≤ 1 + Real.log (X : ℝ) := by
    have := Real.log_nonneg hXr
    linarith
  rw [correctedQuotient_eq_integral, quotientIntegral]
  apply (norm_integral_le_integral_norm _).trans
  have hi : IntegrableOn (fun x : ℝ => (1 + Real.log (X : ℝ)) / Real.sqrt x)
      (Set.Ioc 1 (X : ℝ)) := by
    exact ((inverse_sqrt_integrable X).const_mul (1 + Real.log (X : ℝ))).congr
      (Eventually.of_forall (fun x => by simp only [div_eq_mul_inv]))
  calc
    (∫ x : ℝ in Set.Ioc 1 (X : ℝ), ‖(mobiusReciprocalSum ⌊x⌋₊ : ℂ) *
        Complex.exp ((1 / 2 - w) * (Real.log x : ℂ)) / (x : ℂ)‖) ≤
        ∫ x : ℝ in Set.Ioc 1 (X : ℝ), (1 + Real.log (X : ℝ)) / Real.sqrt x := by
      apply integral_mono_ae (quotient_integrand_integrable X w).norm hi
      filter_upwards [ae_restrict_mem measurableSet_Ioc] with x hx
      exact quotient_integrand_norm_le X w hw x hx
    _ = (1 + Real.log (X : ℝ)) * (2 * (Real.sqrt (X : ℝ) - 1)) := by
      simp only [div_eq_mul_inv, integral_const_mul, integral_inverse_sqrt X hX]
    _ ≤ _ := by nlinarith

end
end CorrectedQuotientBudgetScratch

set_option pp.universes true
set_option pp.proofs true
set_option pp.deepTerms true
set_option pp.maxSteps 10000000
#check @CorrectedQuotientBudgetScratch.quotientIntegral
#print CorrectedQuotientBudgetScratch.quotientIntegral
#print axioms CorrectedQuotientBudgetScratch.quotientIntegral
#check @CorrectedQuotientBudgetScratch.quotient_integrand_integrable
#print CorrectedQuotientBudgetScratch.quotient_integrand_integrable
#print axioms CorrectedQuotientBudgetScratch.quotient_integrand_integrable
#check @CorrectedQuotientBudgetScratch.quotientIntegral_continuous
#print CorrectedQuotientBudgetScratch.quotientIntegral_continuous
#print axioms CorrectedQuotientBudgetScratch.quotientIntegral_continuous
#check @CorrectedQuotientBudgetScratch.correctedQuotient_eq_integral
#print CorrectedQuotientBudgetScratch.correctedQuotient_eq_integral
#print axioms CorrectedQuotientBudgetScratch.correctedQuotient_eq_integral
#check @CorrectedQuotientBudgetScratch.mobiusReciprocalSum_abs_le_harmonic
#print CorrectedQuotientBudgetScratch.mobiusReciprocalSum_abs_le_harmonic
#print axioms CorrectedQuotientBudgetScratch.mobiusReciprocalSum_abs_le_harmonic
#check @CorrectedQuotientBudgetScratch.mobiusReciprocalSum_floor_abs_le
#print CorrectedQuotientBudgetScratch.mobiusReciprocalSum_floor_abs_le
#print axioms CorrectedQuotientBudgetScratch.mobiusReciprocalSum_floor_abs_le
#check @CorrectedQuotientBudgetScratch.quotient_integrand_norm_le
#print CorrectedQuotientBudgetScratch.quotient_integrand_norm_le
#print axioms CorrectedQuotientBudgetScratch.quotient_integrand_norm_le
#check @CorrectedQuotientBudgetScratch.correctedQuotient_norm_le
#print CorrectedQuotientBudgetScratch.correctedQuotient_norm_le
#print axioms CorrectedQuotientBudgetScratch.correctedQuotient_norm_le
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/QuotientBudgetFullAudit/Variant986795a4939c82d66137b94eb0088302288b8fc3b0c2293519c2c77b9ddc7c8b.lean#L175).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bf04c9d295c90427b76ef18c5de93a5ce7bcbb18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
