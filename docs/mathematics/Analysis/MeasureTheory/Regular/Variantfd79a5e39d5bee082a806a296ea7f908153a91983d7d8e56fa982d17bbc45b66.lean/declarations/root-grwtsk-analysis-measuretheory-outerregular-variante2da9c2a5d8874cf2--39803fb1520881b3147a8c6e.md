# _root_.GRWTSK.Analysis.MeasureTheory.OuterRegular.Variante2da9c2a5d8874cf2397cc98c114d678fc648e74d62d96c58ed546bcacdaa6be.MeasurableSet.exists_isClosed_sdiff_lt

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:d37d1d07-a313-fc5f-149f-2e17548925c2",
  "kind": "theorem",
  "lexical_name": "_root_.GRWTSK.Analysis.MeasureTheory.OuterRegular.Variante2da9c2a5d8874cf2397cc98c114d678fc648e74d62d96c58ed546bcacdaa6be.MeasurableSet.exists_isClosed_sdiff_lt",
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
  "slug": "root-grwtsk-analysis-measuretheory-outerregular-variante2da9c2a5d8874cf2--39803fb1520881b3147a8c6e",
  "source": {
    "blob": "64b864a9c22a66240a1889f478168dc8c650718d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1055,
    "line": 1044,
    "path": "GRWTSK/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:39803fb1520881b3147a8c6e4af896435e4810f012923e0c84d66633f3b4d028",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:d37d1d07-a313-fc5f-149f-2e17548925c2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1044–1055.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem _root_.GRWTSK.Analysis.MeasureTheory.OuterRegular.Variante2da9c2a5d8874cf2397cc98c114d678fc648e74d62d96c58ed546bcacdaa6be.MeasurableSet.exists_isClosed_sdiff_lt [OpensMeasurableSpace α] [WeaklyRegular μ]
    ⦃A : Set α⦄ (hA : MeasurableSet A) (h'A : μ A ≠ ∞) {ε : ℝ≥0∞} (hε : ε ≠ 0) :
    ∃ F, F ⊆ A ∧ IsClosed F ∧ μ (A \ F) < ε := by
  rcases hA.exists_isClosed_lt_add h'A hε with ⟨F, hFA, hFc, hF⟩
  exact ⟨F, hFA, hFc, measure_sdiff_lt_of_lt_add hFc.nullMeasurableSet hFA
    (ne_top_of_le_ne_top h'A <| measure_mono hFA) hF⟩

@[deprecated (since := "2026-06-03")]
alias _root_.MeasurableSet.exists_isClosed_diff_lt := _root_.GRWTSK.Analysis.MeasureTheory.OuterRegular.Variante2da9c2a5d8874cf2397cc98c114d678fc648e74d62d96c58ed546bcacdaa6be.MeasurableSet.exists_isClosed_sdiff_lt

/-- Given a weakly regular measure, any measurable set of finite mass can be approximated from
inside by closed sets. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Regular/Variantfd79a5e39d5bee082a806a296ea7f908153a91983d7d8e56fa982d17bbc45b66.lean#L1044).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `64b864a9c22a66240a1889f478168dc8c650718d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
