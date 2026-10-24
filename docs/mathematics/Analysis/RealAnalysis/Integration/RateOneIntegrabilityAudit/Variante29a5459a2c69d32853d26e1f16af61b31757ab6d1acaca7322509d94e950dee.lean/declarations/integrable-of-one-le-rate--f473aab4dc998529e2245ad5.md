# integrable_of_one_le_rate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e9e8067f-a60a-98ac-510c-63d3fcafe951",
  "kind": "theorem",
  "lexical_name": "integrable_of_one_le_rate",
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
  "slug": "integrable-of-one-le-rate--f473aab4dc998529e2245ad5",
  "source": {
    "blob": "81de89f0d4194592c7caa38db3ee8f6844d69538",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 218,
    "line": 185,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f473aab4dc998529e2245ad57c91a53a480e42a7bb8d196d8f4e410e6cf39e36",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e9e8067f-a60a-98ac-510c-63d3fcafe951`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 185–218.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integrable_of_one_le_rate
    (h₁ : IntegrableOn (fun A : ℝ ↦ Real.exp (-A) * negativeSource A) (Ioi 1))
    (σ : ℝ) (hσ : 1 ≤ σ) :
    IntegrableOn (fun A : ℝ ↦ Real.exp (-σ * A) * negativeSource A) (Ioi 1) := by
  apply h₁.mono' (weighted_negativeSource_aestronglyMeasurable σ)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with A hA
  rw [Real.norm_eq_abs, abs_of_nonneg
    (mul_nonneg (Real.exp_pos _).le (negativeSource_nonneg A hA.le))]
  apply mul_le_mul_of_nonneg_right _ (negativeSource_nonneg A hA.le)
  apply Real.exp_le_exp.mpr
  have hA0 : 0 ≤ A := (zero_lt_one.trans hA).le
  nlinarith

end
end RateOneIntegrabilityScratch

#print RateOneIntegrabilityScratch.rate_one_integrableOn_Ioc
#print axioms RateOneIntegrabilityScratch.rate_one_integrableOn_Ioc
#print RateOneIntegrabilityScratch.rate_one_integrable_of_eventual_majorant
#print axioms RateOneIntegrabilityScratch.rate_one_integrable_of_eventual_majorant
#print RateOneIntegrabilityScratch.polynomial_stretched_integrable
#print axioms RateOneIntegrabilityScratch.polynomial_stretched_integrable
#print RateOneIntegrabilityScratch.rate_one_majorant_integrable
#print axioms RateOneIntegrabilityScratch.rate_one_majorant_integrable
#print RateOneIntegrabilityScratch.rate_one_integrable_of_stretched_majorant
#print axioms RateOneIntegrabilityScratch.rate_one_integrable_of_stretched_majorant
#print RateOneIntegrabilityScratch.actual_scale_le
#print axioms RateOneIntegrabilityScratch.actual_scale_le
#print RateOneIntegrabilityScratch.weighted_negativeSource_le_of_pairing_bound
#print axioms RateOneIntegrabilityScratch.weighted_negativeSource_le_of_pairing_bound
#print RateOneIntegrabilityScratch.rate_one_integrable_of_pairing_bound
#print axioms RateOneIntegrabilityScratch.rate_one_integrable_of_pairing_bound
#print RateOneIntegrabilityScratch.integrable_of_one_le_rate
#print axioms RateOneIntegrabilityScratch.integrable_of_one_le_rate
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variante29a5459a2c69d32853d26e1f16af61b31757ab6d1acaca7322509d94e950dee.lean#L185).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `81de89f0d4194592c7caa38db3ee8f6844d69538` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
