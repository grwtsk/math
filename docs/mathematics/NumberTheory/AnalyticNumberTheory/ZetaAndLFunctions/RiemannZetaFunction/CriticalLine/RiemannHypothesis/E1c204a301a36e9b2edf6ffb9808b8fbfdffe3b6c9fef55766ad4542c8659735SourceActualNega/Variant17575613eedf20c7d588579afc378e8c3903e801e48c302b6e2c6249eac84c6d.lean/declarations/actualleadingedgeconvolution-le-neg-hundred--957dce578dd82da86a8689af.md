# actualLeadingEdgeConvolution_le_neg_hundred

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:38a69758-f1f8-db10-1576-b663eb3d3ddd",
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
  "slug": "actualleadingedgeconvolution-le-neg-hundred--957dce578dd82da86a8689af",
  "source": {
    "blob": "a8b9f30740be1e833254bea76e99e2f182e9c178",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 66,
    "line": 56,
    "path": "GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E1c204a301a36e9b2edf6ffb9808b8fbfdffe3b6c9fef55766ad4542c8659735SourceActualNega/Variant17575613eedf20c7d588579afc378e8c3903e801e48c302b6e2c6249eac84c6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:957dce578dd82da86a8689af72ec6371420beced2b8d5a3bcb36a202d0a7d4a1",
  "verification": {
    "reference": "docs/verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E1c204a301a36e9b2edf6ffb9808b8fbfdffe3b6c9fef55766ad4542c8659735SourceActualNega/Variant17575613eedf20c7d588579afc378e8c3903e801e48c302b6e2c6249eac84c6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:38a69758-f1f8-db10-1576-b663eb3d3ddd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–66.

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

[Verification target and public status](../../../../../../../../../../verification/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E1c204a301a36e9b2edf6ffb9808b8fbfdffe3b6c9fef55766ad4542c8659735SourceActualNega/Variant17575613eedf20c7d588579afc378e8c3903e801e48c302b6e2c6249eac84c6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/NumberTheory/AnalyticNumberTheory/ZetaAndLFunctions/RiemannZetaFunction/CriticalLine/RiemannHypothesis/E1c204a301a36e9b2edf6ffb9808b8fbfdffe3b6c9fef55766ad4542c8659735SourceActualNega/Variant17575613eedf20c7d588579afc378e8c3903e801e48c302b6e2c6249eac84c6d.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a8b9f30740be1e833254bea76e99e2f182e9c178` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
