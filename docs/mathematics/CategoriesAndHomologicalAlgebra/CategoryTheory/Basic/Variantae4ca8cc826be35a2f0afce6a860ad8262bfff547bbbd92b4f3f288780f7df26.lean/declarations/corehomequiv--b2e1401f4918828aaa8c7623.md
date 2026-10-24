# CoreHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:80cd84c0018702b99866ce9e8617e6ff1fa7ef04e664c1b25b68da102deb6db3",
  "kind": "structure",
  "lexical_name": "CoreHomEquiv",
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
  "slug": "corehomequiv--b2e1401f4918828aaa8c7623",
  "source": {
    "blob": "427dd6265732914e32468191367030e2dea57fa4",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 284,
    "line": 252,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae4ca8cc826be35a2f0afce6a860ad8262bfff547bbbd92b4f3f288780f7df26.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b2e1401f4918828aaa8c76236940eedf817ec9d6bf5482279560eece12968fa8",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae4ca8cc826be35a2f0afce6a860ad8262bfff547bbbd92b4f3f288780f7df26.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:80cd84c0018702b99866ce9e8617e6ff1fa7ef04e664c1b25b68da102deb6db3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 252–284.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CoreHomEquiv (F : C ⥤ D) (G : D ⥤ C) where
  /-- The equivalence between `Hom (F X) Y` and `Hom X (G Y)` -/
  homEquiv : ∀ X Y, (F.obj X ⟶ Y) ≃ (X ⟶ G.obj Y)
  /-- The property that describes how `homEquiv.symm` transforms compositions `X' ⟶ X ⟶ G Y` -/
  homEquiv_naturality_left_symm :
    ∀ {X' X Y} (f : X' ⟶ X) (g : X ⟶ G.obj Y),
      (homEquiv X' Y).symm (f ≫ g) = F.map f ≫ (homEquiv X Y).symm g := by
    aesop_cat
  /-- The property that describes how `homEquiv` transforms compositions `F X ⟶ Y ⟶ Y'` -/
  homEquiv_naturality_right :
    ∀ {X Y Y'} (f : F.obj X ⟶ Y) (g : Y ⟶ Y'),
      (homEquiv X Y') (f ≫ g) = (homEquiv X Y) f ≫ G.map g := by
    aesop_cat
#align category_theory.adjunction.core_hom_equiv CategoryTheory.Adjunction.CoreHomEquiv
#align category_theory.adjunction.core_hom_equiv.hom_equiv CategoryTheory.Adjunction.CoreHomEquiv.homEquiv
#align category_theory.adjunction.core_hom_equiv.hom_equiv' CategoryTheory.Adjunction.CoreHomEquiv.homEquiv
#align category_theory.adjunction.core_hom_equiv.hom_equiv_naturality_right CategoryTheory.Adjunction.CoreHomEquiv.homEquiv_naturality_right
#align category_theory.adjunction.core_hom_equiv.hom_equiv_naturality_right' CategoryTheory.Adjunction.CoreHomEquiv.homEquiv_naturality_right
#align category_theory.adjunction.core_hom_equiv.hom_equiv_naturality_left_symm CategoryTheory.Adjunction.CoreHomEquiv.homEquiv_naturality_left_symm
#align category_theory.adjunction.core_hom_equiv.hom_equiv_naturality_left_symm' CategoryTheory.Adjunction.CoreHomEquiv.homEquiv_naturality_left_symm

namespace CoreHomEquiv

-- Porting note: Workaround not needed in Lean 4.
-- restate_axiom homEquiv_naturality_left_symm'

-- restate_axiom homEquiv_naturality_right'

attribute [simp] homEquiv_naturality_left_symm homEquiv_naturality_right

variable {F : C ⥤ D} {G : D ⥤ C} (adj : CoreHomEquiv F G) {X' X : C} {Y Y' : D}

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae4ca8cc826be35a2f0afce6a860ad8262bfff547bbbd92b4f3f288780f7df26.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variantae4ca8cc826be35a2f0afce6a860ad8262bfff547bbbd92b4f3f288780f7df26.lean#L252).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `427dd6265732914e32468191367030e2dea57fa4` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
