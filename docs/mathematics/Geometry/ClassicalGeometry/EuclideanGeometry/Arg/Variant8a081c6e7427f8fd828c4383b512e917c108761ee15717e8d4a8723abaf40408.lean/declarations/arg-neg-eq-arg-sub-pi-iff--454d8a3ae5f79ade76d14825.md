# arg_neg_eq_arg_sub_pi_iff

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "b1a74fc2f875eba2a7fa58ca17588520d1a5e3d3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 408,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a081c6e7427f8fd828c4383b512e917c108761ee15717e8d4a8723abaf40408.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:a1818401-9864-2441-572b-734bc4663c88",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:3eb3e255-d003-1b34-e898-702d67a3af72",
  "kind": "theorem",
  "lexical_name": "arg_neg_eq_arg_sub_pi_iff",
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
  "slug": "arg-neg-eq-arg-sub-pi-iff--454d8a3ae5f79ade76d14825",
  "source": {
    "blob": "b1a74fc2f875eba2a7fa58ca17588520d1a5e3d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 421,
    "line": 408,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8a081c6e7427f8fd828c4383b512e917c108761ee15717e8d4a8723abaf40408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:454d8a3ae5f79ade76d14825426d144a58fab85285fec921da89392a704199fd",
  "verification": {
    "reference": "docs/verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8a081c6e7427f8fd828c4383b512e917c108761ee15717e8d4a8723abaf40408.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:3eb3e255-d003-1b34-e898-702d67a3af72`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 408–421.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arg_neg_eq_arg_sub_pi_iff {x : ℂ} :
    arg (-x) = arg x - π ↔ 0 < x.im ∨ x.im = 0 ∧ x.re < 0 := by
  rcases lt_trichotomy x.im 0 with (hi | hi | hi)
  · simp [hi, hi.ne, hi.not_lt, arg_neg_eq_arg_add_pi_of_im_neg, sub_eq_add_neg, ←
      add_eq_zero_iff_eq_neg, Real.pi_ne_zero]
  · rw [(ext rfl hi : x = x.re)]
    rcases lt_trichotomy x.re 0 with (hr | hr | hr)
    · rw [arg_ofReal_of_neg hr, ← ofReal_neg, arg_ofReal_of_nonneg (Left.neg_pos_iff.2 hr).le]
      simp [hr]
    · simp [hr, hi, Real.pi_ne_zero]
    · rw [arg_ofReal_of_nonneg hr.le, ← ofReal_neg, arg_ofReal_of_neg (Left.neg_neg_iff.2 hr)]
      simp [hr.not_lt, ← add_eq_zero_iff_eq_neg, Real.pi_ne_zero]
  · simp [hi, arg_neg_eq_arg_sub_pi_of_im_pos]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8a081c6e7427f8fd828c4383b512e917c108761ee15717e8d4a8723abaf40408.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8a081c6e7427f8fd828c4383b512e917c108761ee15717e8d4a8723abaf40408.lean#L408).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1a74fc2f875eba2a7fa58ca17588520d1a5e3d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
