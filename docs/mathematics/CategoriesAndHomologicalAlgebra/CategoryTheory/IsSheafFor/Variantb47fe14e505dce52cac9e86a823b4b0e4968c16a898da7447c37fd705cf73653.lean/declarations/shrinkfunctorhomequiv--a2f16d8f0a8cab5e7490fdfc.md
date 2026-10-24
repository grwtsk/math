# shrinkFunctorHomEquiv

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:2d65df28b95f583e25298d704cfc2be5be8ac166e46e994be0aea7f7ae361209",
  "kind": "def",
  "lexical_name": "shrinkFunctorHomEquiv",
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
  "slug": "shrinkfunctorhomequiv--a2f16d8f0a8cab5e7490fdfc",
  "source": {
    "blob": "e29282f11fe49113589d0cb5a6a936553ba03522",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 512,
    "line": 485,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:a2f16d8f0a8cab5e7490fdfc1c4fc0ae0ead4389faf380377e20d422afea9de4",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `def` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:2d65df28b95f583e25298d704cfc2be5be8ac166e46e994be0aea7f7ae361209`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 485–512.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
noncomputable def shrinkFunctorHomEquiv [LocallySmall.{w} C] {F : Cᵒᵖ ⥤ Type w} :
    (S.shrinkFunctor.toFunctor ⟶ F) ≃ { x : S.arrows.FamilyOfElements F // x.Compatible } where
  toFun t := ⟨fun Y f hf ↦ t.app _ ⟨shrinkYonedaObjObjEquiv.symm f, by simpa⟩, by
    rw [Presieve.compatible_iff_sieveCompatible]
    intro Y Z f g hf
    simp only [shrinkFunctor_obj, ← NatTrans.naturality_apply]
    rw! [shrinkYonedaObjObjEquiv_symm_comp]
    rfl⟩
  invFun t :=
    { app X := ↾fun f ↦ t.1 _ f.mem
      naturality Y Z g := by
        ext ⟨f, hf⟩
        dsimp
        convert! t.2.to_sieveCompatible _ _ _
        simp only [Opposite.op_unop, shrinkYonedaObjObjEquiv_obj_map]
        rfl }
  left_inv t := by cat_disch
  right_inv x := by
    ext
    dsimp
    rw! [Equiv.apply_symm_apply]
    simp

@[deprecated "In terms of `Sieve.shrinkFunctor`" (since := "2026-03-13")]
alias natTransEquivCompatibleFamily := shrinkFunctorHomEquiv

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/IsSheafFor/Variantb47fe14e505dce52cac9e86a823b4b0e4968c16a898da7447c37fd705cf73653.lean#L485).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `e29282f11fe49113589d0cb5a6a936553ba03522` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
