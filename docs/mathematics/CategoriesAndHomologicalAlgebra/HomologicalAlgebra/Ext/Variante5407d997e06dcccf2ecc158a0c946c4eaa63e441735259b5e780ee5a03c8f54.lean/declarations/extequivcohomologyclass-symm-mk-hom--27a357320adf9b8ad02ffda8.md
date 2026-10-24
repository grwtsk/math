# extEquivCohomologyClass_symm_mk_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "fe3fcf463ee553da61c4a922aac4825d508e260b",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 46,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e5407d997e06dcccf2ecc158a0c946c4eaa63e441735259b5e780ee5a03c8f54.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:8113dccd-375a-34ed-67de-b8bbcb9e6e21",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:86c65773-f817-4a2b-b3df-da279e242b01",
  "kind": "lemma",
  "lexical_name": "extEquivCohomologyClass_symm_mk_hom",
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
  "slug": "extequivcohomologyclass-symm-mk-hom--27a357320adf9b8ad02ffda8",
  "source": {
    "blob": "fe3fcf463ee553da61c4a922aac4825d508e260b",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 62,
    "line": 46,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variante5407d997e06dcccf2ecc158a0c946c4eaa63e441735259b5e780ee5a03c8f54.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:27a357320adf9b8ad02ffda8e2bce7925ed6f46daf0a6d646832d5c0b6364778",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variante5407d997e06dcccf2ecc158a0c946c4eaa63e441735259b5e780ee5a03c8f54.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:86c65773-f817-4a2b-b3df-da279e242b01`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 46–62.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extEquivCohomologyClass_symm_mk_hom [HasDerivedCategory C]
    (x : Cocycle ((singleFunctor C 0).obj X) R.cochainComplex n) :
    (R.extEquivCohomologyClass.symm (.mk x)).hom =
      (ShiftedHom.mk₀ _ rfl ((DerivedCategory.singleFunctorIsoCompQ C 0).hom.app X)).comp
        ((ShiftedHom.map (Cocycle.equivHomShift.symm x) DerivedCategory.Q).comp
        (.mk₀ _ rfl (inv (DerivedCategory.Q.map R.ι') ≫
          (DerivedCategory.singleFunctorIsoCompQ C 0).inv.app Y)) (zero_add _)) (add_zero _) := by
  change SmallShiftedHom.equiv _ _ ((CohomologyClass.mk x).toSmallShiftedHom.comp _ _) = _
  simp only [SmallShiftedHom.equiv_comp, CohomologyClass.equiv_toSmallShiftedHom_mk,
    SmallShiftedHom.equiv_mk₀Inv, isoOfHom, asIso_inv,
    DerivedCategory.singleFunctorIsoCompQ, Iso.refl_hom, NatTrans.id_app, Iso.refl_inv,
    ShiftedHom.mk₀_id_comp]
  congr
  cat_disch

set_option backward.defeqAttrib.useBackward true in
@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variante5407d997e06dcccf2ecc158a0c946c4eaa63e441735259b5e780ee5a03c8f54.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variante5407d997e06dcccf2ecc158a0c946c4eaa63e441735259b5e780ee5a03c8f54.lean#L46).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `fe3fcf463ee553da61c4a922aac4825d508e260b` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
