# Mod_

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:782d963eaa75edcdb0bcd45f823d97f2b7251bd5f3c487ef79847760e371a037",
  "kind": "structure",
  "lexical_name": "Mod_",
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
  "slug": "mod--ebff302899db1352babaed9e",
  "source": {
    "blob": "8b886160b5fd764a06157d9f9d7bb82341cc8fa9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 33,
    "line": 20,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ebff302899db1352babaed9e71dbe5229fe730d6b2b5c664f702a71714e8c643",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:782d963eaa75edcdb0bcd45f823d97f2b7251bd5f3c487ef79847760e371a037`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 20–33.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Mod_ (A : Mon_ C) where
  /-- The underlying object in the ambient monoidal category -/
  X : C
  /-- The action morphism of the module object -/
  smul : A.X ⊗ X ⟶ X
  one_smul : A.one ▷ X ≫ smul = (λ_ X).hom := by aesop_cat
  assoc : A.mul ▷ X ≫ smul = (α_ A.X A.X X).hom ≫ A.X ◁ smul ≫ smul := by aesop_cat

attribute [reassoc (attr := simp)] Mod_.one_smul Mod_.assoc

namespace Mod_

variable {A : Mon_ C} (M : Mod_ A)

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Mod/Variant5e527a06fd2921ccf741b930b13ffcbb4ee6dd9482b8f7c5a7b933fcd8ecffc3.lean#L20).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `8b886160b5fd764a06157d9f9d7bb82341cc8fa9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
