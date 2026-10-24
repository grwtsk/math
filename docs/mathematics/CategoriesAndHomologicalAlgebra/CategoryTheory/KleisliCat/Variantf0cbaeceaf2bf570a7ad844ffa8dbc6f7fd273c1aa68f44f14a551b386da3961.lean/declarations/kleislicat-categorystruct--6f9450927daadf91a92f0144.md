# KleisliCat.categoryStruct

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8785d0877ed8ec93bd81b453c60e230a26547fd0b2ed7f2b7ca3f0de52eb6ee8",
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
  "slug": "kleislicat-categorystruct--6f9450927daadf91a92f0144",
  "source": {
    "blob": "dd739a8dee97e2642b384e0107483520330bdce2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 43,
    "line": 38,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6f9450927daadf91a92f014421be2efe84d2a2c92077ca02e2ca994adbbae39f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8785d0877ed8ec93bd81b453c60e230a26547fd0b2ed7f2b7ca3f0de52eb6ee8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 38–43.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/KleisliCat/Variantf0cbaeceaf2bf570a7ad844ffa8dbc6f7fd273c1aa68f44f14a551b386da3961.lean#L38).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `dd739a8dee97e2642b384e0107483520330bdce2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
