# preservesLimitsOfShape_plusFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:8c8f084c0868ebb5b0a98037655886f5a78ac1ed49e22e4f7b4803d144f2f93d",
  "kind": "instance",
  "lexical_name": "preservesLimitsOfShape_plusFunctor",
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
  "slug": "preserveslimitsofshape-plusfunctor--8a835be28b6d8f6543faf113",
  "source": {
    "blob": "a1618a90f77d79d473a4af6ee4f50fd78abaea20",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 226,
    "line": 200,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante665ffc4836b6c3d264daa5696fbfebf2e85609fb1043ce96edf0ff16fb309e4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:8a835be28b6d8f6543faf1131422b371db2e5205b7b6557519aa90e34998b6a9",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante665ffc4836b6c3d264daa5696fbfebf2e85609fb1043ce96edf0ff16fb309e4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:8c8f084c0868ebb5b0a98037655886f5a78ac1ed49e22e4f7b4803d144f2f93d`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 200–226.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance preservesLimitsOfShape_plusFunctor
    (K : Type t) [SmallCategory K] [FinCategory K] [HasLimitsOfShape K D]
    [PreservesLimitsOfShape K (forget D)] [ReflectsLimitsOfShape K (forget D)] :
    PreservesLimitsOfShape K (J.plusFunctor D) := by
  constructor; intro F; apply preservesLimit_of_evaluation; intro X
  apply preservesLimit_of_preserves_limit_cone (limit.isLimit F)
  refine ⟨fun S => liftToPlusObjLimitObj F X.unop S, ?_, ?_⟩
  · intro S k
    apply liftToPlusObjLimitObj_fac
  · intro S m hm
    dsimp [liftToPlusObjLimitObj]
    simp_rw [← Category.assoc, Iso.eq_comp_inv, ← Iso.comp_inv_eq]
    refine limit.hom_ext (fun k => ?_)
    simp only [limit.lift_π, Category.assoc, ← hm]
    congr 1
    refine colimit.hom_ext (fun k => ?_)
    dsimp [plusMap, plusObj]
    erw [colimit.ι_map, colimit.ι_desc_assoc, limit.lift_π]
    conv_lhs => dsimp
    simp only [Category.assoc]
    rw [ι_colimitLimitIso_limit_π_assoc]
    simp only [colimitObjIsoColimitCompEvaluation_ι_app_hom]
    conv_lhs =>
      dsimp [IsLimit.conePointUniqueUpToIso]
    rw [← Category.assoc, ← NatTrans.comp_app, limit.lift_π]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante665ffc4836b6c3d264daa5696fbfebf2e85609fb1043ce96edf0ff16fb309e4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variante665ffc4836b6c3d264daa5696fbfebf2e85609fb1043ce96edf0ff16fb309e4.lean#L200).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a1618a90f77d79d473a4af6ee4f50fd78abaea20` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
