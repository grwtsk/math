# Hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:60eadeb18c2fb74b9bfb884adf69b91a8c5208b03aa677619d586516c8bb63b8",
  "kind": "structure",
  "lexical_name": "Hom",
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
  "slug": "hom--bbda879530dd4e0aa5fcd472",
  "source": {
    "blob": "5fc6b896808d7b0e4e57a75e81126ec356fb2550",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 404,
    "line": 386,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant844ef3e1c36b9bb639eb1b6bc1d3e96cd1fc211ecbcab199ec25a63a400d593f.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:bbda879530dd4e0aa5fcd472fc3771bccdd66f3e2341a8cb837299a4895c7507",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant844ef3e1c36b9bb639eb1b6bc1d3e96cd1fc211ecbcab199ec25a63a400d593f.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:60eadeb18c2fb74b9bfb884adf69b91a8c5208b03aa677619d586516c8bb63b8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 386–404.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Hom where
  /-- a morphism between the zeroth lines -/
  f₀ : S₁.L₀ ⟶ S₂.L₀
  /-- a morphism between the first lines -/
  f₁ : S₁.L₁ ⟶ S₂.L₁
  /-- a morphism between the second lines -/
  f₂ : S₁.L₂ ⟶ S₂.L₂
  /-- a morphism between the third lines -/
  f₃ : S₁.L₃ ⟶ S₂.L₃
  comm₀₁ : f₀ ≫ S₂.v₀₁ = S₁.v₀₁ ≫ f₁ := by aesop_cat
  comm₁₂ : f₁ ≫ S₂.v₁₂ = S₁.v₁₂ ≫ f₂ := by aesop_cat
  comm₂₃ : f₂ ≫ S₂.v₂₃ = S₁.v₂₃ ≫ f₃ := by aesop_cat

namespace Hom

attribute [reassoc] comm₀₁ comm₁₂ comm₂₃

/-- The identity morphism of a snake input. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant844ef3e1c36b9bb639eb1b6bc1d3e96cd1fc211ecbcab199ec25a63a400d593f.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/SnakeLemma/Variant844ef3e1c36b9bb639eb1b6bc1d3e96cd1fc211ecbcab199ec25a63a400d593f.lean#L386).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5fc6b896808d7b0e4e57a75e81126ec356fb2550` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
