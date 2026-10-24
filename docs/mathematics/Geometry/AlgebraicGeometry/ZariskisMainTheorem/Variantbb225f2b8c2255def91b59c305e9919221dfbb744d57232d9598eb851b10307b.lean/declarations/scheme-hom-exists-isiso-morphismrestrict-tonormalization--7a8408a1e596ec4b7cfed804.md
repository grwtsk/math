# Scheme.Hom.exists_isIso_morphismRestrict_toNormalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:05adbd82-f924-8401-432b-213101356cb9",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.exists_isIso_morphismRestrict_toNormalization",
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
  "slug": "scheme-hom-exists-isiso-morphismrestrict-tonormalization--7a8408a1e596ec4b7cfed804",
  "source": {
    "blob": "7f3bd6ad2dda371d0d02b07cc727d4afeb8fccbe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 299,
    "line": 214,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variantbb225f2b8c2255def91b59c305e9919221dfbb744d57232d9598eb851b10307b.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:7a8408a1e596ec4b7cfed804a0a18e71dbd0e217913c87c4ad1cbea9a59f6766",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variantbb225f2b8c2255def91b59c305e9919221dfbb744d57232d9598eb851b10307b.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:05adbd82-f924-8401-432b-213101356cb9`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 214–299.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.exists_isIso_morphismRestrict_toNormalization
    [LocallyOfFiniteType f] [IsSeparated f] [QuasiCompact f] :
    ∃ U : f.normalization.Opens, IsIso (f.toNormalization ∣_ U) ∧
      (f.toNormalization ⁻¹ᵁ U).1 = { x | f.QuasiFiniteAt x } := by
  choose V hxV hV using fun x : { x // f.QuasiFiniteAt x } ↦
    f.exists_mem_and_isIso_morphismRestrict_toNormalization x x.2
  let 𝒰 := Opens.iSupOpenCover V
  have : IsIso (f.toNormalization ∣_ ⨆ x, V x) := by
    refine (IsZariskiLocalAtTarget.iff_of_openCover (P := .isomorphisms _) 𝒰).mpr fun x ↦ ?_
    refine (MorphismProperty.arrow_mk_iso_iff (.isomorphisms _)
      ((morphismRestrictRestrict ..).symm ≪≫ morphismRestrictOpensRange ..)).mp ?_
    have : Opens.ι _ ''ᵁ (𝒰.f x).opensRange = V x := by
      simp only [Opens.iSupOpenCover, 𝒰, ← opensRange_comp, homOfLE_ι, Opens.opensRange_ι]
    convert! hV x
  refine ⟨⨆ x : { x | f.QuasiFiniteAt x }, V x, this, ?_⟩
  ext x
  suffices (∃ i : { x | f.QuasiFiniteAt x }, toNormalization f x ∈ V i) ↔ f.QuasiFiniteAt x by
    simpa
  refine ⟨?_, fun h ↦ ⟨⟨x, h⟩, hxV _⟩⟩
  rintro ⟨y, hxVy⟩
  obtain ⟨U, r, hU, hr, hxV, hrV⟩ :
      ∃ (U : Y.Opens) (r : Γ(f.normalization, f.fromNormalization ⁻¹ᵁ U)),
      IsAffineOpen U ∧ IsAffineOpen (f.toNormalization ⁻¹ᵁ f.normalization.basicOpen r) ∧
      x ∈ f.toNormalization ⁻¹ᵁ f.normalization.basicOpen r ∧ Scheme.basicOpen _ r ≤ V y := by
    obtain ⟨_, ⟨W, hW, rfl⟩, hxW, hWV : W ≤ _⟩ := X.isBasis_affineOpens.exists_subset_of_mem_open
      hxVy (f.toNormalization ⁻¹ᵁ V y).isOpen
    have : IsAffine W := hW
    let V' := (X.homOfLE hWV ≫ f.toNormalization ∣_ V y ≫ (V y).ι).opensRange
    have hV' : IsAffineOpen V' := isAffineOpen_opensRange _
    have hV'V : V' ≤ V y := by
      simp_rw [V', ← Category.assoc, opensRange_comp]
      exact (image_le_opensRange _ _).trans (by simp)
    have hV'W : f.toNormalization ⁻¹ᵁ V' = W := by
      have : (f.toNormalization ⁻¹ᵁ V y).ι ⁻¹ᵁ f.toNormalization ⁻¹ᵁ V' =
          (f.toNormalization ⁻¹ᵁ V y).ι ⁻¹ᵁ W := by
        rw [← Scheme.Hom.comp_preimage, ← morphismRestrict_ι]
        simp only [V', opensRange_comp, Scheme.Hom.preimage_image_eq, opensRange_homOfLE]
      simpa only [image_preimage_eq_opensRange_inf, Opens.opensRange_ι, ← preimage_inf,
        inf_eq_right.mpr, hV'V, hWV] using congr((f.toNormalization ⁻¹ᵁ V y).ι ''ᵁ $this)
    obtain ⟨_, ⟨U, hU, rfl⟩, hxU, -⟩ := Y.isBasis_affineOpens.exists_subset_of_mem_open
      (Set.mem_univ (f x)) isOpen_univ
    obtain ⟨f₁, f₂, e, hxf⟩ := exists_basicOpen_le_affine_inter (hU.preimage f.fromNormalization)
      hV' (f.toNormalization x) ⟨by simpa [← Scheme.Hom.comp_apply], hV'W.ge hxW⟩
    refine ⟨U, f₁, hU, ?_, hxf, (e.trans_le (f.normalization.basicOpen_le _)).trans hV'V⟩
    rw [e, preimage_basicOpen]
    exact IsAffineOpen.basicOpen (hV'W ▸ hW) _
  let W := f.toNormalization ⁻¹ᵁ f.normalization.basicOpen r
  have H : W ≤ f ⁻¹ᵁ U := by
    unfold W
    grw [Scheme.basicOpen_le, ← Scheme.Hom.comp_preimage, f.toNormalization_fromNormalization]
  have H' : f.fromNormalization.appLE _ _ ((normalization f).basicOpen_le _) ≫
    f.toNormalization.app _ = f.appLE U W H := by
    simp only [app_eq_appLE]
    exact (appLE_comp_appLE _ _ _ _ _ _ _).trans (by simp [W])
  have : IsIso ((toNormalization f).app ((normalization f).basicOpen r)) := by
    have H : (f.toNormalization ∣_ V y) ⁻¹ᵁ (V y).ι ⁻¹ᵁ (normalization f).basicOpen r =
        (Scheme.homOfLE _ (f.toNormalization.preimage_mono hrV)).opensRange := by
      apply Scheme.Hom.image_injective (f.toNormalization ∣_ V y)
      simp only [opensRange_homOfLE, image_preimage_eq_opensRange_inf]
      rw [← Scheme.Hom.comp_preimage, ← morphismRestrict_ι, Scheme.Hom.comp_preimage,
        image_preimage_eq_opensRange_inf]
    have := (inferInstance : IsIso ((toNormalization f ∣_ V y).app
      (Scheme.homOfLE _ hrV).opensRange))
    simp only [Opens.toScheme_presheaf_obj, app_eq_appLE, morphismRestrict_appLE] at this ⊢
    convert! this <;>
      simp [Scheme.Hom.image_preimage_eq_opensRange_inf, -Scheme.preimage_basicOpen,
        f.toNormalization.preimage_mono, hrV, H]
  have : (f.appLE U W H).hom.QuasiFinite := by
    have : (f.appLE U W H).hom.FiniteType := f.finiteType_appLE hU hr H
    rw [← H', CommRingCat.hom_comp, RingHom.finiteType_respectsIso.cancel_right_isIso] at this
    rw [← H', CommRingCat.hom_comp, RingHom.QuasiFinite.respectsIso.cancel_right_isIso]
    exact .of_isIntegral_of_finiteType (IsIntegralHom.isIntegral_app f.fromNormalization _ hU)
      ⟨r, (hU.preimage f.fromNormalization).isLocalization_basicOpen _⟩ this
  have hxU : f x ∈ U := by
    convert! show _ ∈ U from (normalization f).basicOpen_le _ hxV
    rw [← Scheme.Hom.comp_apply, f.toNormalization_fromNormalization]
  refine .of_comp (g := (Y.presheaf.germ U _ hxU).hom) ?_
  rw [← CommRingCat.hom_comp, f.germ_stalkMap, ← X.presheaf.germ_res (homOfLE H) _ hxV,
    app_eq_appLE, appLE_map_assoc, CommRingCat.hom_comp]
  refine .comp ?_ this
  have := hr.isLocalization_stalk ⟨x, hxV⟩
  let := X.presheaf.algebra_section_stalk ⟨x, hxV⟩
  rw [← RingHom.algebraMap_toAlgebra (X.presheaf.germ _ _ _).hom, @RingHom.quasiFinite_algebraMap]
  exact .of_isLocalization (hr.primeIdealOf ⟨x, hxV⟩).asIdeal.primeCompl

set_option backward.isDefEq.respectTransparency.types false in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variantbb225f2b8c2255def91b59c305e9919221dfbb744d57232d9598eb851b10307b.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variantbb225f2b8c2255def91b59c305e9919221dfbb744d57232d9598eb851b10307b.lean#L214).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `7f3bd6ad2dda371d0d02b07cc727d4afeb8fccbe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
