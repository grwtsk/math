# actualHalfConvolutionReturnTest_hasDerivAt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ea3e8e7a-0690-622e-6727-9a2e75d55b07",
  "kind": "theorem",
  "lexical_name": "actualHalfConvolutionReturnTest_hasDerivAt",
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
  "slug": "actualhalfconvolutionreturntest-hasderivat--3203ea644c536398b0106d4c",
  "source": {
    "blob": "eaa7bbf9a28c30bc3750dbab6c31448d059b76ef",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 110,
    "line": 93,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiErrorCriticalCovariance/Variant9fd68f91ca63fe39e1ecfd13cf7bfb8cc9c1b62d5c3881dc449e223ca7dc982a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3203ea644c536398b0106d4cb00c2385ea47ce9bef0bdc8227814435627c2d60",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiErrorCriticalCovariance/Variant9fd68f91ca63fe39e1ecfd13cf7bfb8cc9c1b62d5c3881dc449e223ca7dc982a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ea3e8e7a-0690-622e-6727-9a2e75d55b07`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 93–110.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualHalfConvolutionReturnTest_hasDerivAt {A : ℝ} (hA : 0 < A) (t : ℝ) :
    HasDerivAt (actualHalfConvolutionReturnTest A)
      ((1 / 2 : ℝ) * actualHalfConvolutionReturnTest A t + actualDampedXiReturnDensity A t) t := by
  have hc := actual_correlation_contDiff_four A hA
  have h2 : HasDerivAt (iteratedDeriv 2 (sourceCorrelation explicitSecondDerivative A))
      (iteratedDeriv 3 (sourceCorrelation explicitSecondDerivative A) t) t := by
    simpa only [iteratedDeriv_succ] using
      ((hc.differentiable_iteratedDeriv 2 (by norm_num)) t).hasDerivAt
  have h0 : HasDerivAt (sourceCorrelation explicitSecondDerivative A)
      (deriv (sourceCorrelation explicitSecondDerivative A) t) t :=
    (hc.differentiable (by norm_num) t).hasDerivAt
  have hd := (((hasDerivAt_id t).div_const (2 : ℝ)).exp).mul (h2.sub (h0.div_const 4))
  exact hd.congr_deriv (by
    unfold actualHalfConvolutionReturnTest actualDampedXiReturnDensity
    dsimp only [id_eq, Pi.sub_apply, Pi.add_apply]
    ring)

/-- The one test differentiates to itself plus the same original return density. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiErrorCriticalCovariance/Variant9fd68f91ca63fe39e1ecfd13cf7bfb8cc9c1b62d5c3881dc449e223ca7dc982a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/SourceActualXiErrorCriticalCovariance/Variant9fd68f91ca63fe39e1ecfd13cf7bfb8cc9c1b62d5c3881dc449e223ca7dc982a.lean#L93).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eaa7bbf9a28c30bc3750dbab6c31448d059b76ef` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
