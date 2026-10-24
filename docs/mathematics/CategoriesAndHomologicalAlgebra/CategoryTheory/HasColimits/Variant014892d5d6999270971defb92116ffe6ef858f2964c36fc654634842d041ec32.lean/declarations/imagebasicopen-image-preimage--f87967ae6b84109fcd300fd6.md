# imageBasicOpen_image_preimage

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:c838cd83-e931-a5b5-8580-c12228e83934",
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
  "slug": "imagebasicopen-image-preimage--f87967ae6b84109fcd300fd6",
  "source": {
    "blob": "469f0dc1641b2772c7831aae65b7d87ab2bba825",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 219,
    "line": 188,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant014892d5d6999270971defb92116ffe6ef858f2964c36fc654634842d041ec32.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f87967ae6b84109fcd300fd6a69ffae0acf8a02193a07abf21d69a0843ea5fe0",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant014892d5d6999270971defb92116ffe6ef858f2964c36fc654634842d041ec32.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:c838cd83-e931-a5b5-8580-c12228e83934`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 188–219.

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

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant014892d5d6999270971defb92116ffe6ef858f2964c36fc654634842d041ec32.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/HasColimits/Variant014892d5d6999270971defb92116ffe6ef858f2964c36fc654634842d041ec32.lean#L188).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `469f0dc1641b2772c7831aae65b7d87ab2bba825` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
