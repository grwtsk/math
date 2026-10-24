# first_kernel_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e33407e9-7f64-584d-d853-b508065a0d26",
  "kind": "theorem",
  "lexical_name": "first_kernel_eq",
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
  "slug": "first-kernel-eq--1a5a3da11715cea2b88e255e",
  "source": {
    "blob": "e6b35ad32331c78b9a5fbb3c6a30075bf5887dc9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 207,
    "path": "GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variant0654c235fe43f024eb7d73289f4632b701be4636b7ef47cdfbc22a0f7ef00980.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1a5a3da11715cea2b88e255e92ec1fd5697dc48c53e039e09b2cb159a262eaae",
  "verification": {
    "reference": "docs/verification/Analysis/SourceActualRelativeKernelMoments/Variant0654c235fe43f024eb7d73289f4632b701be4636b7ef47cdfbc22a0f7ef00980.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e33407e9-7f64-584d-d853-b508065a0d26`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 207–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem first_kernel_eq {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in 0..2*A, t * baselineLogKernel A t) =
      criticalContinuousMoment A +
        ∫ t in 0..2*A, t * Real.exp (-t/2) *
          sourceCorrelation explicitSecondDerivative A t := by
  have hp : 0 < A := by linarith
  have hc := criticalPrimeTest_contDiff A hp
  have hd (t : ℝ) : HasDerivAt (fun t : ℝ => t * criticalPrimeTest A t)
      (criticalPrimeTest A t + t * deriv (criticalPrimeTest A) t) t := by
    convert (hasDerivAt_id t).mul ((hc.differentiable (by norm_num) t).hasDerivAt) using 1
    simp only [id_eq, one_mul]
  have hdi : IntervalIntegrable (fun t => criticalPrimeTest A t +
      t * deriv (criticalPrimeTest A) t) volume 0 (2*A) :=
    (hc.continuous.add (continuous_id.mul hc.continuous_deriv_one)).intervalIntegrable _ _
  have hftc := intervalIntegral.integral_eq_sub_of_hasDerivAt (fun t _ => hd t) hdi
  rw [criticalPrimeTest_at_upper A hp, mul_zero, zero_mul, sub_zero] at hftc
  have hbase : baselineLogKernel A = fun t => criticalPrimeTest A t -
      deriv (criticalPrimeTest A) t := by
    funext t
    rw [criticalPrimeTest_deriv A t hp]
    unfold baselineLogKernel criticalPrimeTest criticalWeight
    ring
  have hmul : (fun t => t * baselineLogKernel A t) =
      fun t => t * criticalPrimeTest A t -
        (criticalPrimeTest A t + t * deriv (criticalPrimeTest A) t) +
        criticalPrimeTest A t := by
    funext t
    rw [hbase]
    ring
  have hi1 : IntervalIntegrable (fun t => t * criticalPrimeTest A t)
      volume 0 (2*A) := (continuous_id.mul hc.continuous).intervalIntegrable _ _
  have hi0 : IntervalIntegrable (criticalPrimeTest A) volume 0 (2*A) :=
    hc.continuous.intervalIntegrable _ _
  rw [hmul, intervalIntegral.integral_add (hi1.sub hdi) hi0,
    intervalIntegral.integral_sub hi1 hdi, hftc, sub_zero]
  change (∫ t in 0..2*A, t * (Real.exp (t/2) *
    sourceCorrelation explicitSecondDerivative A t)) + criticalContinuousMoment A = _
  rw [show (fun t => t * (Real.exp (t/2) *
    sourceCorrelation explicitSecondDerivative A t)) =
      (fun t => t * Real.exp (t/2) *
        sourceCorrelation explicitSecondDerivative A t) by funext t; ring,
    actualCorrelation_positive_first_eq_negative hA]
  ring

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SourceActualRelativeKernelMoments/Variant0654c235fe43f024eb7d73289f4632b701be4636b7ef47cdfbc22a0f7ef00980.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variant0654c235fe43f024eb7d73289f4632b701be4636b7ef47cdfbc22a0f7ef00980.lean#L207).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e6b35ad32331c78b9a5fbb3c6a30075bf5887dc9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
