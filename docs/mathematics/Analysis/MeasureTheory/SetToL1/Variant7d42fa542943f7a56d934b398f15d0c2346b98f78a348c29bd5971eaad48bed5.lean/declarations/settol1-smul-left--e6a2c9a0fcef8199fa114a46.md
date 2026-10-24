# setToL1_smul_left'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e6d130cf-19e2-d264-afd6-f268a84ccbda",
  "kind": "theorem",
  "lexical_name": "setToL1_smul_left'",
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
  "slug": "settol1-smul-left--e6a2c9a0fcef8199fa114a46",
  "source": {
    "blob": "b1067cf709788585afaa83f2525d72a7ea482127",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 498,
    "line": 489,
    "path": "GRWTSK/Analysis/MeasureTheory/SetToL1/Variant7d42fa542943f7a56d934b398f15d0c2346b98f78a348c29bd5971eaad48bed5.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:e6a2c9a0fcef8199fa114a46b06b1da365ad0c8352a7a742aa9f57cd77b29d55",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/SetToL1/Variant7d42fa542943f7a56d934b398f15d0c2346b98f78a348c29bd5971eaad48bed5.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e6d130cf-19e2-d264-afd6-f268a84ccbda`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 489–498.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem setToL1_smul_left' (hT : DominatedFinMeasAdditive μ T C)
    (hT' : DominatedFinMeasAdditive μ T' C') (c : ℝ)
    (h_smul : ∀ s, MeasurableSet s → μ s < ∞ → T' s = c • T s) (f : α →₁[μ] E) :
    setToL1 hT' f = c • setToL1 hT f := by
  suffices setToL1 hT' = c • setToL1 hT by rw [this, ContinuousLinearMap.smul_apply]
  refine ContinuousLinearMap.extend_unique (setToL1SCLM α E μ hT') _ _ _ _ ?_
  ext1 f
  suffices c • setToL1 hT f = setToL1SCLM α E μ hT' f by rw [← this]; simp [coeToLp]
  rw [setToL1_eq_setToL1SCLM, setToL1SCLM_smul_left' c hT hT' h_smul]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/SetToL1/Variant7d42fa542943f7a56d934b398f15d0c2346b98f78a348c29bd5971eaad48bed5.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/SetToL1/Variant7d42fa542943f7a56d934b398f15d0c2346b98f78a348c29bd5971eaad48bed5.lean#L489).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1067cf709788585afaa83f2525d72a7ea482127` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
