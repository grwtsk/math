# Scheme.Hom.isLocallyConstructible_image

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:0d72aa2c-ec55-4532-3832-a326f11e05a8",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.isLocallyConstructible_image",
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
  "slug": "scheme-hom-islocallyconstructible-image--9cffadca77281cc77e90fa5c",
  "source": {
    "blob": "25cf1cb9d06becc9cfb19b18775a001734602a70",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 141,
    "line": 97,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:9cffadca77281cc77e90fa5c7747657a1e15a55ef8bea6d6a664522ac6bec922",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:0d72aa2c-ec55-4532-3832-a326f11e05a8`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 97–141.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
nonrec lemma Scheme.Hom.isLocallyConstructible_image (f : X.Hom Y)
    [hf : LocallyOfFinitePresentation f] [QuasiCompact f]
    {s : Set X} (hs : IsLocallyConstructible s) :
    IsLocallyConstructible (f.base '' s) := by
  wlog hY : ∃ R, Y = Spec R
  · refine .of_isOpenCover Y.affineCover.isOpenCover_opensRange fun i ↦ ?_
    have inst : LocallyOfFinitePresentation (Y.affineCover.pullbackHom f i) :=
      MorphismProperty.pullback_snd _ _ inferInstance
    have inst : QuasiCompact (Y.affineCover.pullbackHom f i) :=
      MorphismProperty.pullback_snd _ _ inferInstance
    convert (this (Y.affineCover.pullbackHom f i) (hs.preimage_of_isOpenEmbedding
      ((Y.affineCover.pullbackCover f).map i).isOpenEmbedding)
      ⟨_, rfl⟩).preimage_of_isOpenEmbedding (Y.affineCover.map i).isoOpensRange.inv.isOpenEmbedding
    refine .trans ?_ ((Scheme.homeoOfIso (Y.affineCover.map i).isoOpensRange).image_eq_preimage _)
    apply Set.image_injective.mpr Subtype.val_injective
    rw [Set.image_preimage_eq_inter_range, ← Set.image_comp, ← Set.image_comp,
      Subtype.range_coe_subtype, Set.setOf_mem_eq]
    show _ = (Y.affineCover.pullbackHom f i ≫
      (Y.affineCover.map i).isoOpensRange.hom ≫ Opens.ι _).base.hom '' _
    rw [Scheme.Hom.isoOpensRange_hom_ι, Cover.pullbackHom_map, Scheme.comp_base, TopCat.hom_comp,
      ContinuousMap.coe_comp, Set.image_comp, Set.image_preimage_eq_inter_range]
    simp only [coe_opensRange, Cover.pullbackCover_obj, Cover.pullbackCover_map,
      IsOpenImmersion.range_pullback_fst_of_right, TopologicalSpace.Opens.map_obj,
      TopologicalSpace.Opens.carrier_eq_coe, TopologicalSpace.Opens.coe_mk,
      Set.image_inter_preimage]
  obtain ⟨R, rfl⟩ := hY
  wlog hX : ∃ S, X = Spec S
  · have inst : CompactSpace X := HasAffineProperty.iff_of_isAffine.mp ‹QuasiCompact f›
    let 𝒰 := X.affineCover.finiteSubcover
    rw [← 𝒰.isOpenCover_opensRange.iUnion_inter s, Set.image_iUnion]
    refine .iUnion fun i ↦ ?_
    have inst : QuasiCompact (𝒰.map i ≫ f) :=
      HasAffineProperty.iff_of_isAffine.mpr (inferInstanceAs (CompactSpace (Spec _)))
    convert this (hs.preimage_of_isOpenEmbedding (𝒰.map i).isOpenEmbedding) _
      (𝒰.map i ≫ f) ⟨_, rfl⟩
    rw [Scheme.comp_base, ← TopCat.Hom.hom, ← TopCat.Hom.hom, TopCat.hom_comp,
      ContinuousMap.coe_comp, Set.image_comp, Set.image_preimage_eq_inter_range, coe_opensRange]
  obtain ⟨S, rfl⟩ := hX
  obtain ⟨φ, rfl⟩ := Spec.map_surjective f
  rw [HasRingHomProperty.Spec_iff (P := @LocallyOfFinitePresentation)] at hf
  exact (PrimeSpectrum.isConstructible_comap_image hf hs.isConstructible).isLocallyConstructible

/-- **Chevalley's Theorem**: The image of a constructible set under a
morphism of finite presentation into a qcqs scheme is constructible. -/
@[stacks 054J]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/FinitePresentation/Varianta54caca8ae926449339c295b6ed17c3bbc7c0b193e8abf3664978e753add1f0b.lean#L97).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `25cf1cb9d06becc9cfb19b18775a001734602a70` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
