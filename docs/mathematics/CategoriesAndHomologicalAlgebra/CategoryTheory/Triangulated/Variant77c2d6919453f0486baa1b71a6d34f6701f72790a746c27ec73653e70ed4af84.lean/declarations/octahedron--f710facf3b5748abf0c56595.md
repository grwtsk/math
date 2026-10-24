# Octahedron'

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:39a40c17400530a0d747a0359c4b48c7524f5ade821de76dfad4b40ebcde4bbe",
  "kind": "structure",
  "lexical_name": "Octahedron'",
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
  "slug": "octahedron--f710facf3b5748abf0c56595",
  "source": {
    "blob": "e3bbbbbb6bdbd2ed4b9974b9ad88dbe9c23307b3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 262,
    "line": 234,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant77c2d6919453f0486baa1b71a6d34f6701f72790a746c27ec73653e70ed4af84.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f710facf3b5748abf0c565956732dd4a4d160f20309b0e866e18c5c658f2a81c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant77c2d6919453f0486baa1b71a6d34f6701f72790a746c27ec73653e70ed4af84.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:39a40c17400530a0d747a0359c4b48c7524f5ade821de76dfad4b40ebcde4bbe`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 234–262.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Octahedron'
  {X₁ X₂ X₃ Z₁₂ Z₂₃ Z₁₃ : C}
  {u₁₂ : X₁ ⟶ X₂} {u₂₃ : X₂ ⟶ X₃} {u₁₃ : X₁ ⟶ X₃} (comm : u₁₂ ≫ u₂₃ = u₁₃)
  {v₁₂ : Z₁₂ ⟶ X₁} {w₁₂ : X₂ ⟶ Z₁₂⟦(1 : ℤ)⟧} (h₁₂ : Triangle.mk v₁₂ u₁₂ w₁₂ ∈ distTriang C)
  {v₂₃ : Z₂₃ ⟶ X₂} {w₂₃ : X₃ ⟶ Z₂₃⟦(1 : ℤ)⟧} (h₂₃ : Triangle.mk v₂₃ u₂₃ w₂₃ ∈ distTriang C)
  {v₁₃ : Z₁₃ ⟶ X₁} {w₁₃ : X₃ ⟶ Z₁₃⟦(1 : ℤ)⟧} (h₁₃ : Triangle.mk v₁₃ u₁₃ w₁₃ ∈ distTriang C) where
  /-- `m₁` is the morphism `a` of (TR 4) as presented in Stacks. -/
  m₁ : Z₁₂ ⟶ Z₁₃
  /-- `m₁` is the morphism `b` of (TR 4) as presented in Stacks. -/
  m₃ : Z₁₃ ⟶ Z₂₃
  comm₁ : m₁ ≫ v₁₃ = v₁₂
  comm₂ : w₁₂ ≫ m₁⟦1⟧' = u₂₃ ≫ w₁₃
  comm₃ : w₁₃ ≫ m₃⟦1⟧' = w₂₃
  comm₄ : m₃ ≫ v₂₃ = v₁₃ ≫ u₁₂
  mem : Triangle.mk m₁ m₃ (v₂₃ ≫ w₁₂) ∈ distTriang C

namespace Octahedron'

attribute [reassoc] comm₁ comm₂ comm₃ comm₄

variable {X₁ X₂ X₃ Z₁₂ Z₂₃ Z₁₃ : C}
  {u₁₂ : X₁ ⟶ X₂} {u₂₃ : X₂ ⟶ X₃} {u₁₃ : X₁ ⟶ X₃} (comm : u₁₂ ≫ u₂₃ = u₁₃)
  {v₁₂ : Z₁₂ ⟶ X₁} {w₁₂ : X₂ ⟶ Z₁₂⟦(1 : ℤ)⟧} (h₁₂ : Triangle.mk v₁₂ u₁₂ w₁₂ ∈ distTriang C)
  {v₂₃ : Z₂₃ ⟶ X₂} {w₂₃ : X₃ ⟶ Z₂₃⟦(1 : ℤ)⟧} (h₂₃ : Triangle.mk v₂₃ u₂₃ w₂₃ ∈ distTriang C)
  {v₁₃ : Z₁₃ ⟶ X₁} {w₁₃ : X₃ ⟶ Z₁₃⟦(1 : ℤ)⟧} (h₁₃ : Triangle.mk v₁₃ u₁₃ w₁₃ ∈ distTriang C)
  (h : Octahedron' comm h₁₂ h₂₃ h₁₃)

/-- The triangle `Z₁₂ ⟶ Z₁₃ ⟶ Z₂₃ ⟶ Z₁₂⟦1⟧` given by an `Octahedron'`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant77c2d6919453f0486baa1b71a6d34f6701f72790a746c27ec73653e70ed4af84.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Triangulated/Variant77c2d6919453f0486baa1b71a6d34f6701f72790a746c27ec73653e70ed4af84.lean#L234).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e3bbbbbb6bdbd2ed4b9974b9ad88dbe9c23307b3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
