# isEmbedding_pullback

grwtsk contributors

<!-- BEGIN SOURCE DECLARATION METADATA
{
  "author": "grwtsk contributors",
  "classification": "source-observation",
  "historical_source_identities": [
    {
      "blob": "46ddace785908db92b414a5d2ad9198a3cd22b2d",
      "commit": "763e5581487a6321be999d1e948a305a86a60f48",
      "identity": "a97fb7a4b22ac8acb6c996355db03df7ffe3cee97d7394ec115cd457fabd111b",
      "line": 109,
      "path": "GRWTSK/SourceCorpus/FormalResearch/Objects/4e/4eef72720ede74ff9d8c89877b0defce8a232c9adab005574e0a3f59b51c82a4.lean",
      "relation": "IDENTICAL_BLOB_AND_LEXICAL_HEAD; source paths and commit identities remain distinct.",
      "repository": "grwtsk/math",
      "result_id": "result:9b007069-f820-6f55-9715-36afe7015cf4",
      "root_tree": "ea0e62974f8c2305f02358d5bba82589fa1ad739"
    }
  ],
  "id": "result:219871b3-b6e5-ea36-47c1-f2a86b673157",
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
  "slug": "isembedding-pullback--eaeffb339b35e57fe2387c6a",
  "source": {
    "blob": "46ddace785908db92b414a5d2ad9198a3cd22b2d",
    "commit": "706c62c1285a9857cb9d52e0620ec2cb514eb374",
    "end_line": 203,
    "line": 109,
    "path": "GRWTSK/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4eef72720ede74ff9d8c89877b0defce8a232c9adab005574e0a3f59b51c82a4.lean",
    "repository": "grwtsk/math"
  },
  "track_id": "result-track:eaeffb339b35e57fe2387c6a7f96178ed8cf20b0f257474cf14559aa3030ceae",
  "verification": {
    "reference": "docs/verification/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4eef72720ede74ff9d8c89877b0defce8a232c9adab005574e0a3f59b51c82a4.lean/index.md",
    "scope": "Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.",
    "status": "BLOCKED_NATIVE_ADMISSION"
  }
}
END SOURCE DECLARATION METADATA -->

[Module and every declaration](../index.md) · [Results index](../../../../../index.md)

## Abstract

This article records the exact pinned source window beginning at a lexical `lemma` command. Its hypotheses, conclusion and proof text remain in the source below. No mathematical summary or claim of proof acceptance is inferred.

## 1. Statement, hypotheses and proof source

Occurrence: `result:219871b3-b6e5-ea36-47c1-f2a86b673157`. Observation: `LEXICAL_COMMAND_HEAD`. Source lines 109–203.

The window ends immediately before the next observed declaration, or at end of file. It can contain adjacent commands. The [complete source snapshot](../source.md) preserves surrounding namespace, variables, imports and notation.

