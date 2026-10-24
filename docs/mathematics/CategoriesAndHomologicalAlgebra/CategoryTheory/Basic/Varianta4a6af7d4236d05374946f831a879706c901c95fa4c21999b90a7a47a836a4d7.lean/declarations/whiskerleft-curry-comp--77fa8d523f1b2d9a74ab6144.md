# whiskerLeft_curry'_comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4104a819-c502-f645-a8c1-2c48ccbc8d4f",
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
  "slug": "whiskerleft-curry-comp--77fa8d523f1b2d9a74ab6144",
  "source": {
    "blob": "0a5e5a484f925eaa986f8518d7b49b919319d6e8",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 530,
    "line": 520,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta4a6af7d4236d05374946f831a879706c901c95fa4c21999b90a7a47a836a4d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:77fa8d523f1b2d9a74ab614445af090d72040cf08384e96251225805d0311c14",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta4a6af7d4236d05374946f831a879706c901c95fa4c21999b90a7a47a836a4d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4104a819-c502-f645-a8c1-2c48ccbc8d4f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 520–530.

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
    Iso.inv_hom_id_assoc, Iso.hom_inv_id_assoc, Iso.inv_hom_id_assoc]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta4a6af7d4236d05374946f831a879706c901c95fa4c21999b90a7a47a836a4d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Basic/Varianta4a6af7d4236d05374946f831a879706c901c95fa4c21999b90a7a47a836a4d7.lean#L520).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a5e5a484f925eaa986f8518d7b49b919319d6e8` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
