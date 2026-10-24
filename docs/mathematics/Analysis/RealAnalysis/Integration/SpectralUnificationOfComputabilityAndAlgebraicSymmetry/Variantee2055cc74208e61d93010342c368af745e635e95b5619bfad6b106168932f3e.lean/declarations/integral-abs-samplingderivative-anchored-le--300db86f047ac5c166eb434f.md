# integral_abs_samplingDerivative_anchored_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f75a24f1-a354-c3f0-2bd9-fe19aa203ca8",
  "kind": "theorem",
  "lexical_name": "integral_abs_samplingDerivative_anchored_le",
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
  "slug": "integral-abs-samplingderivative-anchored-le--300db86f047ac5c166eb434f",
  "source": {
    "blob": "bfd3891d155ef0d1ec274c0d41b51fd96dce50e1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 172,
    "line": 157,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:300db86f047ac5c166eb434f4772f70ed6cb97885b147e0b9b63957ec1b7ddfa",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f75a24f1-a354-c3f0-2bd9-fe19aa203ca8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 157–172.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem integral_abs_samplingDerivative_anchored_le {F : ℝ → ℝ}
    (hF : ContDiff ℝ 1 F) {L s : ℝ} (hzero : F 0 = 0)
    (hL : 0 ≤ L) (hderiv : ∀ t, |deriv F t| ≤ L) (hs : 0 ≤ s) :
    (∫ u in Ioi (1 : ℝ), |logSamplingDerivative F (Real.exp s) u|) ≤
      Real.exp (-s / 2) * L * (4 * s + 16) := by
  have hd := anchored_samplingDerivative_integrable hF hzero hL hderiv hs
  calc
    _ ≤ ∫ u in Ioi (1 : ℝ), anchoredDerivativeMajorant s L u := by
      refine setIntegral_mono_ae_restrict hd.norm
        (anchoredDerivativeMajorant_integrable s L) ?_
      exact (ae_restrict_iff' measurableSet_Ioi).2
        (Eventually.of_forall fun u hu ↦
          abs_logSamplingDerivative_anchored_le hF hzero hL hderiv hs hu.le)
    _ = _ := anchoredDerivativeMajorant_integral s L

/-- The existing finite quadrature error with the anchored integral bound substituted. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SpectralUnificationOfComputabilityAndAlgebraicSymmetry/Variantee2055cc74208e61d93010342c368af745e635e95b5619bfad6b106168932f3e.lean#L157).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bfd3891d155ef0d1ec274c0d41b51fd96dce50e1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
