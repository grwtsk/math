# functorCategoryMonoidal

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:09b141f20e99331bf40a2dd506635e3df1aa514af46ad1f85907fde104e7a3a5",
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
  "slug": "functorcategorymonoidal--a3459e5544ffa12f3d1accfb",
  "source": {
    "blob": "ecd9cbe2652e614ad9de72ec07c2dc9ac3a6b608",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 105,
    "line": 92,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a3459e5544ffa12f3d1accfbd559ea55e250d29df529fb39d6425a7e69090acc",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:09b141f20e99331bf40a2dd506635e3df1aa514af46ad1f85907fde104e7a3a5`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 92–105.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/FunctorCategory/Variant5c4bb1c7cccd5136e61e04292da0214601c4b94640e51811f4ecc46860cb4059.lean#L92).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `ecd9cbe2652e614ad9de72ec07c2dc9ac3a6b608` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
