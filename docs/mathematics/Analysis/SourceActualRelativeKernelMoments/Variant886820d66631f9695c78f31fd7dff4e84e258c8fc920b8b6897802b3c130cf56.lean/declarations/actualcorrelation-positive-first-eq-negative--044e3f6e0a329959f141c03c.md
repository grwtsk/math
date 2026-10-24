# actualCorrelation_positive_first_eq_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:8be602a4-59a4-8502-ce72-a6f9fa2d6398",
  "kind": "theorem",
  "lexical_name": "actualCorrelation_positive_first_eq_negative",
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
  "slug": "actualcorrelation-positive-first-eq-negative--044e3f6e0a329959f141c03c",
  "source": {
    "blob": "867e24a469667c2d2612e000c3a18f278bf8753f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 178,
    "line": 146,
    "path": "GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variant886820d66631f9695c78f31fd7dff4e84e258c8fc920b8b6897802b3c130cf56.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:044e3f6e0a329959f141c03c2ce783a07adcb837444c67ef1b986a5752605a2f",
  "verification": {
    "reference": "docs/verification/Analysis/SourceActualRelativeKernelMoments/Variant886820d66631f9695c78f31fd7dff4e84e258c8fc920b8b6897802b3c130cf56.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:8be602a4-59a4-8502-ce72-a6f9fa2d6398`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 146–178.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCorrelation_positive_first_eq_negative {A : ℝ} (hA : 1 ≤ A) :
    (∫ t in 0..2*A, t * Real.exp (t/2) *
      sourceCorrelation explicitSecondDerivative A t) =
      ∫ t in 0..2*A, t * Real.exp (-t/2) *
        sourceCorrelation explicitSecondDerivative A t := by
  let f : ℝ → ℝ := fun t => t * Real.exp (t/2) *
    sourceCorrelation explicitSecondDerivative A t
  have hc : Continuous f := by
    have hh := (sourceCorrelation_contDiff A (by linarith : 0<A)).continuous
    dsimp [f]
    fun_prop
  have href : (∫ t in -(2*A)..0, f t) =
      -(∫ t in 0..2*A, t * Real.exp (-t/2) *
        sourceCorrelation explicitSecondDerivative A t) := by
    rw [show (∫ t in -(2*A)..0, f t) = ∫ t in 0..2*A, f (-t) by
      simpa only [neg_zero] using
        (intervalIntegral.integral_comp_neg f (a:=0) (b:=2*A)).symm]
    rw [← intervalIntegral.integral_neg]
    apply intervalIntegral.integral_congr
    intro t _
    dsimp [f]
    rw [sourceCorrelation_even A t]
    ring
  have hs := intervalIntegral.integral_add_adjacent_intervals (μ:=volume)
    (hc.intervalIntegrable (-(2*A)) 0) (hc.intervalIntegrable 0 (2*A))
  have hz : (∫ t in -(2*A)..2*A, f t) = 0 := by
    rw [intervalIntegral.integral_of_le (by linarith : -(2*A) ≤ 2*A),
      ← integral_Icc_eq_integral_Ioc]
    exact actualCorrelation_closed_first_moment_zero hA
  rw [href, hz] at hs
  linarith

end FormalResearch.RiemannHypothesis.SourceActualRelativeKernelMoments
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../verification/Analysis/SourceActualRelativeKernelMoments/Variant886820d66631f9695c78f31fd7dff4e84e258c8fc920b8b6897802b3c130cf56.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variant886820d66631f9695c78f31fd7dff4e84e258c8fc920b8b6897802b3c130cf56.lean#L146).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `867e24a469667c2d2612e000c3a18f278bf8753f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
