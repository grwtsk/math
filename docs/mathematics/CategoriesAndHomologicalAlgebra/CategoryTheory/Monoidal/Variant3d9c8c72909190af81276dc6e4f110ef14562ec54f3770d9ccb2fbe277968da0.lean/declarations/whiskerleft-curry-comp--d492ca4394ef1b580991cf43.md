# whiskerLeft_curry'_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "d695f05886419880dfc63c81fa19a841f77bc593",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 484,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/3d/3d9c8c72909190af81276dc6e4f110ef14562ec54f3770d9ccb2fbe277968da0.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:dada8fa8-2bab-263e-8af3-c200e3df8446",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:512b86bd-b03e-71a0-64dd-032892db1f94",
  "kind": "lemma",
  "lexical_name": "whiskerLeft_curry'_comp",
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
  "slug": "whiskerleft-curry-comp--d492ca4394ef1b580991cf43",
  "source": {
    "blob": "d695f05886419880dfc63c81fa19a841f77bc593",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 494,
    "line": 484,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3d9c8c72909190af81276dc6e4f110ef14562ec54f3770d9ccb2fbe277968da0.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d492ca4394ef1b580991cf439f16b3bb0e5ba3eaa55100827838e3f7806c9a5b",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3d9c8c72909190af81276dc6e4f110ef14562ec54f3770d9ccb2fbe277968da0.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:512b86bd-b03e-71a0-64dd-032892db1f94`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 484–494.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma whiskerLeft_curry'_comp {X Y Z : C} [Closed X] [Closed Y] (f : Y ⟶ Z) :
    _ ◁ curry' f ≫ comp X Y Z = (ρ_ _).hom ≫ (ihom X).map f := by
  rw [← cancel_epi (ρ_ _).inv, Iso.inv_hom_id_assoc]
  apply uncurry_injective
  rw [uncurry_ihom_map, comp_eq, ← curry_natural_left, ← curry_natural_left, uncurry_curry,
    compTranspose_eq, associator_inv_naturality_right_assoc, whisker_exchange_assoc]
  dsimp
  rw [whiskerLeft_curry'_ihom_ev_app, whiskerLeft_rightUnitor_inv,
    MonoidalCategory.whiskerRight_id_assoc, Category.assoc,
    Iso.inv_hom_id_assoc, Iso.hom_inv_id_assoc, Iso.inv_hom_id_assoc,]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3d9c8c72909190af81276dc6e4f110ef14562ec54f3770d9ccb2fbe277968da0.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Monoidal/Variant3d9c8c72909190af81276dc6e4f110ef14562ec54f3770d9ccb2fbe277968da0.lean#L484).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d695f05886419880dfc63c81fa19a841f77bc593` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
