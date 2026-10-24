# actualCorrelation_negative_edge

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:423586df-6f44-f2f7-2bb4-c5471d12b88e",
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
  "slug": "actualcorrelation-negative-edge--a0d153727e5ebb539e098052",
  "source": {
    "blob": "dc05bdf79a09a6514e1d6a4e121f574f2b39174d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 195,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fb3befffcd062287d93e5b7ea19ecd04528ba47686bb690e50aa465607b636f4SourceActualNega/Variant0bdf44dc7fd76c61ac8ad8b5c76f20027d92c546d4523ee21cf6d06156e1fd4c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:a0d153727e5ebb539e098052f7fa40f3cddc6b7514557da751fcffe581cb4204",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fb3befffcd062287d93e5b7ea19ecd04528ba47686bb690e50aa465607b636f4SourceActualNega/Variant0bdf44dc7fd76c61ac8ad8b5c76f20027d92c546d4523ee21cf6d06156e1fd4c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:423586df-6f44-f2f7-2bb4-c5471d12b88e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 195–219.

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
  rw [show -(1 / A ^ 9) = (-1 : ℝ) / A ^ 9 by ring]
  apply (le_div_iff₀ (pow_pos hp 9)).2
  have heq : (1 / (A ^ 9 * sourceNormalization A) *
      (∫ r in 0..u, endpointPolynomial A r * endpointPolynomial A (u - r))) * A ^ 9 =
      (∫ r in 0..u, endpointPolynomial A r * endpointPolynomial A (u - r)) /
        sourceNormalization A := by field_simp
  rw [heq]
  apply (div_le_iff₀ hZ).2
  linarith

end
end FormalResearch.RiemannHypothesis.SourceActualNegativeEdgeCorrelation
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fb3befffcd062287d93e5b7ea19ecd04528ba47686bb690e50aa465607b636f4SourceActualNega/Variant0bdf44dc7fd76c61ac8ad8b5c76f20027d92c546d4523ee21cf6d06156e1fd4c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/Fb3befffcd062287d93e5b7ea19ecd04528ba47686bb690e50aa465607b636f4SourceActualNega/Variant0bdf44dc7fd76c61ac8ad8b5c76f20027d92c546d4523ee21cf6d06156e1fd4c.lean#L195).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dc05bdf79a09a6514e1d6a4e121f574f2b39174d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
