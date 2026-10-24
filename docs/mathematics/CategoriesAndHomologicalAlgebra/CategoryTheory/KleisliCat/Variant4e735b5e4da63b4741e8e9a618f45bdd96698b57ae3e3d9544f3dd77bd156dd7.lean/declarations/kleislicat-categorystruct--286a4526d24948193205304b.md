# KleisliCat.categoryStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a8949cd5b1f433d24c4505b608ed19f8731ae3da055f6b7fa0f7ffebf5f9dbf1",
  "kind": "instance",
  "lexical_name": "KleisliCat.categoryStruct",
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
  "slug": "kleislicat-categorystruct--286a4526d24948193205304b",
  "source": {
    "blob": "b36cd151cad213d7b37bf6df9240ada35bf93009",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 51,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:286a4526d24948193205304bdc8960ea0833b4578a019c40a5081e3cd5235083",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a8949cd5b1f433d24c4505b608ed19f8731ae3da055f6b7fa0f7ffebf5f9dbf1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–51.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance KleisliCat.categoryStruct {m} [Monad.{u, v} m] :
    CategoryStruct (KleisliCat m) where
  Hom α β := α → m β
  id _ x := pure x
  comp f g := f >=> g

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variant4e735b5e4da63b4741e8e9a618f45bdd96698b57ae3e3d9544f3dd77bd156dd7.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b36cd151cad213d7b37bf6df9240ada35bf93009` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
