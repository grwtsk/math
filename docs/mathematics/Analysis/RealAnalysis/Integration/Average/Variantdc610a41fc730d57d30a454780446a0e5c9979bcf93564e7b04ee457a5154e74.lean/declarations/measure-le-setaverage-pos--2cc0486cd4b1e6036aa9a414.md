# measure_le_setAverage_pos

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:44395e00-81a8-73d3-650a-ab451e5477e9",
  "kind": "theorem",
  "lexical_name": "measure_le_setAverage_pos",
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
  "slug": "measure-le-setaverage-pos--2cc0486cd4b1e6036aa9a414",
  "source": {
    "blob": "7822a691deac583070e118cc6cad026ca3dca11e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 496,
    "line": 477,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/Average/Variantdc610a41fc730d57d30a454780446a0e5c9979bcf93564e7b04ee457a5154e74.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2cc0486cd4b1e6036aa9a4146199cf760496bd69afffbd4cf31909a59dead683",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/Average/Variantdc610a41fc730d57d30a454780446a0e5c9979bcf93564e7b04ee457a5154e74.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:44395e00-81a8-73d3-650a-ab451e5477e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 477–496.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem measure_le_setAverage_pos (hμ : μ s ≠ 0) (hμ₁ : μ s ≠ ∞) (hf : IntegrableOn f s μ) :
    0 < μ ({x ∈ s | f x ≤ ⨍ a in s, f a ∂μ}) := by
  refine' pos_iff_ne_zero.2 fun H => _
  replace H : (μ.restrict s) {x | f x ≤ ⨍ a in s, f a ∂μ} = 0
  · rwa [restrict_apply₀, inter_comm]
    exact AEStronglyMeasurable.nullMeasurableSet_le hf.1 aestronglyMeasurable_const
  haveI := Fact.mk hμ₁.lt_top
  refine' (integral_sub_average (μ.restrict s) f).not_gt _
  refine' (set_integral_pos_iff_support_of_nonneg_ae _ _).2 _
  · refine' eq_bot_mono (measure_mono fun x hx => _) H
    simp only [Pi.zero_apply, sub_nonneg, mem_compl_iff, mem_setOf_eq, not_le] at hx
    exact hx.le
  · exact hf.sub (integrableOn_const.2 <| Or.inr <| lt_top_iff_ne_top.2 hμ₁)
  · rwa [pos_iff_ne_zero, inter_comm, ← diff_compl, ← diff_inter_self_eq_diff, measure_diff_null]
    refine' eq_bot_mono (measure_mono _) (measure_inter_eq_zero_of_restrict H)
    exact inter_subset_inter_left _ fun a ha => (sub_eq_zero.1 <| of_not_not ha).le
#align measure_theory.measure_le_set_average_pos MeasureTheory.measure_le_setAverage_pos

/-- **First moment method**. An integrable function is greater than its mean on a set of positive
measure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/Average/Variantdc610a41fc730d57d30a454780446a0e5c9979bcf93564e7b04ee457a5154e74.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/Average/Variantdc610a41fc730d57d30a454780446a0e5c9979bcf93564e7b04ee457a5154e74.lean#L477).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7822a691deac583070e118cc6cad026ca3dca11e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
