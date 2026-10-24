# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:b860c1c89f47487781cd6a357d8ec132f7ae06efc08c3539d0902f02311baa12",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--e4f4f6a4b1c41e06a4de66de",
  "source": {
    "blob": "d8254518c828b3a9630dfe6337a0fff8dd249931",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 250,
    "line": 231,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Varianta2911ef8b8d3ff618ba0a9601c748ef78362558be49db7d3d9f20fda8b3cac6d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:e4f4f6a4b1c41e06a4de66de1488693ff221184c1abb5f3a7bda0218b9687fa7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Varianta2911ef8b8d3ff618ba0a9601c748ef78362558be49db7d3d9f20fda8b3cac6d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:b860c1c89f47487781cd6a357d8ec132f7ae06efc08c3539d0902f02311baa12`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 231–250.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

````lean
instance [Inhabited C] : Inhabited (Coalgebra (𝟭 C)) :=
  ⟨⟨default, 𝟙 _⟩⟩

namespace Coalgebra

variable {F : C ⥤ C} (V : Coalgebra F) {V₀ V₁ V₂ : Coalgebra F}

/-
```
        str
    V₀ -----> F V₀
    |          |
  f |          | F f
    V          V
    V₁ -----> F V₁
        str
```
-/
/-- A morphism between coalgebras of an endofunctor `F` -/
@[ext]
````

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Varianta2911ef8b8d3ff618ba0a9601c748ef78362558be49db7d3d9f20fda8b3cac6d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Algebra/Varianta2911ef8b8d3ff618ba0a9601c748ef78362558be49db7d3d9f20fda8b3cac6d.lean#L231).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d8254518c828b3a9630dfe6337a0fff8dd249931` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
