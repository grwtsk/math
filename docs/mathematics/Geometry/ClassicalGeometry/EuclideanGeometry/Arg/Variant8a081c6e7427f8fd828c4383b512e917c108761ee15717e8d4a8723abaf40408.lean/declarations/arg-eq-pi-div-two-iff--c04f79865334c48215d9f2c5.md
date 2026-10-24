# arg_eq_pi_div_two_iff

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
      "line": 251,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/8a/8a081c6e7427f8fd828c4383b512e917c108761ee15717e8d4a8723abaf40408.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8b44e017-7083-964f-3ca5-a31d01972649",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:da9cf548-3f96-20b1-07e7-c4ceaaca891c",
  "kind": "theorem",
  "lexical_name": "arg_eq_pi_div_two_iff",
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
  "slug": "arg-eq-pi-div-two-iff--c04f79865334c48215d9f2c5",
  "source": {
    "blob": "b1a74fc2f875eba2a7fa58ca17588520d1a5e3d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 260,
    "line": 251,
    "path": "GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8a081c6e7427f8fd828c4383b512e917c108761ee15717e8d4a8723abaf40408.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c04f79865334c48215d9f2c53cb465a5c1344ee2f7f93d9475b589b549cbdb09",
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

Occurrence: `result:da9cf548-3f96-20b1-07e7-c4ceaaca891c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 251–260.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem arg_eq_pi_div_two_iff {z : ℂ} : arg z = π / 2 ↔ z.re = 0 ∧ 0 < z.im := by
  by_cases h₀ : z = 0; · simp [h₀, lt_irrefl, Real.pi_div_two_pos.ne]
  constructor
  · intro h
    rw [← norm_mul_cos_add_sin_mul_I z, h]
    simp [h₀]
  · obtain ⟨x, y⟩ := z
    rintro ⟨rfl : x = 0, hy : 0 < y⟩
    rw [← arg_I, ← arg_real_mul I hy, ofReal_mul', I_re, I_im, mul_zero, mul_one]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../../verification/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8a081c6e7427f8fd828c4383b512e917c108761ee15717e8d4a8723abaf40408.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/ClassicalGeometry/EuclideanGeometry/Arg/Variant8a081c6e7427f8fd828c4383b512e917c108761ee15717e8d4a8723abaf40408.lean#L251).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b1a74fc2f875eba2a7fa58ca17588520d1a5e3d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
