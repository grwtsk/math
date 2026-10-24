# presheafToSheaf_preservesZeroMorphisms

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f8470833ed10755c19627c28ef7c758b45c0767ab68193cd26338077278ecdb8",
  "kind": "instance",
  "lexical_name": "presheafToSheaf_preservesZeroMorphisms",
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
  "slug": "presheaftosheaf-preserveszeromorphisms--b4237c7581ecbff0df11b634",
  "source": {
    "blob": "3017eb4fac1af4639f0d398c52180af479c60f59",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 634,
    "line": 624,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant050b716164b3e5892d8326e177847714fccfd00e916ff4fa769a91909c897976.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:b4237c7581ecbff0df11b6343d83c9fe0352ee7a2b741012a779e37d414dc603",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant050b716164b3e5892d8326e177847714fccfd00e916ff4fa769a91909c897976.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f8470833ed10755c19627c28ef7c758b45c0767ab68193cd26338077278ecdb8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 624–634.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance presheafToSheaf_preservesZeroMorphisms [Preadditive D] :
    (presheafToSheaf J D).PreservesZeroMorphisms where
  map_zero F G := by
    ext : 3
    refine' colimit.hom_ext (fun j => _)
    erw [colimit.ι_map, comp_zero, J.plusMap_zero, J.diagramNatTrans_zero, zero_comp]
set_option linter.uppercaseLean3 false in
#align category_theory.presheaf_to_Sheaf_preserves_zero_morphisms CategoryTheory.presheafToSheaf_preservesZeroMorphisms

/-- The sheafification functor is left adjoint to the forgetful functor. -/
@[simps! unit_app counit_app_val]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant050b716164b3e5892d8326e177847714fccfd00e916ff4fa769a91909c897976.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Sheafification/Variant050b716164b3e5892d8326e177847714fccfd00e916ff4fa769a91909c897976.lean#L624).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3017eb4fac1af4639f0d398c52180af479c60f59` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
