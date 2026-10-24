# actual_residual_primitive_reconstruction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:bbbbb5b6-b760-857f-afe0-768ee888da24",
  "kind": "theorem",
  "lexical_name": "actual_residual_primitive_reconstruction",
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
  "slug": "actual-residual-primitive-reconstruction--f6e9365f7455c7dc1940bca9",
  "source": {
    "blob": "2b2d94ef4752a1861b1fb7d72f1442110ea5a3d5",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 144,
    "line": 129,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variant8f70a648c99331824ca6ccd83143d8239990531a5f570d3f2a3253c9b8b7eb24.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f6e9365f7455c7dc1940bca9ca7ff15c3b201f6086498e22ffa58c26346532c0",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variant8f70a648c99331824ca6ccd83143d8239990531a5f570d3f2a3253c9b8b7eb24.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:bbbbb5b6-b760-857f-afe0-768ee888da24`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 129–144.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_residual_primitive_reconstruction (A : ℝ) (hA : 1 ≤ A) :
    mertensResidual A = criticalContinuousMoment A - Real.eulerMascheroniConstant +
      ∫ t in 0..2 * A, criticalPrimitive t * deriv (criticalKernel A) t := by
  have he := actual_signed_primitive_parts A hA
  have hd := criticalTest_deriv_integral A hA
  have hi := criticalMangoldtWork_intervalIntegrable A (by linarith)
  have hg : IntervalIntegrable (fun t => Real.eulerMascheroniConstant *
      deriv (criticalPrimeTest A) t) volume 0 (2 * A) :=
    ((criticalPrimeTest_contDiff A (by linarith)).continuous_deriv_one.intervalIntegrable
      0 (2 * A)).const_mul Real.eulerMascheroniConstant
  simp_rw [add_mul] at he
  rw [intervalIntegral.integral_add hi hg, intervalIntegral.integral_const_mul, hd] at he
  rw [mertensResidual_eq_continuous_sub_Mangoldt_work A hA]
  unfold criticalMangoldtWork at *
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variant8f70a648c99331824ca6ccd83143d8239990531a5f570d3f2a3253c9b8b7eb24.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ActualCriticalPrimitiveAttempt02/Variant8f70a648c99331824ca6ccd83143d8239990531a5f570d3f2a3253c9b8b7eb24.lean#L129).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2b2d94ef4752a1861b1fb7d72f1442110ea5a3d5` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
