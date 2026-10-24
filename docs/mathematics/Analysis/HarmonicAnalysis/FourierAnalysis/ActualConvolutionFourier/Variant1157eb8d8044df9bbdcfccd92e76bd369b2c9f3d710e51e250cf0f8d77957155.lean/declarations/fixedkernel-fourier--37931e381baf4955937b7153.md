# fixedKernel_fourier

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:52d76f3a-18bb-aa41-5129-45ca28fc0b10",
  "kind": "theorem",
  "lexical_name": "fixedKernel_fourier",
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
  "slug": "fixedkernel-fourier--37931e381baf4955937b7153",
  "source": {
    "blob": "2cf48722d7e3469b94e43d7925216a002de03381",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 60,
    "line": 44,
    "path": "GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:37931e381baf4955937b7153f661d5d50c0e011413389d1616b2e3246da70aa0",
  "verification": {
    "reference": "docs/verification/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:52d76f3a-18bb-aa41-5129-45ca28fc0b10`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–60.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem fixedKernel_fourier (ξ : ℝ) :
    𝓕 (fun a : ℝ => (fixedKernel a : ℂ)) ξ =
      actualLaplace (((2 * Real.pi * ξ : ℝ) : ℂ) * Complex.I) := by
  rw [Real.fourier_eq', actualLaplace,
    setIntegral_eq_integral_of_forall_compl_eq_zero]
  · apply integral_congr_ae
    filter_upwards [] with a
    simp only [smul_eq_mul, RCLike.inner_apply, conj_trivial]
    rw [mul_comm (Complex.exp _) _]
    congr 2
    simp only [Complex.ofReal_mul, Complex.ofReal_neg]
    ring
  · intro a ha
    have hnonpos : a ≤ 0 := le_of_not_gt ha
    rw [fixedKernel_zero_of_nonpos a hnonpos, Complex.ofReal_zero, zero_mul]

/-- On genuine L1 inputs, the actual admitted L2 convolution has the exact source multiplier. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/HarmonicAnalysis/FourierAnalysis/ActualConvolutionFourier/Variant1157eb8d8044df9bbdcfccd92e76bd369b2c9f3d710e51e250cf0f8d77957155.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2cf48722d7e3469b94e43d7925216a002de03381` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
