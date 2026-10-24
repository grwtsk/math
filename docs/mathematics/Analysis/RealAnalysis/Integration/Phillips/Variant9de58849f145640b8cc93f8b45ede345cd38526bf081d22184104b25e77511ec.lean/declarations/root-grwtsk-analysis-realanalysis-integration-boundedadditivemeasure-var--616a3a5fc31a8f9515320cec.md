# _root_.GRWTSK.Analysis.RealAnalysis.Integration.BoundedAdditiveMeasure.Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.ContinuousLinearMap.toBoundedAdditiveMeasure

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:88f81b7d1401dbd091571833073d002ec437a661262f2460cf167653deedb5bb",
  "kind": "def",
  "lexical_name": "_root_.GRWTSK.Analysis.RealAnalysis.Integration.BoundedAdditiveMeasure.Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.ContinuousLinearMap.toBoundedAdditiveMeasure",
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
  "slug": "root-grwtsk-analysis-realanalysis-integration-boundedadditivemeasure-var--616a3a5fc31a8f9515320cec",
  "source": {
    "blob": "9a04c1930d85357b652259a54d97b96776d007e3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 450,
    "line": 430,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:616a3a5fc31a8f9515320cec403cef2e3b6a85a02de96c113dd74e7cedb1ef5e",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:88f81b7d1401dbd091571833073d002ec437a661262f2460cf167653deedb5bb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 430–450.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def _root_.GRWTSK.Analysis.RealAnalysis.Integration.BoundedAdditiveMeasure.Variant8e878529acaf0bb8643a4977f6005ee346e921eebb0cb12331226c1894bf7669.ContinuousLinearMap.toBoundedAdditiveMeasure [TopologicalSpace α] [DiscreteTopology α]
    (f : (α →ᵇ ℝ) →L[ℝ] ℝ) : BoundedAdditiveMeasure α where
  toFun s := f (ofNormedAddCommGroupDiscrete (indicator s 1) 1 (norm_indicator_le_one s))
  additive' s t hst := by
    dsimp only
    have :
      ofNormedAddCommGroupDiscrete (indicator (s ∪ t) 1) 1 (norm_indicator_le_one _) =
        ofNormedAddCommGroupDiscrete (indicator s 1) 1 (norm_indicator_le_one s) +
          ofNormedAddCommGroupDiscrete (indicator t 1) 1 (norm_indicator_le_one t) := by
      ext x; simp [indicator_union_of_disjoint hst]
    rw [this, f.map_add]
  exists_bound :=
    ⟨‖f‖, fun s => by
      have I :
        ‖ofNormedAddCommGroupDiscrete (indicator s 1) 1 (norm_indicator_le_one s)‖ ≤ 1 := by
        apply norm_ofNormedAddCommGroup_le _ zero_le_one
      apply le_trans (f.le_op_norm _)
      simpa using mul_le_mul_of_nonneg_left I (norm_nonneg f)⟩
#align continuous_linear_map.to_bounded_additive_measure ContinuousLinearMap.toBoundedAdditiveMeasure

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Phillips/Variant9de58849f145640b8cc93f8b45ede345cd38526bf081d22184104b25e77511ec.lean#L430).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a04c1930d85357b652259a54d97b96776d007e3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
