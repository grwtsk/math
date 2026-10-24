# functorProdToProdFunctorAssociator

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:5e8f839e634290d389dd7ce71e0377ae67ae0cc799a28f8ba550d6864053ef52",
  "kind": "def",
  "lexical_name": "functorProdToProdFunctorAssociator",
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
  "slug": "functorprodtoprodfunctorassociator--ce6380d0082ccc4b55de65db",
  "source": {
    "blob": "df9580c08e44cf50d7eb762d3f4f45c31c03a2c2",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 94,
    "line": 82,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant76daaa37b40dda428bb6972f156dfe56bec7d567e23a64dd4078efbc6f85a336.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:ce6380d0082ccc4b55de65db90a01299445187a220026aea7c6ced3b50249f5e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant76daaa37b40dda428bb6972f156dfe56bec7d567e23a64dd4078efbc6f85a336.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:5e8f839e634290d389dd7ce71e0377ae67ae0cc799a28f8ba550d6864053ef52`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 82–94.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def functorProdToProdFunctorAssociator :
    (associativity _ _ _).congrRight.functor ⋙ functorProdToProdFunctor A C (D × E) ⋙
      (𝟭 _).prod (functorProdToProdFunctor A D E) ≅
        functorProdToProdFunctor A (C × D) E ⋙ (functorProdToProdFunctor A C D).prod (𝟭 _) ⋙
          (associativity _ _ _).functor :=
  Iso.refl _

#adaptation_note
/-- `respectTransparency.types true` changes the auto-generated lemmas' signature -/
set_option backward.isDefEq.respectTransparency.types false in
/-- The equivalence swapping the second and third categories in `(A × C) × (D × E)`. This follows
the definition of `MonoidalCategory.tensorμ`. -/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant76daaa37b40dda428bb6972f156dfe56bec7d567e23a64dd4078efbc6f85a336.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Associator/Variant76daaa37b40dda428bb6972f156dfe56bec7d567e23a64dd4078efbc6f85a336.lean#L82).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `df9580c08e44cf50d7eb762d3f4f45c31c03a2c2` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
