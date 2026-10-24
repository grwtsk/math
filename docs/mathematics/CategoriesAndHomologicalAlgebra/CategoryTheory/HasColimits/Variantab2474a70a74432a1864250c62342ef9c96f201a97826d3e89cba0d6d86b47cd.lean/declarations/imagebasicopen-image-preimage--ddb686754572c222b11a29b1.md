# imageBasicOpen_image_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "0a3c44c17402bd16e7d4afa0a744d22de46cdd18",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 180,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/ab/ab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:b21a8984-cb2b-cd66-42ad-e8330371829a",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:960c1a39-cd58-d6bd-9f20-2b2e817de3a0",
  "kind": "theorem",
  "lexical_name": "imageBasicOpen_image_preimage",
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
  "slug": "imagebasicopen-image-preimage--ddb686754572c222b11a29b1",
  "source": {
    "blob": "0a3c44c17402bd16e7d4afa0a744d22de46cdd18",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 211,
    "line": 180,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ddb686754572c222b11a29b19a4a849d2d0ab31b515d80cc379e3f3c29596eec",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:960c1a39-cd58-d6bd-9f20-2b2e817de3a0`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 180–211.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem imageBasicOpen_image_preimage :
    (coequalizer.π f.toShHom g.toShHom).hom.base ⁻¹'
      ((coequalizer.π f.toShHom g.toShHom).hom.base ''
        (imageBasicOpen f g U s).1) = (imageBasicOpen f g U s).1 := by
  fapply Types.coequalizer_preimage_image_eq_of_preimage_eq (↾f.base)
    (↾g.base) (↾(coequalizer.π f.toShHom g.toShHom).hom.base)
  · ext
    simp only [TypeCat.Fun.toFun_apply, comp_apply, ConcreteCategory.hom_ofHom,
      TypeCat.Fun.coe_mk, ← TopCat.comp_app, ← PresheafedSpace.comp_base]
    congr 3
    exact SheafedSpace.forgetToPresheafedSpace.congr_map
      (coequalizer.condition f.toShHom g.toShHom)
  · exact isColimitCoforkMapOfIsColimit (forget TopCat) _
      (isColimitCoforkMapOfIsColimit (SheafedSpace.forget _)
      _ (coequalizerIsCoequalizer f.toShHom g.toShHom))
  · suffices
      (TopologicalSpace.Opens.map f.base).obj (imageBasicOpen f g U s) =
        (TopologicalSpace.Opens.map g.base).obj (imageBasicOpen f g U s)
      by injection this
    delta imageBasicOpen
    rw [preimage_basicOpen f, preimage_basicOpen g]
    dsimp
    rw [← ConcreteCategory.comp_apply, ← PresheafedSpace.comp_c_app,
      ← CommRingCat.comp_apply, ← PresheafedSpace.comp_c_app]
    -- Porting note (https://github.com/leanprover-community/mathlib4/issues/11224): change `rw` to `erw`
    erw [SheafedSpace.congr_hom_app (coequalizer.condition f.toShHom g.toShHom),
      CommRingCat.comp_apply, X.toRingedSpace.basicOpen_res]
    apply inf_eq_right.mpr
    refine (RingedSpace.basicOpen_le _ _).trans ?_
    rw [coequalizer.condition f.toShHom g.toShHom]

set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variantab2474a70a74432a1864250c62342ef9c96f201a97826d3e89cba0d6d86b47cd.lean#L180).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `0a3c44c17402bd16e7d4afa0a744d22de46cdd18` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
