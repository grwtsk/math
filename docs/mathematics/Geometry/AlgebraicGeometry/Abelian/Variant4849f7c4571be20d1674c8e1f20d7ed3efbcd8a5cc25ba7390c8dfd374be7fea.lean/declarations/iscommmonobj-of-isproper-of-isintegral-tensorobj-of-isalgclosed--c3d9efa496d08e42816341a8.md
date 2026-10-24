# isCommMonObj_of_isProper_of_isIntegral_tensorObj_of_isAlgClosed

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "42c014c626dfc0913e397b438fda1c2e335ea809",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 39,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/48/4849f7c4571be20d1674c8e1f20d7ed3efbcd8a5cc25ba7390c8dfd374be7fea.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:95036945-dde7-647c-022d-5017940121d3",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:1228e15c-ae7d-e141-3552-827e522de7c4",
  "kind": "theorem",
  "lexical_name": "isCommMonObj_of_isProper_of_isIntegral_tensorObj_of_isAlgClosed",
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
  "slug": "iscommmonobj-of-isproper-of-isintegral-tensorobj-of-isalgclosed--c3d9efa496d08e42816341a8",
  "source": {
    "blob": "42c014c626dfc0913e397b438fda1c2e335ea809",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 131,
    "line": 39,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/Abelian/Variant4849f7c4571be20d1674c8e1f20d7ed3efbcd8a5cc25ba7390c8dfd374be7fea.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:c3d9efa496d08e42816341a8cd4c31ea2ad59988e63cbc1238ed6d0830860bde",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/Abelian/Variant4849f7c4571be20d1674c8e1f20d7ed3efbcd8a5cc25ba7390c8dfd374be7fea.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `theorem` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:1228e15c-ae7d-e141-3552-827e522de7c4`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 39–131.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
theorem isCommMonObj_of_isProper_of_isIntegral_tensorObj_of_isAlgClosed [IsAlgClosed K]
    (G : Over (Spec (.of K))) [IsProper G.hom] [IsIntegral (G ⊗ G).left] [GrpObj G] :
    IsCommMonObj G := by
  let S := Spec (.of K)
  let point : S := IsLocalRing.closedPoint K
  have hpoint : IsClosed {point} := isClosed_discrete _
  have : Nonempty G.left := ⟨η[G].left point⟩
  have : IsProper (G ⊗ G).hom := by dsimp; infer_instance
  have : JacobsonSpace (G ⊗ G).left := LocallyOfFiniteType.jacobsonSpace (Y := Spec _) (G ⊗ G).hom
  have : Surjective G.hom := ⟨Function.surjective_to_subsingleton (α := G.left) (β := Spec _) _⟩
  have : IsProper (fst G G).left := by dsimp; infer_instance
  have : Surjective (fst G G).left := by dsimp; infer_instance
  have : IsProper ((GrpObj.commutator G).left ≫ G.hom) := by rw [Over.w]; infer_instance
  have : IsClosedImmersion ((lift η[G] η[G]).left ≫ (fst G G).left) := by
    simpa using inferInstanceAs (IsClosedImmersion η[G].left)
  have : IsClosedImmersion (lift η[G] η[G]).left := .of_comp _ (g := (fst G G).left)
  let γ : G ⊗ G ⟶ G ⊗ G := lift (fst _ _) (GrpObj.commutator _)
  have : IsProper (γ.left ≫ (fst G G).left) := by simpa [γ]
  have : IsProper γ.left := .of_comp _ (fst G G).left
  -- It suffices to check that `γ : (x, y) ↦ x * y * x⁻¹ * y⁻¹` is constantly `1`.
  rw [isCommMonObj_iff_commutator_eq_toUnit_η]
  ext1
  have H : γ.left '' ((fst G G).left ⁻¹' {η[G].left point}) ⊆ {(lift η[G] η[G]).left point} := by
    rw [Set.image_subset_iff, ← Set.sdiff_eq_empty, ← Set.not_nonempty_iff_eq_empty]
    intro H
    obtain ⟨c₀, ⟨hc₁, hc₂⟩, hc₃⟩ := nonempty_inter_closedPoints H <| by
      rw [Set.sdiff_eq_compl_inter, ← Set.image_singleton, ← Set.image_singleton];
      refine (IsOpen.isLocallyClosed ?_).inter (IsClosed.isLocallyClosed ?_)
      · exact (((lift η[G] η[G]).left.isClosedMap _ hpoint).preimage γ.left.continuous).isOpen_compl
      · exact (η[G].left.isClosedMap _ hpoint).preimage (fst G G).left.continuous
    obtain ⟨⟨c, hc⟩, e⟩ := (pointEquivClosedPoint (G ⊗ G).hom).surjective ⟨c₀, hc₃⟩
    obtain rfl : c point = c₀ := congr(($e).1)
    let fc : 𝟙_ (Over S) ⟶ 𝟙_ (Over S) ⊗ G := lift (𝟙 _) (Over.homMk c hc ≫ snd G G)
    have : c ≫ pullback.fst G.hom G.hom = η[G].left :=
      ext_of_apply_closedPoint_eq G.hom (by simpa) (by simp) (by simpa)
    have H₁ : c = fc.left ≫ (η[G] ▷ G).left := by dsimp; ext <;> simp [fc, S, this]
    have H₂ : fc ≫ η ▷ G ≫ γ = lift η η := by ext1 <;> simp [fc, γ, S]
    exact hc₂ <| by simp [H₁, H₂, ← Scheme.Hom.comp_apply, Category.assoc, ← Over.comp_left]
  -- Since the image of `y ↦ γ(e, y)` is finite, by Zariski Main, there exists an open
  -- `1 ∈ U ⊆ G` such that `γ ∣_ U` factors through a finite scheme over `U`.
  obtain ⟨U, hηU, H⟩ := exists_finite_imageι_comp_morphismRestrict_of_finite_image_preimage
    γ.left (fst G G).left (η[G].left point) (by
      dsimp [-Scheme.Hom.comp_base, γ]
      simp only [pullback.lift_fst]
      exact (Set.finite_singleton _).subset H)
  have H (x : U) : ((pullback.fst G.hom G.hom) ⁻¹' {x.1} ∩ Set.range ⇑γ.left).Finite := by
    refine ((((γ.left.imageι ≫ (fst G G).left) ∣_ U).finite_preimage_singleton x).image
      (Scheme.Opens.ι _ ≫ γ.left.imageι)).subset ?_
    have : U.ι ⁻¹' {x.1} = {x} := by ext; simp
    rw [← this, ← Set.preimage_comp, ← TopCat.coe_comp, ← Scheme.Hom.comp_base,
      morphismRestrict_ι, ← Category.assoc, Scheme.Hom.comp_base (_ ≫ _) (fst G G).left,
      TopCat.coe_comp, Set.preimage_comp, Set.image_preimage_eq_inter_range]
    simp only [Scheme.Hom.comp_base, TopCat.coe_comp, Set.range_comp, Scheme.Opens.range_ι]
    dsimp
    rw [Set.image_preimage_eq_inter_range, Scheme.IdealSheafData.range_subschemeι,
      Scheme.Hom.support_ker, ← Set.inter_assoc, ← Set.preimage_inter,
      Set.singleton_inter_of_mem x.2, IsClosed.closure_eq
      (by exact γ.left.isClosedMap.isClosed_range)]
  -- It suffices to check set-theoretic equality on closed points of `U ×[k] G`.
  refine ext_of_apply_eq G.hom _
    ((fst G G).left ⁻¹ᵁ U).isOpen.isLocallyClosed
    (((fst G G).left ⁻¹ᵁ U).isOpen.dense ?_) ?_ ?_
  · exact .preimage ⟨_, hηU⟩ (fst G G).left.surjective
  · intro y hyU hy
    have hx : IsClosed {(fst G G).left y} := by simpa using (fst G G).left.isClosedMap _ hy
    let x : 𝟙_ _ ⟶ G := Over.homMk (pointOfClosedPoint G.hom _ hx) (by simp)
    let xe : (G ⊗ G).left := (fst G G ≫ (ρ_ _).inv ≫ G ◁ η[G]).left y
    have : γ.left y = xe := by
      -- By the choice of `U`, the set `γ({y} ×[k] G)` is finite and hence, by irreducibility,
      -- a singleton.
      refine subsingleton_image_closure_of_finite_of_isPreirreducible
        (hx.preimage (fst G G).left.continuous).isLocallyClosed ?_ γ.left.continuous
        γ.left.isClosedMap ((H ⟨_, hyU⟩).subset (Set.image_subset_iff.mpr fun _ ↦ by
          simp [← Scheme.Hom.comp_apply, -Scheme.Hom.comp_base, γ])) ?_ ?_
      · let α : G ⊗ G ⟶ G ⊗ G := toUnit _ ≫ x ⊗ₘ 𝟙 _
        convert!
          ((IrreducibleSpace.isIrreducible_univ _).image α.left
              α.left.continuous.continuousOn).isPreirreducible
        rw [Over.tensorHom_left]
        simp [Set.range_comp, Scheme.Pullback.range_map, x]
      · exact ⟨y, subset_closure (by simp), rfl⟩
      · refine ⟨xe, subset_closure ?_, ?_⟩
        · simp [xe, ← Scheme.Hom.comp_apply, -Scheme.Hom.comp_base]
        · simp only [xe, γ, ← Scheme.Hom.comp_apply, ← Over.comp_left]
          congr 6; ext <;> simp
    convert! congr((snd G G).left $this) using 1
    · simp [γ, ← Scheme.Hom.comp_apply]
    · simp [xe, ← Scheme.Hom.comp_apply, -Scheme.Hom.comp_base]
  · simp

set_option backward.defeqAttrib.useBackward true in
/-- A proper geometrically integral group scheme over a field is commutative. -/
@[stacks 0BFD]
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/Abelian/Variant4849f7c4571be20d1674c8e1f20d7ed3efbcd8a5cc25ba7390c8dfd374be7fea.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/Abelian/Variant4849f7c4571be20d1674c8e1f20d7ed3efbcd8a5cc25ba7390c8dfd374be7fea.lean#L39).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `42c014c626dfc0913e397b438fda1c2e335ea809` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
