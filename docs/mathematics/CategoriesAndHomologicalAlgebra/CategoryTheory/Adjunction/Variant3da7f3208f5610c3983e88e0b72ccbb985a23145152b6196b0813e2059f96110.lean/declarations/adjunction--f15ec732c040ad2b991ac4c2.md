# Adjunction

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b38912f3ba83edc0390026e72cbf648195adb94088526409b1bdc546a393a952",
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
  "slug": "adjunction--f15ec732c040ad2b991ac4c2",
  "source": {
    "blob": "3cffb9196475c524a80947156c3f0c3e1a573633",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 87,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f15ec732c040ad2b991ac4c21b5b7e716e6e92c2dea13d91a4fcc13daacc6026",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b38912f3ba83edc0390026e72cbf648195adb94088526409b1bdc546a393a952`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 87–105.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Adjunction (f : a ⟶ b) (g : b ⟶ a) where
  /-- The unit of an adjuntion. -/
  unit : 𝟙 a ⟶ f ≫ g
  /-- The counit of an adjuntion. -/
  counit : g ≫ f ⟶ 𝟙 b
  /-- The composition of the unit and the counit is equal to the identity up to unitors. -/
  left_triangle : leftZigzag unit counit = (λ_ _).hom ≫ (ρ_ _).inv := by aesop_cat
  /-- The composition of the unit and the counit is equal to the identity up to unitors. -/
  right_triangle : rightZigzag unit counit = (ρ_ _).hom ≫ (λ_ _).inv := by aesop_cat

@[inherit_doc] scoped infixr:15 " ⊣ " => Bicategory.Adjunction

namespace Adjunction

attribute [simp] left_triangle right_triangle

attribute [local simp] leftZigzag rightZigzag

/-- Adjunction between identities. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Adjunction/Variant3da7f3208f5610c3983e88e0b72ccbb985a23145152b6196b0813e2059f96110.lean#L87).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3cffb9196475c524a80947156c3f0c3e1a573633` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
