# opcyclesOpIso_inv_naturality

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0590a94b-d9df-c3b8-7e22-365460e3ba00",
  "kind": "lemma",
  "lexical_name": "opcyclesOpIso_inv_naturality",
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
  "slug": "opcyclesopiso-inv-naturality--639d1b155a141e9e479688e1",
  "source": {
    "blob": "a12ee73967f3735efe69db3b33dc2553db58bacd",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 414,
    "line": 406,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantdf861b14ffe8c65cb33c7d9fe25f5184983f2493e759d3ba1dce53eba929c0fc.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:639d1b155a141e9e479688e1acdede517d1f1eb91b709ca342710bb3b67be3b7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantdf861b14ffe8c65cb33c7d9fe25f5184983f2493e759d3ba1dce53eba929c0fc.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0590a94b-d9df-c3b8-7e22-365460e3ba00`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 406–414.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma opcyclesOpIso_inv_naturality :
    (cyclesMap φ i).op ≫ (K.opcyclesOpIso i).inv =
      (L.opcyclesOpIso i).inv ≫ opcyclesMap ((opFunctor _ _).map φ.op) _ :=
  ShortComplex.opcyclesOpIso_inv_naturality ((shortComplexFunctor V c i).map φ)

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantdf861b14ffe8c65cb33c7d9fe25f5184983f2493e759d3ba1dce53eba929c0fc.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variantdf861b14ffe8c65cb33c7d9fe25f5184983f2493e759d3ba1dce53eba929c0fc.lean#L406).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a12ee73967f3735efe69db3b33dc2553db58bacd` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
