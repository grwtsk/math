# criticalPrimeTest_sub_one_eq_phase_prefix

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:28fae397-6181-6bd2-dac2-9e0879834c3b",
  "kind": "theorem",
  "lexical_name": "criticalPrimeTest_sub_one_eq_phase_prefix",
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
  "slug": "criticalprimetest-sub-one-eq-phase-prefix--e5e9f5e50f913a5e9f022d1f",
  "source": {
    "blob": "07d571efbf58b474a1f11c2211984d22facc619c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 45,
    "line": 32,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cycle14PhaseMassRegent/Variantd80badff27947bb5a573867c4068b6fb3559d0928e59b302fa70f13c1bc06ef0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e5e9f5e50f913a5e9f022d1ff711137050bbce2a47020a49d9ba1f8b6141b4c5",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cycle14PhaseMassRegent/Variantd80badff27947bb5a573867c4068b6fb3559d0928e59b302fa70f13c1bc06ef0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:28fae397-6181-6bd2-dac2-9e0879834c3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 32–45.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem criticalPrimeTest_sub_one_eq_phase_prefix {A : ℝ} (hA : 1 ≤ A) (u : ℝ) :
    criticalPrimeTest A u - 1 =
      (∫ t in 0..u, positiveSlope A t) - (∫ t in 0..u, negativeSlope A t) := by
  have hp : 0 < A := by linarith
  rw [← intervalIntegral.integral_sub
    ((positiveSlope_continuous hp).intervalIntegrable _ _)
    ((negativeSlope_continuous hp).intervalIntegrable _ _)]
  simp_rw [slope_difference]
  rw [intervalIntegral.integral_deriv_eq_sub
    (fun t _ => ((criticalPrimeTest_contDiff A hp).differentiable (by norm_num) t))
    ((criticalPrimeTest_contDiff A hp).continuous_deriv_one.intervalIntegrable _ _),
    criticalPrimeTest_at_zero A hA]

/-- Restricting the nonnegative positive phase to an initial subinterval loses no mass. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cycle14PhaseMassRegent/Variantd80badff27947bb5a573867c4068b6fb3559d0928e59b302fa70f13c1bc06ef0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Cycle14PhaseMassRegent/Variantd80badff27947bb5a573867c4068b6fb3559d0928e59b302fa70f13c1bc06ef0.lean#L32).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `07d571efbf58b474a1f11c2211984d22facc619c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
