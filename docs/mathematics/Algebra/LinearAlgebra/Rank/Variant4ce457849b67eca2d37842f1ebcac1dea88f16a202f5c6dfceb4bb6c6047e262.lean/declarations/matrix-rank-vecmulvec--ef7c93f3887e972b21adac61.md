# Matrix.rank_vecMulVec.

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "31faae9f47694f8f386f96f3529dfb84a0d6fb2a",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 595,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4c/4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:25acb4fe-12d0-b102-12e9-ff73f7e4f9aa",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:492872e5-b1a2-aebb-22af-dcf3494f5e2e",
  "kind": "theorem",
  "lexical_name": "Matrix.rank_vecMulVec.",
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
  "slug": "matrix-rank-vecmulvec--ef7c93f3887e972b21adac61",
  "source": {
    "blob": "31faae9f47694f8f386f96f3529dfb84a0d6fb2a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 601,
    "line": 595,
    "path": "GRWTSK/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ef7c93f3887e972b21adac6177cba01a23c4b1fc06c2ef4fb238f00ece90a03a",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:492872e5-b1a2-aebb-22af-dcf3494f5e2e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 595–601.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem Matrix.rank_vecMulVec.{u} {K m n : Type u} [CommRing K] [Fintype n]
    [DecidableEq n] (w : m → K) (v : n → K) : (Matrix.vecMulVec w v).toLin'.rank ≤ 1 := by
  nontriviality K
  rw [Matrix.vecMulVec_eq (Fin 1), Matrix.toLin'_mul]
  refine le_trans (LinearMap.rank_comp_le_left _ _) ?_
  refine (LinearMap.rank_le_domain _).trans_eq ?_
  rw [rank_fun', Fintype.card_ofSubsingleton, Nat.cast_one]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Rank/Variant4ce457849b67eca2d37842f1ebcac1dea88f16a202f5c6dfceb4bb6c6047e262.lean#L595).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `31faae9f47694f8f386f96f3529dfb84a0d6fb2a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
