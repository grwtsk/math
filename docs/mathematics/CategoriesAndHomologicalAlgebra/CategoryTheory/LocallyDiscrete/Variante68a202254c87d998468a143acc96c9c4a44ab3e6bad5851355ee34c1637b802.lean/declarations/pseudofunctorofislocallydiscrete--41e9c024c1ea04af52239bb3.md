# pseudofunctorOfIsLocallyDiscrete

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:853ad78c4030cc909bfb6e56085a5d15c712f829776d99e39af623e9fba6ce29",
  "kind": "def",
  "lexical_name": "pseudofunctorOfIsLocallyDiscrete",
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
  "slug": "pseudofunctorofislocallydiscrete--41e9c024c1ea04af52239bb3",
  "source": {
    "blob": "147bae96ecc21a6734cd3fabe1e18a07e5d344b8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 44,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:41e9c024c1ea04af52239bb33605c1ef1c3652c5df55104db3e3d29f6bc78cd8",
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

Occurrence: `declaration:853ad78c4030cc909bfb6e56085a5d15c712f829776d99e39af623e9fba6ce29`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 44–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def pseudofunctorOfIsLocallyDiscrete
    {B C : Type*} [Bicategory B] [IsLocallyDiscrete B] [Bicategory C]
    (obj : B → C)
    (map : ∀ {b b' : B}, (b ⟶ b') → (obj b ⟶ obj b'))
    (mapId : ∀ (b : B), map (𝟙 b) ≅ 𝟙 _)
    (mapComp : ∀ {b₀ b₁ b₂ : B} (f : b₀ ⟶ b₁) (g : b₁ ⟶ b₂), map (f ≫ g) ≅ map f ≫ map g)
    (map₂_associator : ∀ {b₀ b₁ b₂ b₃ : B} (f : b₀ ⟶ b₁) (g : b₁ ⟶ b₂) (h : b₂ ⟶ b₃),
      (mapComp (f ≫ g) h).hom ≫
        (mapComp f g).hom ▷ map h ≫ (α_ (map f) (map g) (map h)).hom ≫
          map f ◁ (mapComp g h).inv ≫ (mapComp f (g ≫ h)).inv = eqToHom (by simp) := by aesop_cat)
    (map₂_left_unitor : ∀ {b₀ b₁ : B} (f : b₀ ⟶ b₁),
      (mapComp (𝟙 b₀) f).hom ≫ (mapId b₀).hom ▷ map f ≫ (λ_ (map f)).hom = eqToHom (by simp) := by
        aesop_cat)
    (map₂_right_unitor : ∀ {b₀ b₁ : B} (f : b₀ ⟶ b₁),
      (mapComp f (𝟙 b₁)).hom ≫ map f ◁ (mapId b₁).hom ≫ (ρ_ (map f)).hom = eqToHom (by simp) := by
        aesop_cat) :
    Pseudofunctor B C where
  obj := obj
  map := map
  map₂ φ := eqToHom (by
    obtain rfl := obj_ext_of_isDiscrete φ
    dsimp)
  mapId := mapId
  mapComp := mapComp
  map₂_whisker_left _ _ _ η := by
    obtain rfl := obj_ext_of_isDiscrete η
    simp
  map₂_whisker_right η _ := by
    obtain rfl := obj_ext_of_isDiscrete η
    simp

/-- Constructor for oplax functors from a locally discrete bicategory. In that
case, we do not need to provide the `map₂` field of oplax functors. -/
@[simps obj map mapId mapComp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyDiscrete/Variante68a202254c87d998468a143acc96c9c4a44ab3e6bad5851355ee34c1637b802.lean#L44).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `147bae96ecc21a6734cd3fabe1e18a07e5d344b8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
