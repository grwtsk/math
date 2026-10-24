# commShiftUnop

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:23f61963bb19bfcb5843882f866fead8d88d1d17ee28126fb0b529e196f3156f",
  "kind": "def",
  "lexical_name": "commShiftUnop",
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
  "slug": "commshiftunop--a6d1677cffe8833f1888c3eb",
  "source": {
    "blob": "4663ef77704964dd6e473100f8e3491f83533321",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 201,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a6d1677cffe8833f1888c3ebfd988b80939f0465704782ce6a989326d4cbd2b0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:23f61963bb19bfcb5843882f866fead8d88d1d17ee28126fb0b529e196f3156f`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 201–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def commShiftUnop
    [CommShift (OppositeShift.functor A F) A] : CommShift F A where
  iso a := NatIso.removeOp ((OppositeShift.functor A F).commShiftIso a).symm
  zero := by
    rw [commShiftIso_zero]
    ext
    simp only [comp_obj, NatIso.removeOp_hom, Iso.symm_hom, NatTrans.removeOp_app, op_obj,
      CommShift.isoZero_inv_app, op_map, unop_comp, Quiver.Hom.unop_op, CommShift.isoZero_hom_app]
    erw [oppositeShiftFunctorZero_hom_app, oppositeShiftFunctorZero_inv_app]
    rfl
  add a b := by
    rw [commShiftIso_add]
    ext
    simp only [comp_obj, NatIso.removeOp_hom, Iso.symm_hom, NatTrans.removeOp_app, op_obj,
      CommShift.isoAdd_inv_app, op_map, unop_comp, Quiver.Hom.unop_op, Category.assoc,
      CommShift.isoAdd_hom_app]
    erw [oppositeShiftFunctorAdd_hom_app, oppositeShiftFunctorAdd_inv_app]
    rfl

end Functor

namespace NatTrans

variable {F} {G : C ⥤ D} [F.CommShift A] [G.CommShift A]

open Opposite in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Opposite/Variant096a91a7006f45ee2c1f0ad98a8ff92755584180bc67dc97f6ef1257110e80fe.lean#L201).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `4663ef77704964dd6e473100f8e3491f83533321` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
