# actual_centered_prefix_finite_abel_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:9b7f5165-b33b-42de-354d-3e34ac5f02a9",
  "kind": "theorem",
  "lexical_name": "actual_centered_prefix_finite_abel_abs_le",
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
  "slug": "actual-centered-prefix-finite-abel-abs-le--bb295f725641919504ad2081",
  "source": {
    "blob": "6b1d526c27f9670d8bed7acb22ba2c985d122dae",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 272,
    "line": 237,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant84a4460da6bcb0b581d91f6abe71896dc81a22a1af0a74a0e5d172488bd06ce5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bb295f725641919504ad208139390ab2f5963897117ab2235ae13ed5b5d9ff42",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant84a4460da6bcb0b581d91f6abe71896dc81a22a1af0a74a0e5d172488bd06ce5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:9b7f5165-b33b-42de-354d-3e34ac5f02a9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 237–272.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_centered_prefix_finite_abel_abs_le (U L H : ℕ) (hU : 1 ≤ U)
    (hUL : U ≤ L) (hLH : L ≤ H) (f : ℕ → ℝ) :
    |∑ M ∈ Finset.Ico L H,
      ((∑ n ∈ Finset.Ioc U M, centeredBeta U n) - actualCenteredPrefixPeriodMean U) *
        f (M + 1)| ≤
      ((U : ℝ) * ((U : ℝ) + 1) / 16) *
        (|f H| + |f L| + ∑ M ∈ Finset.Ico L H, |f (M + 1) - f M|) := by
  let C : ℝ := (U : ℝ) * ((U : ℝ) + 1) / 16
  rw [actual_centered_prefix_finite_abel U L H hU hUL hLH]
  have he (M : ℕ) : |actualSignedPeriodicPrimitive U M * f M| ≤ C * |f M| := by
    rw [abs_mul]
    exact mul_le_mul_of_nonneg_right (actualSignedPeriodicPrimitive_abs_le U M) (abs_nonneg _)
  have hsum : |∑ M ∈ Finset.Ico L H,
      actualSignedPeriodicPrimitive U M * (f (M + 1) - f M)| ≤
      C * ∑ M ∈ Finset.Ico L H, |f (M + 1) - f M| := by
    calc
      _ ≤ ∑ M ∈ Finset.Ico L H,
          |actualSignedPeriodicPrimitive U M * (f (M + 1) - f M)| :=
        Finset.abs_sum_le_sum_abs _ _
      _ ≤ ∑ M ∈ Finset.Ico L H, C * |f (M + 1) - f M| := by
        apply Finset.sum_le_sum
        intro M _
        rw [abs_mul]
        exact mul_le_mul_of_nonneg_right (actualSignedPeriodicPrimitive_abs_le U M)
          (abs_nonneg _)
      _ = _ := (Finset.mul_sum _ _ _).symm
  have h1 := abs_sub (actualSignedPeriodicPrimitive U H * f H)
    (actualSignedPeriodicPrimitive U L * f L)
  have h2 := abs_sub (actualSignedPeriodicPrimitive U H * f H -
    actualSignedPeriodicPrimitive U L * f L)
    (∑ M ∈ Finset.Ico L H, actualSignedPeriodicPrimitive U M * (f (M + 1) - f M))
  change _ ≤ C * _
  nlinarith [he H, he L]

end
end FormalResearch.RiemannHypothesis.SourceActualPeriodicColumnPrimitive
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant84a4460da6bcb0b581d91f6abe71896dc81a22a1af0a74a0e5d172488bd06ce5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Attempt03/Variant84a4460da6bcb0b581d91f6abe71896dc81a22a1af0a74a0e5d172488bd06ce5.lean#L237).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b1d526c27f9670d8bed7acb22ba2c985d122dae` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
