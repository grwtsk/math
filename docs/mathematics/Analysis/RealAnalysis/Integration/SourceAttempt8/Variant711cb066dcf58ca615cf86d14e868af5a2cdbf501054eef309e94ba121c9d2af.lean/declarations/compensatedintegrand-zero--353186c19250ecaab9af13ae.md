# compensatedIntegrand_zero

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:dc849cbd-8b31-3307-7fd2-a86f79dda790",
  "kind": "theorem",
  "lexical_name": "compensatedIntegrand_zero",
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
  "slug": "compensatedintegrand-zero--353186c19250ecaab9af13ae",
  "source": {
    "blob": "0811e35b4194e501ea920b1a8a257adbe7b7df36",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 251,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:353186c19250ecaab9af13ae8db8c3535d3c8d3ba901c79c1dd70fbfe89cb62a",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:dc849cbd-8b31-3307-7fd2-a86f79dda790`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem compensatedIntegrand_zero (t : ℝ) : compensatedIntegrand 0 t = 0 := by
  simp [compensatedIntegrand]

end ContinuousResearch.CompensatedGammaIntegral

#check ContinuousResearch.CompensatedGammaIntegral.dividedDifference_bound
#check ContinuousResearch.CompensatedGammaIntegral.dividedDifference_integrable
#check ContinuousResearch.CompensatedGammaIntegral.dividedDifference_integral
#check ContinuousResearch.CompensatedGammaIntegral.physicalRate_pos
#check ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_nonneg
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_split
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integrable
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integral
#check ContinuousResearch.CompensatedGammaIntegral.exponential_kernel_hasSum
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_hasSum
#check ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_nonneg
#check ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_continuousOn
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integral_norm
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integral_norm_summable
#check ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_lintegral_enorm_tsum_lt_top
#check ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_integrable
#check ContinuousResearch.CompensatedGammaIntegral.actualGamma_eq_compensatedIntegral
#check ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_zero
#print axioms ContinuousResearch.CompensatedGammaIntegral.dividedDifference_bound
#print axioms ContinuousResearch.CompensatedGammaIntegral.dividedDifference_integrable
#print axioms ContinuousResearch.CompensatedGammaIntegral.dividedDifference_integral
#print axioms ContinuousResearch.CompensatedGammaIntegral.physicalRate_pos
#print axioms ContinuousResearch.CompensatedGammaIntegral.shifted_physicalRate_pos
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_nonneg
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_split
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integrable
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integral
#print axioms ContinuousResearch.CompensatedGammaIntegral.exponential_kernel_hasSum
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_hasSum
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_nonneg
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_continuousOn
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integral_norm
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_integral_norm_summable
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedTerm_lintegral_enorm_tsum_lt_top
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_integrable
#print axioms ContinuousResearch.CompensatedGammaIntegral.actualGamma_eq_compensatedIntegral
#print axioms ContinuousResearch.CompensatedGammaIntegral.compensatedIntegrand_zero
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceAttempt8/Variant711cb066dcf58ca615cf86d14e868af5a2cdbf501054eef309e94ba121c9d2af.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0811e35b4194e501ea920b1a8a257adbe7b7df36` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
