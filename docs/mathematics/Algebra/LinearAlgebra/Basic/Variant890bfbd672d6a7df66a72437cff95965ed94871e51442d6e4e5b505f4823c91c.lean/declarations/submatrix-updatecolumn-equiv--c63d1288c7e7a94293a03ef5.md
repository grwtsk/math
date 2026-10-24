# submatrix_updateColumn_equiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "db995af1c4bb097da8df329100c0a95c88bd9b94",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 2945,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/89/890bfbd672d6a7df66a72437cff95965ed94871e51442d6e4e5b505f4823c91c.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:cb1e7db1-18ad-3fe7-eb65-4a60aadbcc7c",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:e5b8eb30-1d76-032d-49bf-af3de754152d",
  "kind": "theorem",
  "lexical_name": "submatrix_updateColumn_equiv",
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
  "slug": "submatrix-updatecolumn-equiv--c63d1288c7e7a94293a03ef5",
  "source": {
    "blob": "db995af1c4bb097da8df329100c0a95c88bd9b94",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 2953,
    "line": 2945,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant890bfbd672d6a7df66a72437cff95965ed94871e51442d6e4e5b505f4823c91c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c63d1288c7e7a94293a03ef557672eccaa08071138707cf0fbe4433b0bbf5af8",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant890bfbd672d6a7df66a72437cff95965ed94871e51442d6e4e5b505f4823c91c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e5b8eb30-1d76-032d-49bf-af3de754152d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 2945–2953.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem submatrix_updateColumn_equiv [DecidableEq o] [DecidableEq n] (A : Matrix m n α) (j : n)
    (c : m → α) (e : l ≃ m) (f : o ≃ n) : (A.updateColumn j c).submatrix e f =
    updateColumn (A.submatrix e f) (f.symm j) fun i => c (e i) :=
  Eq.trans (by simp_rw [Equiv.apply_symm_apply]) (updateColumn_submatrix_equiv A _ _ e f).symm
#align matrix.submatrix_update_column_equiv Matrix.submatrix_updateColumn_equiv

/-! `reindex` versions of the above `submatrix` lemmas for convenience. -/


```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant890bfbd672d6a7df66a72437cff95965ed94871e51442d6e4e5b505f4823c91c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant890bfbd672d6a7df66a72437cff95965ed94871e51442d6e4e5b505f4823c91c.lean#L2945).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `db995af1c4bb097da8df329100c0a95c88bd9b94` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
