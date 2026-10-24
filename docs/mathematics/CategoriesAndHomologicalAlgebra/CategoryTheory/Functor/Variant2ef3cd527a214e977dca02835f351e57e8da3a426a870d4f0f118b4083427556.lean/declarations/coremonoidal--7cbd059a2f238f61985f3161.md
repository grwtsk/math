# CoreMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:1349591513a7ef0fb0089f6dafda8e262130db00bff9e432a2b173d6f3c3e71b",
  "kind": "structure",
  "lexical_name": "CoreMonoidal",
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
  "slug": "coremonoidal--7cbd059a2f238f61985f3161",
  "source": {
    "blob": "68bb750593486128ed6d43177bb525afb4f7c13c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 603,
    "line": 566,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2ef3cd527a214e977dca02835f351e57e8da3a426a870d4f0f118b4083427556.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7cbd059a2f238f61985f3161155b5d315a1ef0bd71267437854cf520aea33e91",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2ef3cd527a214e977dca02835f351e57e8da3a426a870d4f0f118b4083427556.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:1349591513a7ef0fb0089f6dafda8e262130db00bff9e432a2b173d6f3c3e71b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 566–603.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure CoreMonoidal where
  /-- unit morphism -/
  εIso : 𝟙_ D ≅ F.obj (𝟙_ C)
  /-- tensorator -/
  μIso : ∀ X Y : C, F.obj X ⊗ F.obj Y ≅ F.obj (X ⊗ Y)
  μIso_hom_natural_left :
    ∀ {X Y : C} (f : X ⟶ Y) (X' : C),
      F.map f ▷ F.obj X' ≫ (μIso Y X').hom = (μIso X X').hom ≫ F.map (f ▷ X') := by
    aesop_cat
  μIso_hom_natural_right :
    ∀ {X Y : C} (X' : C) (f : X ⟶ Y) ,
      F.obj X' ◁ F.map f ≫ (μIso X' Y).hom = (μIso X' X).hom ≫ F.map (X' ◁ f) := by
    aesop_cat
  /-- associativity of the tensorator -/
  associativity :
    ∀ X Y Z : C,
      (μIso X Y).hom ▷ F.obj Z ≫ (μIso (X ⊗ Y) Z).hom ≫ F.map (α_ X Y Z).hom =
        (α_ (F.obj X) (F.obj Y) (F.obj Z)).hom ≫ F.obj X ◁ (μIso Y Z).hom ≫
          (μIso X (Y ⊗ Z)).hom := by
    aesop_cat
  -- unitality
  left_unitality :
    ∀ X : C, (λ_ (F.obj X)).hom = εIso.hom ▷ F.obj X ≫ (μIso (𝟙_ C) X).hom ≫ F.map (λ_ X).hom := by
      aesop_cat
  right_unitality :
    ∀ X : C, (ρ_ (F.obj X)).hom = F.obj X ◁ εIso.hom ≫ (μIso X (𝟙_ C)).hom ≫ F.map (ρ_ X).hom := by
    aesop_cat

namespace CoreMonoidal

attribute [reassoc (attr := simp)] μIso_hom_natural_left
  μIso_hom_natural_right associativity

attribute [reassoc] left_unitality right_unitality

variable {F} (h : F.CoreMonoidal)

/-- The lax monoidal functor structure induced by a `Functor.CoreMonoidal` structure. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2ef3cd527a214e977dca02835f351e57e8da3a426a870d4f0f118b4083427556.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant2ef3cd527a214e977dca02835f351e57e8da3a426a870d4f0f118b4083427556.lean#L566).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `68bb750593486128ed6d43177bb525afb4f7c13c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
