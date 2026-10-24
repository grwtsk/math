# nullMeasurableSet_of_tendsto_indicator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d9dc218d-a0ad-03e4-7c5e-1d0a2a3f5b45",
  "kind": "lemma",
  "lexical_name": "nullMeasurableSet_of_tendsto_indicator",
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
  "slug": "nullmeasurableset-of-tendsto-indicator--4d36b0f927b12889ed8c8f0d",
  "source": {
    "blob": "f73e1446affd40b5b4d32215dd098d03b7020b54",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 208,
    "line": 200,
    "path": "GRWTSK/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4d36b0f927b12889ed8c8f0d065446e2b46e42d9848b7a070916bec01efedf4c",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d9dc218d-a0ad-03e4-7c5e-1d0a2a3f5b45`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–208.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma nullMeasurableSet_of_tendsto_indicator [NeBot L] {μ : Measure α}
    (As_mble : ∀ i, NullMeasurableSet (As i) μ)
    (h_lim : ∀ᵐ x ∂μ, Tendsto (fun i ↦ (As i).indicator (1 : α → ℝ≥0∞) x)
      L (𝓝 (A.indicator 1 x))) :
    NullMeasurableSet A μ := by
  simp_rw [← aemeasurable_indicator_const_iff (1 : ℝ≥0∞)] at As_mble ⊢
  exact aemeasurable_of_tendsto_metrizable_ae L As_mble h_lim

end TendstoIndicator
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Metrizable/Variantc7a329d5042c2159551ae504fd45b82f39720594a46adfa19eded5ff4557e21a.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f73e1446affd40b5b4d32215dd098d03b7020b54` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