```lean
lemma isEmbedding_pullback {X Y S : Scheme.{u}} (f : X ⟶ S) (g : Y ⟶ S) [SurjectiveOnStalks g] :
    IsEmbedding fun x ↦ (pullback.fst f g x, pullback.snd f g x) := by
  let L := (fun x ↦ (pullback.fst f g x, pullback.snd f g x))
  have H : ∀ R A B (f' : Spec A ⟶ Spec R) (g' : Spec B ⟶ Spec R) (iX : Spec A ⟶ X)
      (iY : Spec B ⟶ Y) (iS : Spec R ⟶ S) (e₁ e₂), IsOpenImmersion iX → IsOpenImmersion iY →
      IsOpenImmersion iS → IsEmbedding (L ∘ pullback.map f' g' f g iX iY iS e₁ e₂) := by
    intro R A B f' g' iX iY iS e₁ e₂ _ _ _
    have H : SurjectiveOnStalks g' :=
      have : SurjectiveOnStalks (g' ≫ iS) := e₂ ▸ inferInstance
      .of_comp _ iS
    obtain ⟨φ, rfl⟩ : ∃ φ, Spec.map φ = f' := ⟨_, Spec.map_preimage _⟩
    obtain ⟨ψ, rfl⟩ : ∃ ψ, Spec.map ψ = g' := ⟨_, Spec.map_preimage _⟩
    algebraize [φ.hom, ψ.hom]
    rw [HasRingHomProperty.Spec_iff (P := @SurjectiveOnStalks)] at H
    convert!
      ((iX.isOpenEmbedding.prodMap iY.isOpenEmbedding).isEmbedding.comp
            (PrimeSpectrum.isEmbedding_tensorProductTo_of_surjectiveOnStalks R A B H)).comp
        (Scheme.homeoOfIso (pullbackSpecIso R A B)).isEmbedding
    ext1 x
    obtain ⟨x, rfl⟩ := (Scheme.homeoOfIso (pullbackSpecIso R A B).symm).surjective x
    simp only [Scheme.homeoOfIso_apply, Function.comp_apply]
    ext
    · simp only [L, ← Scheme.Hom.comp_apply, pullback.lift_fst, Iso.symm_hom,
        Iso.inv_hom_id]
      erw [← Scheme.Hom.comp_apply, pullbackSpecIso_inv_fst_assoc]
      rfl
    · simp only [L, ← Scheme.Hom.comp_apply, pullback.lift_snd, Iso.symm_hom,
        Iso.inv_hom_id]
      erw [← Scheme.Hom.comp_apply, pullbackSpecIso_inv_snd_assoc]
      rfl
  let 𝒰 := S.affineOpenCover.openCover
  let 𝒱 (i) := ((𝒰.pullback₁ f).X i).affineOpenCover.openCover
  let 𝒲 (i) := ((𝒰.pullback₁ g).X i).affineOpenCover.openCover
  let U (ijk : Σ i, (𝒱 i).I₀ × (𝒲 i).I₀) : TopologicalSpace.Opens (X.carrier × Y) :=
    ⟨{ P | P.1 ∈ ((𝒱 ijk.1).f ijk.2.1 ≫ (𝒰.pullback₁ f).f ijk.1).opensRange ∧
          P.2 ∈ ((𝒲 ijk.1).f ijk.2.2 ≫ (𝒰.pullback₁ g).f ijk.1).opensRange },
      (continuous_fst.1 _ ((𝒱 ijk.1).f ijk.2.1 ≫
      (𝒰.pullback₁ f).f ijk.1).opensRange.2).inter (continuous_snd.1 _
      ((𝒲 ijk.1).f ijk.2.2 ≫ (𝒰.pullback₁ g).f ijk.1).opensRange.2)⟩
  have : Set.range L ⊆ (iSup U :) := by
    simp only [Precoverage.ZeroHypercover.pullback₁_toPreZeroHypercover,
      PreZeroHypercover.pullback₁_I₀, PreZeroHypercover.pullback₁_X, Set.range_subset_iff]
    intro z
    simp only [SetLike.mem_coe, TopologicalSpace.Opens.mem_iSup, Sigma.exists, Prod.exists]
    obtain ⟨is, s, hsx⟩ := 𝒰.exists_eq (f (pullback.fst f g z))
    have hsy : 𝒰.f is s = g (pullback.snd f g z) := by
      rwa [← Scheme.Hom.comp_apply, ← pullback.condition, Scheme.Hom.comp_apply]
    obtain ⟨x : (𝒰.pullback₁ f).X is, hx⟩ :=
      Scheme.IsJointlySurjectivePreserving.exists_preimage_fst_triplet_of_prop
        (P := @IsOpenImmersion) inferInstance _ _ hsx.symm
    obtain ⟨y : (𝒰.pullback₁ g).X is, hy⟩ :=
      Scheme.IsJointlySurjectivePreserving.exists_preimage_fst_triplet_of_prop
        (P := @IsOpenImmersion) inferInstance _ _ hsy.symm
    obtain ⟨ix, x, rfl⟩ := (𝒱 is).exists_eq x
    obtain ⟨iy, y, rfl⟩ := (𝒲 is).exists_eq y
    refine ⟨is, ix, iy, ⟨x, hx⟩, ⟨y, hy⟩⟩
  let 𝓤 := (Scheme.Pullback.openCoverOfBase 𝒰 f g).bind
    (fun i ↦ Scheme.Pullback.openCoverOfLeftRight (𝒱 i) (𝒲 i) _ _)
  refine isEmbedding_of_iSup_eq_top_of_preimage_subset_range _ ?_ U this _ (𝓤.f ·)
    (fun i ↦ (𝓤.f i).continuous) ?_ ?_
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
    refine ⟨(pullbackFstFstIso _ _ _ _ _ _ (𝒰.f i.1) ?_ ?_).hom z, ?_⟩
    · simp [pullback.condition]
    · simp [pullback.condition]
    · dsimp only
      rw [← hx₁', ← hz, ← Scheme.Hom.comp_apply]
      erw [← Scheme.Hom.comp_apply]
      congr 5
      apply pullback.hom_ext <;> simp [𝓤, ← pullback.condition, ← pullback.condition_assoc]
  · intro i
    have := H (S.affineOpenCover.X i.1) (((𝒰.pullback₁ f).X i.1).affineOpenCover.X i.2.1)
        (((𝒰.pullback₁ g).X i.1).affineOpenCover.X i.2.2)
        ((𝒱 i.1).f i.2.1 ≫ 𝒰.pullbackHom f i.1)
        ((𝒲 i.1).f i.2.2 ≫ 𝒰.pullbackHom g i.1)
        ((𝒱 i.1).f i.2.1 ≫ (𝒰.pullback₁ f).f i.1)
        ((𝒲 i.1).f i.2.2 ≫ (𝒰.pullback₁ g).f i.1)
        (𝒰.f i.1) (by simp [pullback.condition]) (by simp [pullback.condition])
        inferInstance inferInstance inferInstance
    convert! this using 7
    apply pullback.hom_ext <;>
      simp [𝓤, Scheme.Cover.pullbackHom]

end SurjectiveOnStalks

end AlgebraicGeometry
```

