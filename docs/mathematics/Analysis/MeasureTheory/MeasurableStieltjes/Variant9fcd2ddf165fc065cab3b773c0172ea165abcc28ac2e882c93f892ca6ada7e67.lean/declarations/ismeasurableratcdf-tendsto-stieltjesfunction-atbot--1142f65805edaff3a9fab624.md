# IsMeasurableRatCDF.tendsto_stieltjesFunction_atBot

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "f12b7281d4ed94eab91d044ebf250079ca378c07",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 363,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/9f/9fcd2ddf165fc065cab3b773c0172ea165abcc28ac2e882c93f892ca6ada7e67.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:3a1b9fe8-fc7c-0c81-ee7a-1f93f792a02c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f704c362-1f6e-b2d5-7a93-a8868f16404d",
  "kind": "lemma",
  "lexical_name": "IsMeasurableRatCDF.tendsto_stieltjesFunction_atBot",
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
  "slug": "ismeasurableratcdf-tendsto-stieltjesfunction-atbot--1142f65805edaff3a9fab624",
  "source": {
    "blob": "f12b7281d4ed94eab91d044ebf250079ca378c07",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 378,
    "line": 363,
    "path": "GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant9fcd2ddf165fc065cab3b773c0172ea165abcc28ac2e882c93f892ca6ada7e67.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1142f65805edaff3a9fab6249ea7722f7282c45b1f6d7d3d34b7d5b645ba4ac0",
  "verification": {
    "reference": "docs/verification/Analysis/MeasureTheory/MeasurableStieltjes/Variant9fcd2ddf165fc065cab3b773c0172ea165abcc28ac2e882c93f892ca6ada7e67.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f704c362-1f6e-b2d5-7a93-a8868f16404d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 363–378.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma IsMeasurableRatCDF.tendsto_stieltjesFunction_atBot (a : α) :
    Tendsto (hf.stieltjesFunction a) atBot (𝓝 0) := by
  have h_exists : ∀ x : ℝ, ∃ q : ℚ, x < q ∧ ↑q < x + 1 := fun x ↦ exists_rat_btwn (lt_add_one x)
  let qs : ℝ → ℚ := fun x ↦ (h_exists x).choose
  have hqs_tendsto : Tendsto qs atBot atBot := by
    rw [tendsto_atBot_atBot]
    refine fun q ↦ ⟨q - 1, fun y hy ↦ ?_⟩
    have h_le : ↑(qs y) ≤ (q : ℝ) - 1 + 1 :=
      (h_exists y).choose_spec.2.le.trans (add_le_add hy le_rfl)
    rw [sub_add_cancel] at h_le
    exact mod_cast h_le
  refine tendsto_of_tendsto_of_tendsto_of_le_of_le tendsto_const_nhds
    ((hf.tendsto_atBot_zero a).comp hqs_tendsto) (stieltjesFunction_nonneg hf a) fun x ↦ ?_
  rw [Function.comp_apply, ← stieltjesFunction_eq hf]
  exact (hf.stieltjesFunction a).mono (h_exists x).choose_spec.1.le

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Analysis/MeasureTheory/MeasurableStieltjes/Variant9fcd2ddf165fc065cab3b773c0172ea165abcc28ac2e882c93f892ca6ada7e67.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/MeasureTheory/MeasurableStieltjes/Variant9fcd2ddf165fc065cab3b773c0172ea165abcc28ac2e882c93f892ca6ada7e67.lean#L363).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f12b7281d4ed94eab91d044ebf250079ca378c07` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
