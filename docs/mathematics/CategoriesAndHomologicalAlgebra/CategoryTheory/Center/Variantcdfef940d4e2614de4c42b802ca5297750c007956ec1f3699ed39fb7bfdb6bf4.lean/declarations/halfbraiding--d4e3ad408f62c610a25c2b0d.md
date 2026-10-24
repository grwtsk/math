# HalfBraiding

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8f7c0ec24d548d41db25d6cb82fdd94a8aa9efcc05c65c8069de94e7ecf5239b",
  "kind": "structure",
  "lexical_name": "HalfBraiding",
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
  "slug": "halfbraiding--d4e3ad408f62c610a25c2b0d",
  "source": {
    "blob": "c4fde65113ca128223555a0e3767da92eccbfe72",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 74,
    "line": 55,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantcdfef940d4e2614de4c42b802ca5297750c007956ec1f3699ed39fb7bfdb6bf4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d4e3ad408f62c610a25c2b0d22623223f98c728045b5cd62467706cae9f684df",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantcdfef940d4e2614de4c42b802ca5297750c007956ec1f3699ed39fb7bfdb6bf4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8f7c0ec24d548d41db25d6cb82fdd94a8aa9efcc05c65c8069de94e7ecf5239b`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 55–74.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure HalfBraiding (X : C) where
  β : ∀ U, X ⊗ U ≅ U ⊗ X
  monoidal : ∀ U U', (β (U ⊗ U')).hom =
      (α_ _ _ _).inv ≫
        ((β U).hom ⊗ 𝟙 U') ≫ (α_ _ _ _).hom ≫ (𝟙 U ⊗ (β U').hom) ≫ (α_ _ _ _).inv := by
    aesop_cat
  naturality : ∀ {U U'} (f : U ⟶ U'), (𝟙 X ⊗ f) ≫ (β U').hom = (β U).hom ≫ (f ⊗ 𝟙 X) := by
    aesop_cat
#align category_theory.half_braiding CategoryTheory.HalfBraiding

attribute [reassoc, simp] HalfBraiding.monoidal -- the reassoc lemma is redundant as a simp lemma

attribute [simp, reassoc] HalfBraiding.naturality

variable (C)

/-- The Drinfeld center of a monoidal category `C` has as objects pairs `⟨X, b⟩`, where `X : C`
and `b` is a half-braiding on `X`.
-/
-- @[nolint has_nonempty_instance] -- Porting note: This linter does not exist yet.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantcdfef940d4e2614de4c42b802ca5297750c007956ec1f3699ed39fb7bfdb6bf4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Center/Variantcdfef940d4e2614de4c42b802ca5297750c007956ec1f3699ed39fb7bfdb6bf4.lean#L55).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `c4fde65113ca128223555a0e3767da92eccbfe72` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
