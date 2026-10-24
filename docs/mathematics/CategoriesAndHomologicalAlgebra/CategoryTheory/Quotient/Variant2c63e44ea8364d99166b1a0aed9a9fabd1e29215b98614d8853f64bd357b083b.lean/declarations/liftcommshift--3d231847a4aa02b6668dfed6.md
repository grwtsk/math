# liftCommShift

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:85de65563fbe55e0a562a367b9dd14bb58cd86dd0fc3bdcb45e861f93164ea11",
  "kind": "instance",
  "lexical_name": "liftCommShift",
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
  "slug": "liftcommshift--3d231847a4aa02b6668dfed6",
  "source": {
    "blob": "3ea668302cc4c4e943bc6b6d143e5fbc410714a9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 136,
    "line": 104,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:3d231847a4aa02b6668dfed689750ac132a6087f8333a812fb3f791b2413bda0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:85de65563fbe55e0a562a367b9dd14bb58cd86dd0fc3bdcb45e861f93164ea11`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 104–136.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable instance liftCommShift :
    (Quotient.lift r F hF).CommShift A where
  iso := LiftCommShift.iso F r hF
  zero := by
    ext1
    apply natTrans_ext
    ext X
    dsimp
    rw [LiftCommShift.iso_hom_app, (functor r).commShiftIso_zero,
      Functor.CommShift.isoZero_hom_app, Functor.CommShift.isoZero_inv_app,
      Functor.map_comp, assoc, F.commShiftIso_zero, Functor.CommShift.isoZero_hom_app,
      lift_map_functor_map, ← F.map_comp_assoc, Iso.inv_hom_id_app]
    dsimp [lift_obj_functor_obj]
    rw [F.map_id, id_comp]
  add a b := by
    ext1
    apply natTrans_ext
    ext X
    dsimp
    rw [LiftCommShift.iso_hom_app, (functor r).commShiftIso_add, F.commShiftIso_add,
      Functor.CommShift.isoAdd_hom_app, Functor.CommShift.isoAdd_hom_app,
      Functor.CommShift.isoAdd_inv_app, Functor.map_comp, Functor.map_comp,
      Functor.map_comp, assoc, assoc, assoc, LiftCommShift.iso_hom_app, lift_map_functor_map]
    congr 1
    rw [← cancel_epi ((shiftFunctor (Quotient r) b ⋙ lift r F hF).map
      (NatTrans.app (Functor.commShiftIso (functor r) a).hom X))]
    erw [(LiftCommShift.iso F r hF b).hom.naturality_assoc
      (((functor r).commShiftIso a).hom.app X), LiftCommShift.iso_hom_app,
      ← Functor.map_comp_assoc, Iso.hom_inv_id_app]
    dsimp
    simp only [Functor.comp_obj, assoc, ← Functor.map_comp_assoc, Iso.inv_hom_id_app,
      Functor.map_id, id_comp, Iso.hom_inv_id_app, lift_obj_functor_obj]

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Quotient/Variant2c63e44ea8364d99166b1a0aed9a9fabd1e29215b98614d8853f64bd357b083b.lean#L104).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `3ea668302cc4c4e943bc6b6d143e5fbc410714a9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
