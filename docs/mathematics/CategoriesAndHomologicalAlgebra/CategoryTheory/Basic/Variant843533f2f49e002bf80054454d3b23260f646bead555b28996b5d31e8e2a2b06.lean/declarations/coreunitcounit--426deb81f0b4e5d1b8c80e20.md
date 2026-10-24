# CoreUnitCounit

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:0d7152da0853ebbdb7aa41576754ef8fa20c0e73a32a262919e9a5a60edc4fa4",
  "kind": "structure",
  "lexical_name": "CoreUnitCounit",
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
  "slug": "coreunitcounit--426deb81f0b4e5d1b8c80e20",
  "source": {
    "blob": "4496a2211f2fc987a6b1eb283dbc90021e98f8ca",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 339,
    "line": 306,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant843533f2f49e002bf80054454d3b23260f646bead555b28996b5d31e8e2a2b06.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:426deb81f0b4e5d1b8c80e2044e38600536c2bab6f9241994029f7ebe9ecc14e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant843533f2f49e002bf80054454d3b23260f646bead555b28996b5d31e8e2a2b06.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:0d7152da0853ebbdb7aa41576754ef8fa20c0e73a32a262919e9a5a60edc4fa4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 306–339.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CoreUnitCounit (F : C ⥤ D) (G : D ⥤ C) where
  /-- The unit of an adjunction between `F` and `G` -/
  unit : 𝟭 C ⟶ F.comp G
  /-- The counit of an adjunction between `F` and `G`s -/
  counit : G.comp F ⟶ 𝟭 D
  /-- Equality of the composition of the unit, associator, and counit with the identity
  `F ⟶ (F G) F ⟶ F (G F) ⟶ F = NatTrans.id F` -/
  left_triangle :
    whiskerRight unit F ≫ (Functor.associator F G F).hom ≫ whiskerLeft F counit =
      NatTrans.id (𝟭 C ⋙ F) := by
    aesop_cat
  /-- Equality of the composition of the unit, associator, and counit with the identity
  `G ⟶ G (F G) ⟶ (F G) F ⟶ G = NatTrans.id G` -/
  right_triangle :
    whiskerLeft G unit ≫ (Functor.associator G F G).inv ≫ whiskerRight counit G =
      NatTrans.id (G ⋙ 𝟭 C) := by
    aesop_cat
#align category_theory.adjunction.core_unit_counit CategoryTheory.Adjunction.CoreUnitCounit
#align category_theory.adjunction.core_unit_counit.left_triangle' CategoryTheory.Adjunction.CoreUnitCounit.left_triangle
#align category_theory.adjunction.core_unit_counit.left_triangle CategoryTheory.Adjunction.CoreUnitCounit.left_triangle
#align category_theory.adjunction.core_unit_counit.right_triangle' CategoryTheory.Adjunction.CoreUnitCounit.right_triangle
#align category_theory.adjunction.core_unit_counit.right_triangle CategoryTheory.Adjunction.CoreUnitCounit.right_triangle

namespace CoreUnitCounit

attribute [simp] left_triangle right_triangle

end CoreUnitCounit

variable {F : C ⥤ D} {G : D ⥤ C}

/-- Construct an adjunction between `F` and `G` out of a natural bijection between each
`F.obj X ⟶ Y` and `X ⟶ G.obj Y`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant843533f2f49e002bf80054454d3b23260f646bead555b28996b5d31e8e2a2b06.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant843533f2f49e002bf80054454d3b23260f646bead555b28996b5d31e8e2a2b06.lean#L306).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4496a2211f2fc987a6b1eb283dbc90021e98f8ca` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
