# eilenbergMoore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:7cf45224f7cc3b5bc8772344cc5bc355eec751c038b9efb530c7e8238ccbe036",
  "kind": "instance",
  "lexical_name": "eilenbergMoore",
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
  "slug": "eilenbergmoore--bb0ca9156e7ef51c496c6df3",
  "source": {
    "blob": "8d079fbafea6fe45740f80a84f465f34924f2d5c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 331,
    "line": 325,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant2260fa156b6ab8d3e0005d2cfd9a439cd719f25c889beeb9b801fa6dae5930d6.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bb0ca9156e7ef51c496c6df3854711a543137b3108f86a934f9a995be4750b64",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant2260fa156b6ab8d3e0005d2cfd9a439cd719f25c889beeb9b801fa6dae5930d6.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:7cf45224f7cc3b5bc8772344cc5bc355eec751c038b9efb530c7e8238ccbe036`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 325–331.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance eilenbergMoore : Category (Coalgebra G) where

/--
To construct an isomorphism of coalgebras, it suffices to give an isomorphism of the carriers which
commutes with the structure morphisms.
-/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant2260fa156b6ab8d3e0005d2cfd9a439cd719f25c889beeb9b801fa6dae5930d6.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Variant2260fa156b6ab8d3e0005d2cfd9a439cd719f25c889beeb9b801fa6dae5930d6.lean#L325).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8d079fbafea6fe45740f80a84f465f34924f2d5c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
