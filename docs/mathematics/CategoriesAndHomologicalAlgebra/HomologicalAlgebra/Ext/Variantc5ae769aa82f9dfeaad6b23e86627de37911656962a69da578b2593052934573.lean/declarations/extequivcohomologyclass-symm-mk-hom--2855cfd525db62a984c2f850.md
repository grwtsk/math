# extEquivCohomologyClass_symm_mk_hom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:4c1081c6-3e4b-ee7f-e14f-9d131420c809",
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
  "slug": "extequivcohomologyclass-symm-mk-hom--2855cfd525db62a984c2f850",
  "source": {
    "blob": "d838f93fcac3fff10155e6be8376c8b15b4196c9",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 77,
    "line": 61,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:2855cfd525db62a984c2f850ce02d3526d28ea99255f6dc48137860f6d62c4f3",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:4c1081c6-3e4b-ee7f-e14f-9d131420c809`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 61–77.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma extEquivCohomologyClass_symm_mk_hom [HasDerivedCategory C]
    (x : Cocycle R.cochainComplex ((singleFunctor C 0).obj Y) n) :
    (R.extEquivCohomologyClass.symm (.mk x)).hom =
    (ShiftedHom.mk₀ _ rfl ((DerivedCategory.singleFunctorIsoCompQ C 0).hom.app X ≫
      inv (DerivedCategory.Q.map R.π'))).comp
        ((ShiftedHom.map (Cocycle.equivHomShift.symm x) DerivedCategory.Q).comp
          (.mk₀ _ rfl ((DerivedCategory.singleFunctorIsoCompQ C 0).inv.app Y))
            (zero_add _)) (add_zero _) := by
  change SmallShiftedHom.equiv _ _ (.comp _ (CohomologyClass.mk x).toSmallShiftedHom _) = _
  simp only [SmallShiftedHom.equiv_comp, SmallShiftedHom.equiv_mk₀Inv, isoOfHom, asIso_inv,
    CohomologyClass.equiv_toSmallShiftedHom_mk,
    DerivedCategory.singleFunctorIsoCompQ, Iso.refl_hom, NatTrans.id_app, Category.id_comp,
    Iso.refl_inv]
  congr
  exact (ShiftedHom.comp_mk₀_id ..).symm

@[simp]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/HomologicalAlgebra/Ext/Variantc5ae769aa82f9dfeaad6b23e86627de37911656962a69da578b2593052934573.lean#L61).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d838f93fcac3fff10155e6be8376c8b15b4196c9` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
