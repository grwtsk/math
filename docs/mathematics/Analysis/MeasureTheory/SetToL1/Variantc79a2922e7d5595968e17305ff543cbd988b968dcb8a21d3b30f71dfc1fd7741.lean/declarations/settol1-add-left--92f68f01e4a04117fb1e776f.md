# setToL1_add_left'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:fc6225bb-96e9-45b7-4193-2930c4792500",
  "kind": "theorem",
  "lexical_name": "setToL1_add_left'",
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
  "slug": "settol1-add-left--92f68f01e4a04117fb1e776f",
  "source": {
    "blob": "9312bcc45854a242972d82f8ba46ce05fedffe4a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1114,
    "line": 1101,
    "path": "GRWTSK/Analysis/MeasureTheory/SetToL1/Variantc79a2922e7d5595968e17305ff543cbd988b968dcb8a21d3b30f71dfc1fd7741.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:92f68f01e4a04117fb1e776faa43572e427d888bc4e4dd4e48cb99e5ad2a889a",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetToL1/Variantc79a2922e7d5595968e17305ff543cbd988b968dcb8a21d3b30f71dfc1fd7741.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:fc6225bb-96e9-45b7-4193-2930c4792500`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1101–1114.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToL1_add_left' (hT : DominatedFinMeasAdditive μ T C)
    (hT' : DominatedFinMeasAdditive μ T' C') (hT'' : DominatedFinMeasAdditive μ T'' C'')
    (h_add : ∀ s, MeasurableSet s → μ s < ∞ → T'' s = T s + T' s) (f : α →₁[μ] E) :
    setToL1 hT'' f = setToL1 hT f + setToL1 hT' f := by
  suffices setToL1 hT'' = setToL1 hT + setToL1 hT' by rw [this, ContinuousLinearMap.add_apply]
  refine' ContinuousLinearMap.extend_unique (setToL1SCLM α E μ hT'') _ _ _ _ _
  ext1 f
  simp only [ContinuousLinearMap.add_comp, ContinuousLinearMap.coe_comp', Function.comp_apply,
    ContinuousLinearMap.add_apply]
  suffices setToL1 hT f + setToL1 hT' f = setToL1SCLM α E μ hT'' f by rw [← this]; congr
  rw [setToL1_eq_setToL1SCLM, setToL1_eq_setToL1SCLM,
    setToL1SCLM_add_left' hT hT' hT'' h_add]
#align measure_theory.L1.set_to_L1_add_left' MeasureTheory.L1.setToL1_add_left'

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetToL1/Variantc79a2922e7d5595968e17305ff543cbd988b968dcb8a21d3b30f71dfc1fd7741.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetToL1/Variantc79a2922e7d5595968e17305ff543cbd988b968dcb8a21d3b30f71dfc1fd7741.lean#L1101).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9312bcc45854a242972d82f8ba46ce05fedffe4a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
