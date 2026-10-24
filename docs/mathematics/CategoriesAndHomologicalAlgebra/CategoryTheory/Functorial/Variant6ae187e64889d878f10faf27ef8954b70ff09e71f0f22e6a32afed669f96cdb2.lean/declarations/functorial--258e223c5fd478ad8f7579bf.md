# Functorial

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:565d8feb04bdcd1119c665525abff3fe20e8f3c82f5a4583f243a30ef3534e1b",
  "kind": "class",
  "lexical_name": "Functorial",
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
  "slug": "functorial--258e223c5fd478ad8f7579bf",
  "source": {
    "blob": "0e0b2470b43f8676c7fda14789f854d085ca8d3b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 47,
    "line": 31,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:258e223c5fd478ad8f7579bf0095123b2c23cd8e648af42663995b173d225dc3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `class` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:565d8feb04bdcd1119c665525abff3fe20e8f3c82f5a4583f243a30ef3534e1b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 31–47.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
class Functorial (F : C → D) : Type max v₁ v₂ u₁ u₂ where
  /-- If `F : C → D` (just a function) has `[Functorial F]`,
  we can write `map F f : F X ⟶ F Y` for the action of `F` on a morphism `f : X ⟶ Y`. -/
  map (F) : ∀ {X Y : C}, (X ⟶ Y) → (F X ⟶ F Y)
  /-- A functorial map preserves identities. -/
  map_id : ∀ {X : C}, map (𝟙 X) = 𝟙 (F X) := by aesop_cat
  /-- A functorial map preserves composition of morphisms. -/
  map_comp : ∀ {X Y Z : C} {f : X ⟶ Y} {g : Y ⟶ Z}, map (f ≫ g) = map f ≫ map g := by
    aesop_cat

attribute [simp] Functorial.map_id Functorial.map_comp
export Functorial (map)

namespace Functor

/-- Bundle a functorial function as a functor.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Functorial/Variant6ae187e64889d878f10faf27ef8954b70ff09e71f0f22e6a32afed669f96cdb2.lean#L31).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0e0b2470b43f8676c7fda14789f854d085ca8d3b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
