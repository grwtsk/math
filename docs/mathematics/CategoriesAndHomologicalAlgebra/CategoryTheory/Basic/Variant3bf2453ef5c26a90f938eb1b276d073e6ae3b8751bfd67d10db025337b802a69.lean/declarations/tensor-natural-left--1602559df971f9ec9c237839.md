# tensorμ_natural_left

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:e2178db8-f999-785f-c6ed-e8ff954d9870",
  "kind": "theorem",
  "lexical_name": "tensorμ_natural_left",
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
  "slug": "tensor-natural-left--1602559df971f9ec9c237839",
  "source": {
    "blob": "4a0631752dafe480058d7a354143f5c5d9de8f53",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 599,
    "line": 594,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3bf2453ef5c26a90f938eb1b276d073e6ae3b8751bfd67d10db025337b802a69.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:1602559df971f9ec9c237839b9e2d085b35b49c24bafa7f9d3fcd3507c4da536",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3bf2453ef5c26a90f938eb1b276d073e6ae3b8751bfd67d10db025337b802a69.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:e2178db8-f999-785f-c6ed-e8ff954d9870`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 594–599.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem tensorμ_natural_left {X₁ X₂ Y₁ Y₂ : C} (f₁ : X₁ ⟶ Y₁) (f₂ : X₂ ⟶ Y₂) (Z₁ Z₂ : C) :
    (f₁ ⊗ f₂) ▷ (Z₁ ⊗ Z₂) ≫ tensorμ Y₁ Y₂ Z₁ Z₂ =
      tensorμ X₁ X₂ Z₁ Z₂ ≫ (f₁ ▷ Z₁ ⊗ f₂ ▷ Z₂) := by
  convert tensorμ_natural f₁ f₂ (𝟙 Z₁) (𝟙 Z₂) using 1 <;> simp

@[reassoc]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3bf2453ef5c26a90f938eb1b276d073e6ae3b8751bfd67d10db025337b802a69.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Variant3bf2453ef5c26a90f938eb1b276d073e6ae3b8751bfd67d10db025337b802a69.lean#L594).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4a0631752dafe480058d7a354143f5c5d9de8f53` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
