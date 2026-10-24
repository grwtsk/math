# CoreSmallCategoryOfSet

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:d3f11d91954c3ca7edee36687be7da83f9884c244a8d8c4769804ea55c019623",
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
  "slug": "coresmallcategoryofset--71c883f4161ddc5244349971",
  "source": {
    "blob": "bd3ca4fde9d26586b72530568ce567701680b4e0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 91,
    "line": 75,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant61616471ffa35f11ac7908677ec7129589433dad75a3903491ec7b4241881d7b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:71c883f4161ddc524434997177ad08126e1b806112a647465a9bad0aa6c49d7e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant61616471ffa35f11ac7908677ec7129589433dad75a3903491ec7b4241881d7b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:d3f11d91954c3ca7edee36687be7da83f9884c244a8d8c4769804ea55c019623`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 75–91.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant61616471ffa35f11ac7908677ec7129589433dad75a3903491ec7b4241881d7b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SmallRepresentatives/Variant61616471ffa35f11ac7908677ec7129589433dad75a3903491ec7b4241881d7b.lean#L75).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `bd3ca4fde9d26586b72530568ce567701680b4e0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
