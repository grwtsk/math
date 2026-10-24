# LaxFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:588b423723a73241b88765acabcdf2ecd001007cfb5452a7ff5f2e439f3ba4c1",
  "kind": "structure",
  "lexical_name": "LaxFunctor",
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
  "slug": "laxfunctor--7de790a819c712ebf5bc4934",
  "source": {
    "blob": "7924e51e155c13cad6e16719b2edbfa384fa914d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 99,
    "line": 56,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variantd19075fa82293e542e52cfa8bb357dd7fe7d63bafcbab63f9a8f7201dad555d3.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7de790a819c712ebf5bc493423e57fa051b8f787cdbc059eaae8bc9468675212",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variantd19075fa82293e542e52cfa8bb357dd7fe7d63bafcbab63f9a8f7201dad555d3.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:588b423723a73241b88765acabcdf2ecd001007cfb5452a7ff5f2e439f3ba4c1`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 56–99.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure LaxFunctor (B : Type u₁) [Bicategory.{w₁, v₁} B] (C : Type u₂) [Bicategory.{w₂, v₂} C]
    extends PrelaxFunctor B C where
  /-- The 2-morphism underlying the lax unity constraint. -/
  mapId (a : B) : 𝟙 (obj a) ⟶ map (𝟙 a)
  /-- The 2-morphism underlying the lax functoriality constraint. -/
  mapComp {a b c : B} (f : a ⟶ b) (g : b ⟶ c) : map f ≫ map g ⟶ map (f ≫ g)
  /-- Naturality of the lax functoriality constraint, on the left. -/
  mapComp_naturality_left :
    ∀ {a b c : B} {f f' : a ⟶ b} (η : f ⟶ f') (g : b ⟶ c),
      mapComp f g ≫ map₂ (η ▷ g) = map₂ η ▷ map g ≫ mapComp f' g:= by aesop_cat
  /-- Naturality of the lax functoriality constraint, on the right. -/
  mapComp_naturality_right :
    ∀ {a b c : B} (f : a ⟶ b) {g g' : b ⟶ c} (η : g ⟶ g'),
     mapComp f g ≫ map₂ (f ◁ η) = map f ◁ map₂ η ≫ mapComp f g' := by aesop_cat
  /-- Lax associativity. -/
  map₂_associator :
    ∀ {a b c d : B} (f : a ⟶ b) (g : b ⟶ c) (h : c ⟶ d),
      mapComp f g ▷ map h ≫ mapComp (f ≫ g) h ≫ map₂ (α_ f g h).hom =
      (α_ (map f) (map g) (map h)).hom ≫ map f ◁ mapComp g h ≫ mapComp f (g ≫ h) := by aesop_cat
  /-- Lax left unity. -/
  map₂_leftUnitor :
    ∀ {a b : B} (f : a ⟶ b),
      map₂ (λ_ f).inv = (λ_ (map f)).inv ≫ mapId a ▷ map f ≫ mapComp (𝟙 a) f := by aesop_cat
  /-- Lax right unity. -/
  map₂_rightUnitor :
    ∀ {a b : B} (f : a ⟶ b),
      map₂ (ρ_ f).inv = (ρ_ (map f)).inv ≫ map f ◁ mapId b ≫ mapComp f (𝟙 b) := by aesop_cat

initialize_simps_projections LaxFunctor (+toPrelaxFunctor, -obj, -map, -map₂)

namespace LaxFunctor

variable {B : Type u₁} [Bicategory.{w₁, v₁} B] {C : Type u₂} [Bicategory.{w₂, v₂} C]

attribute [reassoc (attr := simp), to_app (attr := simp)]
  mapComp_naturality_left mapComp_naturality_right map₂_associator
attribute [simp, reassoc, to_app] map₂_leftUnitor map₂_rightUnitor

/-- The underlying prelax functor. -/
add_decl_doc LaxFunctor.toPrelaxFunctor

variable (F : LaxFunctor B C)

@[reassoc, to_app]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variantd19075fa82293e542e52cfa8bb357dd7fe7d63bafcbab63f9a8f7201dad555d3.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Lax/Variantd19075fa82293e542e52cfa8bb357dd7fe7d63bafcbab63f9a8f7201dad555d3.lean#L56).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7924e51e155c13cad6e16719b2edbfa384fa914d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
