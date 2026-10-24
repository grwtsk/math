# neg_pi_div_two_le_arg_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "84b330a88367a3f32e3f4e8c2e6224f3931fe9ca",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 339,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:4c5661e5-3683-c320-5a3e-8e7e7650917f",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a99c266-d3d5-ed60-ad52-799bd7e0ba80",
  "kind": "theorem",
  "lexical_name": "neg_pi_div_two_le_arg_iff",
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
  "slug": "neg-pi-div-two-le-arg-iff--bbbf951f592499719da68f2b",
  "source": {
    "blob": "84b330a88367a3f32e3f4e8c2e6224f3931fe9ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 354,
    "line": 339,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:bbbf951f592499719da68f2b35838a84bb71621bccac54d3c111497cf4b51669",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a99c266-d3d5-ed60-ad52-799bd7e0ba80`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 339–354.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem neg_pi_div_two_le_arg_iff {z : ℂ} : -(π / 2) ≤ arg z ↔ 0 ≤ re z ∨ 0 ≤ im z := by
  cases' le_or_lt 0 (re z) with hre hre
  · simp only [hre, arg_of_re_nonneg hre, Real.neg_pi_div_two_le_arcsin, true_or_iff]
  simp only [hre.not_le, false_or_iff]
  cases' le_or_lt 0 (im z) with him him
  · simp only [him]
    rw [iff_true_iff, arg_of_re_neg_of_im_nonneg hre him]
    exact (Real.neg_pi_div_two_le_arcsin _).trans (le_add_of_nonneg_right Real.pi_pos.le)
  · simp only [him.not_le]
    rw [iff_false_iff, not_le, arg_of_re_neg_of_im_neg hre him, sub_lt_iff_lt_add', ←
      sub_eq_add_neg, sub_half, Real.arcsin_lt_pi_div_two, div_lt_one, neg_im, ← abs_of_neg him,
      abs_im_lt_abs]
    exacts [hre.ne, abs.pos <| ne_of_apply_ne re hre.ne]
#align complex.neg_pi_div_two_le_arg_iff Complex.neg_pi_div_two_le_arg_iff

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean#L339).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84b330a88367a3f32e3f4e8c2e6224f3931fe9ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
