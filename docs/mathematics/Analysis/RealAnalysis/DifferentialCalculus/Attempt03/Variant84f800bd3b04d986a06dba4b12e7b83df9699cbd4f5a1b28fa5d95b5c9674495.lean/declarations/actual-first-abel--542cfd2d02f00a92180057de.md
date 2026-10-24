# actual_first_Abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:34e74f36-22a2-70b2-52c1-5769c31cf8fc",
  "kind": "theorem",
  "lexical_name": "actual_first_Abel",
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
  "slug": "actual-first-abel--542cfd2d02f00a92180057de",
  "source": {
    "blob": "8288a98a03cd9d4e660558e3fa0aa21c4f0fb4da",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 150,
    "line": 114,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant84f800bd3b04d986a06dba4b12e7b83df9699cbd4f5a1b28fa5d95b5c9674495.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:542cfd2d02f00a92180057de9d538a0755e8afeaf0f0a596413c3f2166791858",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant84f800bd3b04d986a06dba4b12e7b83df9699cbd4f5a1b28fa5d95b5c9674495.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:34e74f36-22a2-70b2-52c1-5769c31cf8fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 114–150.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_first_Abel {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      -(∫ u in 0..2*A, criticalCumulativeDiscrepancy u*
        deriv (pairedTailTest A) u) := by
  have hp : 0 < A := by linarith
  have hh : Continuous criticalDecay := by unfold criticalDecay;fun_prop
  let e : ℝ → ℝ := fun u => primeLogError u-criticalDecay u
  have he : IntervalIntegrable e volume 0 (2*A) :=
    (actualPrimeError_intervalIntegrable hp).sub (hh.intervalIntegrable _ _)
  have hip := he.mul_continuousOn (positiveSlope_continuous hp).continuousOn
  have hin := he.mul_continuousOn (negativeSlope_continuous hp).continuousOn
  have hid := he.mul_continuousOn (pairedTailTest_contDiff hA).continuous_deriv_one.continuousOn
  have hD := (pairedTailTest_contDiff hA).continuous_deriv_one.intervalIntegrable
    (μ:=volume) 0 (2*A)
  have hw : criticalRemovedPairedWork A =
      (∫ u in 0..2*A,e u*positiveSlope A u)-
        (positiveMass A/negativeMass A)*(∫ u in 0..2*A,e u*negativeSlope A u) := by
    unfold criticalRemovedPairedWork e
    ring
  have hw2 : criticalRemovedPairedWork A = -(∫ u in 0..2*A,e u*deriv (pairedTailTest A) u) := by
    rw [hw,←intervalIntegral.integral_const_mul,←intervalIntegral.integral_sub hip
      (hin.const_mul (positiveMass A/negativeMass A)),←intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr
    intro u _
    dsimp only
    rw [pairedTailTest_deriv hA]
    ring
  have hdelta : (fun u => criticalCumulativeDiscrepancy u*deriv (pairedTailTest A) u) =
      fun u => e u*deriv (pairedTailTest A) u+deriv (pairedTailTest A) u := by
    funext u
    rw [criticalCumulativeDiscrepancy_eq]
    dsimp [e]
    ring
  rw [hdelta,intervalIntegral.integral_add hid hD,pairedTailTest_deriv_integral_zero hA,
    add_zero]
  exact hw2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant84f800bd3b04d986a06dba4b12e7b83df9699cbd4f5a1b28fa5d95b5c9674495.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt03/Variant84f800bd3b04d986a06dba4b12e7b83df9699cbd4f5a1b28fa5d95b5c9674495.lean#L114).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8288a98a03cd9d4e660558e3fa0aa21c4f0fb4da` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
