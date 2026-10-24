# prodToProdTop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8d5c4c7120da2ef2ec0d93090fb33a2f49c4882e339d3bdb0686260d2770a2f9",
  "kind": "def",
  "lexical_name": "prodToProdTop",
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
  "slug": "prodtoprodtop--96f44015b60675bdd2bfa1c9",
  "source": {
    "blob": "f3d83ec1bf215ce6a51633392eca341bd9b064c1",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 168,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:96f44015b60675bdd2bfa1c93a2153d4c78df366c9e62c2b5623893ecd10f6cc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8d5c4c7120da2ef2ec0d93090fb33a2f49c4882e339d3bdb0686260d2770a2f9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 168–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def prodToProdTop : πₓ A × πₓ B ⥤ πₓ (TopCat.of (A × B)) where
  obj g := g
  map {x y} p :=
    match x, y, p with
    | (x₀, x₁), (y₀, y₁), (p₀, p₁) => @Path.Homotopic.prod _ _ (_) (_) _ _ _ _ p₀ p₁
  map_id := by
    rintro ⟨x₀, x₁⟩
    simp only [CategoryTheory.prod_id, FundamentalGroupoid.id_eq_path_refl]
    rfl
  map_comp {x y z} f g :=
    match x, y, z, f, g with
    | (x₀, x₁), (y₀, y₁), (z₀, z₁), (f₀, f₁), (g₀, g₁) =>
      (Path.Homotopic.comp_prod_eq_prod_comp f₀ f₁ g₀ g₁).symm
#align fundamental_groupoid_functor.prod_to_prod_Top FundamentalGroupoidFunctor.prodToProdTop

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Product/Variantb237e491a7b098d855988344b48ff318b570a37f650f56fb0bab7365c76bdf2a.lean#L168).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f3d83ec1bf215ce6a51633392eca341bd9b064c1` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
