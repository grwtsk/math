# counitApp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:89e2d26c82892d2b81b0aadab5ff44d17b730480557f690d52c9966ce5820320",
  "kind": "def",
  "lexical_name": "counitApp",
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
  "slug": "counitapp--26a0ce978ec83ed6ee615cca",
  "source": {
    "blob": "51420376d1230a79d5025f38dab1afeab3a68b98",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 201,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant71a12a483c95b19e2a0efb937988ba9cb05a8958c00af7669639ee5f2a8afd0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:26a0ce978ec83ed6ee615cca5621bc64f2220e48fdc53dea4ced76ee75093bb7",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant71a12a483c95b19e2a0efb937988ba9cb05a8958c00af7669639ee5f2a8afd0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:89e2d26c82892d2b81b0aadab5ff44d17b730480557f690d52c9966ce5820320`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def counitApp [HasExplicitFiniteCoproducts.{u} P]
    (Y : (CompHausLike.{u} P)ᵒᵖ ⥤ Type max u w) [PreservesFiniteProducts Y] :
    (functorToPresheaves.obj (Y.obj (op (CompHausLike.of P PUnit.{u + 1})))) ⟶ Y where
  app := fun ⟨S⟩ ↦ counitAppApp S Y
  naturality := by
    intro S T g
    ext f
    apply presheaf_ext (f.comap g.unop.hom)
    intro a
    simp only [op_unop, functorToPresheaves_obj_obj, types_comp_apply, functorToPresheaves_obj_map,
      incl_of_counitAppApp, ← FunctorToTypes.map_comp_apply, incl_comap]
    simp only [FunctorToTypes.map_comp_apply, incl_of_counitAppApp]
    simp only [counitAppAppImage, ← FunctorToTypes.map_comp_apply, ← op_comp,
      terminal.comp_from]
    apply congrArg
    exact image_eq_image_mk (g := g.unop) (a := a)

variable (P) (X : TopCat.{max u w})
    [HasExplicitFiniteCoproducts.{0} P] [HasExplicitPullbacks P]
    (hs : ∀ ⦃X Y : CompHausLike P⦄ (f : X ⟶ Y), EffectiveEpi f → Function.Surjective f)

/-- `locallyConstantIsoContinuousMap` is a natural isomorphism. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant71a12a483c95b19e2a0efb937988ba9cb05a8958c00af7669639ee5f2a8afd0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LocallyConstant/Variant71a12a483c95b19e2a0efb937988ba9cb05a8958c00af7669639ee5f2a8afd0a.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `51420376d1230a79d5025f38dab1afeab3a68b98` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
