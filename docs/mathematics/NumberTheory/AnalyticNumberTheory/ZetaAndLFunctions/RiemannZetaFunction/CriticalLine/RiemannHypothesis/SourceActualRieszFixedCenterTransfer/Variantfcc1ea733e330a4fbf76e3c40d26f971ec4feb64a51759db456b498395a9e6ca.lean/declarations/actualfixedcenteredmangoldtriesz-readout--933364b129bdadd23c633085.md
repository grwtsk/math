# actualFixedCenteredMangoldtRiesz_readout

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d3f28a27-7ec9-09a6-e83c-6e4cbf0dff8a",
  "kind": "theorem",
  "lexical_name": "actualFixedCenteredMangoldtRiesz_readout",
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
  "slug": "actualfixedcenteredmangoldtriesz-readout--933364b129bdadd23c633085",
  "source": {
    "blob": "dd5f6a04511562fae8214ac3ee9da49b83d248bc",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 70,
    "line": 40,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedCenterTransfer/Variantfcc1ea733e330a4fbf76e3c40d26f971ec4feb64a51759db456b498395a9e6ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:933364b129bdadd23c6330852eb4c5d8b7ef3692a28444c03a0856fdb26072c4",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedCenterTransfer/Variantfcc1ea733e330a4fbf76e3c40d26f971ec4feb64a51759db456b498395a9e6ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d3f28a27-7ec9-09a6-e83c-6e4cbf0dff8a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 40–70.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualFixedCenteredMangoldtRiesz_readout {A : ℝ} (hA : 1 ≤ A) (b : ℝ) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      actualFixedCenteredMangoldtRieszPrimitive b t) =
        mertensResidual A - archimedeanMultiplier 0 / 2 -
          (actualRieszLimitingLinearCenter - actualRieszLinearCenter A) := by
  have hp : 0 < A := by linarith
  let C'' := deriv (deriv (sourceCorrelation explicitSecondDerivative A))
  let δ := actualRieszLimitingLinearCenter - actualRieszLinearCenter A
  have hc : Continuous C'' := (sourceCorrelation_deriv_contDiff hp).continuous_deriv_one
  have hprofile : ContinuousOn (actualCenteredMangoldtRieszPrimitive A b) (Icc 0 (2 * A)) :=
    ((actualMangoldtRieszPrimitive_continuousOn (2 * A)).sub
      (continuous_const.mul continuous_id).continuousOn).sub continuous_const.continuousOn
  have hi : IntervalIntegrable
      (fun t => C'' t * actualCenteredMangoldtRieszPrimitive A b t) volume 0 (2 * A) := by
    apply ContinuousOn.intervalIntegrable
    rw [uIcc_of_le (by linarith : 0 ≤ 2 * A)]
    exact hc.continuousOn.mul hprofile
  have hlinear := ((continuous_id.mul hc).const_mul δ).intervalIntegrable 0 (2 * A)
  have he : (fun t => C'' t * actualFixedCenteredMangoldtRieszPrimitive b t) =
      fun t => C'' t * actualCenteredMangoldtRieszPrimitive A b t - δ * (t * C'' t) := by
    funext t
    unfold actualFixedCenteredMangoldtRieszPrimitive actualCenteredMangoldtRieszPrimitive
    dsimp only [δ]
    ring
  rw [he, intervalIntegral.integral_sub hi hlinear,
    intervalIntegral.integral_const_mul]
  have hm := (actualCorrelation_Riesz_curvature_moments hA).2
  rw [show (∫ t in 0..2 * A, t * C'' t) = 1 from hm, mul_one,
    actualCenteredMangoldtRiesz_readout hA b]

/-- One-sided source transfer retains the exact sign and the full quadratic price. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedCenterTransfer/Variantfcc1ea733e330a4fbf76e3c40d26f971ec4feb64a51759db456b498395a9e6ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualRieszFixedCenterTransfer/Variantfcc1ea733e330a4fbf76e3c40d26f971ec4feb64a51759db456b498395a9e6ca.lean#L40).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd5f6a04511562fae8214ac3ee9da49b83d248bc` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
