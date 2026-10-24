# actualCenteredPrefixPeriodMean_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:6f281e44-6fe1-a08a-71db-09d4bed86499",
  "kind": "theorem",
  "lexical_name": "actualCenteredPrefixPeriodMean_abs_le",
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
  "slug": "actualcenteredprefixperiodmean-abs-le--b46b3c4ee8e4a34857226229",
  "source": {
    "blob": "29bd42b757465cf97b64d275dcb6059ba07f6a5e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 66,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCenteredPeriodMeanBudgetAttempt02/Variant7b11fa490e0991580806c1601da790a629f4b1f207892cf2865d1bbfc59be2f9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b46b3c4ee8e4a34857226229ecaf89bad1bcff792b654b9db2af16cb62ef290e",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCenteredPeriodMeanBudgetAttempt02/Variant7b11fa490e0991580806c1601da790a629f4b1f207892cf2865d1bbfc59be2f9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:6f281e44-6fe1-a08a-71db-09d4bed86499`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCenteredPrefixPeriodMean_abs_le (U : ℕ) (hU : 1 ≤ U) :
    |actualCenteredPrefixPeriodMean U| ≤ ((U : ℝ) - 1) / 2 := by
  have he := actual_closed_prefix_eq_period_mean U U hU le_rfl
  simp only [Finset.Ioc_self, Finset.sum_empty] at he
  have hn : actualCenteredPrefixPeriodMean U =
      -(∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * actualDivisorPeriodicResidual d U) := by
    linarith
  rw [hn, abs_neg]
  exact actual_signed_periodic_residual_abs_le U U hU

end
end FormalResearch.RiemannHypothesis.ActualCenteredPeriodMeanBudget
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCenteredPeriodMeanBudgetAttempt02/Variant7b11fa490e0991580806c1601da790a629f4b1f207892cf2865d1bbfc59be2f9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCenteredPeriodMeanBudgetAttempt02/Variant7b11fa490e0991580806c1601da790a629f4b1f207892cf2865d1bbfc59be2f9.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `29bd42b757465cf97b64d275dcb6059ba07f6a5e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
