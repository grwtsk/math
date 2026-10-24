# actual_source_ge_outward_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0176fefa-5c23-06ef-d98b-9da8bc940a77",
  "kind": "theorem",
  "lexical_name": "actual_source_ge_outward_left",
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
  "slug": "actual-source-ge-outward-left--f97a9fa21f034ada948ca052",
  "source": {
    "blob": "dbdd50d90cb187194b035c9fcc2e7e2fef873253",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 337,
    "line": 318,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant50c17b5be56ea9d142ee00a1119a216b6d88679ce06c638486c910ffdf2579cf.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f97a9fa21f034ada948ca05219b76171dd4d51575b43fd2ab3f274da35fd64c6",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant50c17b5be56ea9d142ee00a1119a216b6d88679ce06c638486c910ffdf2579cf.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0176fefa-5c23-06ef-d98b-9da8bc940a77`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 318–337.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actual_source_ge_outward_left {A : ℝ} (hA : 91 ≤ A) (z : ℂ)
    (ha : -(1 / 2) ≤ z.re) (ha0 : z.re ≤ 0) (hi : 12 ≤ |z.im|) :
    (negativeEndpoint A z).re <
      (FormalResearch.RiemannHypothesis.ActualCorrelationOppositeHalf.
        actualBilateralCorrelationTransform A z).re := by
  have h := actual_mixed_inward_left hA z ha ha0 hi
  have hz : z ≠ 0 := by intro hz; norm_num [hz] at hi
  rw [actual_source_endpoint_recovery (by linarith : 1 ≤ A) z hz]
  rw [Complex.add_re, Complex.add_re]
  rw [Complex.add_re] at h
  have hk : 0 < 384 ^ 2 /
      (FormalResearch.RiemannHypothesis.SourcePairing.sourceNormalization A * A ^ 9) :=
    div_pos (by norm_num) (mul_pos
      (FormalResearch.RiemannHypothesis.SourcePairing.source_normalization_pos A (by linarith))
      (pow_pos (by linarith) 9))
  have hn : 0 ≤ ‖-(z⁻¹ ^ 6)‖ := norm_nonneg _
  nlinarith only [h, hk, hn]

end RH16ActualMixedInwardPositive
end
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant50c17b5be56ea9d142ee00a1119a216b6d88679ce06c638486c910ffdf2579cf.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/SourceActualMixedInwardPositive/Variant50c17b5be56ea9d142ee00a1119a216b6d88679ce06c638486c910ffdf2579cf.lean#L318).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dbdd50d90cb187194b035c9fcc2e7e2fef873253` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
