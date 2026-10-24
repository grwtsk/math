# preservesLimitsOfShape_plusFunctor

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:6f91883f04b39671f3c2c74cd659c810f26eb9b9cced113cb6cbe72c6ccb4094",
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
  "slug": "preserveslimitsofshape-plusfunctor--a823867f4367a9c4e98b1f5c",
  "source": {
    "blob": "f65f4e819e8b04036ce102c785361dd52cf28daf",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 209,
    "line": 182,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a823867f4367a9c4e98b1f5c1fbae6f7327cb6d43f23dcdb96b4a54998398511",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:6f91883f04b39671f3c2c74cd659c810f26eb9b9cced113cb6cbe72c6ccb4094`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 182–209.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance preservesLimitsOfShape_plusFunctor
    (K : Type max v u) [SmallCategory K] [FinCategory K] [HasLimitsOfShape K D]
    [PreservesLimitsOfShape K (forget D)] [ReflectsLimitsOfShape K (forget D)] :
    PreservesLimitsOfShape K (J.plusFunctor D) := by
  constructor; intro F; apply preservesLimit_of_evaluation; intro X
  apply preservesLimit_of_preserves_limit_cone (limit.isLimit F)
  refine ⟨fun S => liftToPlusObjLimitObj.{w, v, u} F X.unop S, ?_, ?_⟩
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
    simp only [NatIso.ofComponents_inv_app, colimitObjIsoColimitCompEvaluation_ι_app_hom,
      Iso.symm_inv]
    conv_lhs =>
      dsimp [IsLimit.conePointUniqueUpToIso]
    rw [← Category.assoc, ← NatTrans.comp_app, limit.lift_π]
    rfl

```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/LeftExact/Variant82625eab55fa12ff3ccc2a15e4b523efca7ac8ad30bb7f7f59c8cc680fdac8c2.lean#L182).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f65f4e819e8b04036ce102c785361dd52cf28daf` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
