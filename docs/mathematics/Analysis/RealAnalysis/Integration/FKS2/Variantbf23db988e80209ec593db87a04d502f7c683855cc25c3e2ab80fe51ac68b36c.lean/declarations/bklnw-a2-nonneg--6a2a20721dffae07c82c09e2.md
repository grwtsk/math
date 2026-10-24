# BKLNW_a2_nonneg

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:ddc2fc7b-fa81-c63f-d7d0-1c4c1ce88ccb",
  "kind": "lemma",
  "lexical_name": "BKLNW_a2_nonneg",
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
  "slug": "bklnw-a2-nonneg--6a2a20721dffae07c82c09e2",
  "source": {
    "blob": "b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 912,
    "line": 901,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:6a2a20721dffae07c82c09e27d252c9c3c48fe7e2d11e1ea994e7d824c89797d",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ddc2fc7b-fa81-c63f-d7d0-1c4c1ce88ccb`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 901–912.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
private lemma BKLNW_a2_nonneg (t : ℝ) : 0 ≤ BKLNW.a₂ t := by
  unfold BKLNW.a₂ BKLNW.Inputs.a₂
  have hfac : 0 ≤ (1 + BKLNW.Inputs.default.α : ℝ) := by
    change 0 ≤ 1 + 1.93378e-8 * BKLNW_app.table_8_margin
    norm_num [BKLNW_app.table_8_margin]
  have hmax_nonneg : 0 ≤ max (BKLNW.f (Real.exp t)) (BKLNW.f (2 ^ (⌊t / Real.log 2⌋₊ + 1))) := by
    have hf_exp_nonneg : 0 ≤ BKLNW.f (Real.exp t) := by
      unfold BKLNW.f
      exact Finset.sum_nonneg (fun _ _ ↦ by positivity)
    exact le_trans hf_exp_nonneg (le_max_left _ _)
  exact mul_nonneg hfac hmax_nonneg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/FKS2/Variantbf23db988e80209ec593db87a04d502f7c683855cc25c3e2ab80fe51ac68b36c.lean#L901).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b782c60ba436204bfe0cbe2f3e10cf9ae3c50f1a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
