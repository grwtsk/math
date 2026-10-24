# fiveKappaJet_sub_leading_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:20381e39-99ce-849e-4270-fd0b88baea7f",
  "kind": "theorem",
  "lexical_name": "fiveKappaJet_sub_leading_abs_le",
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
  "slug": "fivekappajet-sub-leading-abs-le--33f38fa9c34de0900d740f3d",
  "source": {
    "blob": "afa5cf46d2587327d09e4053f353f3af40964587",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 134,
    "line": 80,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variant4bc5dec8d5c6e96a69bc837fa2a2da2d3c95e21f1a32ad6041060079242819c6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:33f38fa9c34de0900d740f3deba9fba62821e0c6783407d4e778dea48fc0556f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variant4bc5dec8d5c6e96a69bc837fa2a2da2d3c95e21f1a32ad6041060079242819c6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:20381e39-99ce-849e-4270-fd0b88baea7f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–134.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fiveKappaJet_sub_leading_abs_le {A t T : ℝ} (hA : 91 ≤ A)
    (ht : 0 ≤ t) (htT : t ≤ T) :
    |correctedFourKappaJet A t - fullPositiveKappa 1| ≤ fiveKappaJetRowBudget A T := by
  have hT : 0 ≤ T := ht.trans htT
  have hC := actualCorrelation_sub_one_abs_le_five hA t
  have hD := actualCorrelation_first_abs_le_five hA t
  have hDD := RH16FiveCesaro.actualCorrelation_second_abs_le_five hA t
  have hDDD := actualCorrelation_third_abs_le hA t
  rw [abs_of_nonneg ht] at hD hDDD
  have hE : correctedFourKappaJet A t - fullPositiveKappa 1 =
      fullPositiveKappa 1 * (sourceCorrelation explicitSecondDerivative A t - 1) +
      fullPositiveKappa 2 * deriv (sourceCorrelation explicitSecondDerivative A) t +
      (fullPositiveKappa 3 / 2) *
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t +
      (fullPositiveKappa 4 / 6) *
        deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t := by
    rw [correctedFourKappaJet_eq_full_positive_jet]
    norm_num [Finset.sum_range_succ, iteratedDeriv_succ, iteratedDeriv_zero, Nat.factorial]
    ring
  rw [hE]
  calc
    _ ≤ |fullPositiveKappa 1| * |sourceCorrelation explicitSecondDerivative A t - 1| +
        |fullPositiveKappa 2| * |deriv (sourceCorrelation explicitSecondDerivative A) t| +
        (|fullPositiveKappa 3| / 2) *
          |deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t| +
        (|fullPositiveKappa 4| / 6) *
          |deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t| := by
      let a := fullPositiveKappa 1 * (sourceCorrelation explicitSecondDerivative A t - 1)
      let b := fullPositiveKappa 2 * deriv (sourceCorrelation explicitSecondDerivative A) t
      let c := (fullPositiveKappa 3 / 2) *
        deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t
      let d := (fullPositiveKappa 4 / 6) *
        deriv (deriv (deriv (sourceCorrelation explicitSecondDerivative A))) t
      have hs : |a + b + c + d| ≤ |a| + |b| + |c| + |d| := by
        linarith only [abs_add_le a b, abs_add_le (a + b) c, abs_add_le (a + b + c) d]
      simpa only [a, b, c, d, abs_mul, abs_div,
        abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 2),
        abs_of_nonneg (by norm_num : (0 : ℝ) ≤ 6)] using hs
    _ ≤ |fullPositiveKappa 1| * ((5 / 2 : ℝ) / A ^ 2 * T ^ 2) +
        |fullPositiveKappa 2| * (5 / A ^ 2 * T) +
        (|fullPositiveKappa 3| / 2) * (5 / A ^ 2) +
        (|fullPositiveKappa 4| / 6) * (67 / A ^ 4 * T) := by
      apply add_le_add
      · apply add_le_add
        · apply add_le_add
          · apply mul_le_mul_of_nonneg_left _ (abs_nonneg _)
            exact hC.trans (by gcongr)
          · apply mul_le_mul_of_nonneg_left _ (abs_nonneg _)
            exact hD.trans (by gcongr)
        · exact mul_le_mul_of_nonneg_left hDD (by positivity)
      · apply mul_le_mul_of_nonneg_left _ (by positivity)
        exact hDDD.trans (by gcongr)
    _ = _ := by unfold fiveKappaJetRowBudget; ring

/-- The actual row budget sums using the complete 1..U absolute mass, without a signed witness. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variant4bc5dec8d5c6e96a69bc837fa2a2da2d3c95e21f1a32ad6041060079242819c6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceFiveFullKappaShortReduction/Variant4bc5dec8d5c6e96a69bc837fa2a2da2d3c95e21f1a32ad6041060079242819c6.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `afa5cf46d2587327d09e4053f353f3af40964587` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
