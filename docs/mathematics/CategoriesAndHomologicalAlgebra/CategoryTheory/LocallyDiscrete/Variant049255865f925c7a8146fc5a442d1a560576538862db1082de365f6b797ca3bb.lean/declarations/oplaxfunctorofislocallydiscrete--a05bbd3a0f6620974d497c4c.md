# oplaxFunctorOfIsLocallyDiscrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f26cf5e9363be7c10b584c1ae1db764dffbb395343813b606e6577c053f7a470",
  "kind": "def",
  "lexical_name": "oplaxFunctorOfIsLocallyDiscrete",
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
  "slug": "oplaxfunctorofislocallydiscrete--a05bbd3a0f6620974d497c4c",
  "source": {
    "blob": "e3617533ab9d03399211f7666a0a38f1a85f306a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 121,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant049255865f925c7a8146fc5a442d1a560576538862db1082de365f6b797ca3bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a05bbd3a0f6620974d497c4c49efb4bfee4db89416e3312bdd05468c8ceccb3f",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant049255865f925c7a8146fc5a442d1a560576538862db1082de365f6b797ca3bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f26cf5e9363be7c10b584c1ae1db764dffbb395343813b606e6577c053f7a470`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–121.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def oplaxFunctorOfIsLocallyDiscrete
    {B C : Type*} [Bicategory B] [IsLocallyDiscrete B] [Bicategory C]
    (obj : B → C)
    (map : ∀ {b b' : B}, (b ⟶ b') → (obj b ⟶ obj b'))
    (mapId : ∀ (b : B), map (𝟙 b) ⟶ 𝟙 _)
    (mapComp : ∀ {b₀ b₁ b₂ : B} (f : b₀ ⟶ b₁) (g : b₁ ⟶ b₂), map (f ≫ g) ⟶ map f ≫ map g)
    (map₂_associator : ∀ {b₀ b₁ b₂ b₃ : B} (f : b₀ ⟶ b₁) (g : b₁ ⟶ b₂) (h : b₂ ⟶ b₃),
      eqToHom (by simp) ≫ mapComp f (g ≫ h) ≫ map f ◁ mapComp g h =
        mapComp (f ≫ g) h ≫ mapComp f g ▷ map h ≫ (α_ (map f) (map g) (map h)).hom := by
          cat_disch)
    (map₂_left_unitor : ∀ {b₀ b₁ : B} (f : b₀ ⟶ b₁),
      mapComp (𝟙 b₀) f ≫ mapId b₀ ▷ map f ≫ (λ_ (map f)).hom = eqToHom (by simp) := by
        cat_disch)
    (map₂_right_unitor : ∀ {b₀ b₁ : B} (f : b₀ ⟶ b₁),
      mapComp f (𝟙 b₁) ≫ map f ◁ mapId b₁ ≫ (ρ_ (map f)).hom = eqToHom (by simp) := by
        cat_disch) :
    B ⥤ᵒᵖᴸ C where
  obj := obj
  map := map
  map₂ φ := eqToHom (by
    obtain rfl := obj_ext_of_isDiscrete φ
    dsimp)
  mapId := mapId
  mapComp := mapComp
  mapComp_naturality_left η := by
    obtain rfl := obj_ext_of_isDiscrete η
    simp
  mapComp_naturality_right _ _ _ η := by
    obtain rfl := obj_ext_of_isDiscrete η
    simp

section

variable {C D : Type*} [Category* C] [Category* D] (F : C ⥤ D)

/--
A functor between two categories `C` and `D` can be lifted to a pseudofunctor between the
corresponding locally discrete bicategories.
-/
@[simps! obj map mapId mapComp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant049255865f925c7a8146fc5a442d1a560576538862db1082de365f6b797ca3bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variant049255865f925c7a8146fc5a442d1a560576538862db1082de365f6b797ca3bb.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3617533ab9d03399211f7666a0a38f1a85f306a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
