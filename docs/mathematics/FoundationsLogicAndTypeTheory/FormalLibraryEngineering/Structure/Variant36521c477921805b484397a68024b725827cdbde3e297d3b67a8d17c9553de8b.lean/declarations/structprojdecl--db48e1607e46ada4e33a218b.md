# StructProjDecl

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b5dd6f7d2dcc4297ca1105b11496c2da6242bbc51a603500a26d4ffc80f5b96e",
  "kind": "structure",
  "lexical_name": "StructProjDecl",
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
  "slug": "structprojdecl--db48e1607e46ada4e33a218b",
  "source": {
    "blob": "5cc777ee07f5b1b7fdcdcb709be596b94be0081a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 57,
    "line": 41,
    "path": "GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:db48e1607e46ada4e33a218bea67dc63e5f7e10598946057491c3736afcf4e36",
  "verification": {
    "reference": "docs/verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b5dd6f7d2dcc4297ca1105b11496c2da6242bbc51a603500a26d4ffc80f5b96e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 41–57.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StructProjDecl where
  ref : Syntax
  projName : Name
  /-- Overrides to param binders to apply after param binder info inference. -/
  paramInfoOverrides : List (Option BinderInfo) := []

/--
Adds projection functions to the environment for the one-constructor inductive type named `n`.
- The `projName`s in each `StructProjDecl` are used for the names of the declarations added to the environment.
- If `instImplicit` is true, then generates projections with `self` being instance implicit.

Notes:
- This function supports everything that `Expr.proj` supports (see `lean::type_checker::infer_proj`).
  This means we can generate projections for inductive types with one-constructor,
  even if it is an indexed family (which is not supported by the `structure` command).
- We throw errors in the cases that `Expr.proj` is not type-correct.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/FoundationsLogicAndTypeTheory/FormalLibraryEngineering/Structure/Variant36521c477921805b484397a68024b725827cdbde3e297d3b67a8d17c9553de8b.lean#L41).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5cc777ee07f5b1b7fdcdcb709be596b94be0081a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
