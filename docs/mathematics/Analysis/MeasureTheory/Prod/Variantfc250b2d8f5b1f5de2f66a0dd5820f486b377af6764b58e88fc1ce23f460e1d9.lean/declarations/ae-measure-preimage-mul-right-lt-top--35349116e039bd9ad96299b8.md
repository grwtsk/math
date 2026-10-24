# ae_measure_preimage_mul_right_lt_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "e823621fb123d95afa5d3c08c5cc347e02649690",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 257,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/fc/fc250b2d8f5b1f5de2f66a0dd5820f486b377af6764b58e88fc1ce23f460e1d9.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:c0c04397-1abc-dc7d-8ef8-c3b8da71e1e2",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:2275d2de-2c9b-2e7e-fb8f-0a21b7112187",
  "kind": "theorem",
  "lexical_name": "ae_measure_preimage_mul_right_lt_top",
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
  "slug": "ae-measure-preimage-mul-right-lt-top--35349116e039bd9ad96299b8",
  "source": {
    "blob": "e823621fb123d95afa5d3c08c5cc347e02649690",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 274,
    "line": 257,
    "path": "GRWTSK/Analysis/MeasureTheory/Prod/Variantfc250b2d8f5b1f5de2f66a0dd5820f486b377af6764b58e88fc1ce23f460e1d9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:35349116e039bd9ad96299b8ebc0b744586e685c1cd31d35a3572e944602ee31",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/Prod/Variantfc250b2d8f5b1f5de2f66a0dd5820f486b377af6764b58e88fc1ce23f460e1d9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2275d2de-2c9b-2e7e-fb8f-0a21b7112187`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 257–274.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem ae_measure_preimage_mul_right_lt_top (hμs : μ' s ≠ ∞) :
    ∀ᵐ x ∂μ', ν' ((· * x) ⁻¹' s) < ∞ := by
  wlog sm : MeasurableSet s generalizing s
  · filter_upwards [this ((measure_toMeasurable _).trans_ne hμs) (measurableSet_toMeasurable ..)]
      with x hx using lt_of_le_of_lt (by gcongr; apply subset_toMeasurable) hx
  refine ae_of_forall_measure_lt_top_ae_restrict' ν'.inv _ ?_
  intro A hA _ h3A
  simp only [ν'.inv_apply] at h3A
  apply ae_lt_top (measurable_measure_mul_right ν' sm)
  have h1 := measure_mul_lintegral_eq μ' ν' sm (A⁻¹.indicator 1) (measurable_one.indicator hA.inv)
  rw [lintegral_indicator hA.inv] at h1
  simp_rw [Pi.one_apply, setLIntegral_one, ← image_inv_eq_inv, indicator_image inv_injective,
    image_inv_eq_inv, ← indicator_mul_right _ fun x => ν' ((· * x) ⁻¹' s), Function.comp,
    Pi.one_apply, mul_one] at h1
  rw [← lintegral_indicator hA, ← h1]
  finiteness

@[to_additive]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/Prod/Variantfc250b2d8f5b1f5de2f66a0dd5820f486b377af6764b58e88fc1ce23f460e1d9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/Prod/Variantfc250b2d8f5b1f5de2f66a0dd5820f486b377af6764b58e88fc1ce23f460e1d9.lean#L257).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e823621fb123d95afa5d3c08c5cc347e02649690` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
