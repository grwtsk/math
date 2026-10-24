# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:a1976c61ad887e8098415be0ed546cad32611c7f9c7bfe610c0f4ae6cb9cdd98",
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
  "slug": "instance--7fea8f94f4c50a990e01d0f1",
  "source": {
    "blob": "5f72643b97e88cc91d65f71d49f4a10b71c21bee",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 184,
    "line": 160,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:7fea8f94f4c50a990e01d0f1c66a91c4fddcfebc07708db119186b2e3deef6fb",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:a1976c61ad887e8098415be0ed546cad32611c7f9c7bfe610c0f4ae6cb9cdd98`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–184.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {X Y : Scheme.{u}} (f : X ⟶ Y) [IsClosedImmersion f] :
    IsIso f.toImage := by
  have := @of_comp_isClosedImmersion _ _ _ f.toImage f.imageι inferInstance
    (by rw [Scheme.Hom.toImage_imageι]; infer_instance)
  have : IsHomeomorph f.toImage :=
    isHomeomorph_iff_isEmbedding_surjective.mpr ⟨f.toImage.isEmbedding, by
      rw [← Set.range_eq_univ, ← f.toImage.isClosedEmbedding.isClosed_range.closure_eq]
      exact f.toImage.denseRange.closure_eq⟩
  refine isomorphisms_eq_stalkwise.ge _ ⟨?_, ?_⟩
  · exact inferInstanceAs (IsIso (TopCat.isoOfHomeo this.homeomorph).hom)
  · intro x
    refine ⟨?_, f.toImage.stalkMap_surjective x⟩
    change Function.Injective (CommRingCat.Hom.hom (((TopCat.Presheaf.stalkFunctor CommRingCat
      (f.toImage x)).map f.toImage.c) ≫ X.presheaf.stalkPushforward _ _ x))
    simp only [TopCat.Presheaf.stalkFunctor_obj, CommRingCat.hom_comp, RingHom.coe_comp]
    refine .comp ?_ (f.stalkFunctor_toImage_injective _)
    have := TopCat.Presheaf.stalkPushforward.stalkPushforward_iso_of_isInducing CommRingCat
      (f := f.toImage.base) f.toImage.isEmbedding.isInducing X.presheaf x
    exact ((ConcreteCategory.isIso_iff_bijective _).mp this).1

set_option backward.isDefEq.respectTransparency.types false in
set_option backward.defeqAttrib.useBackward true in
/-- The category of closed subschemes is contravariantly equivalent
to the lattice of ideal sheaves. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantee005bba6eb0a09005a0a7506df9dc4512a277c73e4f64743614cfe1c9153d89.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `5f72643b97e88cc91d65f71d49f4a10b71c21bee` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
