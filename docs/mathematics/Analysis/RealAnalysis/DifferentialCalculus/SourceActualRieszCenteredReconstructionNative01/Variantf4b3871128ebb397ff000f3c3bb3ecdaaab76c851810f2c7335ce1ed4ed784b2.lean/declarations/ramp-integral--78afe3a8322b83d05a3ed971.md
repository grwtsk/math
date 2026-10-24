# ramp_integral

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:694f9548-4361-73b1-cc07-ebd6cb56e11d",
  "kind": "theorem",
  "lexical_name": "ramp_integral",
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
  "slug": "ramp-integral--78afe3a8322b83d05a3ed971",
  "source": {
    "blob": "4c1e1e98cc08544e0611bf70174cd1375ab04abb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 145,
    "line": 108,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variantf4b3871128ebb397ff000f3c3bb3ecdaaab76c851810f2c7335ce1ed4ed784b2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:78afe3a8322b83d05a3ed971553cd701e44e628fcb46f1a9a7a65573233dd634",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variantf4b3871128ebb397ff000f3c3bb3ecdaaab76c851810f2c7335ce1ed4ed784b2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:694f9548-4361-73b1-cc07-ebd6cb56e11d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–145.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem ramp_integral {A a : ℝ} (hA : 0 < A) (ha : 0 ≤ a) (hab : a ≤ 2 * A) :
    (∫ t in 0..2 * A, deriv (deriv (sourceCorrelation explicitSecondDerivative A)) t *
      max 0 (t - a)) = sourceCorrelation explicitSecondDerivative A a := by
  let C := sourceCorrelation explicitSecondDerivative A
  have hC : ContDiff ℝ 1 C := sourceCorrelation_contDiff A hA
  have hC' : ContDiff ℝ 1 (deriv C) := sourceCorrelation_deriv_contDiff hA
  have hi : ∀ x y, IntervalIntegrable (fun t => deriv (deriv C) t * max 0 (t - a))
      volume x y := fun x y =>
    (hC'.continuous_deriv_one.mul (ramp_continuous a)).intervalIntegrable x y
  have hleft : (∫ t in 0..a, deriv (deriv C) t * max 0 (t - a)) = 0 := by
    apply intervalIntegral.integral_eq_zero_of_ae
    filter_upwards [] with t ht
    rw [uIoc_of_le ha] at ht
    rw [max_eq_left (by linarith [ht.2]), mul_zero]
  have hright : (∫ t in a..2 * A, deriv (deriv C) t * max 0 (t - a)) =
      ∫ t in a..2 * A, (t - a) * deriv (deriv C) t := by
    apply intervalIntegral.integral_congr
    intro t ht
    rw [uIcc_of_le hab] at ht
    rw [max_eq_right (by linarith [ht.1]), mul_comm]
  have hp := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (u := fun t : ℝ => t - a) (u' := fun _ => (1 : ℝ)) (v := deriv C)
    (v' := deriv (deriv C)) (fun t _ => (hasDerivAt_id t).sub_const a)
    (fun t _ => (hC'.differentiable (by norm_num) t).hasDerivAt)
    (continuous_const.intervalIntegrable a (2 * A))
    (hC'.continuous_deriv_one.intervalIntegrable a (2 * A))
  have hf := intervalIntegral.integral_eq_sub_of_hasDerivAt
    (fun t _ => (hC.differentiable (by norm_num) t).hasDerivAt)
    (hC'.continuous.intervalIntegrable a (2 * A))
  have hz : C (2 * A) = 0 := sourceCorrelation_eq_zero_of_two_mul_le_abs A _ hA
    (by rw [abs_of_nonneg (by linarith : 0 ≤ 2 * A)])
  have hz' : deriv C (2 * A) = 0 :=
    sourceCorrelation_deriv_zero_of_two_mul_le A _ hA le_rfl
  simp only [one_mul, sub_self, zero_mul, hz, hz', mul_zero, zero_sub] at hp hf
  rw [← intervalIntegral.integral_add_adjacent_intervals (hi 0 a) (hi a (2 * A)),
    hleft, hright, zero_add]
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variantf4b3871128ebb397ff000f3c3bb3ecdaaab76c851810f2c7335ce1ed4ed784b2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualRieszCenteredReconstructionNative01/Variantf4b3871128ebb397ff000f3c3bb3ecdaaab76c851810f2c7335ce1ed4ed784b2.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4c1e1e98cc08544e0611bf70174cd1375ab04abb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
