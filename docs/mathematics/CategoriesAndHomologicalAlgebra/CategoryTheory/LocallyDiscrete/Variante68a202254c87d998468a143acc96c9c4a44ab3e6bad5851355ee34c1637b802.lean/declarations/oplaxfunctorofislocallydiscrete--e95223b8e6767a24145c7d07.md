# oplaxFunctorOfIsLocallyDiscrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:987fd30ed75fc52722a496f5bb57fadcba58023ffad90251ab0f393d1fbbe7e9",
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
  "slug": "oplaxfunctorofislocallydiscrete--e95223b8e6767a24145c7d07",
  "source": {
    "blob": "147bae96ecc21a6734cd3fabe1e18a07e5d344b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 78,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e95223b8e6767a24145c7d07ba9bcdafff02678787c4612b61d3e4cf5bb72848",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:987fd30ed75fc52722a496f5bb57fadcba58023ffad90251ab0f393d1fbbe7e9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 78–120.

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
          aesop_cat)
    (map₂_left_unitor : ∀ {b₀ b₁ : B} (f : b₀ ⟶ b₁),
      mapComp (𝟙 b₀) f ≫ mapId b₀ ▷ map f ≫ (λ_ (map f)).hom = eqToHom (by simp) := by
        aesop_cat)
    (map₂_right_unitor : ∀ {b₀ b₁ : B} (f : b₀ ⟶ b₁),
      mapComp f (𝟙 b₁) ≫ map f ◁ mapId b₁ ≫ (ρ_ (map f)).hom = eqToHom (by simp) := by
        aesop_cat) :
    OplaxFunctor B C where
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

variable {I B : Type*} [Category I] [Bicategory B] [Strict B] (F : I ⥤ B)

attribute [local simp]
  Strict.leftUnitor_eqToIso Strict.rightUnitor_eqToIso Strict.associator_eqToIso

/--
If `B` is a strict bicategory and `I` is a (1-)category, any functor (of 1-categories) `I ⥤ B` can
be promoted to a pseudofunctor from `LocallyDiscrete I` to `B`.
-/
@[simps! obj map mapId mapComp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean#L78).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `147bae96ecc21a6734cd3fabe1e18a07e5d344b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
