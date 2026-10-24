# actualCorrelation_negative_edge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f33317f8-9a4a-66a9-7657-db73cd2910ed",
  "kind": "theorem",
  "lexical_name": "actualCorrelation_negative_edge",
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
  "slug": "actualcorrelation-negative-edge--ce933fa224cfbbe07a253530",
  "source": {
    "blob": "76f3ec068f0fda9bc222e514cb82970024c0faec",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 220,
    "line": 197,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C627d106d48c74ef6d6f92491547ab4c0c08b33bcd4f3d207335dc07945eec25SourceActualNega/Variant03eb496383cf375efea46cca3ab0e16a7cfc7d9fb9009cf16a0234368bc99feb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ce933fa224cfbbe07a253530edf7d4f3740f814ba03efe66df728f111837b982",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C627d106d48c74ef6d6f92491547ab4c0c08b33bcd4f3d207335dc07945eec25SourceActualNega/Variant03eb496383cf375efea46cca3ab0e16a7cfc7d9fb9009cf16a0234368bc99feb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f33317f8-9a4a-66a9-7657-db73cd2910ed`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 197–220.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualCorrelation_negative_edge {A u : ℝ} (hA : 20000000000000 ≤ A)
    (hu : 12 ≤ u) (hu' : u ≤ 13) :
    sourceCorrelation explicitSecondDerivative A (2 * A - u) ≤ -(1 / A ^ 9) := by
  have hp : 0 < A := by linarith
  have he := endpointProduct_integral_uniform_error (by linarith : 13 ≤ A)
    (by linarith : 0 ≤ u) hu'
  have hh : (20000000000000 : ℝ) / A ≤ 1 := (div_le_one hp).2 hA
  have hn : (∫ r in 0..u, endpointPolynomial A r * endpointPolynomial A (u - r)) ≤ -99 := by
    have := (abs_le.mp (he.trans hh)).2
    linarith [actualLeadingEdgeConvolution_le_neg_hundred hu hu']
  have hZ := source_normalization_pos A (by linarith)
  have hz := normalization_le_forty_one (by linarith : 1 ≤ A)
  rw [sourceCorrelation_upper_edge A u (by linarith) (by linarith) (by linarith)]
  apply (le_div_iff₀ (pow_pos hp 9)).2
  have heq : (1 / (A ^ 9 * sourceNormalization A) *
      (∫ r in 0..u, endpointPolynomial A r * endpointPolynomial A (u - r))) * A ^ 9 =
      (∫ r in 0..u, endpointPolynomial A r * endpointPolynomial A (u - r)) /
        sourceNormalization A := by field_simp; ring
  rw [heq]
  apply (div_le_iff₀ hZ).2
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualNegativeEdgeCorrelation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C627d106d48c74ef6d6f92491547ab4c0c08b33bcd4f3d207335dc07945eec25SourceActualNega/Variant03eb496383cf375efea46cca3ab0e16a7cfc7d9fb9009cf16a0234368bc99feb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/C627d106d48c74ef6d6f92491547ab4c0c08b33bcd4f3d207335dc07945eec25SourceActualNega/Variant03eb496383cf375efea46cca3ab0e16a7cfc7d9fb9009cf16a0234368bc99feb.lean#L197).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `76f3ec068f0fda9bc222e514cb82970024c0faec` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
