# StrictlyUnitaryPseudofunctorCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f957e72d1fcf2c19b071b650931fdd5ca422c026255a501a49bd9c66d42c5f6",
  "kind": "structure",
  "lexical_name": "StrictlyUnitaryPseudofunctorCore",
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
  "slug": "strictlyunitarypseudofunctorcore--c7b27f3a5e209992f402cf61",
  "source": {
    "blob": "d8f620aad9a3d18411aaee3fa7f1f5ff4cab5ed9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 291,
    "line": 238,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variantc159f2bde0c49e7d1f90ec7dcfd4ce3fa6a629239691e196cb92f913b6e73afa.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:c7b27f3a5e209992f402cf61b5073e2ff908acb5477574a1031eb130e6e65998",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variantc159f2bde0c49e7d1f90ec7dcfd4ce3fa6a629239691e196cb92f913b6e73afa.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f957e72d1fcf2c19b071b650931fdd5ca422c026255a501a49bd9c66d42c5f6`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 238–291.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StrictlyUnitaryPseudofunctorCore where
  /-- action on objects -/
  obj : B → C
  /-- action on 1-morphisms -/
  map : ∀ {X Y : B}, (X ⟶ Y) → (obj X ⟶ obj Y)
  map_id : ∀ (X : B), map (𝟙 X) = 𝟙 (obj X) := by rfl_cat
  /-- action on 2-morphisms -/
  map₂ : ∀ {a b : B} {f g : a ⟶ b}, (f ⟶ g) → (map f ⟶ map g)
  map₂_id : ∀ {a b : B} (f : a ⟶ b), map₂ (𝟙 f) = 𝟙 (map f) := by cat_disch
  map₂_comp :
      ∀ {a b : B} {f g h : a ⟶ b} (η : f ⟶ g) (θ : g ⟶ h),
        map₂ (η ≫ θ) = map₂ η ≫ map₂ θ := by
    cat_disch
  /-- structure 2-isomorphism for composition of 1-morphisms -/
  mapComp : ∀ {a b c : B} (f : a ⟶ b) (g : b ⟶ c),
    map (f ≫ g) ≅ map f ≫ map g
  map₂_whisker_left :
      ∀ {a b c : B} (f : a ⟶ b) {g h : b ⟶ c} (η : g ⟶ h),
        map₂ (f ◁ η) =
        (mapComp f g).hom ≫ map f ◁ map₂ η ≫ (mapComp f h).inv := by
    cat_disch
  map₂_whisker_right :
      ∀ {a b c : B} {f g : a ⟶ b} (η : f ⟶ g) (h : b ⟶ c),
        map₂ (η ▷ h) =
        (mapComp f h).hom ≫ map₂ η ▷ map h ≫ (mapComp g h).inv := by
    cat_disch
  map₂_left_unitor :
      ∀ {a b : B} (f : a ⟶ b),
        map₂ (λ_ f).hom =
        (mapComp (𝟙 a) f).hom ≫ eqToHom (by rw [map_id a]) ≫
          (λ_ (map f)).hom := by
    cat_disch
  map₂_right_unitor :
      ∀ {a b : B} (f : a ⟶ b),
        map₂ (ρ_ f).hom =
        (mapComp f (𝟙 b)).hom ≫ eqToHom (by rw [map_id b]) ≫
          (ρ_ (map f)).hom := by
    cat_disch
  map₂_associator :
      ∀ {a b c d : B} (f : a ⟶ b) (g : b ⟶ c) (h : c ⟶ d),
        map₂ (α_ f g h).hom =
          (mapComp (f ≫ g) h).hom ≫ (mapComp f g).hom ▷ map h ≫
          (α_ (map f) (map g) (map h)).hom ≫ map f ◁ (mapComp g h).inv ≫
          (mapComp f (g ≫ h)).inv := by
    cat_disch

namespace StrictlyUnitaryPseudofunctor

variable {B C}

/-- An alternate constructor for strictly unitary pseudofunctors that does not
require the `mapId` fields, and that adapts the `map₂_leftUnitor` and
`map₂_rightUnitor` to the fact that the functor is strictly unitary. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variantc159f2bde0c49e7d1f90ec7dcfd4ce3fa6a629239691e196cb92f913b6e73afa.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variantc159f2bde0c49e7d1f90ec7dcfd4ce3fa6a629239691e196cb92f913b6e73afa.lean#L238).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8f620aad9a3d18411aaee3fa7f1f5ff4cab5ed9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
