# mass_difference

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c202f8ef-542f-d1cf-189b-780cbad19959",
  "kind": "theorem",
  "lexical_name": "mass_difference",
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
  "slug": "mass-difference--199d56b9a58167190dd527bb",
  "source": {
    "blob": "b383b4031a194ebe8034dc7e43d8c2854e300615",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 123,
    "line": 113,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedPrimeWork/Variantee263513f18ab24220d32e8177fe090966790ae3abba05d22032d59a439f94de.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:199d56b9a58167190dd527bb3cf6ad8e7e2e6879acb1b6ebdf286c41bfe0649b",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedPrimeWork/Variantee263513f18ab24220d32e8177fe090966790ae3abba05d22032d59a439f94de.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c202f8ef-542f-d1cf-189b-780cbad19959`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 113–123.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mass_difference {A : ℝ} (hA : 1 ≤ A) : positiveMass A - negativeMass A = -1 := by
  have hp : 0 < A := by linarith
  rw [positiveMass, negativeMass, ← intervalIntegral.integral_sub
    (positiveSlope_intervalIntegrable hp) (negativeSlope_intervalIntegrable hp)]
  simp_rw [slope_difference]
  rw [intervalIntegral.integral_deriv_eq_sub
    (fun t _ => ((criticalPrimeTest_contDiff A hp).differentiable (by norm_num) t))
    ((criticalPrimeTest_contDiff A hp).continuous_deriv_one.intervalIntegrable _ _),
    criticalPrimeTest_at_upper A hp, criticalPrimeTest_at_zero A hA]
  norm_num

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedPrimeWork/Variantee263513f18ab24220d32e8177fe090966790ae3abba05d22032d59a439f94de.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourcePairedPrimeWork/Variantee263513f18ab24220d32e8177fe090966790ae3abba05d22032d59a439f94de.lean#L113).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b383b4031a194ebe8034dc7e43d8c2854e300615` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
