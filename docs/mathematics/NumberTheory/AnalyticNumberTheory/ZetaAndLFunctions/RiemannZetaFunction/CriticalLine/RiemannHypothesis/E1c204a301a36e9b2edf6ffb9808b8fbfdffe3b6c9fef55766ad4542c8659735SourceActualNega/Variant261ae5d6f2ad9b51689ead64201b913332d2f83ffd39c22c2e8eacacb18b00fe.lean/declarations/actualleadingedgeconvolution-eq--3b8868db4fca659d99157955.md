# actualLeadingEdgeConvolution_eq

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:f4f1891d-a532-14ef-36df-e8397b957318",
  "kind": "theorem",
  "lexical_name": "actualLeadingEdgeConvolution_eq",
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
  "slug": "actualleadingedgeconvolution-eq--3b8868db4fca659d99157955",
  "source": {
    "blob": "f747b8082a29ce456e30d6211b00258740a0d828",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 26,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E1c204a301a36e9b2edf6ffb9808b8fbfdffe3b6c9fef55766ad4542c8659735SourceActualNega/Variant261ae5d6f2ad9b51689ead64201b913332d2f83ffd39c22c2e8eacacb18b00fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:3b8868db4fca659d99157955557d08b4b9fa4f9fea8f03ce90f47daee8555f7a",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E1c204a301a36e9b2edf6ffb9808b8fbfdffe3b6c9fef55766ad4542c8659735SourceActualNega/Variant261ae5d6f2ad9b51689ead64201b913332d2f83ffd39c22c2e8eacacb18b00fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f4f1891d-a532-14ef-36df-e8397b957318`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 26–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLeadingEdgeConvolution_eq (u : ℝ) :
    actualLeadingEdgeConvolution u =
      (8 / 315 : ℝ) * u ^ 5 * (u ^ 4 - 576 * u ^ 2 + 48384) := by
  have hd (r : ℝ) : HasDerivAt (leadingAntiderivative u)
      (actualLeadingEndpointPolynomial r * actualLeadingEndpointPolynomial (u - r)) r := by
    unfold leadingAntiderivative actualLeadingEndpointPolynomial
    have h3 := ((hasDerivAt_id r).pow 3).const_mul ((36864 * u ^ 2 - 768 * u ^ 4) / 3)
    have h4 := ((hasDerivAt_id r).pow 4).const_mul ((-73728 * u + 3072 * u ^ 3) / 4)
    have h5 := ((hasDerivAt_id r).pow 5).const_mul ((36864 - 5376 * u ^ 2 + 16 * u ^ 4) / 5)
    have h6 := ((hasDerivAt_id r).pow 6).const_mul ((4608 * u - 64 * u ^ 3) / 6)
    have h7 := ((hasDerivAt_id r).pow 7).const_mul ((-1536 + 96 * u ^ 2) / 7)
    have h8 := ((hasDerivAt_id r).pow 8).const_mul ((-64 * u) / 8)
    have h9 := ((hasDerivAt_id r).pow 9).const_mul (16 / 9)
    have hh := (((((h3.add h4).add h5).add h6).add h7).add h8).add h9
    convert hh using 1 <;> norm_num [Pi.add_apply, Pi.pow_apply, id_eq] <;> ring
  rw [actualLeadingEdgeConvolution,
    intervalIntegral.integral_eq_sub_of_hasDerivAt
      (fun r _ => hd r) (actualLeadingEdgeProduct_intervalIntegrable u)]
  unfold leadingAntiderivative
  ring

/-- A whole real edge interval has a fixed strictly negative leading margin. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E1c204a301a36e9b2edf6ffb9808b8fbfdffe3b6c9fef55766ad4542c8659735SourceActualNega/Variant261ae5d6f2ad9b51689ead64201b913332d2f83ffd39c22c2e8eacacb18b00fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E1c204a301a36e9b2edf6ffb9808b8fbfdffe3b6c9fef55766ad4542c8659735SourceActualNega/Variant261ae5d6f2ad9b51689ead64201b913332d2f83ffd39c22c2e8eacacb18b00fe.lean#L26).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f747b8082a29ce456e30d6211b00258740a0d828` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
