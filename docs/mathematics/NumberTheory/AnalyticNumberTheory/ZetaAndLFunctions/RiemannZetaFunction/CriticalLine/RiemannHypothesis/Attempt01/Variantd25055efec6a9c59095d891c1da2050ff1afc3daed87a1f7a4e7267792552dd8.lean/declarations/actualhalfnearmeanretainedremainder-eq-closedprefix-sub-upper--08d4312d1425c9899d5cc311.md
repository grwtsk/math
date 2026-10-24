# actualHalfNearMeanRetainedRemainder_eq_closedPrefix_sub_upper

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f3be616b-8a67-70ac-3f01-22a8dddcffe9",
  "kind": "theorem",
  "lexical_name": "actualHalfNearMeanRetainedRemainder_eq_closedPrefix_sub_upper",
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
  "slug": "actualhalfnearmeanretainedremainder-eq-closedprefix-sub-upper--08d4312d1425c9899d5cc311",
  "source": {
    "blob": "18f5618be3cdb7a72b12f2c4699258215702bba5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 219,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variantd25055efec6a9c59095d891c1da2050ff1afc3daed87a1f7a4e7267792552dd8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:08d4312d1425c9899d5cc311cbc92864dc3c0bf1669463aee20bae6ab9d5ab76",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variantd25055efec6a9c59095d891c1da2050ff1afc3daed87a1f7a4e7267792552dd8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f3be616b-8a67-70ac-3f01-22a8dddcffe9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 219–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfNearMeanRetainedRemainder_eq_closedPrefix_sub_upper {A : ℝ}
    (hA : 25600 ≤ A) :
    actualHalfNearMeanRetainedRemainder A =
      actualHalfNearClosedPrefixRetainedRemainder A - actualUpperPeriodMeanTrace A := by
  have hb := actualAdjustedColumnBoundaryTime_intervalIntegrable hA
  have hc := actualPeriodMeanTimeFactor_intervalIntegrable hA (actualColumnUpper A)
  have ha := actualPeriodMeanTimeFactor_intervalIntegrable hA
    (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ))
  have he : actualIntegratedMeanResolvedBoundary A =
      (∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
        actualAdjointTimePrimitive A 0 t * actualPeriodicAdjustedColumnBoundary A t) -
      actualUpperPeriodMeanTrace A + actualCenteredPrefixPeriodMean (vaughanCutoff A) *
        ∫ t in actualTimeLower A..Real.log (sourceKernelCutoff A : ℝ),
          actualAdjointTimePrimitive A 0 t * actualRetainedMeanSourcePrimitive A t
            (Real.log ((vaughanCutoff A + 1 : ℕ) : ℝ)) := by
    unfold actualIntegratedMeanResolvedBoundary actualMeanResolvedColumnBoundary
    simp_rw [mul_sub, mul_comm (actualAdjointTimePrimitive A 0 _) _, mul_sub]
    rw [intervalIntegral.integral_sub hb
      ((hc.sub ha).const_mul (actualCenteredPrefixPeriodMean (vaughanCutoff A))),
      intervalIntegral.integral_const_mul, intervalIntegral.integral_sub hc ha]
    unfold actualUpperPeriodMeanTrace
    ring
  have hn := actualHalfNearClosedPrefixWork_eq_periodic_add_mean hA
  unfold actualHalfNearMeanRetainedRemainder actualHalfNearMeanInterior
    actualHalfNearClosedPrefixRetainedRemainder
  rw [he]
  linarith

/-- Only the true upper mean is discarded by a proved exponentially decaying discrepancy. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variantd25055efec6a9c59095d891c1da2050ff1afc3daed87a1f7a4e7267792552dd8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt01/Variantd25055efec6a9c59095d891c1da2050ff1afc3daed87a1f7a4e7267792552dd8.lean#L219).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `18f5618be3cdb7a72b12f2c4699258215702bba5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
