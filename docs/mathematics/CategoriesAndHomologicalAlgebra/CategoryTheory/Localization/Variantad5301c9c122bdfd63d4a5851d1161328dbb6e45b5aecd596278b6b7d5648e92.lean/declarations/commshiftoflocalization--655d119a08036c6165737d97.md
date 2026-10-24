# commShiftOfLocalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:999cf2097d121c603a6cd3ac1c24161a15e6c4cfdb1001763e22d91f1588c13c",
  "kind": "def",
  "lexical_name": "commShiftOfLocalization",
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
  "slug": "commshiftoflocalization--655d119a08036c6165737d97",
  "source": {
    "blob": "b0162f9929b9bb912004f088fe06061f882d2e9f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 222,
    "line": 181,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:655d119a08036c6165737d9761a0d849d189db2af57d0a204e6094532f7d2b5e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:999cf2097d121c603a6cd3ac1c24161a15e6c4cfdb1001763e22d91f1588c13c`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 181–222.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def commShiftOfLocalization : F'.CommShift A where
  commShiftIso := commShiftOfLocalization.iso L W F F'
  commShiftIso_zero := by
    ext1
    apply natTrans_ext L W
    intro X
    dsimp
    simp only [commShiftOfLocalization.iso_hom_app, comp_obj, commShiftIso_zero,
      CommShift.isoZero_inv_app, map_comp, CommShift.isoZero_hom_app, Category.assoc,
      ← NatTrans.naturality_assoc, ← NatTrans.naturality]
    dsimp
    simp only [← Functor.map_comp_assoc, ← Functor.map_comp,
      Iso.inv_hom_id_app, id_obj, map_id, Category.id_comp, Iso.hom_inv_id_app_assoc]
  commShiftIso_add a b := by
    ext1
    apply natTrans_ext L W
    intro X
    dsimp
    simp only [commShiftOfLocalization.iso_hom_app, comp_obj, commShiftIso_add,
      CommShift.isoAdd_inv_app, map_comp, CommShift.isoAdd_hom_app, Category.assoc]
    congr 1
    rw [← cancel_epi (F'.map ((shiftFunctor D b).map ((L.commShiftIso a).hom.app X))),
      ← F'.map_comp_assoc, ← map_comp, Iso.hom_inv_id_app, map_id, map_id, Category.id_comp]
    conv_lhs =>
      erw [← NatTrans.naturality_assoc]
      dsimp
      rw [← Functor.map_comp_assoc, ← map_comp_assoc, Category.assoc,
        ← map_comp, Iso.inv_hom_id_app]
      dsimp
      rw [map_id, Category.comp_id, ← NatTrans.naturality]
      dsimp
    conv_rhs =>
      erw [← NatTrans.naturality_assoc]
      dsimp
      rw [← Functor.map_comp_assoc, ← map_comp, Iso.hom_inv_id_app]
      dsimp
      rw [map_id, map_id, Category.id_comp, commShiftOfLocalization.iso_hom_app,
        Category.assoc, Category.assoc, Category.assoc, ← map_comp_assoc,
        Iso.inv_hom_id_app, map_id, Category.id_comp]

variable {A}

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Localization/Variantad5301c9c122bdfd63d4a5851d1161328dbb6e45b5aecd596278b6b7d5648e92.lean#L181).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b0162f9929b9bb912004f088fe06061f882d2e9f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
