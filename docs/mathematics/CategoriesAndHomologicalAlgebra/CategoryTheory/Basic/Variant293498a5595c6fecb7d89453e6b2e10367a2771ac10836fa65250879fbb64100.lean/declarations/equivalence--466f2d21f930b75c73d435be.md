# Equivalence

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:3ccb2258750e98630b4673b2a7224cc1c8b038d3eca6c6d9c0d032d50f250e3b",
  "kind": "structure",
  "lexical_name": "Equivalence",
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
  "slug": "equivalence--466f2d21f930b75c73d435be",
  "source": {
    "blob": "a9c4d30c13e6e16172dc8d0858ee78542ef9cbad",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 247,
    "line": 231,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:466f2d21f930b75c73d435beb1c2bf87d1eb0f218906b5c4859fd8b85ea46156",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:3ccb2258750e98630b4673b2a7224cc1c8b038d3eca6c6d9c0d032d50f250e3b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–247.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Equivalence (a b : B) where
  /-- A 1-morphism in one direction. -/
  hom : a ⟶ b
  /-- A 1-morphism in the other direction. -/
  inv : b ⟶ a
  /-- The composition `hom ≫ inv` is isomorphic to the identity. -/
  unit : 𝟙 a ≅ hom ≫ inv
  /-- The composition `inv ≫ hom` is isomorphic to the identity. -/
  counit : inv ≫ hom ≅ 𝟙 b
  /-- The composition of the unit and the counit is equal to the identity up to unitors. -/
  left_triangle : leftZigzagIso unit counit = λ_ hom ≪≫ (ρ_ hom).symm := by aesop_cat

@[inherit_doc] scoped infixr:10 " ≌ " => Bicategory.Equivalence

namespace Equivalence

/-- The identity 1-morphism is an equivalence. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant293498a5595c6fecb7d89453e6b2e10367a2771ac10836fa65250879fbb64100.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a9c4d30c13e6e16172dc8d0858ee78542ef9cbad` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
