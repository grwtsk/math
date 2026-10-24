# verticalIntegral_split_three_finite

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "44803b182000672977293e598b84e8212a3b9098",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1314,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/f7/f7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:ad89765e-c8ea-4a6b-d745-849edf36fef4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:f03ac76b-1ea1-f72c-067b-a582e1afe807",
  "kind": "lemma",
  "lexical_name": "verticalIntegral_split_three_finite",
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
  "slug": "verticalintegral-split-three-finite--fced7ca5ac9af39999976e7f",
  "source": {
    "blob": "44803b182000672977293e598b84e8212a3b9098",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1329,
    "line": 1314,
    "path": "GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:fced7ca5ac9af39999976e7fe4797becdbb0d7f655f748e8f1cfa31b8ed30661",
  "verification": {
    "reference": "docs/verification/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:f03ac76b-1ea1-f72c-067b-a582e1afe807`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1314–1329.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma verticalIntegral_split_three_finite {s a b e σ : ℝ} {f : ℂ → ℂ}
    (hf : IntegrableOn (fun t : ℝ ↦ f (σ + t * I)) (Icc s e))
    (hab: s < a ∧ a < b ∧ b < e):
    VIntegral f σ s e =
    VIntegral f σ s a +
    VIntegral f σ a b +
    VIntegral f σ b e := by
  dsimp [VIntegral]
  rw [← intervalIntegrable_iff_integrableOn_Icc_of_le (by linarith)] at hf
  rw [← intervalIntegral.integral_add_adjacent_intervals (b := a),
    ← intervalIntegral.integral_add_adjacent_intervals (a := a) (b := b)]
  · ring
  all_goals
    apply IntervalIntegrable.mono_set hf
    apply uIcc_subset_uIcc <;> apply mem_uIcc_of_le <;> linarith

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Analysis/RealAnalysis/Integration/MediumPNT/Variantf7095a3977b186edff32a867dfc69a2df74b307d2793fd022a91b7c19edf2dcc.lean#L1314).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `44803b182000672977293e598b84e8212a3b9098` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
