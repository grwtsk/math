# sourcePowerRemainder_all_positive_rates

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "8f3e346b8f58d93138cd1586562280b5538fb964",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 96,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/69/693b437e5f23cb523ecece65d21adedf18628cd8fd379ad4268f3cfb36ccf862.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7361a9fa-5928-abe6-b683-d6dceb52be7d",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:369982c4-b375-c62e-32e3-43aadf3269a5",
  "kind": "theorem",
  "lexical_name": "sourcePowerRemainder_all_positive_rates",
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
  "slug": "sourcepowerremainder-all-positive-rates--6ef852c53c810e0fe4112c0e",
  "source": {
    "blob": "8f3e346b8f58d93138cd1586562280b5538fb964",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 127,
    "line": 96,
    "path": "GRWTSK/Analysis/MeasureTheory/ProperPowerRemainderLaplaceAudit/Variant693b437e5f23cb523ecece65d21adedf18628cd8fd379ad4268f3cfb36ccf862.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6ef852c53c810e0fe4112c0ea8c9242fad86e765ee34e63606ddc653ee1fa664",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/ProperPowerRemainderLaplaceAudit/Variant693b437e5f23cb523ecece65d21adedf18628cd8fd379ad4268f3cfb36ccf862.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:369982c4-b375-c62e-32e3-43aadf3269a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 96–127.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourcePowerRemainder_all_positive_rates (σ : ℝ) (hσ : 0 < σ) :
    IntegrableOn (fun A => Real.exp (-σ * A) * A ^ 17 * sourceNormalization A *
      |sourcePowerRemainder A|) (Ioi 1) := by
  have hi : IntegrableOn (fun A : ℝ => A ^ 15 * Real.exp (-σ * A)) (Ioi 0) := by
    simpa only [Real.rpow_one] using
      ThetaErrorMoments.polynomial_stretched_integrable 15 σ 1 hσ (by norm_num)
  have hg : IntegrableOn (fun A : ℝ => (84 * properPowerBudget) *
      (A ^ 15 * Real.exp (-σ * A))) (Ioi 1) :=
    (hi.mono_set (Ioi_subset_Ioi (by norm_num : (0 : ℝ) ≤ 1))).const_mul _
  apply hg.mono' (weighted_sourcePowerRemainder_aestronglyMeasurable σ)
  filter_upwards [ae_restrict_mem measurableSet_Ioi] with A hA
  rw [Real.norm_eq_abs, abs_of_nonneg]
  · exact weighted_sourcePowerRemainder_bound σ A hA.le
  · exact mul_nonneg
      (mul_nonneg (mul_nonneg (Real.exp_pos _).le (pow_nonneg (zero_le_one.trans hA.le) _))
        (source_normalization_pos A hA.le).le) (abs_nonneg _)

end
end ProperPowerRemainderLaplaceScratch

#print ProperPowerRemainderLaplaceScratch.properPrimePowerContribution_measurable
#print axioms ProperPowerRemainderLaplaceScratch.properPrimePowerContribution_measurable
#print ProperPowerRemainderLaplaceScratch.sourcePowerRemainder_eq_finite_source
#print axioms ProperPowerRemainderLaplaceScratch.sourcePowerRemainder_eq_finite_source
#print ProperPowerRemainderLaplaceScratch.sourcePowerRemainder_aestronglyMeasurable
#print axioms ProperPowerRemainderLaplaceScratch.sourcePowerRemainder_aestronglyMeasurable
#print ProperPowerRemainderLaplaceScratch.weighted_sourcePowerRemainder_aestronglyMeasurable
#print axioms ProperPowerRemainderLaplaceScratch.weighted_sourcePowerRemainder_aestronglyMeasurable
#print ProperPowerRemainderLaplaceScratch.weighted_sourcePowerRemainder_bound
#print axioms ProperPowerRemainderLaplaceScratch.weighted_sourcePowerRemainder_bound
#print ProperPowerRemainderLaplaceScratch.sourcePowerRemainder_all_positive_rates
#print axioms ProperPowerRemainderLaplaceScratch.sourcePowerRemainder_all_positive_rates
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/ProperPowerRemainderLaplaceAudit/Variant693b437e5f23cb523ecece65d21adedf18628cd8fd379ad4268f3cfb36ccf862.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/ProperPowerRemainderLaplaceAudit/Variant693b437e5f23cb523ecece65d21adedf18628cd8fd379ad4268f3cfb36ccf862.lean#L96).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8f3e346b8f58d93138cd1586562280b5538fb964` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