## 2. Verification and trust boundary

**Module verification:** `BLOCKED_NATIVE_ADMISSION`. Native compilation: NOT_RUN; named axiom audit: NOT_RUN. This is a source-bound obligation status, not theorem acceptance.

[Verification target and public status](../../../../../../verification/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4eef72720ede74ff9d8c89877b0defce8a232c9adab005574e0a3f59b51c82a4.lean/index.md). A module build status does not by itself certify this occurrence, its transitive axioms, an intended informal statement, or a composite bridge. Source observations and anonymous commands may have no elaborated declaration identity.

**Three-degree spectral volume S₃:** unavailable (`verification_dependency_graph_unavailable`). [Ranking definition and adjustable weights](../../../../../../reference/ranking-profile.json).

## 3. Composition and missing bridges

Composition, semantic subject associations, transitive axiom audit and three-degree verification dependency metrics remain unassessed unless independently bound evidence is supplied. All observed commands are retained regardless of verification status.

## 4. Sources and revision

[Pinned upstream source](https://github.com/grwtsk/math/blob/706c62c1285a9857cb9d52e0620ec2cb514eb374/GRWTSK/Geometry/AlgebraicGeometry/SurjectiveOnStalks/Variant4eef72720ede74ff9d8c89877b0defce8a232c9adab005574e0a3f59b51c82a4.lean#L109).

Commit: `706c62c1285a9857cb9d52e0620ec2cb514eb374` · blob: `46ddace785908db92b414a5d2ad9198a3cd22b2d` · root tree: `5251a5a6d85a8d3f06b12803d6bd7887693b65a8`.

Historical occurrence identities in the metadata retain their original commit/blob pins. They do not certify a new source revision. 

Generated source issuance, revision 1. Local attribution applies to the article; source bylines and license obligations are preserved in the full source snapshot.
