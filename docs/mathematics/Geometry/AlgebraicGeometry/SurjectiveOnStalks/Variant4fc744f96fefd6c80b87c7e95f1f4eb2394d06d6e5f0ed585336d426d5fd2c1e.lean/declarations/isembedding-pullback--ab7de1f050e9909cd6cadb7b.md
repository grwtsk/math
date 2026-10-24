# isEmbedding_pullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [],
  "id": "result:00a737ce-16ac-f990-3d81-121c6ad93ab2",
  "kind": "lemma",
  "lexical_name": "isEmbedding_pullback",
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
  "slug": "isembedding-pullback--ab7de1f050e9909cd6cadb7b",
  "source": {
    "blob": "a250579080f050638e17995b571f66a9fdf7965f",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 204,
    "line": 111,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:ab7de1f050e9909cd6cadb7ba3afa9ecc0792b9940f2969c7f415f8d0dbe6171",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:00a737ce-16ac-f990-3d81-121c6ad93ab2`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 111–204.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEmbedding_pullback {X Y S : Scheme.{u}} (f : X ⟶ S) (g : Y ⟶ S) [SurjectiveOnStalks g] :
    IsEmbedding (fun x ↦ ((pullback.fst f g).base x, (pullback.snd f g).base x)) := by
  let L := (fun x ↦ ((pullback.fst f g).base x, (pullback.snd f g).base x))
  have H : ∀ R A B (f' : Spec A ⟶ Spec R) (g' : Spec B ⟶ Spec R) (iX : Spec A ⟶ X)
      (iY : Spec B ⟶ Y) (iS : Spec R ⟶ S) (e₁ e₂), IsOpenImmersion iX → IsOpenImmersion iY →
      IsOpenImmersion iS → IsEmbedding (L ∘ (pullback.map f' g' f g iX iY iS e₁ e₂).base) := by
    intro R A B f' g' iX iY iS e₁ e₂ _ _ _
    have H : SurjectiveOnStalks g' :=
      have : SurjectiveOnStalks (g' ≫ iS) := e₂ ▸ inferInstance
      .of_comp _ iS
    obtain ⟨φ, rfl⟩ : ∃ φ, Spec.map φ = f' := ⟨_, Spec.map_preimage _⟩
    obtain ⟨ψ, rfl⟩ : ∃ ψ, Spec.map ψ = g' := ⟨_, Spec.map_preimage _⟩
    algebraize [φ.hom, ψ.hom]
    rw [HasRingHomProperty.Spec_iff (P := @SurjectiveOnStalks)] at H
    convert ((iX.isOpenEmbedding.prodMap iY.isOpenEmbedding).isEmbedding.comp
      (PrimeSpectrum.isEmbedding_tensorProductTo_of_surjectiveOnStalks R A B H)).comp
      (Scheme.homeoOfIso (pullbackSpecIso R A B)).isEmbedding
    ext1 x
    obtain ⟨x, rfl⟩ := (Scheme.homeoOfIso (pullbackSpecIso R A B).symm).surjective x
    simp only [Scheme.homeoOfIso_apply, Function.comp_apply]
    ext
    · simp only [L, ← Scheme.comp_base_apply, pullback.lift_fst, Iso.symm_hom,
        Iso.inv_hom_id]
      erw [← Scheme.comp_base_apply, pullbackSpecIso_inv_fst_assoc]
      rfl
    · simp only [L, ← Scheme.comp_base_apply, pullback.lift_snd, Iso.symm_hom,
        Iso.inv_hom_id]
      erw [← Scheme.comp_base_apply, pullbackSpecIso_inv_snd_assoc]
      rfl
  let 𝒰 := S.affineOpenCover.openCover
  let 𝒱 (i) := ((𝒰.pullbackCover f).obj i).affineOpenCover.openCover
  let 𝒲 (i) := ((𝒰.pullbackCover g).obj i).affineOpenCover.openCover
  let U (ijk : Σ i, (𝒱 i).J × (𝒲 i).J) : TopologicalSpace.Opens (X.carrier × Y) :=
    ⟨{ P | P.1 ∈ ((𝒱 ijk.1).map ijk.2.1 ≫ (𝒰.pullbackCover f).map ijk.1).opensRange ∧
          P.2 ∈ ((𝒲 ijk.1).map ijk.2.2 ≫ (𝒰.pullbackCover g).map ijk.1).opensRange },
      (continuous_fst.1 _ ((𝒱 ijk.1).map ijk.2.1 ≫
      (𝒰.pullbackCover f).map ijk.1).opensRange.2).inter (continuous_snd.1 _
      ((𝒲 ijk.1).map ijk.2.2 ≫ (𝒰.pullbackCover g).map ijk.1).opensRange.2)⟩
  have : Set.range L ⊆ (iSup U :) := by
    simp only [Scheme.Cover.pullbackCover_J, Scheme.Cover.pullbackCover_obj, Set.range_subset_iff]
    intro z
    simp only [SetLike.mem_coe, TopologicalSpace.Opens.mem_iSup, Sigma.exists, Prod.exists]
    obtain ⟨is, s, hsx⟩ := 𝒰.exists_eq (f.base ((pullback.fst f g).base z))
    have hsy : (𝒰.map is).base s = g.base ((pullback.snd f g).base z) := by
      rwa [← Scheme.comp_base_apply, ← pullback.condition, Scheme.comp_base_apply]
    obtain ⟨x : (𝒰.pullbackCover f).obj is, hx⟩ :=
      Scheme.IsJointlySurjectivePreserving.exists_preimage_fst_triplet_of_prop
        (P := @IsOpenImmersion) inferInstance _ _ hsx.symm
    obtain ⟨y : (𝒰.pullbackCover g).obj is, hy⟩ :=
      Scheme.IsJointlySurjectivePreserving.exists_preimage_fst_triplet_of_prop
        (P := @IsOpenImmersion) inferInstance _ _ hsy.symm
    obtain ⟨ix, x, rfl⟩ := (𝒱 is).exists_eq x
    obtain ⟨iy, y, rfl⟩ := (𝒲 is).exists_eq y
    refine ⟨is, ix, iy, ⟨x, hx⟩, ⟨y, hy⟩⟩
  let 𝓤 := (Scheme.Pullback.openCoverOfBase 𝒰 f g).bind
    (fun i ↦ Scheme.Pullback.openCoverOfLeftRight (𝒱 i) (𝒲 i) _ _)
  refine isEmbedding_of_iSup_eq_top_of_preimage_subset_range _ ?_ U this _ (fun i ↦ (𝓤.map i).base)
    (fun i ↦ (𝓤.map i).continuous) ?_ ?_
  · fun_prop
  · rintro i x ⟨⟨x₁, hx₁⟩, ⟨x₂, hx₂⟩⟩
    obtain ⟨x₁', hx₁'⟩ :=
      Scheme.IsJointlySurjectivePreserving.exists_preimage_fst_triplet_of_prop
        (P := @IsOpenImmersion) inferInstance _ _ hx₁.symm
    obtain ⟨x₂', hx₂'⟩ :=
      Scheme.IsJointlySurjectivePreserving.exists_preimage_fst_triplet_of_prop
        (P := @IsOpenImmersion) inferInstance _ _ hx₂.symm
    obtain ⟨z, hz⟩ :=
      Scheme.IsJointlySurjectivePreserving.exists_preimage_fst_triplet_of_prop
        (P := @IsOpenImmersion) inferInstance _ _ (hx₁'.trans hx₂'.symm)
    refine ⟨(pullbackFstFstIso _ _ _ _ _ _ (𝒰.map i.1) ?_ ?_).hom.base z, ?_⟩
    · simp [pullback.condition]
    · simp [pullback.condition]
    · dsimp only
      rw [← hx₁', ← hz, ← Scheme.comp_base_apply]
      erw [← Scheme.comp_base_apply]
      congr 5
      apply pullback.hom_ext <;> simp [𝓤, ← pullback.condition, ← pullback.condition_assoc]
  · intro i
    have := H (S.affineOpenCover.obj i.1) (((𝒰.pullbackCover f).obj i.1).affineOpenCover.obj i.2.1)
        (((𝒰.pullbackCover g).obj i.1).affineOpenCover.obj i.2.2)
        ((𝒱 i.1).map i.2.1 ≫ 𝒰.pullbackHom f i.1)
        ((𝒲 i.1).map i.2.2 ≫ 𝒰.pullbackHom g i.1)
        ((𝒱 i.1).map i.2.1 ≫ (𝒰.pullbackCover f).map i.1)
        ((𝒲 i.1).map i.2.2 ≫ (𝒰.pullbackCover g).map i.1)
        (𝒰.map i.1) (by simp [pullback.condition]) (by simp [pullback.condition])
        inferInstance inferInstance inferInstance
    convert this using 7
    apply pullback.hom_ext <;>
      simp [𝓤, ← pullback.condition, ← pullback.condition_assoc,
        Scheme.Cover.pullbackHom]

end SurjectiveOnStalks

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4fc744f96fefd6c80b87c7e95f1f4eb2394d06d6e5f0ed585336d426d5fd2c1e.lean#L111).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `a250579080f050638e17995b571f66a9fdf7965f` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
