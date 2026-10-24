# actual_signed_periodic_residual_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:783bee72-0162-40c9-7d96-25638eb141b9",
  "kind": "theorem",
  "lexical_name": "actual_signed_periodic_residual_abs_le",
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
  "slug": "actual-signed-periodic-residual-abs-le--9c9ce65c91ec8a26ba5369cd",
  "source": {
    "blob": "ef648289b9901cc2626e5eec83192916772ec3f0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 42,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCenteredPeriodMeanBudget/Variant7c10471390db18999ffdcf8c7a4b6997552c6984aae7e512676452d9222d555b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9c9ce65c91ec8a26ba5369cde20d2497e71e2b36a407fea14f921f528fb8c813",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCenteredPeriodMeanBudget/Variant7c10471390db18999ffdcf8c7a4b6997552c6984aae7e512676452d9222d555b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:783bee72-0162-40c9-7d96-25638eb141b9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–66.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_signed_periodic_residual_abs_le (U M : ℕ) (hU : 1 ≤ U) :
    |∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * actualDivisorPeriodicResidual d M| ≤
      ((U : ℝ) - 1) / 2 := by
  induction U, hU using Nat.le_induction with
  | base => norm_num [actualDivisorPeriodicResidual_one_zero]
  | succ U hU ih =>
    rw [Finset.sum_Icc_succ_top (by omega)]
    have hm : |(moebius (U + 1) : ℝ)| ≤ 1 := by
      exact_mod_cast (abs_moebius_le_one (n := U + 1))
    have hr : |actualDivisorPeriodicResidual (U + 1) M| ≤ (1 / 2 : ℝ) := by
      apply (actualDivisorPeriodicResidual_abs_le (U + 1) M (by omega)).trans
      apply (div_le_iff₀ (by positivity : 0 < 2 * ((U + 1 : ℕ) : ℝ))).2
      push_cast
      linarith
    have hb : |(moebius (U + 1) : ℝ) * actualDivisorPeriodicResidual (U + 1) M| ≤
        (1 / 2 : ℝ) := by
      rw [abs_mul]
      exact (mul_le_mul hm hr (abs_nonneg _) (by norm_num)).trans (by norm_num)
    have ha := abs_add_le
      (∑ d ∈ Finset.Icc 1 U, (moebius d : ℝ) * actualDivisorPeriodicResidual d M)
      ((moebius (U + 1) : ℝ) * actualDivisorPeriodicResidual (U + 1) M)
    push_cast
    linarith

/-- The actual retained mean has a growing cutoff bound, derived from its closed source prefix. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCenteredPeriodMeanBudget/Variant7c10471390db18999ffdcf8c7a4b6997552c6984aae7e512676452d9222d555b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ActualCenteredPeriodMeanBudget/Variant7c10471390db18999ffdcf8c7a4b6997552c6984aae7e512676452d9222d555b.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ef648289b9901cc2626e5eec83192916772ec3f0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
