# StrictlyUnitaryLaxFunctorCore

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:306fff68070e7cd7292777b627c88eacab726d74d622507caa77efa325715e44",
  "kind": "structure",
  "lexical_name": "StrictlyUnitaryLaxFunctorCore",
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
  "slug": "strictlyunitarylaxfunctorcore--3f1948a1f8bf718777936e09",
  "source": {
    "blob": "3ccf71c18312734a2b59a368bdb65fe402e24948",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 115,
    "line": 67,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3f1948a1f8bf718777936e0991c140e3e2962a086e0403849c699cf2d2d442c4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:306fff68070e7cd7292777b627c88eacab726d74d622507caa77efa325715e44`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 67–115.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure StrictlyUnitaryLaxFunctorCore where
  /-- action on objects -/
  obj : B → C
  /-- action on 1-morphisms -/
  map : ∀ {X Y : B}, (X ⟶ Y) → (obj X ⟶ obj Y)
  map_id : ∀ (X : B), map (𝟙 X) = 𝟙 (obj X) := by cat_disch
  /-- action on 2-morphisms -/
  map₂ : ∀ {a b : B} {f g : a ⟶ b}, (f ⟶ g) → (map f ⟶ map g)
  map₂_id : ∀ {a b : B} (f : a ⟶ b), map₂ (𝟙 f) = 𝟙 (map f) := by cat_disch
  map₂_comp :
      ∀ {a b : B} {f g h : a ⟶ b} (η : f ⟶ g) (θ : g ⟶ h),
        map₂ (η ≫ θ) = map₂ η ≫ map₂ θ := by
    cat_disch
  /-- structure 2-morphism for composition of 1-morphism -/
  mapComp : ∀ {a b c : B} (f : a ⟶ b) (g : b ⟶ c),
    map f ≫ map g ⟶ map (f ≫ g)
  mapComp_naturality_left :
      ∀ {a b c : B} {f f' : a ⟶ b} (η : f ⟶ f') (g : b ⟶ c),
        mapComp f g ≫ map₂ (η ▷ g) = map₂ η ▷ map g ≫ mapComp f' g := by
    cat_disch
  mapComp_naturality_right :
      ∀ {a b c : B} (f : a ⟶ b) {g g' : b ⟶ c} (η : g ⟶ g'),
        mapComp f g ≫ map₂ (f ◁ η) = map f ◁ map₂ η ≫ mapComp f g' := by
    cat_disch
  map₂_leftUnitor :
      ∀ {a b : B} (f : a ⟶ b),
        map₂ (λ_ f).inv =
        (λ_ (map f)).inv ≫ eqToHom (by rw [map_id a]) ≫ mapComp (𝟙 a) f := by
    cat_disch
  map₂_rightUnitor :
      ∀ {a b : B} (f : a ⟶ b),
        map₂ (ρ_ f).inv =
        (ρ_ (map f)).inv ≫ eqToHom (by rw [map_id b]) ≫ mapComp f (𝟙 b) := by
    cat_disch
  map₂_associator :
      ∀ {a b c d : B} (f : a ⟶ b) (g : b ⟶ c) (h : c ⟶ d),
        mapComp f g ▷ map h ≫ mapComp (f ≫ g) h ≫ map₂ (α_ f g h).hom =
        (α_ (map f) (map g) (map h)).hom ≫ map f ◁ mapComp g h ≫
          mapComp f (g ≫ h) := by
    cat_disch

namespace StrictlyUnitaryLaxFunctor

variable {B C}

/-- An alternate constructor for strictly unitary lax functors that does not
require the `mapId` fields, and that adapts the `map₂_leftUnitor` and
`map₂_rightUnitor` to the fact that the functor is strictly unitary. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/StrictlyUnitary/Variant35b4ecacb2a2d5d9a99d840b546d736a533f0809fac41b86dce801d465843591.lean#L67).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ccf71c18312734a2b59a368bdb65fe402e24948` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
