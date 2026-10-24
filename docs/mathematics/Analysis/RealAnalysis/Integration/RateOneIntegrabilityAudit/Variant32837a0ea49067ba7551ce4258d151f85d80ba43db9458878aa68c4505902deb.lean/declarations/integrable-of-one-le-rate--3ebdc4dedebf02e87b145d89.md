# integrable_of_one_le_rate

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b37afe64e1e64ab71ae2534f87f79d38d0444ab5",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 177,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/32/32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:43e90de5-b0d7-c40a-729d-f4cd8806024a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3bba9a6a-c304-5974-ea9e-19c601ede404",
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
  "slug": "integrable-of-one-le-rate--3ebdc4dedebf02e87b145d89",
  "source": {
    "blob": "b37afe64e1e64ab71ae2534f87f79d38d0444ab5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 210,
    "line": 177,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3ebdc4dedebf02e87b145d89a85db7e644f9b4c66e5c89e020be74f0b81a904a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bba9a6a-c304-5974-ea9e-19c601ede404`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 177–210.

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

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/RateOneIntegrabilityAudit/Variant32837a0ea49067ba7551ce4258d151f85d80ba43db9458878aa68c4505902deb.lean#L177).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b37afe64e1e64ab71ae2534f87f79d38d0444ab5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
