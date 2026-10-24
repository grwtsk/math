# actualLeadingEdgeConvolution_le_neg_hundred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c9b7b017-4195-90c8-f33b-cbefa40ad4a6",
  "kind": "theorem",
  "lexical_name": "actualLeadingEdgeConvolution_le_neg_hundred",
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
  "slug": "actualleadingedgeconvolution-le-neg-hundred--88b926ff32309db14f404107",
  "source": {
    "blob": "f747b8082a29ce456e30d6211b00258740a0d828",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 58,
    "line": 48,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E1c204a301a36e9b2edf6ffb9808b8fbfdffe3b6c9fef55766ad4542c8659735SourceActualNega/Variant261ae5d6f2ad9b51689ead64201b913332d2f83ffd39c22c2e8eacacb18b00fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:88b926ff32309db14f404107545fd8c6e48d217ce0cf85889d863adf6dc71648",
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

Occurrence: `result:c9b7b017-4195-90c8-f33b-cbefa40ad4a6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 48–58.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem actualLeadingEdgeConvolution_le_neg_hundred {u : ℝ}
    (hu : 12 ≤ u) (hu' : u ≤ 13) :
    actualLeadingEdgeConvolution u ≤ -100 := by
  rw [actualLeadingEdgeConvolution_eq]
  have h2 : (12 : ℝ) ^ 2 ≤ u ^ 2 := (sq_le_sq₀ (by norm_num) (by linarith)).2 hu
  have h4 : u ^ 4 ≤ (13 : ℝ) ^ 4 := pow_le_pow_left₀ (by linarith) hu' 4
  have hf : u ^ 4 - 576 * u ^ 2 + 48384 ≤ -5999 := by nlinarith
  have h5 : (1 : ℝ) ≤ u ^ 5 := one_le_pow₀ (by linarith)
  have hm := mul_le_mul_of_nonneg_left hf (by positivity : 0 ≤ (8 / 315 : ℝ) * u ^ 5)
  nlinarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E1c204a301a36e9b2edf6ffb9808b8fbfdffe3b6c9fef55766ad4542c8659735SourceActualNega/Variant261ae5d6f2ad9b51689ead64201b913332d2f83ffd39c22c2e8eacacb18b00fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E1c204a301a36e9b2edf6ffb9808b8fbfdffe3b6c9fef55766ad4542c8659735SourceActualNega/Variant261ae5d6f2ad9b51689ead64201b913332d2f83ffd39c22c2e8eacacb18b00fe.lean#L48).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f747b8082a29ce456e30d6211b00258740a0d828` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
