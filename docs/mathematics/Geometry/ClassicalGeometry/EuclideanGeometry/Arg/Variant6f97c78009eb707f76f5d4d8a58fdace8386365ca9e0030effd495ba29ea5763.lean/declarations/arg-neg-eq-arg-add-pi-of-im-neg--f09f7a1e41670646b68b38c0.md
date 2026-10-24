# arg_neg_eq_arg_add_pi_of_im_neg

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
      "line": 375,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:abdbce25-d30b-828e-6128-80a6475b2bf8",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:fcbd9675-ef5a-0464-7d9b-c14d04c4dfa1",
  "kind": "theorem",
  "lexical_name": "arg_neg_eq_arg_add_pi_of_im_neg",
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
  "slug": "arg-neg-eq-arg-add-pi-of-im-neg--f09f7a1e41670646b68b38c0",
  "source": {
    "blob": "84b330a88367a3f32e3f4e8c2e6224f3931fe9ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 379,
    "line": 375,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f09f7a1e41670646b68b38c0efebd249e50e0bd8106ce404da12fefa4b89cc20",
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

Occurrence: `result:fcbd9675-ef5a-0464-7d9b-c14d04c4dfa1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 375–379.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arg_neg_eq_arg_add_pi_of_im_neg {x : ℂ} (hi : x.im < 0) : arg (-x) = arg x + π := by
  rw [arg_of_im_neg hi, arg_of_im_pos (show 0 < (-x).im from Left.neg_pos_iff.2 hi)]
  simp [neg_div, Real.arccos_neg, add_comm, ← sub_eq_add_neg]
#align complex.arg_neg_eq_arg_add_pi_of_im_neg Complex.arg_neg_eq_arg_add_pi_of_im_neg

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean#L375).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84b330a88367a3f32e3f4e8c2e6224f3931fe9ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
