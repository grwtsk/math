# actualGamma_second_derivative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:aa68e23c-64cf-c4fc-2c7f-2e42c1411634",
  "kind": "theorem",
  "lexical_name": "actualGamma_second_derivative",
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
  "slug": "actualgamma-second-derivative--736399d7afbc194ba0093c87",
  "source": {
    "blob": "27bb206ef9c9fe0867f26cac058b52d30f83a38b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 405,
    "line": 333,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:736399d7afbc194ba0093c87391abae1056e3acdf5d6b76c61c96c140501aa92",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:aa68e23c-64cf-c4fc-2c7f-2e42c1411634`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 333–405.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualGamma_second_derivative {x : ℝ} (hx : -2 < x) :
    IntegrableOn (fun t : ℝ ↦ t * Real.exp (-x * t) / (Real.exp (2 * t) - 1)) (Ioi 0) ∧
      HasDerivAt
        (deriv (fun y : ℝ ↦ Real.log (Real.Gamma (1 + y / 2)) +
          Real.eulerMascheroniConstant * y / 2))
        (∫ t : ℝ in Ioi 0, t * Real.exp (-x * t) / (Real.exp (2 * t) - 1)) x ∧
      deriv (deriv (fun y : ℝ ↦ Real.log (Real.Gamma (1 + y / 2)) +
        Real.eulerMascheroniConstant * y / 2)) x =
        ∑' n : ℕ, 1 / (x + 2 * ((n : ℝ) + 1)) ^ 2 ∧
      0 < deriv (deriv (fun y : ℝ ↦ Real.log (Real.Gamma (1 + y / 2)) +
        Real.eulerMascheroniConstant * y / 2)) x := by
  refine ⟨curvatureKernel_integrable hx, ?_, actualProfile_second_deriv hx, ?_⟩
  · change HasDerivAt (deriv P) (∫ t : ℝ in Ioi 0, curvatureKernel x t) x
    rw [← secondSeries_eq_curvatureIntegral hx]
    exact actualProfile_second_hasDerivAt hx
  · change 0 < deriv (deriv P) x
    rw [(actualProfile_second_hasDerivAt hx).deriv]
    exact secondSeries_pos hx

end ContinuousResearch.ActualGammaSecond

#check ContinuousResearch.ActualGammaSecond.pairedTerm_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.firstTerm_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.firstTerm_summable
#check ContinuousResearch.ActualGammaSecond.secondTerm_summable
#check ContinuousResearch.ActualGammaSecond.actualProfile_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.actualProfile_deriv
#check ContinuousResearch.ActualGammaSecond.firstSeries_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.actualProfile_second_hasDerivAt
#check ContinuousResearch.ActualGammaSecond.actualProfile_second_deriv
#check ContinuousResearch.ActualGammaSecond.secondTerm_nonneg
#check ContinuousResearch.ActualGammaSecond.exponential_firstMoment_integrable
#check ContinuousResearch.ActualGammaSecond.exponential_firstMoment_integral
#check ContinuousResearch.ActualGammaSecond.momentTerm_nonneg
#check ContinuousResearch.ActualGammaSecond.momentTerm_integrable
#check ContinuousResearch.ActualGammaSecond.momentTerm_integral
#check ContinuousResearch.ActualGammaSecond.momentTerm_hasSum
#check ContinuousResearch.ActualGammaSecond.curvatureKernel_continuousOn
#check ContinuousResearch.ActualGammaSecond.momentTerm_integral_norm
#check ContinuousResearch.ActualGammaSecond.momentTerm_integral_norm_summable
#check ContinuousResearch.ActualGammaSecond.momentTerm_lintegral_enorm_tsum_lt_top
#check ContinuousResearch.ActualGammaSecond.curvatureKernel_integrable
#check ContinuousResearch.ActualGammaSecond.secondSeries_eq_curvatureIntegral
#check ContinuousResearch.ActualGammaSecond.actualProfile_second_integral
#check ContinuousResearch.ActualGammaSecond.curvatureKernel_pos
#check ContinuousResearch.ActualGammaSecond.secondSeries_pos
#check ContinuousResearch.ActualGammaSecond.actualGamma_second_derivative
#print axioms ContinuousResearch.ActualGammaSecond.pairedTerm_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.firstTerm_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.firstTerm_summable
#print axioms ContinuousResearch.ActualGammaSecond.secondTerm_summable
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_deriv
#print axioms ContinuousResearch.ActualGammaSecond.firstSeries_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_second_hasDerivAt
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_second_deriv
#print axioms ContinuousResearch.ActualGammaSecond.secondTerm_nonneg
#print axioms ContinuousResearch.ActualGammaSecond.exponential_firstMoment_integrable
#print axioms ContinuousResearch.ActualGammaSecond.exponential_firstMoment_integral
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_nonneg
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_integrable
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_integral
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_hasSum
#print axioms ContinuousResearch.ActualGammaSecond.curvatureKernel_continuousOn
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_integral_norm
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_integral_norm_summable
#print axioms ContinuousResearch.ActualGammaSecond.momentTerm_lintegral_enorm_tsum_lt_top
#print axioms ContinuousResearch.ActualGammaSecond.curvatureKernel_integrable
#print axioms ContinuousResearch.ActualGammaSecond.secondSeries_eq_curvatureIntegral
#print axioms ContinuousResearch.ActualGammaSecond.actualProfile_second_integral
#print axioms ContinuousResearch.ActualGammaSecond.curvatureKernel_pos
#print axioms ContinuousResearch.ActualGammaSecond.secondSeries_pos
#print axioms ContinuousResearch.ActualGammaSecond.actualGamma_second_derivative
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceFinal/Variant68c9a5c6919cf7c7d90b36661191443f412d4d1b3a169cbc37e4a1a0e4651a42.lean#L333).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `27bb206ef9c9fe0867f26cac058b52d30f83a38b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
