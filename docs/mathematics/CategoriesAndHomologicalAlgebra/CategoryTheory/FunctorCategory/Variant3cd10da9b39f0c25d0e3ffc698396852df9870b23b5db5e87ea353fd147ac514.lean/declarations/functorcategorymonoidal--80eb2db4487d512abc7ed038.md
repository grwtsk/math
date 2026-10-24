# functorCategoryMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bbddf0f54b18c8a2ce0854a501d16e2695c114cff9c022f79a2fda128ede4fea",
  "kind": "instance",
  "lexical_name": "functorCategoryMonoidal",
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
  "slug": "functorcategorymonoidal--80eb2db4487d512abc7ed038",
  "source": {
    "blob": "03a4e27d040a416907dcce5e7e6eb501c2a0f87b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 97,
    "line": 84,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:80eb2db4487d512abc7ed038cc7af51c84447f6dbe0cde1bd46c935108a622d5",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bbddf0f54b18c8a2ce0854a501d16e2695c114cff9c022f79a2fda128ede4fea`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 84–97.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance functorCategoryMonoidal : MonoidalCategory (C ⥤ D) where
  tensorObj F G := tensorObj F G
  tensorHom α β := tensorHom α β
  whiskerLeft F _ _ α := FunctorCategory.whiskerLeft F α
  whiskerRight α F := FunctorCategory.whiskerRight α F
  tensorHom_def := by intros; ext; simp [tensorHom_def]
  tensorUnit' := (CategoryTheory.Functor.const C).obj (𝟙_ D)
  leftUnitor F := NatIso.ofComponents fun X => λ_ (F.obj X)
  rightUnitor F := NatIso.ofComponents fun X => ρ_ (F.obj X)
  associator F G H := NatIso.ofComponents fun X => α_ (F.obj X) (G.obj X) (H.obj X)
  pentagon F G H K := by ext X; dsimp; rw [pentagon]
#align category_theory.monoidal.functor_category_monoidal CategoryTheory.Monoidal.functorCategoryMonoidal

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant3cd10da9b39f0c25d0e3ffc698396852df9870b23b5db5e87ea353fd147ac514.lean#L84).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `03a4e27d040a416907dcce5e7e6eb501c2a0f87b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
