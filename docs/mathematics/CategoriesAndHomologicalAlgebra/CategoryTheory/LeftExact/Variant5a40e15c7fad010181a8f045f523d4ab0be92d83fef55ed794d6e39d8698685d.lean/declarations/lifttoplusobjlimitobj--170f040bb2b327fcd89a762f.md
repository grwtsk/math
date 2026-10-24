# liftToPlusObjLimitObj

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:526988b5212632a9c557813e790f4268c7643c4743c10f079d226bd14ceab18a",
  "kind": "def",
  "lexical_name": "liftToPlusObjLimitObj",
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
  "slug": "lifttoplusobjlimitobj--170f040bb2b327fcd89a762f",
  "source": {
    "blob": "684f1b83112793875c088b489fac50aeb1ab5892",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 160,
    "line": 131,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:170f040bb2b327fcd89a762fb594202669192f6f642eb9cf0e85536057d4a270",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:526988b5212632a9c557813e790f4268c7643c4743c10f079d226bd14ceab18a`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 131–160.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def liftToPlusObjLimitObj {K : Type max v u} [SmallCategory K] [FinCategory K]
    [HasLimitsOfShape K D] [PreservesLimitsOfShape K (forget D)]
    [ReflectsLimitsOfShape K (forget D)] (F : K ⥤ Cᵒᵖ ⥤ D) (X : C)
    (S : Cone (F ⋙ J.plusFunctor D ⋙ (evaluation Cᵒᵖ D).obj (op X))) :
    S.pt ⟶ (J.plusObj (limit F)).obj (op X) :=
  let e := colimitLimitIso (F ⋙ J.diagramFunctor D X)
  let t : J.diagram (limit F) X ≅ limit (F ⋙ J.diagramFunctor D X) :=
    (isLimitOfPreserves (J.diagramFunctor D X) (limit.isLimit F)).conePointUniqueUpToIso
      (limit.isLimit _)
  let p : (J.plusObj (limit F)).obj (op X) ≅ colimit (limit (F ⋙ J.diagramFunctor D X)) :=
    HasColimit.isoOfNatIso t
  let s :
    colimit (F ⋙ J.diagramFunctor D X).flip ≅ F ⋙ J.plusFunctor D ⋙ (evaluation Cᵒᵖ D).obj (op X) :=
    NatIso.ofComponents (fun k => colimitObjIsoColimitCompEvaluation _ k)
      (by
        intro i j f
        rw [← Iso.eq_comp_inv, Category.assoc, ← Iso.inv_comp_eq]
        refine' colimit.hom_ext (fun w => _)
        dsimp [plusMap]
        erw [colimit.ι_map_assoc,
          colimitObjIsoColimitCompEvaluation_ι_inv (F ⋙ J.diagramFunctor D X).flip w j,
          colimitObjIsoColimitCompEvaluation_ι_inv_assoc (F ⋙ J.diagramFunctor D X).flip w i]
        rw [← (colimit.ι (F ⋙ J.diagramFunctor D X).flip w).naturality]
        rfl)
  limit.lift _ S ≫ (HasLimit.isoOfNatIso s.symm).hom ≫ e.inv ≫ p.inv
#align category_theory.grothendieck_topology.lift_to_plus_obj_limit_obj CategoryTheory.GrothendieckTopology.liftToPlusObjLimitObj

-- This lemma should not be used directly. Instead, one should use the fact that
-- `J.plusFunctor D` preserves finite limits, along with the fact that
-- evaluation preserves limits.
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant5a40e15c7fad010181a8f045f523d4ab0be92d83fef55ed794d6e39d8698685d.lean#L131).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `684f1b83112793875c088b489fac50aeb1ab5892` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
