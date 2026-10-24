# OplaxFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c0994365aeeccf7335e8f5293c643759366d5345c2bb394d33717075a61c1be2",
  "kind": "structure",
  "lexical_name": "OplaxFunctor",
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
  "slug": "oplaxfunctor--6ca77cbb739d91327670234f",
  "source": {
    "blob": "e96f46366f895da4064200ba3ad5d5477b9ce490",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 51,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:6ca77cbb739d91327670234f73ddf8a555f3f0a65ebe3c5b9b737c5e9fe85730",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c0994365aeeccf7335e8f5293c643759366d5345c2bb394d33717075a61c1be2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 51–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure OplaxFunctor (B : Type u₁) [Bicategory.{w₁, v₁} B] (C : Type u₂)
  [Bicategory.{w₂, v₂} C] extends PrelaxFunctor B C where
  /-- The 2-morphism underlying the oplax unity constraint. -/
  mapId (a : B) : map (𝟙 a) ⟶ 𝟙 (obj a)
  /-- The 2-morphism underlying the oplax functoriality constraint. -/
  mapComp {a b c : B} (f : a ⟶ b) (g : b ⟶ c) : map (f ≫ g) ⟶ map f ≫ map g
  /-- Naturality of the oplax functoriality constraint, on the left. -/
  mapComp_naturality_left :
    ∀ {a b c : B} {f f' : a ⟶ b} (η : f ⟶ f') (g : b ⟶ c),
      map₂ (η ▷ g) ≫ mapComp f' g = mapComp f g ≫ map₂ η ▷ map g := by
    aesop_cat
  /-- Naturality of the lax functoriality constraight, on the right. -/
  mapComp_naturality_right :
    ∀ {a b c : B} (f : a ⟶ b) {g g' : b ⟶ c} (η : g ⟶ g'),
      map₂ (f ◁ η) ≫ mapComp f g' = mapComp f g ≫ map f ◁ map₂ η := by
    aesop_cat
  /-- Oplax associativity. -/
  map₂_associator :
    ∀ {a b c d : B} (f : a ⟶ b) (g : b ⟶ c) (h : c ⟶ d),
      map₂ (α_ f g h).hom ≫ mapComp f (g ≫ h) ≫ map f ◁ mapComp g h =
    mapComp (f ≫ g) h ≫ mapComp f g ▷ map h ≫ (α_ (map f) (map g) (map h)).hom := by
    aesop_cat
  /-- Oplax left unity. -/
  map₂_leftUnitor :
    ∀ {a b : B} (f : a ⟶ b),
      map₂ (λ_ f).hom = mapComp (𝟙 a) f ≫ mapId a ▷ map f ≫ (λ_ (map f)).hom := by
    aesop_cat
  /-- Oplax right unity. -/
  map₂_rightUnitor :
    ∀ {a b : B} (f : a ⟶ b),
      map₂ (ρ_ f).hom = mapComp f (𝟙 b) ≫ map f ◁ mapId b ≫ (ρ_ (map f)).hom := by
    aesop_cat

initialize_simps_projections OplaxFunctor (+toPrelaxFunctor, -obj, -map, -map₂)

namespace OplaxFunctor

attribute [reassoc (attr := simp), to_app (attr := simp)]
  mapComp_naturality_left mapComp_naturality_right map₂_associator
attribute [simp, reassoc, to_app] map₂_leftUnitor map₂_rightUnitor

section

/-- The underlying prelax functor. -/
add_decl_doc OplaxFunctor.toPrelaxFunctor

variable (F : OplaxFunctor B C)

@[reassoc, to_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Oplax/Variantda3d6cb156e57c9331dcf93aabc844015a35435eacec173d68961f7c4cce5f41.lean#L51).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e96f46366f895da4064200ba3ad5d5477b9ce490` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
