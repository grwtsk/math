# smoothPeano_pairing

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7091f5c0-8101-dec1-2385-78ef02a47de4",
  "kind": "theorem",
  "lexical_name": "smoothPeano_pairing",
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
  "slug": "smoothpeano-pairing--415fab52eefe4e023c18c989",
  "source": {
    "blob": "f42b7005cabdca208e10ecad7446edd3c4970519",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 345,
    "line": 308,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant941f3629a2cbe28b9bcd4f878feb452d8119e1aaace6e91b9908c80bc9ccbd27.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:415fab52eefe4e023c18c989cc67b9d3853b64ba48de0628b19d2be5f5a6c7f9",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant941f3629a2cbe28b9bcd4f878feb452d8119e1aaace6e91b9908c80bc9ccbd27.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7091f5c0-8101-dec1-2385-78ef02a47de4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 308–345.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem smoothPeano_pairing (A : ℝ) (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..(2 * A), Real.exp (-u) *
      deriv (deriv (weightedCorrelation A)) u) = continuousPoleHalf A - 5 / 2 := by
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) := hc.deriv'
  have hp (u : ℝ) : HasDerivAt (fun u : ℝ ↦ Real.exp (-u)) (-Real.exp (-u)) u := by
    convert (hasDerivAt_neg u).exp using 1
    simp
  have hi₁ := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := (0 : ℝ)) (b := 2 * A)
    (u := fun u : ℝ ↦ Real.exp (-u)) (u' := fun u ↦ -Real.exp (-u))
    (v := deriv (weightedCorrelation A)) (v' := deriv (deriv (weightedCorrelation A)))
    (fun u _ ↦ hp u) (fun u _ ↦ (hd.differentiable (by norm_num) u).hasDerivAt)
    ((by fun_prop : Continuous (fun u : ℝ ↦ -Real.exp (-u))).intervalIntegrable 0 (2 * A))
    ((hd.continuous_deriv (by norm_num)).intervalIntegrable 0 (2 * A))
  have hi₂ := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := (0 : ℝ)) (b := 2 * A)
    (u := fun u : ℝ ↦ Real.exp (-u)) (u' := fun u ↦ -Real.exp (-u))
    (v := weightedCorrelation A) (v' := deriv (weightedCorrelation A))
    (fun u _ ↦ hp u) (fun u _ ↦ (hc.differentiable (by norm_num) u).hasDerivAt)
    ((by fun_prop : Continuous (fun u : ℝ ↦ -Real.exp (-u))).intervalIntegrable 0 (2 * A))
    ((hc.continuous_deriv (by norm_num)).intervalIntegrable 0 (2 * A))
  have hP : (∫ u in (0 : ℝ)..(2 * A), Real.exp (-u) * weightedCorrelation A u) =
      continuousPoleHalf A := by
    rw [continuousPoleHalf_eq_interval A hA]
    apply intervalIntegral.integral_congr
    intro u _hu
    dsimp only [weightedCorrelation]
    rw [mul_comm (sourceCorrelation explicitSecondDerivative A u), ← mul_assoc,
      ← Real.exp_add, show -u + 3 * u / 2 = u / 2 by ring]
  simp only [weightedCorrelation_deriv_upper_zero A (2 * A) hA le_rfl,
    weightedCorrelation_deriv_zero A hA, neg_zero, Real.exp_zero, mul_zero, one_mul,
    neg_mul, intervalIntegral.integral_neg] at hi₁
  simp only [weightedCorrelation_upper_zero A (2 * A) hA le_rfl,
    weightedCorrelation_zero A hA, neg_zero, Real.exp_zero, mul_zero, one_mul,
    neg_mul, intervalIntegral.integral_neg, hP] at hi₂
  linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant941f3629a2cbe28b9bcd4f878feb452d8119e1aaace6e91b9908c80bc9ccbd27.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant941f3629a2cbe28b9bcd4f878feb452d8119e1aaace6e91b9908c80bc9ccbd27.lean#L308).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f42b7005cabdca208e10ecad7446edd3c4970519` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
