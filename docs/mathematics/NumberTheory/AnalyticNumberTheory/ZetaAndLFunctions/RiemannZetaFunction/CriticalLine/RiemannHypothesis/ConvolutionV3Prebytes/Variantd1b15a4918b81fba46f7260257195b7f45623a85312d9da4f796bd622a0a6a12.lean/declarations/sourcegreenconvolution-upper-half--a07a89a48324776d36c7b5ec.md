# sourceGreenConvolution_upper_half

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e123f8b8-f87b-75eb-097f-d606182bd84c",
  "kind": "theorem",
  "lexical_name": "sourceGreenConvolution_upper_half",
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
  "slug": "sourcegreenconvolution-upper-half--a07a89a48324776d36c7b5ec",
  "source": {
    "blob": "70845586e169d0fbd97896cdd8d8c53bf1a40527",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 162,
    "line": 150,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd1b15a4918b81fba46f7260257195b7f45623a85312d9da4f796bd622a0a6a12.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a07a89a48324776d36c7b5ec227595af0891e32ee19d643f32df7800b64f0d6f",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd1b15a4918b81fba46f7260257195b7f45623a85312d9da4f796bd622a0a6a12.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e123f8b8-f87b-75eb-097f-d606182bd84c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 150–162.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem sourceGreenConvolution_upper_half (A x : ℝ) :
    (∫ y in Ioi x, greenKernel (x-y) * normalizedTest explicitSecondDerivative A y) =
      causalSourceTail A x := by
  unfold causalSourceTail
  rw [integral_Ici_eq_integral_Ioi, ← integral_const_mul]
  apply setIntegral_congr_fun measurableSet_Ioi
  intro y hy
  dsimp only [greenKernel]
  rw [abs_of_nonpos (by linarith [mem_Ioi.mp hy] : x-y ≤ 0)]
  rw [show -(-(x-y))/2 = x/2 + -y/2 by ring, Real.exp_add]
  ring

/-- Reflection of the lower half uses the actual q-evenness and no atom at its endpoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd1b15a4918b81fba46f7260257195b7f45623a85312d9da4f796bd622a0a6a12.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/ConvolutionV3Prebytes/Variantd1b15a4918b81fba46f7260257195b7f45623a85312d9da4f796bd622a0a6a12.lean#L150).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `70845586e169d0fbd97896cdd8d8c53bf1a40527` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
