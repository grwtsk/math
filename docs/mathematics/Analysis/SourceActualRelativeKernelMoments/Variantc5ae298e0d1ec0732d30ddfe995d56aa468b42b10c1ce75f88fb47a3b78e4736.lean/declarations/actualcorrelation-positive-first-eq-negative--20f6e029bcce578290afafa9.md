# actualCorrelation_positive_first_eq_negative

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:b3a71518-e6b7-b96f-d408-ce9bf375b7b4",
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
  "slug": "actualcorrelation-positive-first-eq-negative--20f6e029bcce578290afafa9",
  "source": {
    "blob": "dc10ad96c1220bb4dac8bf958ad9cd884576adeb",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 171,
    "line": 139,
    "path": "GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variantc5ae298e0d1ec0732d30ddfe995d56aa468b42b10c1ce75f88fb47a3b78e4736.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:20f6e029bcce578290afafa9d605c79a44009afd387b218d740d75371d4a605f",
  "verification": {
    "reference": "docs/verification/Analysis/SourceActualRelativeKernelMoments/Variantc5ae298e0d1ec0732d30ddfe995d56aa468b42b10c1ce75f88fb47a3b78e4736.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:b3a71518-e6b7-b96f-d408-ce9bf375b7b4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 139–171.

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
  have hs := intervalIntegral.integral_add_adjacent_intervals
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

[Verification target and public status](../../../../../verification/Analysis/SourceActualRelativeKernelMoments/Variantc5ae298e0d1ec0732d30ddfe995d56aa468b42b10c1ce75f88fb47a3b78e4736.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/SourceActualRelativeKernelMoments/Variantc5ae298e0d1ec0732d30ddfe995d56aa468b42b10c1ce75f88fb47a3b78e4736.lean#L139).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc10ad96c1220bb4dac8bf958ad9cd884576adeb` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
