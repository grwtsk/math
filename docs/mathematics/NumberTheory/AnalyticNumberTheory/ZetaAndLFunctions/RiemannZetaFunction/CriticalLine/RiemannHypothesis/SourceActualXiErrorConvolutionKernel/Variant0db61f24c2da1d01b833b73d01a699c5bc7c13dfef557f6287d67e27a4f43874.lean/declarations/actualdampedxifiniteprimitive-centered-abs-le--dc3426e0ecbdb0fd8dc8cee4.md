# actualDampedXiFinitePrimitive_centered_abs_le

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:26daac9e-57d2-b04c-2cd6-948def05fb18",
  "kind": "theorem",
  "lexical_name": "actualDampedXiFinitePrimitive_centered_abs_le",
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
  "slug": "actualdampedxifiniteprimitive-centered-abs-le--dc3426e0ecbdb0fd8dc8cee4",
  "source": {
    "blob": "eb78ced6f19ed7f76b4408cd0306d8351510de53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 119,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant0db61f24c2da1d01b833b73d01a699c5bc7c13dfef557f6287d67e27a4f43874.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:dc3426e0ecbdb0fd8dc8cee4c0e3894d40f2b2a378491c0c29a04994cfb7237a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant0db61f24c2da1d01b833b73d01a699c5bc7c13dfef557f6287d67e27a4f43874.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:26daac9e-57d2-b04c-2cd6-948def05fb18`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDampedXiFinitePrimitive_centered_abs_le {t : ℝ} (ht : Real.log 7 ≤ t) :
    |(1 / 2 : ℝ) * actualDampedXiFinitePrimitive t - actualXiErrorConvolutionSevenValue -
        actualXiErrorConvolutionHalfHead * Real.exp (-t / 2) -
          actualXiErrorConvolutionOneHead * Real.exp (-t)| ≤
      (Real.log 4 + 4 + Real.log 2 + |Real.eulerMascheroniConstant|) *
        (1 - Real.exp (-t / 2)) ^ 2 := by
  rw [actualDampedXiFinitePrimitive_eq_error_convolutions ht]
  convert actualMangoldtErrorConvolution_difference_abs_le
    ((Real.log_nonneg (by norm_num)).trans ht) using 1
  congr 1
  ring

end
end FormalResearch.RiemannHypothesis.SourceActualXiErrorConvolutionKernel
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant0db61f24c2da1d01b833b73d01a699c5bc7c13dfef557f6287d67e27a4f43874.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolutionKernel/Variant0db61f24c2da1d01b833b73d01a699c5bc7c13dfef557f6287d67e27a4f43874.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `eb78ced6f19ed7f76b4408cd0306d8351510de53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
