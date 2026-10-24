# CoreSmallCategoryOfSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:76259d75f3cfbe7e3efa83896ff8f0c3c4d92e9b55859f40daa4fe416ec3c86a",
  "kind": "structure",
  "lexical_name": "CoreSmallCategoryOfSet",
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
  "slug": "coresmallcategoryofset--9b9d47fbc10c8222e5203ddd",
  "source": {
    "blob": "148521d5078d99d85c7656ebfefbc3ef587cf7b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 83,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant6c84959e0514a79668d331d4b3764df0472f5b9ff057bb0d44f7d0a307f02128.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:9b9d47fbc10c8222e5203ddd90ecbfa1fd06c7f3ce360bc2a49902ef811686b2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant6c84959e0514a79668d331d4b3764df0472f5b9ff057bb0d44f7d0a307f02128.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:76259d75f3cfbe7e3efa83896ff8f0c3c4d92e9b55859f40daa4fe416ec3c86a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 83–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CoreSmallCategoryOfSet where
  /-- objects -/
  obj : Set Ω
  /-- morphisms -/
  hom (X Y : obj) : Set Ω
  /-- a bijection between the types of objects -/
  objEquiv : obj ≃ C
  /-- a bijection between the types of morphisms -/
  homEquiv {X Y : obj} : hom X Y ≃ (objEquiv X ⟶ objEquiv Y)

namespace CoreSmallCategoryOfSet

variable {Ω C} (h : CoreSmallCategoryOfSet Ω C)

/-- The `SmallCategoryOfSet` structure induced by a
`CoreSmallCategoryOfSet` structure. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant6c84959e0514a79668d331d4b3764df0472f5b9ff057bb0d44f7d0a307f02128.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant6c84959e0514a79668d331d4b3764df0472f5b9ff057bb0d44f7d0a307f02128.lean#L83).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `148521d5078d99d85c7656ebfefbc3ef587cf7b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
