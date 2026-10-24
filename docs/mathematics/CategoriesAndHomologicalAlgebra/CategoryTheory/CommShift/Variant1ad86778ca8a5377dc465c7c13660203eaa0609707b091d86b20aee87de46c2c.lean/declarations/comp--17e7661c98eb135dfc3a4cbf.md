# comp

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:fe34fceefdc8f095042b1d352f967ecfe96e60342d2d4ca8be3f4dc09922e839",
  "kind": "instance",
  "lexical_name": "comp",
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
  "slug": "comp--17e7661c98eb135dfc3a4cbf",
  "source": {
    "blob": "96474b1ede798bfcb79c6c34469ae8164140456e",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 235,
    "line": 208,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant1ad86778ca8a5377dc465c7c13660203eaa0609707b091d86b20aee87de46c2c.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:17e7661c98eb135dfc3a4cbf2de0febb72af5cda2f7ed2dde542f020a2dc2550",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant1ad86778ca8a5377dc465c7c13660203eaa0609707b091d86b20aee87de46c2c.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:fe34fceefdc8f095042b1d352f967ecfe96e60342d2d4ca8be3f4dc09922e839`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 208–235.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance comp [F.CommShift A] [G.CommShift A] : (F ⋙ G).CommShift A where
  commShiftIso a := (Functor.associator _ _ _).symm ≪≫ isoWhiskerRight (F.commShiftIso a) _ ≪≫
    Functor.associator _ _ _ ≪≫ isoWhiskerLeft _ (G.commShiftIso a) ≪≫
    (Functor.associator _ _ _).symm
  commShiftIso_zero := by
    ext X
    dsimp
    simp only [id_comp, comp_id, commShiftIso_zero, isoZero_hom_app, ← Functor.map_comp_assoc,
      assoc, Iso.inv_hom_id_app, id_obj, comp_map, comp_obj]
  commShiftIso_add := fun a b => by
    ext X
    dsimp
    simp only [commShiftIso_add, isoAdd_hom_app]
    dsimp
    simp only [comp_id, id_comp, assoc, ← Functor.map_comp_assoc, Iso.inv_hom_id_app, comp_obj]
    simp only [map_comp, assoc, commShiftIso_hom_naturality_assoc]

end CommShift

alias commShiftIso_id_hom_app := CommShift.id_commShiftIso_hom_app
alias commShiftIso_id_inv_app := CommShift.id_commShiftIso_inv_app
alias commShiftIso_comp_hom_app := CommShift.comp_commShiftIso_hom_app
alias commShiftIso_comp_inv_app := CommShift.comp_commShiftIso_inv_app

attribute [simp] commShiftIso_id_hom_app commShiftIso_id_inv_app

variable {B}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant1ad86778ca8a5377dc465c7c13660203eaa0609707b091d86b20aee87de46c2c.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommShift/Variant1ad86778ca8a5377dc465c7c13660203eaa0609707b091d86b20aee87de46c2c.lean#L208).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `96474b1ede798bfcb79c6c34469ae8164140456e` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
