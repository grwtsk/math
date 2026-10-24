# cokernelOrderHom

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:dac18e09c436e66564ca3245f4d1e78c98499149f016b8986afd9c180441bdbd",
  "kind": "def",
  "lexical_name": "cokernelOrderHom",
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
  "slug": "cokernelorderhom--014eee960429baa47d99a1b0",
  "source": {
    "blob": "e28c3d6afa997ec5dd0b00ce9419fa5ab7237bc0",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 293,
    "line": 270,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantaf7ab25cd3e6de60f7a6c49a61915852db7e7bf850bf54afff23419860043990.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:014eee960429baa47d99a1b02ada9ab801a024ef55822194d78fd57ea7003574",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantaf7ab25cd3e6de60f7a6c49a61915852db7e7bf850bf54afff23419860043990.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:dac18e09c436e66564ca3245f4d1e78c98499149f016b8986afd9c180441bdbd`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 270–293.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
def cokernelOrderHom [HasCokernels C] (X : C) : Subobject X →o (Subobject (op X))ᵒᵈ where
  toFun :=
    Subobject.lift (fun _ f _ => Subobject.mk (cokernel.π f).op)
      (by
        rintro A B f g hf hg i rfl
        refine Subobject.mk_eq_mk_of_comm _ _ (Iso.op ?_) (Quiver.Hom.unop_inj ?_)
        · exact (IsColimit.coconePointUniqueUpToIso (colimit.isColimit _)
            (isCokernelEpiComp (colimit.isColimit _) i.hom rfl)).symm
        · simp only [Iso.comp_inv_eq, Iso.op_hom, Iso.symm_hom, unop_comp, Quiver.Hom.unop_op,
            colimit.comp_coconePointUniqueUpToIso_hom, Cofork.ofπ_ι_app,
            coequalizer.cofork_π])
  monotone' :=
    Subobject.ind₂ _ <| by
      intro A B f g hf hg h
      dsimp only [Subobject.lift_mk]
      refine Subobject.mk_le_mk_of_comm (cokernel.desc f (cokernel.π g) ?_).op ?_
      · rw [← Subobject.ofMkLEMk_comp h, Category.assoc, cokernel.condition, comp_zero]
      · exact Quiver.Hom.unop_inj (cokernel.π_desc _ _ _)

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- Taking kernels is an order-reversing map from the quotient objects of `X` to the subobjects of
`X`. -/
@[simps]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantaf7ab25cd3e6de60f7a6c49a61915852db7e7bf850bf54afff23419860043990.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Limits/Variantaf7ab25cd3e6de60f7a6c49a61915852db7e7bf850bf54afff23419860043990.lean#L270).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e28c3d6afa997ec5dd0b00ce9419fa5ab7237bc0` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
