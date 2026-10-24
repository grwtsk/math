# precomposeWhiskerLeftMapCocone

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:bac9914a12a81a3120c664e11d488a5464439023d4b2c18d4c9717a031023aa0",
  "kind": "def",
  "lexical_name": "precomposeWhiskerLeftMapCocone",
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
  "slug": "precomposewhiskerleftmapcocone--94ea6b1b5f7ada9bf6ce0fbb",
  "source": {
    "blob": "2336d0efb66a3a1c205eefef1e14299a139b6924",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 808,
    "line": 799,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:94ea6b1b5f7ada9bf6ce0fbbb8e627a81b3922a79d8d6edcfe6cc2d2615f8e8c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:bac9914a12a81a3120c664e11d488a5464439023d4b2c18d4c9717a031023aa0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 799–808.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def precomposeWhiskerLeftMapCocone {H H' : C ⥤ D} (α : H ≅ H') (c : Cocone F) :
    (Cocones.precompose (whiskerLeft F α.inv : _)).obj (mapCocone H c) ≅ mapCocone H' c :=
  (functorialityCompPrecompose α).app c
#align category_theory.functor.precompose_whisker_left_map_cocone CategoryTheory.Functor.precomposeWhiskerLeftMapCocone

/-- `map_cocone` commutes with `precompose`. In particular, for `F : J ⥤ C`, given a cocone
`c : Cocone F`, a natural transformation `α : F ⟶ G` and a functor `H : C ⥤ D`, we have two obvious
ways of producing a cocone over `G ⋙ H`, and they are both isomorphic.
-/
@[simps!]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Cones/Variantc4d7ae447d57b1f1eb23af7861a46934c8d752e74b6cc32c44b00876443726a8.lean#L799).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `2336d0efb66a3a1c205eefef1e14299a139b6924` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
