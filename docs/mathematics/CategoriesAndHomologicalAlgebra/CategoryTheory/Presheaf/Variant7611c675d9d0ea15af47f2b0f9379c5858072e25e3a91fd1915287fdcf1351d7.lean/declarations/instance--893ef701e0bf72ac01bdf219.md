# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:35f1341fd90f891c966ea605e55a5fe23f6d08c4062610458f7aae4f7f2b0c82",
  "kind": "instance",
  "lexical_name": null,
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
  "slug": "instance--893ef701e0bf72ac01bdf219",
  "source": {
    "blob": "accfc3d8296025cbdf3c5b552bc5329b8e5e2e6f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 346,
    "line": 331,
    "path": "GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:893ef701e0bf72ac01bdf219928cc2a8aa06e53d928440974b9c95124095240c",
  "verification": {
    "reference": "docs/verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:35f1341fd90f891c966ea605e55a5fe23f6d08c4062610458f7aae4f7f2b0c82`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 331–346.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance (X : C) (Y : F.op.LeftExtension (yoneda.obj X)) :
    Unique (Functor.LeftExtension.mk _ (yonedaMap F X) ⟶ Y) where
  default := StructuredArrow.homMk
      (yonedaEquiv.symm (yonedaEquiv (F := F.op.comp Y.right) Y.hom)) (by
        ext Z f
        simpa using congr_fun (Y.hom.naturality f.op).symm (𝟙 _))
  uniq φ := by
    ext1
    apply yonedaEquiv.injective
    dsimp
    simp only [Equiv.apply_symm_apply, ← StructuredArrow.w φ]
    dsimp [yonedaEquiv]
    simp only [yonedaMap_app_apply, Functor.map_id]

/-- Given `F : C ⥤ D` and `X : C`, `yoneda.obj (F.obj X) : Dᵒᵖ ⥤ Type _` is the
left Kan extension of `yoneda.obj X : Cᵒᵖ ⥤ Type _` along `F.op`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/CategoriesAndHomologicalAlgebra/CategoryTheory/Presheaf/Variant7611c675d9d0ea15af47f2b0f9379c5858072e25e3a91fd1915287fdcf1351d7.lean#L331).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `accfc3d8296025cbdf3c5b552bc5329b8e5e2e6f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
