# actual_second_Abel

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:3bed2fe0-c8de-cae2-4cca-557ae560d130",
  "kind": "theorem",
  "lexical_name": "actual_second_Abel",
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
  "slug": "actual-second-abel--bea39d77468682032439b4dd",
  "source": {
    "blob": "cfcd8c026d6b5d7ee500c050f36db8e835b246f2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 146,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bea39d77468682032439b4ddc7f0e659253668e89d26de54abb8ba794d14344d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3bed2fe0-c8de-cae2-4cca-557ae560d130`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_second_Abel {A : ℝ} (hA : 1 ≤ A) :
    criticalRemovedPairedWork A =
      ∫ u in 0..2*A, criticalDiscrepancyBridge A u*pairedTailCurvature A u := by
  have hp : 0 < A := by linarith
  have hga := criticalDiscrepancyBridge_absolutelyContinuous A
  have hda := pairedTailTest_deriv_absolutelyContinuous hA 0 (2*A)
  have hibp := hga.integral_mul_deriv_eq_deriv_mul hda
  rw [criticalDiscrepancyBridge_at_upper hp,criticalDiscrepancyBridge_at_zero,
    zero_mul,zero_mul,sub_self,zero_sub] at hibp
  have hae : (∫ u in 0..2*A,deriv (criticalDiscrepancyBridge A) u*
      deriv (pairedTailTest A) u) =
      ∫ u in 0..2*A,(criticalCumulativeDiscrepancy u-
        criticalDiscrepancyPrimitive (2*A)/(2*A))*deriv (pairedTailTest A) u := by
    apply intervalIntegral.integral_congr_ae
    filter_upwards [criticalDiscrepancyBridge_ae_hasDerivAt hp] with u hu hum
    rw [(hu (uIoc_subset_uIcc hum)).deriv]
  have hc := ((pairedTailTest_contDiff hA).continuous_deriv_one.intervalIntegrable
    (μ:=volume) 0 (2*A)).const_mul (criticalDiscrepancyPrimitive (2*A)/(2*A))
  simp_rw [sub_mul] at hae
  rw [intervalIntegral.integral_sub (actual_delta_pairing_intervalIntegrable hA) hc,
    intervalIntegral.integral_const_mul,pairedTailTest_deriv_integral_zero hA,
    mul_zero,sub_zero] at hae
  rw [hae] at hibp
  rw [actual_first_Abel hA]
  exact hibp.symm

end ContinuousResearch.ActualSecondAbel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/Attempt02/Variantf1b64ba14bd39d14bb2149125b72f2c01bb5f819d043ef3cea23cfc95168f170.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `cfcd8c026d6b5d7ee500c050f36db8e835b246f2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
