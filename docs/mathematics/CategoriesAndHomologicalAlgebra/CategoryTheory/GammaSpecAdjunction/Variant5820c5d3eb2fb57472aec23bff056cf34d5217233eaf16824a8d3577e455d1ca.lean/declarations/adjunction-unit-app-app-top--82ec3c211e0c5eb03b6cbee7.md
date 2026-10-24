# adjunction_unit_app_app_top

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:144cd812-e9a3-0f73-b480-be50d3974fd0",
  "kind": "theorem",
  "lexical_name": "adjunction_unit_app_app_top",
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
  "slug": "adjunction-unit-app-app-top--82ec3c211e0c5eb03b6cbee7",
  "source": {
    "blob": "b6fbd7fd54059fc19b4a4117c86887875597888a",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 469,
    "line": 442,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:82ec3c211e0c5eb03b6cbee76b75363e4a25abc674c776c7c17ad6a3c673ffa3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:144cd812-e9a3-0f73-b480-be50d3974fd0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 442–469.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem adjunction_unit_app_app_top (X : Scheme) :
    (ΓSpec.adjunction.unit.app X).1.c.app (op ⊤) =
    SpecΓIdentity.hom.app (X.presheaf.obj (op ⊤)) := by
  have := congr_app ΓSpec.adjunction.left_triangle X
  dsimp at this
  -- Porting Notes: Slightly changed some rewrites.
  -- Originally:
  --  rw [← is_iso.eq_comp_inv] at this
  --  simp only [Γ_Spec.LocallyRingedSpace_adjunction_counit, nat_trans.op_app, category.id_comp,
  --    Γ_Spec.adjunction_counit_app] at this
  --  rw [← op_inv, nat_iso.inv_inv_app, quiver.hom.op_inj.eq_iff] at this
  rw [← IsIso.eq_comp_inv] at this
  simp only [adjunction_counit_app, locallyRingedSpaceAdjunction_counit, NatIso.op_inv,
    NatTrans.op_app, unop_op, Functor.id_obj, Functor.comp_obj, Functor.rightOp_obj,
    Spec.toLocallyRingedSpace_obj, Γ_obj, Spec.locallyRingedSpaceObj_toSheafedSpace,
    Spec.sheafedSpaceObj_carrier, Spec.sheafedSpaceObj_presheaf,
    SpecΓIdentity_inv_app, Category.id_comp] at this
  rw [← op_inv, Quiver.Hom.op_inj.eq_iff] at this
  rw [SpecΓIdentity_hom_app]
  convert this using 1
#align algebraic_geometry.Γ_Spec.adjunction_unit_app_app_top AlgebraicGeometry.ΓSpec.adjunction_unit_app_app_top

end ΓSpec

/-! Immediate consequences of the adjunction. -/


/-- Spec preserves limits. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/GammaSpecAdjunction/Variant5820c5d3eb2fb57472aec23bff056cf34d5217233eaf16824a8d3577e455d1ca.lean#L442).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `b6fbd7fd54059fc19b4a4117c86887875597888a` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
