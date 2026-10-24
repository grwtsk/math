# weightedCorrelation_peano

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:eff8e257-7f6a-4683-a3fc-993ffd12d79b",
  "kind": "theorem",
  "lexical_name": "weightedCorrelation_peano",
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
  "slug": "weightedcorrelation-peano--16f2df943d212b9d6b1fcd06",
  "source": {
    "blob": "9461cf156075f8145ae9fb362c37e021f8ecdd59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 89,
    "line": 66,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualWeightedPeano/Variantbff37341ef8d53816cc4bfb894ddc2767edefac55fb858f3bd242ecfe2b73e31.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:16f2df943d212b9d6b1fcd062dcafa1f5baf366c01f592fa18e63ef7dc7d1a05",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualWeightedPeano/Variantbff37341ef8d53816cc4bfb894ddc2767edefac55fb858f3bd242ecfe2b73e31.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:eff8e257-7f6a-4683-a3fc-993ffd12d79b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 66–89.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem weightedCorrelation_peano (A v : ℝ) (hA : 1 ≤ A) :
    (∫ u in (0 : ℝ)..v, (v - u) * deriv (deriv (weightedCorrelation A)) u) =
      weightedCorrelation A v - 1 - v * (3 / 2) := by
  have hc := weightedCorrelation_contDiff_two A hA
  have hd : ContDiff ℝ 1 (deriv (weightedCorrelation A)) :=
    hc.deriv'
  have hi := intervalIntegral.integral_mul_deriv_eq_deriv_mul
    (a := (0 : ℝ)) (b := v)
    (u := fun u : ℝ ↦ v - u) (u' := fun _ ↦ (-1 : ℝ))
    (v := deriv (weightedCorrelation A)) (v' := deriv (deriv (weightedCorrelation A)))
    (fun u _ ↦ by
      convert (hasDerivAt_const u v).sub (hasDerivAt_id u) using 1 <;> first | rfl | simp)
    (fun u _ ↦ (hd.differentiable (by norm_num) u).hasDerivAt)
    (continuous_const.intervalIntegrable 0 v)
    ((hd.continuous_deriv (by norm_num)).intervalIntegrable 0 v)
  have hf := intervalIntegral.integral_deriv_eq_sub
    (fun u _ ↦ hc.differentiable (by norm_num) u)
    ((hc.continuous_deriv (by norm_num)).intervalIntegrable 0 v)
  simp only [sub_self, zero_mul, sub_zero, weightedCorrelation_deriv_zero A hA,
    neg_one_mul, intervalIntegral.integral_neg, hf, weightedCorrelation_zero A hA] at hi
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualWeightedPeano
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualWeightedPeano/Variantbff37341ef8d53816cc4bfb894ddc2767edefac55fb858f3bd242ecfe2b73e31.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualWeightedPeano/Variantbff37341ef8d53816cc4bfb894ddc2767edefac55fb858f3bd242ecfe2b73e31.lean#L66).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9461cf156075f8145ae9fb362c37e021f8ecdd59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
