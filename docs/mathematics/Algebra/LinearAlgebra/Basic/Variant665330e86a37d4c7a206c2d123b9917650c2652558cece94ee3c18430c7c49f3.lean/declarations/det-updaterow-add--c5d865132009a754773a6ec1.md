# det_updateRow_add

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "ced9d1b06010e1fdfc639cbcb9da1c547ce5c449",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 380,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/66/665330e86a37d4c7a206c2d123b9917650c2652558cece94ee3c18430c7c49f3.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0f2646c8-72ea-48aa-553a-a40697601efc",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:586ded5d-45c5-8821-a8e9-9b71ff4aff03",
  "kind": "theorem",
  "lexical_name": "det_updateRow_add",
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
  "slug": "det-updaterow-add--c5d865132009a754773a6ec1",
  "source": {
    "blob": "ced9d1b06010e1fdfc639cbcb9da1c547ce5c449",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 383,
    "line": 380,
    "path": "GRWTSK/Algebra/LinearAlgebra/Basic/Variant665330e86a37d4c7a206c2d123b9917650c2652558cece94ee3c18430c7c49f3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c5d865132009a754773a6ec1a8cff2c8485a27dea03f797910d044b3d84857d0",
  "verification": {
    "reference": "docs/verification/Algebra/LinearAlgebra/Basic/Variant665330e86a37d4c7a206c2d123b9917650c2652558cece94ee3c18430c7c49f3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:586ded5d-45c5-8821-a8e9-9b71ff4aff03`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 380–383.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem det_updateRow_add (M : Matrix n n R) (j : n) (u v : n → R) :
    det (updateRow M j <| u + v) = det (updateRow M j u) + det (updateRow M j v) :=
  (detRowAlternating : (n → R) [⋀^n]→ₗ[R] R).map_update_add M j u v

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Algebra/LinearAlgebra/Basic/Variant665330e86a37d4c7a206c2d123b9917650c2652558cece94ee3c18430c7c49f3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Algebra/LinearAlgebra/Basic/Variant665330e86a37d4c7a206c2d123b9917650c2652558cece94ee3c18430c7c49f3.lean#L380).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ced9d1b06010e1fdfc639cbcb9da1c547ce5c449` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
