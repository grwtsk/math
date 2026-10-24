# Scheme.Hom.exists_mem_and_isIso_morphismRestrict_toNormalization

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9a32b081abd10daac73e49c7f6f401ee80590c99",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 119,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/e5/e526b917cd543111df82827358c5d65d63dc564280e067145152d247bb3f0502.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:7462ff74-7aba-77ee-f570-1010b6f7a484",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:830f7ebd-6027-e16d-ecf2-bfa59ed11d51",
  "kind": "lemma",
  "lexical_name": "Scheme.Hom.exists_mem_and_isIso_morphismRestrict_toNormalization",
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
  "slug": "scheme-hom-exists-mem-and-isiso-morphismrestrict-tonormalization--d9d9a7b8129f1dff342ab308",
  "source": {
    "blob": "9a32b081abd10daac73e49c7f6f401ee80590c99",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 205,
    "line": 119,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variante526b917cd543111df82827358c5d65d63dc564280e067145152d247bb3f0502.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d9d9a7b8129f1dff342ab308fc7abefd89370a838463d7daa02af2d416639dc2",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variante526b917cd543111df82827358c5d65d63dc564280e067145152d247bb3f0502.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:830f7ebd-6027-e16d-ecf2-bfa59ed11d51`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 119–205.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.Hom.exists_mem_and_isIso_morphismRestrict_toNormalization
    [LocallyOfFiniteType f] [IsSeparated f] [QuasiCompact f]
    (x : X) (hx : f.QuasiFiniteAt x) :
    ∃ V, f.toNormalization x ∈ V ∧ IsIso (f.toNormalization ∣_ V) := by
  obtain ⟨T, fT, _, ⟨u, hu⟩, V, W, v, hVW, _, hv₂⟩ := exists_etale_isCompl_of_quasiFiniteAt _ rfl hx
  obtain ⟨U, hU, _⟩ : ∃ U, (pullback.snd f fT).toNormalization v.1 ∈ U ∧
      IsIso ((pullback.snd f fT).toNormalization ∣_ U) := by
    have hVW' : (W : Set ↑(pullback f fT)) = (↑V)ᶜ :=
      eq_compl_iff_isCompl.mpr (hVW.map TopologicalSpace.Opens.frameHom).symm
    have : IsClosedImmersion V.ι := .of_isPreimmersion _ (by simp [eq_compl_comm.mp hVW', W.isOpen])
    have : IsClosedImmersion W.ι := .of_isPreimmersion _ (by simpa [hVW'] using V.2)
    obtain ⟨H⟩ := nonempty_isColimit_binaryCofanMk_of_isCompl V.ι W.ι (by simpa)
    let e : (pullback.snd f fT).normalization ≅ V ⨿ (W.ι ≫ pullback.snd f fT).normalization :=
      (Scheme.Hom.normalizationCoprodIso (pullback.snd f fT) H).symm ≪≫
        coprod.mapIso (asIso (V.ι ≫ pullback.snd f fT).toNormalization).symm (.refl _)
    let ι : V.toScheme ⟶ V ⨿ (W.ι ≫ pullback.snd f fT).normalization := coprod.inl
    refine ⟨e.hom ⁻¹ᵁ ι.opensRange, ⟨v, ?_⟩, ?_⟩
    · rw [← V.ι_apply, ← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply]
      congr 5
      rw [← Category.assoc, ← Iso.comp_inv_eq]
      simp [ι, e, Scheme.Hom.normalizationCoprodIso]
    rw [← isIso_comp_right_iff _ (e.hom ∣_ ι.opensRange),
      ← morphismRestrict_comp, ← isIso_comp_right_iff _ ι.isoOpensRange.inv]
    have Heq : (pullback.snd f fT).toNormalization ⁻¹ᵁ e.hom ⁻¹ᵁ Scheme.Hom.opensRange ι = V := by
      apply le_antisymm
      · rintro a ⟨b, hab⟩
        by_contra h
        lift a to W using hVW'.ge h
        replace hab : ι b = ((W.ι ≫ pullback.snd f fT).toNormalization ≫ coprod.inr) a := by
          have : W.ι ≫ (H.coconePointUniqueUpToIso (colimit.isColimit _)).hom = coprod.inr :=
            H.comp_coconePointUniqueUpToIso_hom _ ⟨.right⟩
          simp only [← W.ι_apply, ← Scheme.Hom.comp_apply, Category.assoc, e] at hab
          simpa [-Scheme.Hom.comp_base, Scheme.Hom.normalizationCoprodIso,
            reassoc_of% this] using hab
        exact Set.disjoint_iff_forall_ne.mp
          (isCompl_range_inl_inr V (W.ι ≫ pullback.snd f fT).normalization).1 ⟨_, rfl⟩ ⟨_, rfl⟩ hab
      · rw [← Scheme.Hom.inv_image, ← SetLike.coe_subset_coe]
        simpa [← Scheme.Hom.opensRange_comp, ι, e, Scheme.Hom.normalizationCoprodIso,
          Set.range_comp] using Set.subset_preimage_image _ _
    convert! (inferInstance : IsIso (Scheme.isoOfEq _ Heq).hom)
    rw [Iso.comp_inv_eq, ← Iso.inv_comp_eq, ← cancel_mono (Scheme.Opens.ι _)]
    have : V.ι ≫ (H.coconePointUniqueUpToIso (colimit.isColimit _)).hom = coprod.inl :=
      H.comp_coconePointUniqueUpToIso_hom _ ⟨.left⟩
    simp [e, Scheme.Hom.isoOpensRange, Scheme.Hom.normalizationCoprodIso, reassoc_of% this, ι]
  let fTn : (pullback.snd f fT).normalization ⟶ f.normalization :=
    f.normalizationPullback fT ≫ pullback.fst _ _
  let U' : f.normalization.Opens := ⟨_, fTn.isOpenMap _ U.2⟩
  refine ⟨U', ⟨_, hU, by simp only [← hv₂, ← Scheme.Hom.comp_apply]; simp [fTn]⟩, ?_⟩
  let fTnU : U.toScheme ⟶ U' := fTn.resLE _ _ (Set.subset_preimage_image _ _)
  have : Surjective fTnU := ⟨fun ⟨x, a, ha, e⟩ ↦ ⟨⟨a, ha⟩, Subtype.ext <| by simpa [fTnU] using e⟩⟩
  have H : (pullback.snd f fT).toNormalization ⁻¹ᵁ U ≤
      pullback.fst f fT ⁻¹ᵁ f.toNormalization ⁻¹ᵁ U' := by
    refine fun x hx ↦ ⟨_, hx, ?_⟩
    simp only [← Scheme.Hom.comp_apply]
    congr 5
    simp [fTn]
  have : IsPullback ((pullback.snd f fT).toNormalization ∣_ U)
      ((pullback.fst f fT).resLE _ _ H) fTnU (f.toNormalization ∣_ U') := by
    refine .of_bot (t := isPullback_morphismRestrict ..) ?_ ?_
    · simp only [Scheme.Hom.resLE_comp_ι, fTnU]
      refine .paste_vert (isPullback_morphismRestrict ..) ?_
      have H : IsPullback (pullback.map _ _ _ _ f.toNormalization (𝟙 _) (𝟙 _) (by simp) (by simp))
          (pullback.fst f fT) (pullback.fst f.fromNormalization fT) f.toNormalization :=
        .of_right (t := .flip <| .of_hasPullback ..)
          (by simpa using (.flip <| .of_hasPullback ..)) (by cat_disch)
      exact .of_iso' H (.refl _) (asIso <| f.normalizationPullback fT) (.refl _) (.refl _)
        (by cat_disch) (by simp) (by simp [fTn]) (by simp)
    · simp [← cancel_mono U'.ι, fTnU, fTn]
  exact MorphismProperty.of_isPullback_of_descendsAlong (P := .isomorphisms _)
    (Q := @Surjective ⊓ @Flat ⊓ @LocallyOfFinitePresentation) this
    ⟨⟨‹_›, inferInstance⟩, inferInstance⟩ ‹_›

set_option backward.isDefEq.respectTransparency.types false in
/--
**Zariski's main theorem**

Recall that any qcqs morphism `f : X ⟶ Y` factors through the relative normalization via
`f.toNormalization : X ⟶ f.normalization` (a dominant morphism) and
`f.fromNormalization : f.normalization ⟶ Y` (an integral morphism).

Let `f : X ⟶ Y` be separated and of finite type.

then there exists `U : f.normalization.Opens`, such that
1. `f.toNormalization ∣_ U` is an isomorphism
2. `f.toNormalization ⁻¹ᵁ U` is the quasi-finite locus of `f`
-/
@[stacks 03GW]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variante526b917cd543111df82827358c5d65d63dc564280e067145152d247bb3f0502.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/ZariskisMainTheorem/Variante526b917cd543111df82827358c5d65d63dc564280e067145152d247bb3f0502.lean#L119).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9a32b081abd10daac73e49c7f6f401ee80590c99` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
