# arg_neg_eq_arg_add_pi_iff

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
      "line": 395,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6f/6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:79cf7ede-29b1-6ec4-88e1-b2c75d6e6407",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:a5682859-1db1-8514-1763-3aeeaca90ebc",
  "kind": "theorem",
  "lexical_name": "arg_neg_eq_arg_add_pi_iff",
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
  "slug": "arg-neg-eq-arg-add-pi-iff--101e158e7b5b9a955daff0a2",
  "source": {
    "blob": "84b330a88367a3f32e3f4e8c2e6224f3931fe9ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 409,
    "line": 395,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:101e158e7b5b9a955daff0a24d8a0035baa3926d737ea654a8b05d4fb076226f",
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

Occurrence: `result:a5682859-1db1-8514-1763-3aeeaca90ebc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 395–409.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arg_neg_eq_arg_add_pi_iff {x : ℂ} :
    arg (-x) = arg x + π ↔ x.im < 0 ∨ x.im = 0 ∧ 0 < x.re := by
  rcases lt_trichotomy x.im 0 with (hi | hi | hi)
  · simp [hi, arg_neg_eq_arg_add_pi_of_im_neg]
  · rw [(ext rfl hi : x = x.re)]
    rcases lt_trichotomy x.re 0 with (hr | hr | hr)
    · rw [arg_ofReal_of_neg hr, ← ofReal_neg, arg_ofReal_of_nonneg (Left.neg_pos_iff.2 hr).le]
      simp [hr.not_lt, ← two_mul, Real.pi_ne_zero]
    · simp [hr, hi, Real.pi_ne_zero.symm]
    · rw [arg_ofReal_of_nonneg hr.le, ← ofReal_neg, arg_ofReal_of_neg (Left.neg_neg_iff.2 hr)]
      simp [hr]
  · simp [hi, hi.ne.symm, hi.not_lt, arg_neg_eq_arg_sub_pi_of_im_pos, sub_eq_add_neg, ←
      add_eq_zero_iff_neg_eq, Real.pi_ne_zero]
#align complex.arg_neg_eq_arg_add_pi_iff Complex.arg_neg_eq_arg_add_pi_iff

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant6f97c78009eb707f76f5d4d8a58fdace8386365ca9e0030effd495ba29ea5763.lean#L395).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `84b330a88367a3f32e3f4e8c2e6224f3931fe9ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
