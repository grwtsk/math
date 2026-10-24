# Anonymous instance

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "declaration:c6b2be7b146999abc384f20bc9a6c2ec2cdfabe360776f679775eacb40a91098",
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
  "slug": "instance--eaf5b4e3d6522db91c28a4af",
  "source": {
    "blob": "810bc26c212f7c9ed955175928497008c0b9c6d3",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 182,
    "line": 160,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "declaration-track:eaf5b4e3d6522db91c28a4af8ad462ee2cd7ecc957519a441804af686bd1d806",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `instance` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `declaration:c6b2be7b146999abc384f20bc9a6c2ec2cdfabe360776f679775eacb40a91098`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 160–182.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
instance {X Y : Scheme.{u}} (f : X ⟶ Y) [IsClosedImmersion f] :
    IsIso f.toImage := by
  have := @of_comp_isClosedImmersion _ _ _ f.toImage f.imageι inferInstance
    (by rw [Scheme.Hom.toImage_imageι]; infer_instance)
  have : IsHomeomorph f.toImage.base :=
    isHomeomorph_iff_isEmbedding_surjective.mpr ⟨f.toImage.isEmbedding, by
      rw [← Set.range_eq_univ, ← f.toImage.isClosedEmbedding.isClosed_range.closure_eq]
      exact f.toImage.denseRange.closure_eq⟩
  refine isomorphisms_eq_stalkwise.ge _ ⟨?_, ?_⟩
  · exact inferInstanceAs (IsIso (TopCat.isoOfHomeo this.homeomorph).hom)
  · intro x
    refine ⟨?_, f.toImage.stalkMap_surjective x⟩
    show Function.Injective (CommRingCat.Hom.hom (((TopCat.Presheaf.stalkFunctor CommRingCat
      (f.toImage.base x)).map f.toImage.c) ≫ X.presheaf.stalkPushforward _ _ x))
    simp only [TopCat.Presheaf.stalkFunctor_obj, CommRingCat.hom_comp, RingHom.coe_comp]
    refine .comp ?_ (f.stalkFunctor_toImage_injective _)
    have := TopCat.Presheaf.stalkPushforward.stalkPushforward_iso_of_isInducing CommRingCat
      (f := f.toImage.base) f.toImage.isEmbedding.isInducing X.presheaf x
    exact ((ConcreteCategory.isIso_iff_bijective _).mp this).1

/-- The category of closed subschemes is contravariantly equivalent
to the lattice of ideal sheaves. -/
noncomputable
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ClosedImmersion/Variantd9d68d3305fd964c26a0bf0d54eb614ce94f37f8efed0c8bb91c6ccad167f1b9.lean#L160).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `810bc26c212f7c9ed955175928497008c0b9c6d3` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
