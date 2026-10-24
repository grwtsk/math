# GLPos.coe_neg_GL

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "239453269e74946cb315ca33a44d789328d6dc4c",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 221,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/37/37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:6980c103-7288-4a9e-566a-f8e6a94b0717",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ab6e11d7-4f31-2bd5-8695-2c29b7a2602b",
  "kind": "theorem",
  "lexical_name": "GLPos.coe_neg_GL",
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
  "slug": "glpos-coe-neg-gl--4f3362fb6855f5864c93c930",
  "source": {
    "blob": "239453269e74946cb315ca33a44d789328d6dc4c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 221,
    "path": "GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:4f3362fb6855f5864c93c9304b710044099e33eea513f7a9f8f995db30d99086",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ab6e11d7-4f31-2bd5-8695-2c29b7a2602b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 221–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem GLPos.coe_neg_GL (g : GLPos n R) : ↑(-g) = -(g : GL n R) :=
  rfl
set_option linter.uppercaseLean3 false in
#align matrix.GL_pos.coe_neg_GL Matrix.GLPos.coe_neg_GL

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/GeneralLinearGroup/Variant37f10bbdb2ad37cd3d9809b6cd2b5a7b7bf8fa3b481e8763c212643163ae3fac.lean#L221).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `239453269e74946cb315ca33a44d789328d6dc4c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
