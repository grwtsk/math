# Scheme.exists_π_app_comp_eq_of_locallyOfFinitePresentation

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 1224,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:1a8406b5-039a-7a35-e403-d84a8db18fd3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1a06cc09-d042-2e78-5fe8-83cc3d013d1e",
  "kind": "lemma",
  "lexical_name": "Scheme.exists_π_app_comp_eq_of_locallyOfFinitePresentation",
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
  "slug": "scheme-exists-app-comp-eq-of-locallyoffinitepresentation--d7964b0b45bd142b7e23714f",
  "source": {
    "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 1335,
    "line": 1224,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:d7964b0b45bd142b7e23714fe1d7c281c7a11283d0e3ee93bb86f3ff84a4b9d3",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1a06cc09-d042-2e78-5fe8-83cc3d013d1e`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 1224–1335.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma Scheme.exists_π_app_comp_eq_of_locallyOfFinitePresentation
    [IsCofiltered I] [LocallyOfFinitePresentation f]
    [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f)]
    [∀ i, CompactSpace (D.obj i)] [∀ i, QuasiSeparatedSpace (D.obj i)]
    (a : c.pt ⟶ X) (ha : c.π ≫ t = (Functor.const _).map (a ≫ f)) :
    ∃ (i : I) (g : D.obj i ⟶ X), c.π.app i ≫ g = a ∧ g ≫ f = t.app i := by
  -- The open cover of `c := lim Dᵢ` indexed by triplets of affine opens `(U, V, W)` with
  -- `U ⊆ c`, `V ⊆ X`, `W ⊆ S` such that `U` maps to `V` maps to `W`.
  have 𝒰 := (c.pt.isBasis_affineOpens).isOpenCover_mem_and_le
    (((X.isBasis_affineOpens).isOpenCover_mem_and_le
    ((S.isBasis_affineOpens).isOpenCover.comap f.base.hom)).comap a.base.hom)
  -- By qcqs, this cover descends to some finite affine open cover `𝒱` of `Dᵢ`.
  obtain ⟨i, s, 𝒱, h𝒱, h𝒱𝒰⟩ := Scheme.exists_isOpenCover_and_isAffine D c hc _ 𝒰 fun U ↦ U.2.1
  obtain ⟨i', fi'i, hi'⟩ : ∃ (i' : I) (fi'i : i' ⟶ i),
      ∀ j, D.map fi'i ⁻¹ᵁ 𝒱 j ≤ t.app i' ⁻¹ᵁ j.1.1.2.1.2.1 := by
    choose k fk hk using fun j ↦ exists_map_preimage_le_map_preimage D c hc (h𝒱𝒰 j).1.isCompact
      (V := t.app i ⁻¹ᵁ j.1.1.2.1.2.1) (by
      rw [← Hom.comp_preimage, ← NatTrans.comp_app, ha]
      exact (h𝒱𝒰 j).2.symm.trans_le (j.1.prop.2.trans (a.preimage_mono j.1.1.2.prop.2)))
    obtain ⟨i', fi'i, fi', hfi'⟩ := IsCofiltered.wideCospan fk
    refine ⟨i', fi'i, fun j ↦ ?_⟩
    rw [← hfi', Functor.map_comp, Hom.comp_preimage]
    refine (Hom.preimage_mono _ (hk _)).trans ?_
    simp only [← Hom.comp_preimage, t.naturality, Functor.const_obj_obj,
      Functor.const_obj_map, Category.comp_id, le_refl]
  -- Using the affine version `exists_π_app_comp_eq_of_locallyOfFinitePresentation_of_isAffine`,
  -- one can now factor `Dⱼ ⁻¹ 𝒱ⱼ ⟶ lim Dᵢ ⟶ X` through some `Dⱼₖ ⁻¹ 𝒱ⱼ` for each `𝒱ⱼ`,
  -- and by finite-ness we may chose a fixed `k` that works for every `j`.
  have : ∃ k, ∃ (fk : k ⟶ i), ∀ j, ∃ (ak : ↑(D.map fk ⁻¹ᵁ 𝒱 j) ⟶ X),
      ak ≫ f = Opens.ι _ ≫ t.app k ∧ c.π.app _ ∣_ _ ≫ ak = Opens.ι _ ≫ a := by
    let 𝒱' := (D.map fi'i ⁻¹ᵁ 𝒱 ·)
    have h𝒱'𝒰 (j : s) : c.π.app i' ⁻¹ᵁ 𝒱' j = j.1.1.1 := by
      rw [← Hom.comp_preimage, c.w fi'i]; exact (h𝒱𝒰 j).2.symm
    have _ (j k) : IsAffine ((opensDiagram D i' (𝒱' j)).obj k) := ((h𝒱𝒰 _).1.preimage _).preimage _
    let t𝒱 (j : _) : opensDiagram D i' (𝒱' j) ⟶ (Functor.const (Over i')).obj j.1.1.2.1.2 :=
    { app k := (t.app k.left).resLE _ _ <| by
        refine (Hom.preimage_mono _ (hi' _)).trans ?_
        simp only [Functor.const_obj_obj, ← Hom.comp_preimage, t.naturality,
          Functor.const_obj_map, Category.comp_id, le_refl]
      naturality {k₁ k₂} f₁₂ := by simp [Hom.resLE_comp_resLE] }
    have (j : s) : IsAffine j.1.1.2.1.1 := j.1.1.2.prop.1
    choose k ak hk hk' using fun j ↦ exists_π_app_comp_eq_of_locallyOfFinitePresentation_of_isAffine
      _ (t𝒱 j) (f.resLE _ _ j.1.1.2.prop.2) _ (isLimitOpensCone D c hc i' (𝒱' j))
      (a.resLE _ _ ((h𝒱'𝒰 _).trans_le j.1.prop.2)) (by
      ext k
      simp [t𝒱, Hom.resLE_comp_resLE, show c.π.app k.left ≫ t.app k.left = a ≫ f from
        congr(($ha).app k.left)])
    obtain ⟨i'', fi''i', fi'', hi''⟩ := IsCofiltered.wideCospan fun j ↦ (k j).hom
    refine ⟨i'', fi''i' ≫ fi'i, fun j ↦
      ⟨Scheme.homOfLE _ ?_ ≫ D.map (fi'' _) ∣_ _ ≫ ak j ≫ Opens.ι _, ?_, ?_⟩⟩
    · simp only [← Hom.comp_preimage, ← Functor.map_comp, 𝒱', reassoc_of% hi'']; rfl
    · have : ak j ≫ Opens.ι _ ≫ f = Opens.ι _ ≫ t.app (k j).left := by
        simpa [t𝒱] using! congr($(hk' j) ≫ Opens.ι _)
      simp [this]
    · have e : c.π.app i'' ⁻¹ᵁ D.map (fi''i' ≫ fi'i) ⁻¹ᵁ 𝒱 j ≤ c.π.app i' ⁻¹ᵁ 𝒱' j := by
        simp only [← Hom.comp_preimage, Cone.w, 𝒱']; rfl
      simpa [← AlgebraicGeometry.Scheme.Hom.resLE_eq_morphismRestrict,
        Scheme.Hom.resLE_comp_resLE_assoc] using! congr(Scheme.homOfLE _ e ≫ $(hk j) ≫ Opens.ι _)
  choose k fki ak hak hak' using this
  -- We may then find an `l` for each `j₁` and `j₂` such that the map `Dⱼ₁ₗ ⁻¹ 𝒱ⱼ₁ ⟶ X` and
  -- `Dⱼ₂ₗ ⁻¹ 𝒱ⱼ₂ ⟶ X` agrees on the intersection in `Dₗ`.
  -- And again by finiteness we may choose a global `l`.
  obtain ⟨l, flk, hl⟩ : ∃ (l : I) (flk : l ⟶ k), ∀ j₁ j₂, Scheme.homOfLE _ inf_le_left ≫
      D.map flk ∣_ _ ≫ ak j₁ = Scheme.homOfLE _ inf_le_right ≫ D.map flk ∣_ _ ≫ ak j₂ := by
    let 𝒱' := (D.map fki ⁻¹ᵁ 𝒱 ·)
    have (j₁ j₂ : s) : ∃ (l : I) (flk : l ⟶ k), Scheme.homOfLE _ inf_le_left ≫ D.map flk ∣_ _ ≫
        ak j₁ = Scheme.homOfLE _ inf_le_right ≫ D.map flk ∣_ _ ≫ ak j₂ := by
      have _ (x) : CompactSpace ↥((opensDiagram D k (𝒱' j₁ ⊓ 𝒱' j₂)).obj x) :=
        isCompact_iff_compactSpace.mp (QuasiCompact.isCompact_preimage _ (𝒱' j₁ ⊓ 𝒱' j₂).isOpen
          (((h𝒱𝒰 _).1.preimage _).isCompact.inter_of_isOpen ((h𝒱𝒰 _).1.preimage _).isCompact
            (D.map fki ⁻¹ᵁ 𝒱 j₁).2 (D.map fki ⁻¹ᵁ 𝒱 j₂).2))
      obtain ⟨⟨l, ⟨⟨⟩⟩, flk⟩, ⟨flk', ⟨⟨⟨⟩⟩⟩, h⟩, e⟩ :=
        Scheme.exists_hom_comp_eq_comp_of_locallyOfFiniteType _
          (opensDiagramι .. ≫ (Over.forget k).whiskerLeft t) f _
          (isLimitOpensCone D c hc k (𝒱' j₁ ⊓ 𝒱' j₂)) (i := .mk (𝟙 k))
          (Scheme.homOfLE _ (by simp [𝒱']) ≫ ak j₁) (Scheme.homOfLE _ (by simp [𝒱']) ≫ ak j₂)
          (by simp [hak]) (by simp [hak]) (by simp; simp [Hom.resLE, hak'])
      obtain rfl : flk = flk' := by simpa using! h.symm
      refine ⟨l, flk, by simpa [← Scheme.Hom.resLE_eq_morphismRestrict] using! e⟩
    choose l flk hflk using this
    obtain ⟨l', fl'k, fl'l, hl'⟩ := IsCofiltered.wideCospan (I := s × s) fun x ↦ flk x.1 x.2
    refine ⟨l', fl'k, fun j₁ j₂ ↦ ?_⟩
    have H : (D.map fl'k ≫ D.map fki) ⁻¹ᵁ (𝒱 j₁ ⊓ 𝒱 j₂) ≤
        (D.map (fl'l (j₁, j₂)) ≫ D.map (flk j₁ j₂) ≫ D.map fki) ⁻¹ᵁ (𝒱 j₁ ⊓ 𝒱 j₂) := by
      simp only [← Functor.map_comp, reassoc_of% hl']; rfl
    simpa [← Scheme.Hom.resLE_eq_morphismRestrict, Scheme.Hom.resLE_comp_resLE_assoc,
      ← Functor.map_comp, hl'] using! congr((D.map (fl'l (j₁, j₂))).resLE _ _ H ≫ $(hflk j₁ j₂))
  -- We may glue the morphisms into `Dₗ ⟶ X` and verify that it indeed satisfies the hypothesis.
  let h𝒲 := (h𝒱.comap (D.map fki).base.hom).comap (D.map flk).base.hom
  let 𝒲 := Scheme.openCoverOfIsOpenCover _ (D.map flk ⁻¹ᵁ D.map fki ⁻¹ᵁ 𝒱 ·) h𝒲
  let F := 𝒲.glueMorphisms (fun j ↦ D.map flk ∣_ D.map fki ⁻¹ᵁ 𝒱 j ≫ ak j) (fun j₁ j₂ ↦ by
      rw [← cancel_epi (isPullback_opens_inf _ _).isoPullback.hom]
      simpa [𝒲] using! hl j₁ j₂)
  have hF (j : s) : (D.map flk ⁻¹ᵁ D.map fki ⁻¹ᵁ 𝒱 j).ι ≫ F = D.map flk ∣_ _ ≫ ak j :=
    Scheme.Cover.ι_glueMorphisms ..
  refine ⟨l, F, ?_, ?_⟩
  · refine Cover.hom_ext (𝒲.pullback₁ (c.π.app l)) _ _ fun j ↦ ?_
    rw [← cancel_epi (isPullback_morphismRestrict _ _).flip.isoPullback.hom]
    dsimp [𝒲]
    simp only [pullback.condition_assoc, IsPullback.isoPullback_hom_snd_assoc,
      IsPullback.isoPullback_hom_fst_assoc, hF]
    have h : c.π.app l ⁻¹ᵁ D.map flk ⁻¹ᵁ D.map fki ⁻¹ᵁ 𝒱 j ≤ c.π.app k ⁻¹ᵁ D.map fki ⁻¹ᵁ 𝒱 j := by
      simp only [← Hom.comp_preimage, c.w_assoc, c.w]; rfl
    simpa [← Scheme.Hom.resLE_eq_morphismRestrict, Scheme.Hom.resLE_comp_resLE_assoc] using!
      congr(Scheme.homOfLE _ h ≫ $(hak' j))
  · refine 𝒲.hom_ext _ _ fun j ↦ ?_
    simp [F, Cover.ι_glueMorphisms_assoc, hak]; rfl

set_option backward.defeqAttrib.useBackward true in
set_option backward.isDefEq.respectTransparency false in
/-- `Hom_S(-, X)` sends a cofiltered limit of qcqs `S`-schemes with affine transition maps
to a filtered colimit if `X` is locally of finite presentation over `X`. -/
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean#L1224).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d722dad9181cfd6d7afa3fa039a957385fa07fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
