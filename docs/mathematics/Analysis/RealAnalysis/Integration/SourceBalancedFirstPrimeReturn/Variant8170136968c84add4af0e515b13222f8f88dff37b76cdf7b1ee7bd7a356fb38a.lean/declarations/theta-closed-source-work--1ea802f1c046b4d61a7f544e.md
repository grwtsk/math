# theta_closed_source_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:cabe6e57-f493-6123-3865-1f798ca9150a",
  "kind": "theorem",
  "lexical_name": "theta_closed_source_work",
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
  "slug": "theta-closed-source-work--1ea802f1c046b4d61a7f544e",
  "source": {
    "blob": "0c85348bfe87fef25ff1e3d060a6dfb132d7ddab",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 57,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBalancedFirstPrimeReturn/Variant8170136968c84add4af0e515b13222f8f88dff37b76cdf7b1ee7bd7a356fb38a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1ea802f1c046b4d61a7f544efd16b8d32b8a28c1c768a5b9d8b05fe9c71640e4",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceBalancedFirstPrimeReturn/Variant8170136968c84add4af0e515b13222f8f88dff37b76cdf7b1ee7bd7a356fb38a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:cabe6e57-f493-6123-3865-1f798ca9150a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 57–91.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem theta_closed_source_work (A : ℝ) (hA : 0 < A) :
    (∫ t in 0..2 * A, Chebyshev.theta (Real.exp t) *
      deriv (exponentialTest (sourceCorrelation explicitSecondDerivative A)) t) =
        -firstPrimeMoment A := by
  let C := sourceCorrelation explicitSecondDerivative A
  let F := exponentialTest C
  have hF : ContDiff ℝ 1 F := exponentialTest_contDiff C (sourceCorrelation_contDiff A hA)
  have he := integral_finite_steps_deriv 0 (2 * A) (primeLogInventory (2 * A))
    (fun p => Real.log (p : ℝ)) (fun p => Real.log (p : ℝ))
    (fun p hp => primeLogInventory_log_bounds (2 * A) p hp) F hF
  have hsteps : (∫ t in 0..2 * A, Chebyshev.theta (Real.exp t) * deriv F t) =
      ∫ t in 0..2 * A, ∑ p ∈ primeLogInventory (2 * A), Real.log (p : ℝ) *
        (if Real.log (p : ℝ) ≤ t then deriv F t else 0) := by
    apply intervalIntegral.integral_congr
    intro t ht
    dsimp only
    rw [theta_exp_eq_steps (2 * A) t
      ((uIcc_of_le (by linarith : 0 ≤ 2 * A) ▸ ht).2), Finset.sum_mul]
    apply Finset.sum_congr rfl
    intro p _
    split_ifs <;> simp
  have hupper : F (2 * A) = 0 := by
    dsimp [F, C, exponentialTest]
    rw [sourceCorrelation_upper_endpoint A hA, mul_zero]
  rw [hsteps, he, hupper]
  unfold firstPrimeMoment
  rw [← Finset.sum_neg_distrib]
  apply Finset.sum_congr rfl
  intro p hp
  rw [ArithmeticFunction.vonMangoldt_apply_prime (Finset.mem_filter.mp hp).2]
  change Real.log (p : ℝ) * (0 - F (Real.log p)) =
    -(Real.log (p : ℝ) * F (Real.log p))
  ring

/-- The full critical exponential has its original unit value at zero. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceBalancedFirstPrimeReturn/Variant8170136968c84add4af0e515b13222f8f88dff37b76cdf7b1ee7bd7a356fb38a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceBalancedFirstPrimeReturn/Variant8170136968c84add4af0e515b13222f8f88dff37b76cdf7b1ee7bd7a356fb38a.lean#L57).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0c85348bfe87fef25ff1e3d060a6dfb132d7ddab` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
