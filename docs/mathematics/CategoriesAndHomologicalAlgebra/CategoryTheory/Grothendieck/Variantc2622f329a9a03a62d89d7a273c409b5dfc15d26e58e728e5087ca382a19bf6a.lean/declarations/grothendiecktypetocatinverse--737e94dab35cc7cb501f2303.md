# grothendieckTypeToCatInverse

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:77986e6e8a4705604e6219c084a349a1d412cc6388bd0125eee7da9466a55de3",
  "kind": "def",
  "lexical_name": "grothendieckTypeToCatInverse",
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
  "slug": "grothendiecktypetocatinverse--737e94dab35cc7cb501f2303",
  "source": {
    "blob": "60a31c404a0f8e2c760f95bcbf3b575c06150f2c",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 179,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc2622f329a9a03a62d89d7a273c409b5dfc15d26e58e728e5087ca382a19bf6a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:737e94dab35cc7cb501f230390c91ad90d6534a927148a9484628b5355a73932",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc2622f329a9a03a62d89d7a273c409b5dfc15d26e58e728e5087ca382a19bf6a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:77986e6e8a4705604e6219c084a349a1d412cc6388bd0125eee7da9466a55de3`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 179–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def grothendieckTypeToCatInverse : G.Elements ⥤ Grothendieck (G ⋙ typeToCat) where
  obj X := ⟨X.1, ⟨X.2⟩⟩
  map f := ⟨f.1, ⟨⟨f.2⟩⟩⟩
set_option linter.uppercaseLean3 false in
#align category_theory.grothendieck.grothendieck_Type_to_Cat_inverse CategoryTheory.Grothendieck.grothendieckTypeToCatInverse

/-- The Grothendieck construction applied to a functor to `Type`
(thought of as a functor to `Cat` by realising a type as a discrete category)
is the same as the 'category of elements' construction.
-/
-- See porting note on grothendieckTypeToCatInverse.
-- We just want to turn off grothendieckTypeToCat_inverse_map_fiber_down_down,
-- so have to list the complement here for `@[simps]`.
@[simps! functor_obj_fst functor_obj_snd functor_map_coe inverse_obj_base inverse_obj_fiber_as
  inverse_map_base unitIso_hom_app_base unitIso_hom_app_fiber unitIso_inv_app_base
  unitIso_inv_app_fiber counitIso_hom_app_coe counitIso_inv_app_coe]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc2622f329a9a03a62d89d7a273c409b5dfc15d26e58e728e5087ca382a19bf6a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variantc2622f329a9a03a62d89d7a273c409b5dfc15d26e58e728e5087ca382a19bf6a.lean#L179).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `60a31c404a0f8e2c760f95bcbf3b575c06150f2c` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
