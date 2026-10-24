# preservesLimitsOfShape_colim_grothendieck

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:4dcf3ec22689f9ca8a9b514d8d2ecd3893316dc9056adb92bb5faeabdd5c99a2",
  "kind": "instance",
  "lexical_name": "preservesLimitsOfShape_colim_grothendieck",
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
  "slug": "preserveslimitsofshape-colim-grothendieck--d5ab4f6a8b64d2ef58bbbd9e",
  "source": {
    "blob": "f10aed33e686f6f876b4cabe12b30c7bce8cf754",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 120,
    "line": 80,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant047b432aaa6637a0fc9d64d31525fc03110eebeb9171bb6907c7085f33c6ae6b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d5ab4f6a8b64d2ef58bbbd9e922356cb9db4fcf4ca092ebc6bb3e5412becaf3c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant047b432aaa6637a0fc9d64d31525fc03110eebeb9171bb6907c7085f33c6ae6b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:4dcf3ec22689f9ca8a9b514d8d2ecd3893316dc9056adb92bb5faeabdd5c99a2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 80–120.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance preservesLimitsOfShape_colim_grothendieck [HasColimitsOfShape C H] [HasLimitsOfShape J H]
    [∀ c, HasColimitsOfShape (↑(F.obj c)) H] [PreservesLimitsOfShape J (colim (J := C) (C := H))]
    [∀ c, PreservesLimitsOfShape J (colim (J := F.obj c) (C := H))] :
    PreservesLimitsOfShape J (colim (J := Grothendieck F) (C := H)) := by
  constructor
  intro K
  let i₂ := calc colimit (limit K)
    _ ≅ colimit (fiberwiseColimit (limit K)) := (colimitFiberwiseColimitIso _).symm
    _ ≅ colimit (limit (K ⋙ fiberwiseColim _ _)) :=
          HasColimit.isoOfNatIso (fiberwiseColimitLimitIso _)
    _ ≅ limit ((K ⋙ fiberwiseColim _ _) ⋙ colim) :=
          preservesLimitIso colim (K ⋙ fiberwiseColim _ _)
    _ ≅ limit (K ⋙ colim) :=
      HasLimit.isoOfNatIso
       (associator _ _ _ ≪≫ isoWhiskerLeft _ fiberwiseColimCompColimIso)
  have : IsIso (limit.post K colim) := by
    convert! Iso.isIso_hom i₂
    ext
    simp only [colim_obj, Functor.comp_obj, limit.post_π, colim_map, Iso.trans_def,
      Iso.trans_assoc, Iso.trans_hom, Category.assoc, HasLimit.isoOfNatIso_hom_π,
      fiberwiseColim_obj, isoWhiskerLeft_hom, NatTrans.comp_app, Functor.associator_hom_app,
      whiskerLeft_app, fiberwiseColimCompColimIso_hom_app, Category.id_comp,
      preservesLimitIso_hom_π_assoc, i₂]
    ext
    simp only [ι_colimMap, Trans.trans, Iso.symm_hom, ι_colimitFiberwiseColimitIso_inv_assoc,
      HasColimit.ι_isoOfNatIso_hom_assoc, fiberwiseColimit_obj, fiberwiseColimitLimitIso_hom_app,
      ι_colimMap_assoc, Category.assoc, limitObjIsoLimitCompEvaluation_inv_π_app_assoc,
      Functor.comp_obj, fiberwiseColim_obj, HasLimit.isoOfNatIso_hom_π_assoc,
      whiskeringLeft_obj_obj, colim_obj, evaluation_obj_obj, Iso.trans_hom, isoWhiskerLeft_hom,
      NatTrans.comp_app, Functor.associator_hom_app, whiskerLeft_app,
      fiberwiseColimCompEvaluationIso_inv_app, Functor.associator_inv_app, Category.comp_id,
      Category.id_comp, preservesLimitIso_hom_π_assoc, colim_map, Grothendieck.ι_obj,
      ι_colimitFiberwiseColimitIso_hom]
    simp [← Category.assoc, ← NatTrans.comp_app]
  apply preservesLimit_of_isIso_post

end

end Limits

end CategoryTheory
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant047b432aaa6637a0fc9d64d31525fc03110eebeb9171bb6907c7085f33c6ae6b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Grothendieck/Variant047b432aaa6637a0fc9d64d31525fc03110eebeb9171bb6907c7085f33c6ae6b.lean#L80).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `f10aed33e686f6f876b4cabe12b30c7bce8cf754` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
