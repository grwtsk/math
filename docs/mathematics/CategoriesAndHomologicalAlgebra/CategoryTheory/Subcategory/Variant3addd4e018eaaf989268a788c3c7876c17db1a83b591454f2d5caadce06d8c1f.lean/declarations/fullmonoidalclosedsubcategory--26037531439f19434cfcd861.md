# fullMonoidalClosedSubcategory

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:aca3e511394fe0a25197a5b7bee28825383a1b1045f5da908b16b5c800d76860",
  "kind": "instance",
  "lexical_name": "fullMonoidalClosedSubcategory",
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
  "slug": "fullmonoidalclosedsubcategory--26037531439f19434cfcd861",
  "source": {
    "blob": "b4585d3f10c7c0d9f3c01d9d943af187d2d05e48",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 243,
    "line": 226,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant3addd4e018eaaf989268a788c3c7876c17db1a83b591454f2d5caadce06d8c1f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26037531439f19434cfcd861cecbe9cb0d3f1e4f4e62268908a7610c03690f8a",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant3addd4e018eaaf989268a788c3c7876c17db1a83b591454f2d5caadce06d8c1f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:aca3e511394fe0a25197a5b7bee28825383a1b1045f5da908b16b5c800d76860`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 226–243.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance fullMonoidalClosedSubcategory : MonoidalClosed (FullSubcategory P) where
  closed X :=
  { isAdj :=
    { right :=
        FullSubcategory.lift P (fullSubcategoryInclusion P ⋙ ihom X.1) fun Y => prop_ihom X.2 Y.2
      adj :=
        Adjunction.mkOfUnitCounit
        { unit :=
          { app := fun Y => (ihom.coev X.1).app Y.1
            naturality := fun Y Z f => ihom.coev_naturality X.1 f }
          counit :=
          { app := fun Y => (ihom.ev X.1).app Y.1
            naturality := fun Y Z f => ihom.ev_naturality X.1 f }
          left_triangle := by ext Y; simp; exact ihom.ev_coev X.1 Y.1
          right_triangle := by ext Y; simp; exact ihom.coev_ev X.1 Y.1 } } }
#align category_theory.monoidal_category.full_monoidal_closed_subcategory CategoryTheory.MonoidalCategory.fullMonoidalClosedSubcategory

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant3addd4e018eaaf989268a788c3c7876c17db1a83b591454f2d5caadce06d8c1f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Subcategory/Variant3addd4e018eaaf989268a788c3c7876c17db1a83b591454f2d5caadce06d8c1f.lean#L226).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b4585d3f10c7c0d9f3c01d9d943af187d2d05e48` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
