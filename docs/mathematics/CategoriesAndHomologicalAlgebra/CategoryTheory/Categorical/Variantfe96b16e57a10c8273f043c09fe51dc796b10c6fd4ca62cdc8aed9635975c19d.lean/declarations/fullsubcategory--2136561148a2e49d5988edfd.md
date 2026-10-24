# FullSubcategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35c48661e21ad93b2595a6c92db54bad9df603b9266c3ca3063d9e1a44c49025",
  "kind": "def",
  "lexical_name": "FullSubcategory",
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
  "slug": "fullsubcategory--2136561148a2e49d5988edfd",
  "source": {
    "blob": "565449703703ec99c7f4158dcc3a0ad8a0278a97",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 42,
    "line": 24,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variantfe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:2136561148a2e49d5988edfda10b4b67260d893ac8f1da4996662e210f634410",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variantfe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35c48661e21ad93b2595a6c92db54bad9df603b9266c3ca3063d9e1a44c49025`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 24–42.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def FullSubcategory
    (C : CategoryLike.{uObj, uHom})
    (P : C.Obj → Prop) :
    CategoryLike.{uObj, uHom} where
  Obj := {X : C.Obj // P X}
  Hom := fun X Y => C.Hom X.1 Y.1
  id := fun X => C.id X.1
  comp := fun f g => C.comp f g
  id_comp := by
    intro X Y f
    exact C.id_comp f
  comp_id := by
    intro X Y f
    exact C.comp_id f
  assoc := by
    intro W X Y Z f g h
    exact C.assoc f g h

/-- Restrict the codomain of a functor after proving every image object satisfies `P`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variantfe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Categorical/Variantfe96b16e57a10c8273f043c09fe51dc796b10c6fd4ca62cdc8aed9635975c19d.lean#L24).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `565449703703ec99c7f4158dcc3a0ad8a0278a97` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
