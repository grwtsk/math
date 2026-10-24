# norm_sq_eq_add_norm_sq_projection

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "aadf27fbbe3a61b72addc0bb0bed5e7fb8c2b1e6",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 555,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/6e/6e0b7c1069ac611f71c6f6d73b25f6cfa1c262c3d2413fc6332cf7961ae53a30.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ca21c52-f480-3841-68df-001d9636c4fa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e936d699-0ccc-636c-8819-28a071823824",
  "kind": "theorem",
  "lexical_name": "norm_sq_eq_add_norm_sq_projection",
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
  "slug": "norm-sq-eq-add-norm-sq-projection--b622d50684792dd5a0a5b41b",
  "source": {
    "blob": "aadf27fbbe3a61b72addc0bb0bed5e7fb8c2b1e6",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 564,
    "line": 555,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant6e0b7c1069ac611f71c6f6d73b25f6cfa1c262c3d2413fc6332cf7961ae53a30.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:b622d50684792dd5a0a5b41b647a89802719254df5a08fc678470751a5501c13",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant6e0b7c1069ac611f71c6f6d73b25f6cfa1c262c3d2413fc6332cf7961ae53a30.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e936d699-0ccc-636c-8819-28a071823824`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 555–564.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem norm_sq_eq_add_norm_sq_projection (x : E) (S : Submodule 𝕜 E) [S.HasOrthogonalProjection] :
    ‖x‖ ^ 2 = ‖S.orthogonalProjectionOnto x‖ ^ 2 + ‖Sᗮ.orthogonalProjectionOnto x‖ ^ 2 :=
  calc
    ‖x‖ ^ 2 = ‖S.starProjection x + Sᗮ.starProjection x‖ ^ 2 := by
      rw [starProjection_add_starProjection_orthogonal]
    _ = ‖S.orthogonalProjectionOnto x‖ ^ 2 + ‖Sᗮ.orthogonalProjectionOnto x‖ ^ 2 := by
      simp only [sq]
      exact norm_add_sq_eq_norm_sq_add_norm_sq_of_inner_eq_zero _ _ <|
        (S.mem_orthogonal _).1 (Sᗮ.orthogonalProjectionOnto x).2 _ (S.orthogonalProjectionOnto x).2

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant6e0b7c1069ac611f71c6f6d73b25f6cfa1c262c3d2413fc6332cf7961ae53a30.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant6e0b7c1069ac611f71c6f6d73b25f6cfa1c262c3d2413fc6332cf7961ae53a30.lean#L555).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `aadf27fbbe3a61b72addc0bb0bed5e7fb8c2b1e6` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
