# exists_appTop_π_eq_of_isLimit

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
      "line": 837,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/5d/5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:0ae21b55-2ef5-ba39-f3c2-a0be5f1f53eb",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:4c9da4d1-ab54-36e4-3327-200df9f70a16",
  "kind": "lemma",
  "lexical_name": "exists_appTop_π_eq_of_isLimit",
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
  "slug": "exists-apptop-eq-of-islimit--f903e59f9a2e33ddd4ec3dcb",
  "source": {
    "blob": "9d722dad9181cfd6d7afa3fa039a957385fa07fe",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 955,
    "line": 837,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:f903e59f9a2e33ddd4ec3dcbbc06d295c82bf736a0da04ba85df75c0ca45fbe2",
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

Occurrence: `result:4c9da4d1-ab54-36e4-3327-200df9f70a16`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 837–955.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma exists_appTop_π_eq_of_isLimit [∀ {i j} (f : i ⟶ j), IsAffineHom (D.map f)]
    (s : Γ(c.pt, ⊤)) [∀ i, CompactSpace (D.obj i)] [∀ i, QuasiSeparatedSpace (D.obj i)] :
    ∃ (i : I) (t : Γ(D.obj i, ⊤)), s = (c.π.app i).appTop t := by
  classical
  have := Scheme.compactSpace_of_isLimit _ _ hc
  have (x : c.pt) : ∃ (i : I) (U : (D.obj i).Opens) (hU : IsAffineOpen U)
      (hU : (c.π.app i).base x ∈ U) (t : Γ(D.obj i, U)), (c.π.app i).app U t = s |_ _ := by
    have i := IsCofiltered.nonempty (C := I).some
    obtain ⟨_, ⟨U, hU : IsAffineOpen U, rfl⟩, hxU, -⟩ :=
      (D.obj i).isBasis_affineOpens.exists_subset_of_mem_open
        (Set.mem_univ ((c.π.app i).base x)) isOpen_univ
    have (j : Over i) : IsAffine ((opensDiagram D i U).obj j) := hU.preimage (D.map _)
    obtain ⟨j, t, hj⟩ := exists_appTop_π_eq_of_isAffine_of_isLimit _ _
      (isLimitOpensCone D c hc i U) (s |_ _)
    refine ⟨j.left, (D.map j.hom ⁻¹ᵁ U).ι ''ᵁ ⊤, by simpa using hU.preimage (D.map _), ?_, t, ?_⟩
    · suffices (c.π.app j.1 ≫ D.map j.hom).base x ∈ U by simpa [-Cone.w] using this
      rwa [Cone.w]
    · have H : c.π.app j.left ⁻¹ᵁ (D.map j.hom ⁻¹ᵁ U).ι ''ᵁ ⊤ ≤ (c.π.app i ⁻¹ᵁ U).ι ''ᵁ ⊤ := by
        simp [← Scheme.Hom.comp_preimage]
      convert! congr(c.pt.presheaf.map (homOfLE H).op $hj)
      · convert! ConcreteCategory.comp_apply _ _ _
        congr
        simp [Scheme.Hom.app_eq_appLE, Scheme.Hom.resLE_appLE]
      · dsimp [TopCat.Presheaf.restrictOpen, TopCat.Presheaf.restrict]
        change _ = (c.pt.presheaf.map (homOfLE _).op ≫ c.pt.presheaf.map (homOfLE _).op) s
        rw [← Functor.map_comp]
        rfl
  choose i U hU hxU t ht using this
  dsimp at ht
  have (x y : c.pt) : ∃ (j : I) (fjx : j ⟶ i x) (fjy : j ⟶ i y),
      (D.map fjx).app (U x) (t x) |_ (D.map fjx ⁻¹ᵁ U x ⊓ D.map fjy ⁻¹ᵁ U y) =
      (D.map fjy).app (U y) (t y) |_ (D.map fjx ⁻¹ᵁ U x ⊓ D.map fjy ⁻¹ᵁ U y) := by
    obtain ⟨j, fjx, fjy, -⟩ := IsCofilteredOrEmpty.cone_objs (i x) (i y)
    obtain ⟨k, fkj, hk⟩ := exists_app_map_eq_zero_of_isLimit D c hc
      (((hU x).preimage (D.map fjx)).isCompact.inter_of_isOpen
        ((hU y).preimage (D.map fjy)).isCompact ((U x).2.preimage (D.map fjx).continuous)
        ((U y).2.preimage (D.map fjy).continuous))
      ((D.map fjx).app (U x) (t x) |_ (D.map fjx ⁻¹ᵁ U x ⊓ D.map fjy ⁻¹ᵁ U y) -
        (D.map fjy).app (U y) (t y) |_ (D.map fjx ⁻¹ᵁ U x ⊓ D.map fjy ⁻¹ᵁ U y)) (by
      dsimp +instances [TopCat.Presheaf.restrictOpen, TopCat.Presheaf.restrict]
      simp only [map_sub, sub_eq_zero, ← ConcreteCategory.comp_apply,
        Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_map, Scheme.Hom.appLE_comp_appLE,
        Cone.w]
      simp_rw [Scheme.Hom.appLE, ConcreteCategory.comp_apply, ht, TopCat.Presheaf.restrictOpen,
        TopCat.Presheaf.restrict, ← ConcreteCategory.comp_apply, ← Functor.map_comp]
      rfl)
    refine ⟨k, fkj ≫ fjx, fkj ≫ fjy, ?_⟩
    have H : (D.map (fkj ≫ fjx) ⁻¹ᵁ U x ⊓ D.map (fkj ≫ fjy) ⁻¹ᵁ U y) ≤
        D.map fkj ⁻¹ᵁ ((D.map fjx ⁻¹ᵁ U x ⊓ D.map fjy ⁻¹ᵁ U y)) := by simp; rfl
    apply_fun (D.obj k).presheaf.map (homOfLE H).op at hk
    dsimp [TopCat.Presheaf.restrictOpen, TopCat.Presheaf.restrict] at hk ⊢
    simpa [sub_eq_zero, ← ConcreteCategory.comp_apply, -Scheme.Hom.comp_appLE,
      Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_comp_appLE] using hk
  choose j fjx fjy hj using this
  obtain ⟨σ, hσ⟩ := CompactSpace.elim_nhds_subcover (fun x ↦ ((c.π.app (i x)) ⁻¹ᵁ U x).1)
    (fun x ↦ ((c.π.app (i x)) ⁻¹ᵁ U x).2.mem_nhds (by exact hxU x))
  choose σi hσiσ hσi using fun x ↦ Set.mem_iUnion₂.mp (hσ.ge (Set.mem_univ x))
  let S : Finset _ := σ.image i ∪ Finset.image₂ j σ σ
  have hiS {x} (hx : x ∈ σ) : i x ∈ S := Finset.subset_union_left (Finset.mem_image_of_mem i hx)
  have hjS {x y} (hx : x ∈ σ) (hy : y ∈ σ) : j x y ∈ S :=
    Finset.subset_union_right (Finset.mem_image₂_of_mem hx hy)
  obtain ⟨k, fk, hk⟩ := IsCofiltered.inf_exists S
    (σ.attach.image₂ (fun (x y : σ) ↦ ⟨j x.1 y.1, i x.1, hjS x.2 y.2, hiS x.2, fjx x y⟩) σ.attach ∪
    σ.attach.image₂ (fun (x y : σ) ↦ ⟨j x.1 y.1, i y.1, hjS x.2 y.2, hiS y.2, fjy x y⟩) σ.attach)
  have hk₁ {x y} (hx : x ∈ σ) (hy : y ∈ σ) := hk (hjS hx hy) (hiS hx) (f := fjx x y)
    (Finset.subset_union_left (Finset.mem_image₂.mpr ⟨⟨x, hx⟩, by simp, ⟨y, hy⟩, by simp, rfl⟩))
  have hk₂ {x y} (hx : x ∈ σ) (hy : y ∈ σ) := hk (hjS hx hy) (hiS hy) (f := fjy x y)
    (Finset.subset_union_right (Finset.mem_image₂.mpr ⟨⟨x, hx⟩, by simp, ⟨y, hy⟩, by simp, rfl⟩))
  obtain ⟨k', fk'k, hk'⟩ := exists_map_eq_top D c hc
    (⨆ (x : _) (hx : x ∈ σ), D.map (fk (hiS hx)) ⁻¹ᵁ U x) (by
    apply SetLike.coe_injective
    simpa [← Set.preimage_comp, ← TopCat.coe_comp, ← Scheme.Hom.comp_base])
  have := ((Presheaf.isSheaf_iff_isSheaf_forget _ _ (forget _)).mp (D.obj k').IsSheaf).isSheafFor
    (.ofArrows (fun x : σ ↦ D.map (fk'k ≫ fk (hiS x.2)) ⁻¹ᵁ U x.1) fun x ↦ homOfLE le_top)
    (fun x _ ↦ by
      obtain ⟨ix, hix, h⟩ : ∃ ix, ∃ (h : ix ∈ σ), (D.map (fk'k ≫ fk (hiS h))).base x ∈ U ix := by
        simpa using hk'.ge (Set.mem_univ x)
      refine ⟨D.map (fk'k ≫ fk (hiS hix)) ⁻¹ᵁ U ix, homOfLE le_top,
        Sieve.ofArrows_mk (I := σ) _ _ ⟨ix, hix⟩, h⟩)
  rw [← Presieve.isSheafFor_iff_generate, Presieve.isSheafFor_arrows_iff] at this
  obtain ⟨t₀, ht₀, -⟩ := this (fun x ↦ (D.map _).app _ (t x)) fun x y V fVx fVy _ ↦ by
    have H : V ≤ D.map (fk'k ≫ fk (hjS x.2 y.2)) ⁻¹ᵁ
        (D.map (fjx ↑x ↑y) ⁻¹ᵁ U ↑x ⊓ D.map (fjy ↑x ↑y) ⁻¹ᵁ U ↑y) := by
      change V ≤ (D.map (fk'k ≫ fk (hjS x.2 y.2)) ≫ D.map (fjx ↑x ↑y)) ⁻¹ᵁ U x ⊓
        (D.map (fk'k ≫ fk (hjS x.2 y.2)) ≫ D.map (fjy x y)) ⁻¹ᵁ U y
      rw [← Functor.map_comp, ← Functor.map_comp, Category.assoc, Category.assoc,
        hk₁ x.2 y.2, hk₂ x.2 y.2, le_inf_iff]
      exact ⟨fVx.le, fVy.le⟩
    convert!
      congr(((D.map (fk'k ≫ fk (hjS x.2 y.2))).app _ ≫ (D.obj k').presheaf.map (homOfLE H).op)
        $(hj x y)) using 1
    · dsimp [TopCat.Presheaf.restrictOpen, TopCat.Presheaf.restrict]
      simp only [← ConcreteCategory.comp_apply]
      congr 2
      simp [Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_comp_appLE,
        -Scheme.Hom.comp_appLE, ← Functor.map_comp, hk₁]
    · dsimp [TopCat.Presheaf.restrictOpen, TopCat.Presheaf.restrict]
      simp only [← ConcreteCategory.comp_apply]
      congr 2
      simp [Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_comp_appLE,
        -Scheme.Hom.comp_appLE, ← Functor.map_comp, hk₂]
  refine ⟨k', t₀, TopCat.Presheaf.section_ext c.pt.sheaf _ _ _ fun y hy ↦ c.pt.presheaf.germ_ext
    (c.π.app _ ⁻¹ᵁ U (σi y)) (hσi y) (homOfLE le_top) (homOfLE le_top) ?_⟩
  have H : c.π.app (i (σi y)) ⁻¹ᵁ U (σi y) ≤
      c.π.app k' ⁻¹ᵁ D.map (fk'k ≫ fk (hiS (hσiσ _))) ⁻¹ᵁ U (σi y) := by
    rw [← Scheme.Hom.comp_preimage, Cone.w]
  convert! congr(c.pt.presheaf.map (homOfLE H).op ((c.π.app k').app _ $(ht₀ ⟨_, hσiσ y⟩))).symm
  · refine (ht (σi y)).symm.trans ?_
    dsimp [Scheme.Opens.toScheme_presheaf_obj]
    rw [← ConcreteCategory.comp_apply, ← ConcreteCategory.comp_apply]
    congr 2
    simp [Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_comp_appLE, -Scheme.Hom.comp_appLE]
  · dsimp [Scheme.Opens.toScheme_presheaf_obj]
    rw [← ConcreteCategory.comp_apply, ← ConcreteCategory.comp_apply,
      ← ConcreteCategory.comp_apply]
    congr 2
    simp [Scheme.Hom.app_eq_appLE]

include hc in
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/AffineTransitionLimit/Variant5d05325ad0dbfa7e3ef8560526924185e0b6b50452a50b81c7e87ccc94562c0a.lean#L837).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `9d722dad9181cfd6d7afa3fa039a957385fa07fe` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
