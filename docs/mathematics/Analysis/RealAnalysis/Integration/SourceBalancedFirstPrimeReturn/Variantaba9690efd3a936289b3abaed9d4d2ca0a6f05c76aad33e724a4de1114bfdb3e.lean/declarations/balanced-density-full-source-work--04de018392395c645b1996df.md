# balanced_density_full_source_work

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e51719ef-3276-1db2-2d12-0d307984ea0f",
  "kind": "theorem",
  "lexical_name": "balanced_density_full_source_work",
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
  "slug": "balanced-density-full-source-work--04de018392395c645b1996df",
  "source": {
    "blob": "f0c84fc0166cb1f89de5974ac74bb1ca20c1ce08",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 183,
    "line": 150,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceBalancedFirstPrimeReturn/Variantaba9690efd3a936289b3abaed9d4d2ca0a6f05c76aad33e724a4de1114bfdb3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:04de018392395c645b1996dfac5527a48546ffac277f13e9ceaa988b76289449",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceBalancedFirstPrimeReturn/Variantaba9690efd3a936289b3abaed9d4d2ca0a6f05c76aad33e724a4de1114bfdb3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e51719ef-3276-1db2-2d12-0d307984ea0f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–183.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem balanced_density_full_source_work (A : ℝ) (hA : 1 ≤ A) :
    (∫ t in 0..2 * A, balancedFirstPrimeDensity t * minusCorrelationWeight A t) =
      criticalContinuousMoment A - firstPrimeMoment A - diagonalMainCoefficient A * A := by
  have hp : 0 < A := by linarith
  let C := sourceCorrelation explicitSecondDerivative A
  let F := exponentialTest C
  have hF := exponentialTest_contDiff C (sourceCorrelation_contDiff A hp)
  have htheta := theta_mul_deriv_integrable 0 (2 * A) (by linarith) F hF
  have he := ((by fun_prop : Continuous (fun t : ℝ => Real.exp (t / 2))).mul
    (minusCorrelationWeight_contDiff A hp).continuous).intervalIntegrable
      (μ := volume) 0 (2 * A)
  have hw := (minusCorrelationWeight_contDiff A hp).continuous.intervalIntegrable
    (μ := volume) 0 (2 * A)
  have hid : (∫ t in 0..2 * A, balancedFirstPrimeDensity t * minusCorrelationWeight A t) =
      (∫ t in 0..2 * A, Chebyshev.theta (Real.exp t) * deriv F t) -
        (∫ t in 0..2 * A, Real.exp (t / 2) * minusCorrelationWeight A t) +
          ∫ t in 0..2 * A, minusCorrelationWeight A t := by
    have hsub := intervalIntegral.integral_sub htheta he
    have hadd := intervalIntegral.integral_add (htheta.sub he) hw
    simp only [Pi.sub_apply, Pi.add_apply, Pi.mul_apply] at hsub hadd
    rw [← hsub, ← hadd]
    apply intervalIntegral.integral_congr
    intro t _
    dsimp only
    rw [balancedFirstPrimeDensity_eq]
    dsimp [F, C]
    rw [exponentialTest_deriv _ (sourceCorrelation_contDiff A hp) t]
    unfold minusCorrelationWeight
    ring
  rw [hid, theta_closed_source_work A hp, positive_exponential_weight_work A hA,
    minusCorrelationWeight_full_integral A hA]
  ring

end RH16BalancedFirstPrimeReturn
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceBalancedFirstPrimeReturn/Variantaba9690efd3a936289b3abaed9d4d2ca0a6f05c76aad33e724a4de1114bfdb3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceBalancedFirstPrimeReturn/Variantaba9690efd3a936289b3abaed9d4d2ca0a6f05c76aad33e724a4de1114bfdb3e.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f0c84fc0166cb1f89de5974ac74bb1ca20c1ce08` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
