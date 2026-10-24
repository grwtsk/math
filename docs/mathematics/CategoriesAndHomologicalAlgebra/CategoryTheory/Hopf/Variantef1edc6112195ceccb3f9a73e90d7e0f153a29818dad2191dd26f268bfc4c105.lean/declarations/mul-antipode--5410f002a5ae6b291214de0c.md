# mul_antipode

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "5d9e1723b7a7d3609d6f9e24aecf9c6c3289bcf3",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 442,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ef/ef1edc6112195ceccb3f9a73e90d7e0f153a29818dad2191dd26f268bfc4c105.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:eb9b5fd6-94b6-db19-e803-55bb5d71ae90",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:ae1adf56-f02e-33af-92b2-71c03380c397",
  "kind": "theorem",
  "lexical_name": "mul_antipode",
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
  "slug": "mul-antipode--5410f002a5ae6b291214de0c",
  "source": {
    "blob": "5d9e1723b7a7d3609d6f9e24aecf9c6c3289bcf3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 484,
    "line": 442,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantef1edc6112195ceccb3f9a73e90d7e0f153a29818dad2191dd26f268bfc4c105.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:5410f002a5ae6b291214de0c5e0e6f9c8d32345495e671dfd7d8040bf452795e",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantef1edc6112195ceccb3f9a73e90d7e0f153a29818dad2191dd26f268bfc4c105.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:ae1adf56-f02e-33af-92b2-71c03380c397`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–484.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem mul_antipode (A : Hopf_ C) :
    A.X.X.mul ≫ A.antipode = (A.antipode ⊗ A.antipode) ≫ (β_ _ _).hom ≫ A.X.X.mul := by
  -- Again, it is a "left inverse equals right inverse" argument in the convolution monoid.
  apply left_inv_eq_right_inv
    (M := Conv (((Bimon_.toComon_ C).obj A.X) ⊗ ((Bimon_.toComon_ C).obj A.X)) A.X.X)
    (a := A.X.X.mul)
  · -- Unfold the algebra structure in the convolution monoid,
    -- then `simp?, simp only [tensor_μ], simp?`.
    erw [Conv.mul_eq, Conv.one_eq]
    simp only [Monoidal.transportStruct_tensorObj, Equivalence.symm_functor,
      Comon_.Comon_EquivMon_OpOp_inverse, Equivalence.symm_inverse,
      Comon_.Comon_EquivMon_OpOp_functor, Comon_.Comon_ToMon_OpOp_obj, Comon_.Mon_OpOpToComon__obj,
      unop_tensorObj, Comon_.Mon_OpOpToComon_obj'_X, Mon_.monMonoidalStruct_tensorObj_X,
      Comon_.Comon_ToMon_OpOp_obj'_X, Bimon_.toComon__obj_X, Comon_.Mon_OpOpToComon_obj'_comul,
      Mon_.tensorObj_mul, Comon_.Comon_ToMon_OpOp_obj'_mul, Bimon_.toComon__obj_comul, unop_comp,
      unop_tensorHom, Quiver.Hom.unop_op, whiskerRight_tensor, comp_whiskerRight, Category.assoc,
      Comon_.Mon_OpOpToComon_obj'_counit, Mon_.tensorObj_one, Comon_.Comon_ToMon_OpOp_obj'_one,
      Bimon_.toComon__obj_counit, unop_tensorUnit, unop_inv_leftUnitor]
    simp only [tensorμ]
    simp only [unop_comp, unop_tensorObj, unop_inv_associator, unop_whiskerLeft,
      unop_hom_associator, unop_whiskerRight, unop_hom_braiding, Category.assoc,
      pentagon_hom_inv_inv_inv_inv_assoc]
    exact mul_antipode₁ A
  · erw [Conv.mul_eq, Conv.one_eq]
    simp only [Monoidal.transportStruct_tensorObj, Equivalence.symm_functor,
      Comon_.Comon_EquivMon_OpOp_inverse, Equivalence.symm_inverse,
      Comon_.Comon_EquivMon_OpOp_functor, Comon_.Comon_ToMon_OpOp_obj, Comon_.Mon_OpOpToComon__obj,
      unop_tensorObj, Comon_.Mon_OpOpToComon_obj'_X, Mon_.monMonoidalStruct_tensorObj_X,
      Comon_.Comon_ToMon_OpOp_obj'_X, Bimon_.toComon__obj_X, Comon_.Mon_OpOpToComon_obj'_comul,
      Mon_.tensorObj_mul, Comon_.Comon_ToMon_OpOp_obj'_mul, Bimon_.toComon__obj_comul, unop_comp,
      unop_tensorHom, Quiver.Hom.unop_op, whiskerRight_tensor,
      BraidedCategory.braiding_naturality_assoc, MonoidalCategory.whiskerLeft_comp, Category.assoc,
      Comon_.Mon_OpOpToComon_obj'_counit, Mon_.tensorObj_one, Comon_.Comon_ToMon_OpOp_obj'_one,
      Bimon_.toComon__obj_counit, unop_tensorUnit, unop_inv_leftUnitor]
    simp only [tensorμ]
    simp only [unop_comp, unop_tensorObj, unop_inv_associator, unop_whiskerLeft,
      unop_hom_associator, unop_whiskerRight, unop_hom_braiding, Category.assoc,
      pentagon_hom_inv_inv_inv_inv_assoc]
    exact mul_antipode₂ A

/--
In a commutative Hopf algebra, the antipode squares to the identity.
-/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantef1edc6112195ceccb3f9a73e90d7e0f153a29818dad2191dd26f268bfc4c105.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Hopf/Variantef1edc6112195ceccb3f9a73e90d7e0f153a29818dad2191dd26f268bfc4c105.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5d9e1723b7a7d3609d6f9e24aecf9c6c3289bcf3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
