# weightedCorrelation_ibp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c650c11f-063b-5cd7-6faf-15d913041d79",
  "kind": "theorem",
  "lexical_name": "weightedCorrelation_ibp",
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
  "slug": "weightedcorrelation-ibp--63fe5935b641dddd27dda9ff",
  "source": {
    "blob": "fb15d3015bc3973237bc00a8567b42d30ac73c52",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 164,
    "line": 142,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant087d35313aba9094077668e246ff3563884a3936b507a8214fd03babc57b6c41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:63fe5935b641dddd27dda9ffc15c796037fc38977bbb1f6a39eecc090c030e9d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant087d35313aba9094077668e246ff3563884a3936b507a8214fd03babc57b6c41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c650c11f-063b-5cd7-6faf-15d913041d79`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 142–164.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private theorem weightedCorrelation_ibp (A v T : ℝ) (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..T, (v - u) * deriv (deriv (weightedCorrelation A)) u) =
      (v - T) * deriv (weightedCorrelation A) T - v * (3 / 2) +
        weightedCorrelation A T - 1 := by
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) := hc.deriv'
  have hi := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := (0 : ℝ)) (b := T)
    (u := fun u : ℝ ↦ v - u) (u' := fun _ ↦ (-1 : ℝ))
    (v := deriv (weightedCorrelation A)) (v' := deriv (deriv (weightedCorrelation A)))
    (fun u _ ↦ by
      convert (hasDerivAt_const u v).sub (hasDerivAt_id u) using 1 <;> first | rfl | simp)
    (fun u _ ↦ (hd.differentiable (by norm_num) u).hasDerivAt)
    (continuous_const.intervalIntegrable 0 T)
    ((hd.continuous_deriv (by norm_num)).intervalIntegrable 0 T)
  have hf := intervalIntegral.integral_deriv_eq_sub
    (fun u _ ↦ hc.differentiable (by norm_num) u)
    ((hc.continuous_deriv (by norm_num)).intervalIntegrable 0 T)
  simp only [sub_zero, weightedCorrelation_deriv_zero A hA,
    neg_one_mul, intervalIntegral.integral_neg, hf, weightedCorrelation_zero A hA] at hi
  linarith

/-- Full complementary atoms contribute their exact affine jets even past the source cutoff. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant087d35313aba9094077668e246ff3563884a3936b507a8214fd03babc57b6c41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceFullPeanoEnergy/Variant087d35313aba9094077668e246ff3563884a3936b507a8214fd03babc57b6c41.lean#L142).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fb15d3015bc3973237bc00a8567b42d30ac73c52` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
