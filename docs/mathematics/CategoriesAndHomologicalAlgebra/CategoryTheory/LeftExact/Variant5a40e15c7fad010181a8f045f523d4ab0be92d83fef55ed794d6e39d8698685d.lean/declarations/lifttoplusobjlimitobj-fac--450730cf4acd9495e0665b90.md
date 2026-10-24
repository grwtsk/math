# liftToPlusObjLimitObj_fac

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:2db7ba63-d4fe-9acd-8b5f-d10db34f7b15",
  "kind": "theorem",
  "lexical_name": "liftToPlusObjLimitObj_fac",
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
  "slug": "lifttoplusobjlimitobj-fac--450730cf4acd9495e0665b90",
  "source": {
    "blob": "684f1b83112793875c088b489fac50aeb1ab5892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 186,
    "line": 161,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:450730cf4acd9495e0665b90a3801341600e688a847e6fa9567e29182a96174d",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:2db7ba63-d4fe-9acd-8b5f-d10db34f7b15`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 161–186.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem liftToPlusObjLimitObj_fac {K : Type max v u} [SmallCategory K] [FinCategory K]
    [HasLimitsOfShape K D] [PreservesLimitsOfShape K (forget D)]
    [ReflectsLimitsOfShape K (forget D)] (F : K ⥤ Cᵒᵖ ⥤ D) (X : C)
    (S : Cone (F ⋙ J.plusFunctor D ⋙ (evaluation Cᵒᵖ D).obj (op X))) (k) :
    liftToPlusObjLimitObj.{w, v, u} F X S ≫ (J.plusMap (limit.π F k)).app (op X) = S.π.app k := by
  dsimp only [liftToPlusObjLimitObj]
  rw [← (limit.isLimit (F ⋙ J.plusFunctor D ⋙ (evaluation Cᵒᵖ D).obj (op X))).fac S k,
    Category.assoc]
  congr 1
  dsimp
  rw [Category.assoc, Category.assoc, ← Iso.eq_inv_comp, Iso.inv_comp_eq, Iso.inv_comp_eq]
  refine' colimit.hom_ext (fun j => _)
  dsimp [plusMap]
  simp only [HasColimit.isoOfNatIso_ι_hom_assoc, ι_colimMap]
  dsimp [IsLimit.conePointUniqueUpToIso, HasLimit.isoOfNatIso, IsLimit.map]
  rw [limit.lift_π]
  dsimp
  rw [ι_colimitLimitIso_limit_π_assoc]
  simp_rw [← Category.assoc, ← NatTrans.comp_app]
  rw [limit.lift_π, Category.assoc]
  congr 1
  rw [← Iso.comp_inv_eq]
  erw [colimit.ι_desc]
  rfl
#align category_theory.grothendieck_topology.lift_to_plus_obj_limit_obj_fac CategoryTheory.GrothendieckTopology.liftToPlusObjLimitObj_fac

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean#L161).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `684f1b83112793875c088b489fac50aeb1ab5892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
