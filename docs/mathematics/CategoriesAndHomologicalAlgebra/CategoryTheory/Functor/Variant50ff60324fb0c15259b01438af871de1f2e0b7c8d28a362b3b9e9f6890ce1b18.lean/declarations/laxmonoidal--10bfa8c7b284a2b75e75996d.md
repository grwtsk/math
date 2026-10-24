# LaxMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:403932303856834b7aa7e764d6aee3e64c3feb12c7538748ac4a3f0ae3451afa",
  "kind": "class",
  "lexical_name": "LaxMonoidal",
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
  "slug": "laxmonoidal--10bfa8c7b284a2b75e75996d",
  "source": {
    "blob": "325f831955e2363795da5118687fe393a9d77e63",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 103,
    "line": 70,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant50ff60324fb0c15259b01438af871de1f2e0b7c8d28a362b3b9e9f6890ce1b18.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:10bfa8c7b284a2b75e75996d0d467b7857a108862972ec466ed47bfbdd084f11",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant50ff60324fb0c15259b01438af871de1f2e0b7c8d28a362b3b9e9f6890ce1b18.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:403932303856834b7aa7e764d6aee3e64c3feb12c7538748ac4a3f0ae3451afa`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 70–103.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class LaxMonoidal where
  /-- unit morphism -/
  ε' : 𝟙_ D ⟶ F.obj (𝟙_ C)
  /-- tensorator -/
  μ' : ∀ X Y : C, F.obj X ⊗ F.obj Y ⟶ F.obj (X ⊗ Y)
  μ'_natural_left :
    ∀ {X Y : C} (f : X ⟶ Y) (X' : C),
      F.map f ▷ F.obj X' ≫ μ' Y X' = μ' X X' ≫ F.map (f ▷ X') := by
    aesop_cat
  μ'_natural_right :
    ∀ {X Y : C} (X' : C) (f : X ⟶ Y) ,
      F.obj X' ◁ F.map f ≫ μ' X' Y = μ' X' X ≫ F.map (X' ◁ f) := by
    aesop_cat
  /-- associativity of the tensorator -/
  associativity' :
    ∀ X Y Z : C,
      μ' X Y ▷ F.obj Z ≫ μ' (X ⊗ Y) Z ≫ F.map (α_ X Y Z).hom =
        (α_ (F.obj X) (F.obj Y) (F.obj Z)).hom ≫ F.obj X ◁ μ' Y Z ≫ μ' X (Y ⊗ Z) := by
    aesop_cat
  -- unitality
  left_unitality' :
    ∀ X : C, (λ_ (F.obj X)).hom = ε' ▷ F.obj X ≫ μ' (𝟙_ C) X ≫ F.map (λ_ X).hom := by
      aesop_cat
  right_unitality' :
    ∀ X : C, (ρ_ (F.obj X)).hom = F.obj X ◁ ε' ≫ μ' X (𝟙_ C) ≫ F.map (ρ_ X).hom := by
    aesop_cat

namespace LaxMonoidal

section

variable [F.LaxMonoidal]

/-- the unit morphism of a lax monoidal functor -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant50ff60324fb0c15259b01438af871de1f2e0b7c8d28a362b3b9e9f6890ce1b18.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functor/Variant50ff60324fb0c15259b01438af871de1f2e0b7c8d28a362b3b9e9f6890ce1b18.lean#L70).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `325f831955e2363795da5118687fe393a9d77e63` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
