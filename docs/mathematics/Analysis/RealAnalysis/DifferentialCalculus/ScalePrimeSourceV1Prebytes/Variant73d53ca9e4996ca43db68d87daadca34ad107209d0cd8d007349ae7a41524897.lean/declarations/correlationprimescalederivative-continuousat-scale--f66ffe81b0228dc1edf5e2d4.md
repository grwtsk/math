# correlationPrimeScaleDerivative_continuousAt_scale

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:7d940195-bdca-ad31-a8df-97b38d600d49",
  "kind": "theorem",
  "lexical_name": "correlationPrimeScaleDerivative_continuousAt_scale",
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
  "slug": "correlationprimescalederivative-continuousat-scale--f66ffe81b0228dc1edf5e2d4",
  "source": {
    "blob": "79bdb291b5c9b270da56e13a2adc5da231418542",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 355,
    "line": 344,
    "path": "GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV1Prebytes/Variant73d53ca9e4996ca43db68d87daadca34ad107209d0cd8d007349ae7a41524897.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f66ffe81b0228dc1edf5e2d4b960c587b730e4912f7e62533ccd899f6b471af6",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV1Prebytes/Variant73d53ca9e4996ca43db68d87daadca34ad107209d0cd8d007349ae7a41524897.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:7d940195-bdca-ad31-a8df-97b38d600d49`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 344–355.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem correlationPrimeScaleDerivative_continuousAt_scale {A : ℝ} (hA : 0 < A) (s : ℝ) :
    ContinuousAt (fun B => correlationPrimeScaleDerivative B s) A := by
  let L : ComplexL2 →L[ℝ] ComplexL2 :=
    (translation s).toLinearIsometry.toContinuousLinearMap.restrictScalars ℝ
  have hr := spatialDerivativeState_continuousAt hA
  have hp := scaleDerivativeState_continuousAt hA
  exact (Complex.continuous_re.continuousAt.comp
    (hr.inner (L.continuous.continuousAt.comp hp))).sub
    (Complex.continuous_re.continuousAt.comp
      (hp.inner (L.continuous.continuousAt.comp hr)))

/-- Actual C_A′ is C1 in all positive scales, without any C4 bump or q_A′ scale derivative. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV1Prebytes/Variant73d53ca9e4996ca43db68d87daadca34ad107209d0cd8d007349ae7a41524897.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/DifferentialCalculus/ScalePrimeSourceV1Prebytes/Variant73d53ca9e4996ca43db68d87daadca34ad107209d0cd8d007349ae7a41524897.lean#L344).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `79bdb291b5c9b270da56e13a2adc5da231418542` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
