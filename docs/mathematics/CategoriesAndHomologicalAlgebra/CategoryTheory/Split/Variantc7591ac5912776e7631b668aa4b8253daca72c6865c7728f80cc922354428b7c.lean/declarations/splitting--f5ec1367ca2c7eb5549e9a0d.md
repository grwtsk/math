# Splitting

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:597992f37a7180aa4a6c55eabb66caf4d018b6482fe47600955f5efd118f41fc",
  "kind": "structure",
  "lexical_name": "Splitting",
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
  "slug": "splitting--f5ec1367ca2c7eb5549e9a0d",
  "source": {
    "blob": "3de7e1d3eb2747270cc5937d5cbc1dddf2ad4d5d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 213,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:f5ec1367ca2c7eb5549e9a0d512cfd4c6de81db6ff778646da0dbc76a9fa0841",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `structure` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:597992f37a7180aa4a6c55eabb66caf4d018b6482fe47600955f5efd118f41fc`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 213–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
structure Splitting (X : SimplicialObject C) where
  /-- The "nondegenerate simplices" `N n` for all `n : ℕ`. -/
  N : ℕ → C
  /-- The "inclusion" `N n ⟶ X _⦋n⦌` for all `n : ℕ`. -/
  ι : ∀ n, N n ⟶ X _⦋n⦌
  /-- For each `Δ`, `X.obj Δ` identifies to the coproduct of the objects `N A.1.unop.len`
  for all `A : IndexSet Δ`. -/
  isColimit' : ∀ Δ : SimplexCategoryᵒᵖ, IsColimit (Splitting.cofan' N X ι Δ)

namespace Splitting

variable {X Y : SimplicialObject C} (s : Splitting X)

/-- The cofan for `summand s.N Δ` induced by a splitting of a simplicial object. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Split/Variantc7591ac5912776e7631b668aa4b8253daca72c6865c7728f80cc922354428b7c.lean#L213).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3de7e1d3eb2747270cc5937d5cbc1dddf2ad4d5d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
