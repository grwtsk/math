# Adjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:984fd39f47db40e3e34712fdd6055bb6f0cb0d15d003c4730ae9d033d11464a8",
  "kind": "structure",
  "lexical_name": "Adjunction",
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
  "slug": "adjunction--1a018adc03ac0aed7c23fd75",
  "source": {
    "blob": "93208999961658fe1e079a952aa1dd94a9ea74ce",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 132,
    "line": 108,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8d886b21dc4ab48379e9c98653967307f7f57a97cc61f9db0dfd50d4d53353e8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:1a018adc03ac0aed7c23fd7529d6baaf7d4fbb6a320bbe5909e05ba4af0422a7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8d886b21dc4ab48379e9c98653967307f7f57a97cc61f9db0dfd50d4d53353e8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:984fd39f47db40e3e34712fdd6055bb6f0cb0d15d003c4730ae9d033d11464a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 108–132.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Adjunction (F : C ⥤ D) (G : D ⥤ C) where
  /-- The unit of an adjunction -/
  unit : 𝟭 C ⟶ F.comp G
  /-- The counit of an adjunction -/
  counit : G.comp F ⟶ 𝟭 D
  /-- Equality of the composition of the unit and counit with the identity `F ⟶ FGF ⟶ F = 𝟙` -/
  left_triangle_components (X : C) :
    dsimp% F.map (unit.app X) ≫ counit.app (F.obj X) = 𝟙 (F.obj X) := by cat_disch
  /-- Equality of the composition of the unit and counit with the identity `G ⟶ GFG ⟶ G = 𝟙` -/
  right_triangle_components (Y : D) :
    dsimp% unit.app (G.obj Y) ≫ G.map (counit.app Y) = 𝟙 (G.obj Y) := by cat_disch

to_dual_name_hint Left Right

attribute [to_dual self (reorder := C D, 2 4, F G,
  unit counit, left_triangle_components right_triangle_components)] Adjunction.mk
attribute [to_dual self (reorder := C D, 2 4, F G,
  mk (unit counit, left_triangle_components right_triangle_components))] Adjunction.casesOn

/-- The notation `F ⊣ G` stands for `Adjunction F G` representing that `F` is left adjoint to `G` -/
infixl:15 " ⊣ " => Adjunction

namespace Functor

/-- A class asserting the existence of a right adjoint. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8d886b21dc4ab48379e9c98653967307f7f57a97cc61f9db0dfd50d4d53353e8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant8d886b21dc4ab48379e9c98653967307f7f57a97cc61f9db0dfd50d4d53353e8.lean#L108).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `93208999961658fe1e079a952aa1dd94a9ea74ce` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
