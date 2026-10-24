# cokernelIsoQuotient

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:cb92328c2559b0f82bab30755eb819c429f04185c6c5aa453800e3a16f5e13d2",
  "kind": "def",
  "lexical_name": "cokernelIsoQuotient",
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
  "slug": "cokernelisoquotient--d64d08924ff9667caff9153e",
  "source": {
    "blob": "d58be64998b8f0c021bb1fb08f32725998a4994f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 311,
    "line": 287,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:d64d08924ff9667caff9153e0c0ea64c3110592f146c1c6a7bad1dced5d2ab60",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:cb92328c2559b0f82bab30755eb819c429f04185c6c5aa453800e3a16f5e13d2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 287–311.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def cokernelIsoQuotient {G H : AddCommGrp.{u}} (f : G ⟶ H) :
    cokernel f ≅ AddCommGrp.of (H ⧸ AddMonoidHom.range f.hom) where
  hom := cokernel.desc f (ofHom (mk' _)) <| by
        ext x
        dsimp only [hom_comp, hom_ofHom]
        apply Quotient.sound
        apply leftRel_apply.mpr
        fconstructor
        · exact -x
        · simp only [add_zero, AddMonoidHom.map_neg]
  inv := ofHom <|
    QuotientAddGroup.lift _ (cokernel.π f).hom <| by
      rintro _ ⟨x, rfl⟩
      exact cokernel.condition_apply f x
  hom_inv_id := by
    refine coequalizer.hom_ext ?_
    simp only [coequalizer_as_cokernel, cokernel.π_desc_assoc, Category.comp_id]
    rfl
  inv_hom_id := by
    ext x
    dsimp only [hom_comp, hom_ofHom, hom_zero, AddMonoidHom.coe_comp, coe_mk',
      Function.comp_apply, AddMonoidHom.zero_apply, id_eq, lift_mk, hom_id, AddMonoidHom.coe_id]
    exact QuotientAddGroup.induction_on (α := H) x <| cokernel.π_desc_apply f _ _

end AddCommGrp
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Colimits/Variant4fd53f93d8387fec72025760ca99bb6fe00872a1ceb88c7d08aa5e58ec52535a.lean#L287).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `d58be64998b8f0c021bb1fb08f32725998a4994f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
