# actualTiltBandSpectrum_coe_ae

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d2120893-c36b-1599-8ac7-a7fe88d1ca04",
  "kind": "theorem",
  "lexical_name": "actualTiltBandSpectrum_coe_ae",
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
  "slug": "actualtiltbandspectrum-coe-ae--cd65fe16e914ba32e3de0fdf",
  "source": {
    "blob": "ceaf69a1a61f2aad6290a4c468435a1550cc9e4b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 42,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:cd65fe16e914ba32e3de0fdf06d0d2ef8f689eba550c10eba534c6870f51614d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d2120893-c36b-1599-8ac7-a7fe88d1ca04`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 42–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualTiltBandSpectrum_coe_ae {A : ℝ} (hA : 1 ≤ A) (T : ℝ) :
    actualTiltBandSpectrum A T =ᵐ[volume]
      (actualStandardBand T).indicator (actualTiltStandardSpectrum A) := by
  have hcut := ((Lp.memLp (𝓕 (actualUnitTiltState A))).indicator
    (show MeasurableSet (actualStandardBand T) from measurableSet_Icc)).coeFn_toLp
  apply hcut.trans
  filter_upwards [actualUnitTiltState_fourier_coe_ae hA] with ξ hξ
  by_cases h : ξ ∈ actualStandardBand T <;> simp [h, hξ]

/-- The actual uncut spectral energy is genuinely integrable. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/SourceActualTiltBandProjection/Variantb3e58aede7e898e8a41a16ac2d03f4fb796a0b1c98e07b4d51da3ccf2e7917f6.lean#L42).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ceaf69a1a61f2aad6290a4c468435a1550cc9e4b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
