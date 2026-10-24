# CommAlgCat.grpObjOpOf

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:f3e21d2559d0b5635ddb7ddb4b2f34e912b9e1473dfbbd424d1afe8509e3aa13",
  "kind": "instance",
  "lexical_name": "CommAlgCat.grpObjOpOf",
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
  "slug": "commalgcat-grpobjopof--503f71e3d2ad04d343851765",
  "source": {
    "blob": "7d1f7f720ee1b664785395541118d2c688c7ed88",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 194,
    "line": 170,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommHopfAlgCat/Variantf1851e95d1d826f4f906c414cb59055a9af3f4fe7236ba7f2c24389ed96b79bb.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:503f71e3d2ad04d34385176526e5f130623e6b1c087498ff95506e61019fceb2",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommHopfAlgCat/Variantf1851e95d1d826f4f906c414cb59055a9af3f4fe7236ba7f2c24389ed96b79bb.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:f3e21d2559d0b5635ddb7ddb4b2f34e912b9e1473dfbbd424d1afe8509e3aa13`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 170–194.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance CommAlgCat.grpObjOpOf {A : Type u} [CommRing A] [HopfAlgebra R A] :
    GrpObj (Opposite.op <| CommAlgCat.of R A) where
  inv := (CommAlgCat.ofHom <| antipodeAlgHom R A).op
  left_inv := by
    ext x
    -- TODO: Add more simp lemmas to make this `simpa ... using ...` again.
    simp only [unop_comp, unop_tensorObj, hom_comp, coe_tensorObj, lift_unop_hom,
      Quiver.Hom.unop_op, ConcreteCategory.hom_ofHom, unop_id, hom_id,
      ← Algebra.TensorProduct.lmul'_comp_map, mul_op_of_unop_hom, AlgHom.coe_comp,
      Function.comp_apply, Bialgebra.comulAlgHom_apply, unop_tensorUnit, coe_tensorUnit,
      toUnit_unop_hom, one_op_of_unop_hom, Bialgebra.counitAlgHom_apply, Algebra.ofId_apply]
    exact mul_antipode_rTensor_comul_apply (R := R) x
  right_inv := by
    ext x
    -- TODO: Add more simp lemmas to make this `simpa ... using ...` again.
    simp only [unop_comp, unop_tensorObj, hom_comp, coe_tensorObj, lift_unop_hom, unop_id, hom_id,
      Quiver.Hom.unop_op, ConcreteCategory.hom_ofHom, ← Algebra.TensorProduct.lmul'_comp_map,
      mul_op_of_unop_hom, AlgHom.coe_comp, Function.comp_apply, Bialgebra.comulAlgHom_apply,
      unop_tensorUnit, coe_tensorUnit, toUnit_unop_hom, one_op_of_unop_hom,
      Bialgebra.counitAlgHom_apply, Algebra.ofId_apply]
    exact mul_antipode_lTensor_comul_apply (R := R) x

open Opposite MonObj

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/CommHopfAlgCat/Variantf1851e95d1d826f4f906c414cb59055a9af3f4fe7236ba7f2c24389ed96b79bb.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/CommHopfAlgCat/Variantf1851e95d1d826f4f906c414cb59055a9af3f4fe7236ba7f2c24389ed96b79bb.lean#L170).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7d1f7f720ee1b664785395541118d2c688c7ed88` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
