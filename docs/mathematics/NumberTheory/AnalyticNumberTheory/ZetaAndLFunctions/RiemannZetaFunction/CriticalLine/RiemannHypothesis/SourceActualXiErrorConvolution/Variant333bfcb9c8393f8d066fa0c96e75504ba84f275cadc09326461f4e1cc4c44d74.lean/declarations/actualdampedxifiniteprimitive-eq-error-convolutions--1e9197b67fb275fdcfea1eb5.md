# actualDampedXiFinitePrimitive_eq_error_convolutions

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:255e1ded-7319-049b-c8a8-ac8f5a222b34",
  "kind": "theorem",
  "lexical_name": "actualDampedXiFinitePrimitive_eq_error_convolutions",
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
  "slug": "actualdampedxifiniteprimitive-eq-error-convolutions--1e9197b67fb275fdcfea1eb5",
  "source": {
    "blob": "6b7d615c6ab2ff56f96281cec8108b692eb4f146",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 302,
    "line": 262,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolution/Variant333bfcb9c8393f8d066fa0c96e75504ba84f275cadc09326461f4e1cc4c44d74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1e9197b67fb275fdcfea1eb53060166eba8b108ff4525fe4645c4b1a6acd5e86",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolution/Variant333bfcb9c8393f8d066fa0c96e75504ba84f275cadc09326461f4e1cc4c44d74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:255e1ded-7319-049b-c8a8-ac8f5a222b34`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 262–302.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualDampedXiFinitePrimitive_eq_error_convolutions {t : ℝ} (ht : Real.log 7 ≤ t) :
    (1 / 2 : ℝ) * actualDampedXiFinitePrimitive t - actualXiErrorConvolutionSevenValue =
      actualMangoldtErrorConvolution (1 / 2) t - actualMangoldtErrorConvolution 1 t +
        actualXiErrorConvolutionHalfHead * Real.exp (-t / 2) +
          actualXiErrorConvolutionOneHead * Real.exp (-t) := by
  have ht0 : 0 ≤ t := (Real.log_nonneg (by norm_num)).trans ht
  have hpsi := actualNormalizedMangoldtExpReadout_eq_convolution (lam := 1) (by norm_num) ht0
  have hhalf := actualNormalizedMangoldtExpReadout_eq_convolution (lam := 1 / 2) (by norm_num) ht0
  rw [actualNormalizedMangoldtExpReadout_one ht0] at hpsi
  rw [actualNormalizedMangoldtExpReadout_half ht0] at hhalf
  norm_num at hpsi hhalf
  rw [show -((1 / 2 : ℝ) * t) = -t / 2 by ring] at hhalf
  have he := actualDampedXiFinitePrimitive_closed_readout ht
  have hf := actualAnchoredXiTailPrimitive_eq_finite ht
  have hs : Real.sqrt (Real.exp t) = Real.exp (t / 2) := (Real.exp_half t).symm
  have hi : (Real.exp t)⁻¹ = Real.exp (-t) := (Real.exp_neg t).symm
  have hi2 : (Real.exp (t / 2))⁻¹ = Real.exp (-t / 2) := by
    rw [show -t / 2 = -(t / 2) by ring, Real.exp_neg]
  have he2 : Real.exp (-t / 2) ^ 2 = Real.exp (-t) := by
    rw [pow_two, ← Real.exp_add]
    congr 1
    ring
  have hex : Real.exp t * Real.exp (-t) = 1 := by
    rw [← Real.exp_add, add_neg_cancel, Real.exp_zero]
  have hsplit := actualMangoldtHalfClosedPrefix_split_seven ht
  have hw : actualMangoldtHalfWindowSeven (Real.exp t) = actualMangoldtHalfClosedPrefix t -
      (∑ n ∈ Finset.Ioc 0 7, (vonMangoldt n : ℝ) / Real.sqrt (n : ℝ)) := by
    linarith
  rw [hf, hs, hw] at he
  unfold actualXiErrorConvolutionSevenValue actualXiErrorConvolutionHalfHead
    actualXiErrorConvolutionOneHead
  unfold shiftedActualChebyshev at he
  unfold actualCenteredMangoldtLogError at hpsi hhalf
  simp only [div_eq_mul_inv] at he hi2 he2 hpsi hhalf ⊢
  rw [hi, hi2] at he
  ring_nf at he he2 hpsi hhalf hex ⊢
  rw [he2] at he
  nlinarith

end
end FormalResearch.RiemannHypothesis.SourceActualXiErrorConvolution
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolution/Variant333bfcb9c8393f8d066fa0c96e75504ba84f275cadc09326461f4e1cc4c44d74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualXiErrorConvolution/Variant333bfcb9c8393f8d066fa0c96e75504ba84f275cadc09326461f4e1cc4c44d74.lean#L262).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `6b7d615c6ab2ff56f96281cec8108b692eb4f146` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
