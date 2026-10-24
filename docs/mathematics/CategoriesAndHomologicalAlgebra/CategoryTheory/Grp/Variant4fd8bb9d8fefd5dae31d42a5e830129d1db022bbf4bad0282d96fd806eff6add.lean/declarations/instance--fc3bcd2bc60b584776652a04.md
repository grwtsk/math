# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6f8ef8c621aa92d69a50cf3d67030018e3eec3c44652c9de0c46ca89182b757",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--fc3bcd2bc60b584776652a04",
  "source": {
    "blob": "7701589327b790f1585c3b1bc755917acd15b25f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 329,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4fd8bb9d8fefd5dae31d42a5e830129d1db022bbf4bad0282d96fd806eff6add.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:fc3bcd2bc60b584776652a041d8aad74ee461627455b446118bd5f400c695658",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4fd8bb9d8fefd5dae31d42a5e830129d1db022bbf4bad0282d96fd806eff6add.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6f8ef8c621aa92d69a50cf3d67030018e3eec3c44652c9de0c46ca89182b757`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 329–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance : HasInitial (Grp_ C) :=
  hasInitial_of_unique (trivial C)

end Grp_

namespace CategoryTheory
variable {C}
  {D : Type u₂} [Category.{v₂} D] [CartesianMonoidalCategory D]
  {E : Type u₃} [Category.{v₃} E] [CartesianMonoidalCategory E]

namespace Functor
variable {F F' : C ⥤ D} [F.Monoidal] [F'.Monoidal] {G : D ⥤ E} [G.Monoidal]

open Monoidal

variable (F) in
/-- A finite-product-preserving functor takes group objects to group objects. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4fd8bb9d8fefd5dae31d42a5e830129d1db022bbf4bad0282d96fd806eff6add.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grp/Variant4fd8bb9d8fefd5dae31d42a5e830129d1db022bbf4bad0282d96fd806eff6add.lean#L329).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7701589327b790f1585c3b1bc755917acd15b25f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
