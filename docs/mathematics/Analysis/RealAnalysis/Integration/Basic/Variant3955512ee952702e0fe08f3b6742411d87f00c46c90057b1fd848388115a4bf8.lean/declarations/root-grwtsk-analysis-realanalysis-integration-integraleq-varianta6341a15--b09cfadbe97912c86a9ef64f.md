# _root_.GRWTSK.Analysis.RealAnalysis.Integration.IntegralEq.Varianta6341a15d805c17e6922cd9c3f69508d604574058e37b06ec8cb51626ebbfa4d.MeasurableEmbedding.integral_map

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e5b2f72c-c0ff-c9ce-a29b-a8dc14ac83d8",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.IntegralEq.Varianta6341a15d805c17e6922cd9c3f69508d604574058e37b06ec8cb51626ebbfa4d.MeasurableEmbedding.integral_map",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-integraleq-varianta6341a15--b09cfadbe97912c86a9ef64f",
  "source": {
    "blob": "9c1a5aaebbdb15941b2f15ffaa8616528d0f4723",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1102,
    "line": 1096,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b09cfadbe97912c86a9ef64f500fe81c103fd2085ba2792a16fc9e6558b85036",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5b2f72c-c0ff-c9ce-a29b-a8dc14ac83d8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1096–1102.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.RealAnalysis.Integration.IntegralEq.Varianta6341a15d805c17e6922cd9c3f69508d604574058e37b06ec8cb51626ebbfa4d.MeasurableEmbedding.integral_map {β} {_ : MeasurableSpace β} {f : α → β}
    (hf : MeasurableEmbedding f) (g : β → G) : ∫ y, g y ∂Measure.map f μ = ∫ x, g (f x) ∂μ := by
  by_cases hgm : AEStronglyMeasurable g (Measure.map f μ)
  · exact MeasureTheory.integral_map hf.measurable.aemeasurable hgm
  · rw [integral_non_aestronglyMeasurable hgm, integral_non_aestronglyMeasurable]
    exact fun hgf => hgm (hf.aestronglyMeasurable_map_iff.2 hgf)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Basic/Variant3955512ee952702e0fe08f3b6742411d87f00c46c90057b1fd848388115a4bf8.lean#L1096).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9c1a5aaebbdb15941b2f15ffaa8616528d0f4723` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
