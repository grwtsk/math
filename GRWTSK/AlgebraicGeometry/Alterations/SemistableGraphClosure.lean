import GRWTSK.AlgebraicGeometry.Alterations.KummerBaseChange

/-!
# Graph closures and chart comparisons for semistable families

Source candidate split from `weil_conjecture_main.lean`, lines 4234–8638.
See the adjacent `SemistableGraphClosure.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dj_gcl_fst_preimage_ne_bot : ∀ {S S'' Y : Scheme.{u}} (g : Y ⟶ S) (ρ : S'' ⟶ S) (W : S.Opens), Surjective ρ → W ≠ ⊥ → GeometricallyConnected (g ∣_ W) → Limits.pullback.fst g ρ ⁻¹ᵁ (g ⁻¹ᵁ W) ≠ ⊥ :=
by
  intro S S'' Y g ρ W hρ hW hgc
  obtain ⟨w, hw⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty W).mp hW
  let w' : W.toScheme := ⟨w, hw⟩
  have hconn : ConnectedSpace
      ↥(Limits.pullback (C := Scheme.{u}) (g ∣_ W) (W.toScheme.fromSpecResidueField w')) :=
    hgc.geometrically_connectedSpace (W.toScheme.fromSpecResidueField w')
      (Limits.pullback.fst _ _) (Limits.pullback.snd _ _) (IsPullback.of_hasPullback _ _)
  obtain ⟨z⟩ := hconn.toNonempty
  have hq : (Limits.pullback.fst (g ∣_ W) (W.toScheme.fromSpecResidueField w') z).1 ∈
      g ⁻¹ᵁ W :=
    (Limits.pullback.fst (g ∣_ W) (W.toScheme.fromSpecResidueField w') z).2
  haveI := hρ
  obtain ⟨s, hs⟩ := ρ.surjective
    (g (Limits.pullback.fst (g ∣_ W) (W.toScheme.fromSpecResidueField w') z).1)
  obtain ⟨p, hp, -⟩ := Scheme.Pullback.exists_preimage_pullback (f := g) (g := ρ)
    (Limits.pullback.fst (g ∣_ W) (W.toScheme.fromSpecResidueField w') z).1 s hs.symm
  refine (TopologicalSpace.Opens.ne_bot_iff_nonempty _).mpr ⟨p, ?_⟩
  rw [SetLike.mem_coe, Scheme.Hom.mem_preimage, hp]
  exact hq

theorem wcpa_dj_gcl_graph_closure_iso : ∀ (k : Type u) [Field k] (T : Scheme.{u}) [AlgebraicGeometry.IsIntegral T] [IsLocallyNoetherian T] (sT : T ⟶ Spec (.of k)) (N : ℕ) (O' : T.Opens) (a' : O'.toScheme ⟶ wcProjK k N), O' ≠ ⊥ → a' ≫ wcProjKStr k N = O'.ι ≫ sT → ∃ (Z : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral Z) (ιZ : Z ⟶ Limits.pullback sT (wcProjKStr k N)), IsClosedImmersion ιZ ∧ Surjective (ιZ ≫ Limits.pullback.fst sT (wcProjKStr k N)) ∧ IsIso ((ιZ ≫ Limits.pullback.fst sT (wcProjKStr k N)) ∣_ O') ∧ ((ιZ ≫ Limits.pullback.fst sT (wcProjKStr k N)) ⁻¹ᵁ O').ι ≫ ιZ ≫ Limits.pullback.snd sT (wcProjKStr k N) = ((ιZ ≫ Limits.pullback.fst sT (wcProjKStr k N)) ∣_ O') ≫ a' :=
by
  intro k _ T _ _ sT N O' a' hO' ha'


  have s0 : ∀ (X Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral X] (f : X ⟶ Y), QuasiCompact f →
      AlgebraicGeometry.IsIntegral (Scheme.Hom.image f) := by
    intro X Y _ f hf
    haveI : QuasiCompact f := hf
    haveI hirr : IrreducibleSpace (Scheme.Hom.image f) := by
      have hX : IsIrreducible (Set.univ : Set X) := IrreducibleSpace.isIrreducible_univ X
      have h1 := (hX.image (Scheme.Hom.toImage f) (Scheme.Hom.continuous _).continuousOn).closure
      rw [Set.image_univ, (Scheme.Hom.denseRange (Scheme.Hom.toImage f)).closure_range] at h1
      exact (irreducibleSpace_def _).mpr h1
    have hsec : ∀ U : Y.affineOpens,
        _root_.IsReduced Γ(Scheme.Hom.image f, Scheme.Hom.imageι f ⁻¹ᵁ (U : Y.Opens)) := by
      intro U
      exact isReduced_of_injective _ (Scheme.Hom.toImage_app_injective f U)
    haveI hst : ∀ z : Scheme.Hom.image f,
        _root_.IsReduced ((Scheme.Hom.image f).presheaf.stalk z) := by
      intro z
      obtain ⟨U, hU, hzU, -⟩ := exists_isAffineOpen_mem_and_subset
        (x := Scheme.Hom.imageι f z) (U := ⊤) trivial
      have hV : IsAffineOpen (Scheme.Hom.imageι f ⁻¹ᵁ U) := hU.preimage _
      have hz : z ∈ Scheme.Hom.imageι f ⁻¹ᵁ U := hzU
      have h1 := hsec ⟨U, hU⟩
      have h2 := hV.isLocalization_stalk ⟨z, hz⟩
      letI := TopCat.Presheaf.algebra_section_stalk (Scheme.Hom.image f).presheaf
        (⟨z, hz⟩ : Scheme.Hom.imageι f ⁻¹ᵁ U)
      haveI := h2
      exact isReduced_localizationPreserves (hV.primeIdealOf ⟨z, hz⟩).asIdeal.primeCompl _ h1
    haveI : AlgebraicGeometry.IsReduced (Scheme.Hom.image f) := isReduced_of_isReduced_stalk _
    exact isIntegral_of_irreducibleSpace_of_isReduced _


  have s0b : ∀ (V Q T : Scheme.{u}) (γ : V ⟶ Q) (p : Q ⟶ T) (O : T.Opens)
      (U' : (Scheme.Hom.image γ).Opens) (h : V ⟶ O.toScheme), QuasiCompact γ → IsSeparated p →
      AlgebraicGeometry.IsReduced (Scheme.Hom.image γ) → U' = (Scheme.Hom.imageι γ ≫ p) ⁻¹ᵁ O →
      h ≫ O.ι = γ ≫ p → IsClosedImmersion h →
      ∃ t : V ⟶ U'.toScheme, IsIso t ∧ t ≫ U'.ι = Scheme.Hom.toImage γ := by
    intro V Q T γ p O U' h hqc hsep hred hU' hh hci
    subst hU'
    haveI := hqc
    haveI := hsep
    haveI := hred
    haveI := hci
    set f : Scheme.Hom.image γ ⟶ T := Scheme.Hom.imageι γ ≫ p with hf
    have H : Set.range (Scheme.Hom.toImage γ) ⊆ Set.range (f ⁻¹ᵁ O).ι := by
      rw [Scheme.Opens.range_ι]
      rintro _ ⟨v, rfl⟩
      rw [SetLike.mem_coe, Scheme.Hom.mem_preimage]
      have e1 : f (Scheme.Hom.toImage γ v) = (γ ≫ p) v := by
        rw [hf, ← Scheme.Hom.comp_apply, ← Category.assoc, Scheme.Hom.toImage_imageι]
      rw [e1, ← hh, Scheme.Hom.comp_apply]
      first
        | exact (h v).2
        | simp
    let t : V ⟶ (f ⁻¹ᵁ O).toScheme := IsOpenImmersion.lift (f ⁻¹ᵁ O).ι (Scheme.Hom.toImage γ) H
    have ht : t ≫ (f ⁻¹ᵁ O).ι = Scheme.Hom.toImage γ := IsOpenImmersion.lift_fac _ _ _
    have hkey : t ≫ (f ∣_ O) = h := by
      rw [← cancel_mono O.ι, Category.assoc, morphismRestrict_ι, ← Category.assoc, ht, hh, hf,
        ← Category.assoc, Scheme.Hom.toImage_imageι]
    haveI : IsClosedImmersion (t ≫ (f ∣_ O)) := by rw [hkey]; exact hci
    haveI : IsSeparated (f ∣_ O) := inferInstance
    haveI htci : IsClosedImmersion t := IsClosedImmersion.of_comp t (f ∣_ O)
    have hcl : IsClosed (Set.range t) := t.isClosedEmbedding.isClosed_range
    have hD : Dense (Set.range (Scheme.Hom.toImage γ)) := (Scheme.Hom.toImage γ).denseRange
    have hpre : (f ⁻¹ᵁ O).ι ⁻¹' Set.range (Scheme.Hom.toImage γ) = Set.range t := by
      ext x
      constructor
      · rintro ⟨v, hv⟩
        refine ⟨v, ?_⟩
        apply (f ⁻¹ᵁ O).ι.isOpenEmbedding.injective
        rw [← Scheme.Hom.comp_apply, ht, hv]
      · rintro ⟨v, rfl⟩
        exact ⟨v, by rw [← Scheme.Hom.comp_apply, ht]⟩
    have hD' : Dense (Set.range t) := by
      rw [← hpre]
      exact hD.preimage (f ⁻¹ᵁ O).ι.isOpenEmbedding.isOpenMap
    have huniv : Set.range t = Set.univ := by
      rw [← hcl.closure_eq, hD'.closure_eq]
    haveI : Surjective t := ⟨fun x => by
      have : x ∈ Set.range t := by rw [huniv]; trivial
      exact this⟩
    haveI : IsReduced (f ⁻¹ᵁ O).toScheme := inferInstance
    exact ⟨t, isIso_of_isClosedImmersion_of_surjective t, ht⟩


  have s1 : ∀ (K : Type u) [Field K] (n : ℕ), IsProper (wcProjKStr K n) := by
    intro K _ n
    letI := @MvPolynomial.gradedAlgebra (Fin (n+1)) K _
    letI : IsScalarTower K ((MvPolynomial.homogeneousSubmodule (Fin (n+1)) K) 0)
        (MvPolynomial (Fin (n+1)) K) :=
      IsScalarTower.of_algebraMap_eq (R := K)
        (S := (MvPolynomial.homogeneousSubmodule (Fin (n+1)) K) 0)
        (A := MvPolynomial (Fin (n+1)) K) (fun r => rfl)
    haveI : Algebra.FiniteType ((MvPolynomial.homogeneousSubmodule (Fin (n+1)) K) 0)
        (MvPolynomial (Fin (n+1)) K) :=
      Algebra.FiniteType.of_restrictScalars_finiteType K _ _
    haveI : IsProper (Proj.toSpecZero (MvPolynomial.homogeneousSubmodule (Fin (n+1)) K)) :=
      inferInstance
    have hbij : Function.Bijective
        (algebraMap K ((MvPolynomial.homogeneousSubmodule (Fin (n+1)) K) 0)) := by
      constructor
      · intro a b hab
        have h := congrArg (fun x : (MvPolynomial.homogeneousSubmodule (Fin (n+1)) K) 0 =>
          (x : MvPolynomial (Fin (n+1)) K)) hab
        simp only [SetLike.GradeZero.coe_algebraMap, MvPolynomial.algebraMap_eq] at h
        exact MvPolynomial.C_injective _ _ h
      · intro x
        have hx : (x : MvPolynomial (Fin (n+1)) K).IsHomogeneous 0 :=
          (MvPolynomial.mem_homogeneousSubmodule 0 _).mp x.2
        have ht : (x : MvPolynomial (Fin (n+1)) K).totalDegree = 0 :=
          Nat.le_zero.mp hx.totalDegree_le
        refine ⟨(x : MvPolynomial (Fin (n+1)) K).coeff 0, Subtype.ext ?_⟩
        simp only [SetLike.GradeZero.coe_algebraMap, MvPolynomial.algebraMap_eq]
        exact ((MvPolynomial.totalDegree_eq_zero_iff_eq_C).mp ht).symm
    haveI : IsIso (CommRingCat.ofHom
        (algebraMap K ((MvPolynomial.homogeneousSubmodule (Fin (n+1)) K) 0))) := by
      rw [ConcreteCategory.isIso_iff_bijective]
      exact hbij
    show IsProper (Proj.toSpecZero (MvPolynomial.homogeneousSubmodule (Fin (n+1)) K) ≫
      Spec.map (CommRingCat.ofHom
        (algebraMap K ((MvPolynomial.homogeneousSubmodule (Fin (n+1)) K) 0))))
    infer_instance
  haveI hPp : IsProper (wcProjKStr k N) := s1 k N

  have hne : (O' : Set T).Nonempty := (TopologicalSpace.Opens.ne_bot_iff_nonempty O').mp hO'
  haveI : Nonempty O' := hne.to_subtype

  obtain ⟨γ, hγf, hγs⟩ : ∃ γ : O'.toScheme ⟶ Limits.pullback sT (wcProjKStr k N),
      γ ≫ Limits.pullback.fst sT (wcProjKStr k N) = O'.ι ∧
        γ ≫ Limits.pullback.snd sT (wcProjKStr k N) = a' :=
    ⟨Limits.pullback.lift O'.ι a' ha'.symm, Limits.pullback.lift_fst _ _ _,
      Limits.pullback.lift_snd _ _ _⟩
  haveI : QuasiCompact (γ ≫ Limits.pullback.fst sT (wcProjKStr k N)) := by
    rw [hγf]; infer_instance
  haveI hqc : QuasiCompact γ := QuasiCompact.of_comp γ (Limits.pullback.fst sT (wcProjKStr k N))

  haveI hZint : AlgebraicGeometry.IsIntegral (Scheme.Hom.image γ) := s0 _ _ γ hqc
  have htp : Scheme.Hom.toImage γ ≫ Scheme.Hom.imageι γ ≫
      Limits.pullback.fst sT (wcProjKStr k N) = O'.ι := by
    rw [← Category.assoc, Scheme.Hom.toImage_imageι, hγf]

  obtain ⟨t, htiso, ht⟩ := s0b O'.toScheme _ T γ (Limits.pullback.fst sT (wcProjKStr k N)) O'
    ((Scheme.Hom.imageι γ ≫ Limits.pullback.fst sT (wcProjKStr k N)) ⁻¹ᵁ O') (𝟙 _) hqc
    inferInstance inferInstance rfl (by rw [Category.id_comp, hγf]) inferInstance
  haveI := htiso
  have hclaim : t ≫ ((Scheme.Hom.imageι γ ≫ Limits.pullback.fst sT (wcProjKStr k N)) ∣_ O') =
      𝟙 _ := by
    rw [← cancel_mono O'.ι, Category.assoc, morphismRestrict_ι, ← Category.assoc, ht, htp,
      Category.id_comp]
  have hinv : ((Scheme.Hom.imageι γ ≫ Limits.pullback.fst sT (wcProjKStr k N)) ∣_ O') =
      inv t := by
    rw [← cancel_epi t, hclaim, IsIso.hom_inv_id]
  have hpiso : IsIso ((Scheme.Hom.imageι γ ≫ Limits.pullback.fst sT (wcProjKStr k N)) ∣_ O') := by
    rw [hinv]; infer_instance
  refine ⟨Scheme.Hom.image γ, hZint, Scheme.Hom.imageι γ, inferInstance, ?_, hpiso, ?_⟩
  ·
    have hsub : (O' : Set T) ⊆
        Set.range (Scheme.Hom.imageι γ ≫ Limits.pullback.fst sT (wcProjKStr k N)) := by
      intro x hx
      rw [← Scheme.Opens.range_ι O'] at hx
      obtain ⟨y, rfl⟩ := hx
      exact ⟨Scheme.Hom.toImage γ y, by rw [← Scheme.Hom.comp_apply, htp]⟩
    have hdense : Dense (O' : Set T) := O'.isOpen.dense hne
    haveI : IsDominant (Scheme.Hom.imageι γ ≫ Limits.pullback.fst sT (wcProjKStr k N)) :=
      ⟨hdense.mono hsub⟩
    exact Surjective.of_universallyClosed_of_isDominant _
  ·
    rw [← cancel_epi t, ← Category.assoc, ht, ← Category.assoc t, hclaim, Category.id_comp,
      ← Category.assoc, Scheme.Hom.toImage_imageι, hγs]

theorem wcpa_dj_gcl_iso_locus : ∀ {C Z T : Scheme.{u}} [IrreducibleSpace Z] (b : C ⟶ Z) (p : Z ⟶ T) [IsProper p] (O' : T.Opens), (∃ U : Z.Opens, U ≠ ⊥ ∧ IsIso (b ∣_ U)) → IsIso (p ∣_ O') → p ⁻¹ᵁ O' ≠ ⊥ → ∃ V : T.Opens, V ≠ ⊥ ∧ V ≤ O' ∧ IsIso ((b ≫ p) ∣_ V) :=
by
  intro C Z T _ b p _ O' hUex hpiso hpne
  obtain ⟨U, hU, hUiso⟩ := hUex

  have s1 : ∀ {X Y : Scheme.{u}} (f : X ⟶ Y) {U₁ U₂ : Y.Opens}, U₁ ≤ U₂ →
      IsIso (f ∣_ U₂) → IsIso (f ∣_ U₁) := by
    intro X Y f U₁ U₂ hle hiso
    have heq : U₂.ι ''ᵁ (U₂.ι ⁻¹ᵁ U₁) = U₁ := by
      rw [Scheme.Hom.image_preimage_eq_opensRange_inf, Scheme.Opens.opensRange_ι]
      exact inf_eq_right.mpr hle
    have e : Arrow.mk (f ∣_ U₂ ∣_ (U₂.ι ⁻¹ᵁ U₁)) ≅ Arrow.mk (f ∣_ U₁) :=
      morphismRestrictRestrict f U₂ (U₂.ι ⁻¹ᵁ U₁) ≪≫ morphismRestrictEq f heq
    exact (MorphismProperty.arrow_mk_iso_iff (MorphismProperty.isomorphisms Scheme) e).mp
      (inferInstance : IsIso (f ∣_ U₂ ∣_ (U₂.ι ⁻¹ᵁ U₁)))

  have s2 : ∀ x y : Z, p x ∈ O' → p y ∈ O' → p x = p y → x = y := by
    intro x y hx hy hxy
    have hx' : x ∈ p ⁻¹ᵁ O' := hx
    have hy' : y ∈ p ⁻¹ᵁ O' := hy
    have hinj : Function.Injective (p ∣_ O') := (p ∣_ O').isOpenEmbedding.injective
    have h1 : (p ∣_ O') ⟨x, hx'⟩ = (p ∣_ O') ⟨y, hy'⟩ := by
      apply Subtype.ext
      have ex := morphismRestrict_base_coe p O' ⟨x, hx'⟩
      have ey := morphismRestrict_base_coe p O' ⟨y, hy'⟩
      rw [ex, ey]
      exact hxy
    have h2 := hinj h1
    exact congrArg Subtype.val h2

  have hUne : (U : Set Z).Nonempty := (TopologicalSpace.Opens.ne_bot_iff_nonempty U).mp hU
  have hpne' : ((p ⁻¹ᵁ O' : Z.Opens) : Set Z).Nonempty :=
    (TopologicalSpace.Opens.ne_bot_iff_nonempty _).mp hpne
  obtain ⟨w, hwU, hwO⟩ := nonempty_preirreducible_inter U.isOpen (p ⁻¹ᵁ O').isOpen hUne hpne'

  have hKcl : IsClosed (⇑p '' (U : Set Z)ᶜ) := p.isClosedMap _ U.isOpen.isClosed_compl
  let V : T.Opens := O' ⊓ ⟨(⇑p '' (U : Set Z)ᶜ)ᶜ, hKcl.isOpen_compl⟩
  have hVle : V ≤ O' := inf_le_left

  have hpwO : p w ∈ O' := hwO
  have hpwV : p w ∈ V := by
    refine ⟨hpwO, ?_⟩
    rintro ⟨z, hz, hzw⟩
    have hzO : p z ∈ O' := by rw [hzw]; exact hpwO
    have := s2 z w hzO hpwO hzw
    exact hz (this ▸ hwU)
  have hV : V ≠ ⊥ := (TopologicalSpace.Opens.ne_bot_iff_nonempty V).mpr ⟨p w, hpwV⟩

  have hpV : p ⁻¹ᵁ V ≤ U := by
    intro z hz
    by_contra hzU
    have hz' : p z ∈ V := hz
    exact hz'.2 ⟨z, hzU, rfl⟩

  have h1 : IsIso (b ∣_ p ⁻¹ᵁ V) := s1 b hpV hUiso
  have h2 : IsIso (p ∣_ V) := s1 p hVle hpiso
  refine ⟨V, hV, hVle, ?_⟩
  rw [morphismRestrict_comp]
  exact @IsIso.comp_isIso _ _ _ _ _ _ _ h1 h2

theorem wcpa_dj_gcl_construct : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra) (hτ : ∀ j, τ j ≫ g = 𝟙 S)
    (S'' : Scheme.{u}) [AlgebraicGeometry.IsIntegral S''] (ρ : S'' ⟶ S) (D'' : Set S''),
    wcpaDjGcHyp k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' →
    ∃ (C : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral C) (π₅ : C ⟶ Limits.pullback g ρ)
      (A : C ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra),
      wcpaDjGcModel k sS g ρ O a π₅ A ∧ IsProper π₅ ∧ Surjective π₅ ∧
      (∃ V : (Limits.pullback g ρ).Opens, V ≠ ⊥ ∧ IsFinite (π₅ ∣_ V)) ∧
      wcpaDjIsProjOver k ((π₅ ≫ Limits.pullback.snd g ρ) ≫ ρ ≫ sS) :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hτ S'' _ ρ D'' H
  obtain ⟨Hkm, hρS, hρp, hρs, hρf, _, _, _, _⟩ := H
  obtain ⟨hS, hY, hss, _, _, hW, hWsm, hWgc, _, _, _, hO, hstr, _, _⟩ := Hkm
  haveI hYint : AlgebraicGeometry.IsIntegral (Limits.pullback g ρ) :=
    wcpa_dj_tr_basechange_integral S S'' Y ρ g W hss.1 hρs hW hWsm hWgc
  obtain ⟨sY, hsY⟩ : ∃ sY : Limits.pullback g ρ ⟶ Spec (.of k),
      sY = Limits.pullback.snd g ρ ≫ ρ ≫ sS := ⟨_, rfl⟩
  have hY'' : wcpaDjIsProjOver k sY := by
    rw [hsY]; exact wcpa_dj_tr_basechange_proj k S S'' Y sS (ρ ≫ sS) ρ g rfl hS hρS hY
  haveI hsYp : IsProper sY := wcpa_dj_proj_proper k sY hY''
  haveI : IsLocallyNoetherian (Limits.pullback g ρ) := LocallyOfFiniteType.isLocallyNoetherian sY
  have hO''ne : Limits.pullback.fst g ρ ⁻¹ᵁ O ≠ ⊥ := by
    intro h
    have hle : Limits.pullback.fst g ρ ⁻¹ᵁ (g ⁻¹ᵁ W) ≤ Limits.pullback.fst g ρ ⁻¹ᵁ O :=
      fun x hx => hO hx
    rw [h] at hle
    exact wcpa_dj_gcl_fst_preimage_ne_bot g ρ W hρs hW hWgc (le_bot_iff.mp hle)
  have ha'' : ((Limits.pullback.fst g ρ ∣_ O) ≫ a) ≫ wcProjKStr k N =
      (Limits.pullback.fst g ρ ⁻¹ᵁ O).ι ≫ sY := by
    rw [hsY, Category.assoc, hstr, morphismRestrict_ι_assoc, Limits.pullback.condition_assoc]
  obtain ⟨Z, hZint, ιZ, hci, hpZs, hpZiso, hagr⟩ :=
    wcpa_dj_gcl_graph_closure_iso k (Limits.pullback g ρ) sY N (Limits.pullback.fst g ρ ⁻¹ᵁ O)
      ((Limits.pullback.fst g ρ ∣_ O) ≫ a) hO''ne ha''
  haveI := hZint
  haveI := hci
  haveI := hpZs
  haveI hPp : IsProper (wcProjKStr k N) := wc_proj_space_isProper k N
  have hcond : Limits.pullback.fst sY (wcProjKStr k N) ≫ sY =
      Limits.pullback.snd sY (wcProjKStr k N) ≫ wcProjKStr k N := Limits.pullback.condition
  have hZproj : wcpaDjIsProjOver k (ιZ ≫ Limits.pullback.fst sY (wcProjKStr k N) ≫ sY) := by
    have h1 := wcpa_dj_ssm_proj_fibre_product k (Limits.pullback g ρ) (Spec (.of k)) (wcProjK k N) Z
      (𝟙 _) sY (wcProjKStr k N) ιZ inferInstance (by rw [Category.comp_id]; exact hY'')
      ⟨N, 𝟙 _, inferInstance, by simp⟩ hci
    rw [Category.comp_id, ← hcond] at h1
    exact h1
  haveI hZp : IsProper (ιZ ≫ Limits.pullback.fst sY (wcProjKStr k N) ≫ sY) :=
    wcpa_dj_proj_proper k _ hZproj
  obtain ⟨C, hCint, b, hbfin, hbsurj, hnorm, U, hU, hUiso⟩ :=
    wcpa_dj_sgf_normalization k Z (ιZ ≫ Limits.pullback.fst sY (wcProjKStr k N) ≫ sY)
  haveI := hCint
  haveI := hbfin
  haveI := hbsurj
  have hpZne : (ιZ ≫ Limits.pullback.fst sY (wcProjKStr k N)) ⁻¹ᵁ
      (Limits.pullback.fst g ρ ⁻¹ᵁ O) ≠ ⊥ := by
    obtain ⟨y, hy⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty _).mp hO''ne
    obtain ⟨z, hz⟩ := (ιZ ≫ Limits.pullback.fst sY (wcProjKStr k N)).surjective y
    refine (TopologicalSpace.Opens.ne_bot_iff_nonempty _).mpr ⟨z, ?_⟩
    rw [SetLike.mem_coe, Scheme.Hom.mem_preimage, hz]
    exact hy
  obtain ⟨V, hV, _, hViso⟩ := wcpa_dj_gcl_iso_locus b
    (ιZ ≫ Limits.pullback.fst sY (wcProjKStr k N)) (Limits.pullback.fst g ρ ⁻¹ᵁ O)
    ⟨U, hU, hUiso⟩ hpZiso hpZne
  haveI := hViso
  have hproj := wcpa_dj_gs_finite_proj k b _ hbfin hZproj
  have hA : (b ≫ ιZ ≫ Limits.pullback.fst sY (wcProjKStr k N)) ≫ sY =
      (b ≫ ιZ ≫ Limits.pullback.snd sY (wcProjKStr k N)) ≫ wcProjKStr k N := by
    simp only [Category.assoc]
    rw [hcond]
  have hlift : Limits.pullback.lift (b ≫ ιZ ≫ Limits.pullback.fst sY (wcProjKStr k N))
      (b ≫ ιZ ≫ Limits.pullback.snd sY (wcProjKStr k N)) hA = b ≫ ιZ := by
    apply Limits.pullback.hom_ext
    · rw [Limits.pullback.lift_fst, Category.assoc]
    · rw [Limits.pullback.lift_snd, Category.assoc]
  have hfin : IsFinite (Limits.pullback.lift (b ≫ ιZ ≫ Limits.pullback.fst sY (wcProjKStr k N))
      (b ≫ ιZ ≫ Limits.pullback.snd sY (wcProjKStr k N)) hA) := by
    rw [hlift]; infer_instance
  have e2 : ((b ∣_ ((ιZ ≫ Limits.pullback.fst sY (wcProjKStr k N)) ⁻¹ᵁ
        (Limits.pullback.fst g ρ ⁻¹ᵁ O))) ≫
      ((ιZ ≫ Limits.pullback.fst sY (wcProjKStr k N)) ∣_ (Limits.pullback.fst g ρ ⁻¹ᵁ O))) ≫
      (Limits.pullback.fst g ρ ∣_ O) ≫ a =
      (b ⁻¹ᵁ ((ιZ ≫ Limits.pullback.fst sY (wcProjKStr k N)) ⁻¹ᵁ
        (Limits.pullback.fst g ρ ⁻¹ᵁ O))).ι ≫ b ≫ ιZ ≫ Limits.pullback.snd sY (wcProjKStr k N) := by
    rw [Category.assoc, ← hagr, morphismRestrict_ι_assoc]
  subst hsY
  refine ⟨C, hCint, b ≫ ιZ ≫ Limits.pullback.fst _ _, b ≫ ιZ ≫ Limits.pullback.snd _ _,
    ⟨hnorm, ⟨hA, hfin⟩, ⟨V, hV, hViso⟩, ?_⟩, inferInstance, inferInstance,
    ⟨V, hV, inferInstance⟩, ?_⟩
  · rw [morphismRestrict_comp]
    exact e2.symm
  · simpa only [Category.assoc] using hproj

theorem wcpa_dj_glt_os_params_ne_zero : ∀ (X T : Scheme.{u}) (f : X ⟶ T) [Flat f] (x : X) (n : ℕ)
    (t : Fin n → T.presheaf.stalk (f x)), IsRegularLocalRing (T.presheaf.stalk (f x)) →
    (n : WithBot ℕ∞) = ringKrullDim (T.presheaf.stalk (f x)) →
    Ideal.span (Set.range t) = IsLocalRing.maximalIdeal (T.presheaf.stalk (f x)) →
    ∀ l, (f.stalkMap x).hom (t l) ≠ 0 :=
by
  intro X T f _ x n t hreg hdim hspan l
  classical
  have ht0 : t l ≠ 0 := by
    intro h0
    have hfin : (Set.range t).Finite := Set.finite_range t
    have hcard : (Set.range t).ncard ≤ n := by
      rw [← Set.image_univ]
      calc (t '' Set.univ).ncard ≤ (Set.univ : Set (Fin n)).ncard :=
            Set.ncard_image_le Set.finite_univ
        _ = n := by rw [Set.ncard_univ, Nat.card_fin]
    have hmem : (0 : T.presheaf.stalk (f x)) ∈ Set.range t := ⟨l, h0⟩
    have hlt : (Set.range t \ {0}).ncard < (Set.range t).ncard :=
      Set.ncard_sdiff_singleton_lt_of_mem hmem hfin
    have hsp : Submodule.span (T.presheaf.stalk (f x)) (Set.range t \ {0}) =
        IsLocalRing.maximalIdeal (T.presheaf.stalk (f x)) := by
      rw [Submodule.span_sdiff_singleton_zero]; exact hspan
    have hle := Submodule.spanFinrank_span_le_ncard_of_finite (R := T.presheaf.stalk (f x))
      (hfin.sdiff (t := ({0} : Set (T.presheaf.stalk (f x)))))
    rw [hsp] at hle
    have hreg' := hreg.spanFinrank_maximalIdeal
    rw [← hdim] at hreg'
    have heq : Submodule.spanFinrank (IsLocalRing.maximalIdeal (T.presheaf.stalk (f x))) = n := by
      exact_mod_cast hreg'
    omega
  have hflat : (f.stalkMap x).hom.Flat := Flat.stalkMap f x
  letI : Algebra (T.presheaf.stalk (f x)) (X.presheaf.stalk x) := (f.stalkMap x).hom.toAlgebra
  haveI : Module.Flat (T.presheaf.stalk (f x)) (X.presheaf.stalk x) :=
    RingHom.flat_algebraMap_iff.mp hflat
  haveI : IsLocalHom (algebraMap (T.presheaf.stalk (f x)) (X.presheaf.stalk x)) :=
    (inferInstance : IsLocalHom (f.stalkMap x).hom)
  haveI : Module.FaithfullyFlat (T.presheaf.stalk (f x)) (X.presheaf.stalk x) :=
    Module.FaithfullyFlat.of_flat_of_isLocalHom
  have hinj : Function.Injective (algebraMap (T.presheaf.stalk (f x)) (X.presheaf.stalk x)) :=
    FaithfulSMul.algebraMap_injective _ _
  intro h
  apply ht0
  apply hinj
  rw [map_zero]
  exact h

theorem wcpa_dj_glt_os_generic_in_dom : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra) (hτ : ∀ j, τ j ≫ g = 𝟙 S)
    (S'' : Scheme.{u}) [AlgebraicGeometry.IsIntegral S''] (ρ : S'' ⟶ S) (D'' : Set S''),
    wcpaDjGcHyp k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' →
    ∀ [AlgebraicGeometry.IsIntegral (Limits.pullback g ρ)] (i₀ : Fin (N + 1)), i₀ ∈ I →
    genericPoint (Limits.pullback g ρ : Scheme.{u}) ∈ (Limits.pullback.fst g ρ ⁻¹ᵁ O).ι ''ᵁ
      (((Limits.pullback.fst g ρ ∣_ O) ≫ a) ⁻¹ᵁ @Proj.basicOpen _ _ _ _ _
        (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) MvPolynomial.gradedAlgebra
        (MvPolynomial.X i₀)) :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hτ S'' _ ρ D'' H _ i₀ hi₀
  obtain ⟨⟨_, _, hss, _, hτs, hW, _, _, _, _, _, hO, _, _, hC2⟩,
    _, _, hρs, _⟩ := H
  haveI : Flat g := hss.1
  haveI : IsProper g := hss.2.1
  haveI : Surjective ρ := hρs

  have hDcl : IsClosed ((W : Set S)ᶜ) := W.isOpen.isClosed_compl
  have hDne : (W : Set S)ᶜ ≠ Set.univ := by
    intro h0
    obtain ⟨s, hs⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty W).mp hW
    have hs' : s ∈ (W : Set S)ᶜ := by rw [h0]; exact Set.mem_univ s
    exact hs' hs
  have hηY := (wcpa_dj_ts_boundary S Y g m τ ((W : Set S)ᶜ) inferInstance inferInstance hτs
    hDcl hDne).2

  have hηW : g (genericPoint Y) ∈ W := by
    by_contra hn
    exact hηY (Or.inl hn)
  have hηO : genericPoint Y ∈ O := hO ((Scheme.Hom.mem_preimage g).mpr hηW)
  let o : O.toScheme := ⟨genericPoint Y, hηO⟩

  have hao : a o ∈ @Proj.basicOpen _ _ _ _ _
      (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) MvPolynomial.gradedAlgebra
      (MvPolynomial.X i₀) := by
    by_contra hno
    have h2 := hC2 o ⟨i₀, hi₀, hno⟩
    have e : O.ι o = genericPoint Y := rfl
    rw [e] at h2
    apply hηY
    rcases h2 with h | h
    · exact Or.inr h
    · exact Or.inl h

  obtain ⟨w, hw⟩ := (Limits.pullback.fst g ρ).surjective (genericPoint Y)
  have hwO : w ∈ Limits.pullback.fst g ρ ⁻¹ᵁ O := by
    rw [Scheme.Hom.mem_preimage, hw]; exact hηO
  let w' : (Limits.pullback.fst g ρ ⁻¹ᵁ O).toScheme := ⟨w, hwO⟩
  have hw'o : (Limits.pullback.fst g ρ ∣_ O) w' = o := by
    apply Subtype.ext
    rw [morphismRestrict_base_coe]
    exact hw
  have hw'mem : w' ∈ ((Limits.pullback.fst g ρ ∣_ O) ≫ a) ⁻¹ᵁ @Proj.basicOpen _ _ _ _ _
      (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) MvPolynomial.gradedAlgebra
      (MvPolynomial.X i₀) := by
    rw [Scheme.Hom.mem_preimage, Scheme.Hom.comp_apply, hw'o]
    exact hao
  have hwV : w ∈ (Limits.pullback.fst g ρ ⁻¹ᵁ O).ι ''ᵁ
      (((Limits.pullback.fst g ρ ∣_ O) ≫ a) ⁻¹ᵁ @Proj.basicOpen _ _ _ _ _
        (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) MvPolynomial.gradedAlgebra
        (MvPolynomial.X i₀)) := by
    rw [← SetLike.mem_coe, Scheme.Hom.coe_image]
    exact ⟨w', hw'mem, rfl⟩

  exact (genericPoint_specializes w).mem_open (TopologicalSpace.Opens.isOpen _) hwV

theorem wcpa_dj_glt_os_ratio_spread : ∀ (T : Scheme.{u}) [AlgebraicGeometry.IsIntegral T]
    (V₀ : T.Opens), genericPoint T ∈ V₀ → ∀ (y : T) (W' : T.Opens), y ∈ W' →
    ∀ (N : ℕ) (I : Finset (Fin (N + 1))) (k₀ : Fin (N + 1)) (r : Fin (N + 1) → Γ(T, V₀))
      (num den F : Fin (N + 1) → T.presheaf.stalk y), k₀ ∈ I →
    (∀ i ∈ I, wcpaDjStcRatioLink (r i) y (num i) (den i)) →
    (∀ i ∈ I, F i * num k₀ * den i = num i * den k₀) →
    ∃ (U : T.Opens) (_ : y ∈ U) (_ : U ≤ W') (φ : Fin (N + 1) → Γ(T, U)), φ k₀ = 1 ∧
      ∀ i ∈ I, (T.presheaf.map (homOfLE (inf_le_left : U ⊓ V₀ ≤ U)).op).hom (φ i) *
        (T.presheaf.map (homOfLE (inf_le_right : U ⊓ V₀ ≤ V₀)).op).hom (r k₀) =
        (T.presheaf.map (homOfLE (inf_le_right : U ⊓ V₀ ≤ V₀)).op).hom (r i) :=
by
  intro T _ V₀ hηV₀ y W' hyW' N I k₀ r num den F hk₀ hRL hFR
  classical

  have hsp : ∀ (w : T) (h : w ⤳ y) (d : T.presheaf.stalk y), d ≠ 0 →
      (T.presheaf.stalkSpecializes h).hom d ≠ 0 := by
    intro w h d hd hsd
    obtain ⟨U', hyU', s, hs⟩ := T.presheaf.exists_germ_eq d
    have hwU' : w ∈ U' := h.mem_open U'.isOpen hyU'
    have e1 : (T.presheaf.germ U' w hwU').hom s = 0 := by
      rw [← TopCat.Presheaf.germ_stalkSpecializes_apply T.presheaf hyU' h s]
      rw [hs]
      exact hsd
    have hs0 : s = 0 := by
      apply germ_injective_of_isIntegral T w hwU'
      rw [e1, map_zero]
    apply hd
    rw [← hs, hs0, map_zero]

  have hrep : ∀ i, ∃ (Ui : T.Opens) (hyUi : y ∈ Ui) (si : Γ(T, Ui)),
      (T.presheaf.germ Ui y hyUi).hom si = F i :=
    fun i => T.presheaf.exists_germ_eq (F i)
  choose Ui hyUi si hsi using hrep
  let U : T.Opens := W' ⊓ ⨅ i, Ui i
  have hle : ∀ i, U ≤ Ui i := fun i => inf_le_right.trans (iInf_le _ i)
  have hyU : y ∈ U := by
    refine TopologicalSpace.Opens.mem_inf.mpr ⟨hyW', ?_⟩
    rw [← SetLike.mem_coe, TopologicalSpace.Opens.coe_iInf]
    exact Set.mem_iInter.mpr hyUi
  let σ : Fin (N + 1) → Γ(T, U) := fun i => (T.presheaf.map (homOfLE (hle i)).op).hom (si i)
  have hσ : ∀ i, (T.presheaf.germ U y hyU).hom (σ i) = F i := by
    intro i
    simp only [σ]
    rw [TopCat.Presheaf.germ_res_apply]
    exact hsi i
  refine ⟨U, hyU, inf_le_left, Function.update σ k₀ 1, Function.update_self _ _ _, ?_⟩
  intro i hi
  by_cases hik : i = k₀
  · subst hik
    rw [Function.update_self, map_one, one_mul]
  · rw [Function.update_of_ne hik]
    have hηy : genericPoint T ⤳ y := genericPoint_specializes y
    have hηU : genericPoint T ∈ U := hηy.mem_open U.isOpen hyU
    have hηUV : genericPoint T ∈ U ⊓ V₀ := TopologicalSpace.Opens.mem_inf.mpr ⟨hηU, hηV₀⟩
    apply germ_injective_of_isIntegral T (genericPoint T) hηUV
    rw [map_mul]
    repeat rw [TopCat.Presheaf.germ_res_apply]
    rw [← TopCat.Presheaf.germ_stalkSpecializes_apply T.presheaf (hyUi i) hηy, hsi i]
    obtain ⟨hdi, hli⟩ := hRL i hi
    obtain ⟨hdk, hlk⟩ := hRL k₀ hk₀
    have e1 := hli (genericPoint T) hηV₀ hηy
    have e2 := hlk (genericPoint T) hηV₀ hηy
    have e3 := congrArg (T.presheaf.stalkSpecializes hηy).hom (hFR i hi)
    simp only [map_mul] at e3
    have hDi := hsp (genericPoint T) hηy _ (nonZeroDivisors.ne_zero hdi)
    have hDk := hsp (genericPoint T) hηy _ (nonZeroDivisors.ne_zero hdk)
    apply mul_right_cancel₀ (mul_ne_zero hDi hDk)
    linear_combination (-(T.presheaf.stalkSpecializes hηy).hom (den k₀)) * e1 +
      ((T.presheaf.stalkSpecializes hηy).hom (F i) *
        (T.presheaf.stalkSpecializes hηy).hom (den i)) * e2 + e3

theorem wcpa_dj_glt_os_chart_extend : ∀ (k : Type u) [Field k] (N : ℕ) (T : Scheme.{u})
    [AlgebraicGeometry.IsIntegral T] (sT : T ⟶ Spec (.of k)) (O' : T.Opens)
    (a' : O'.toScheme ⟶ wcProjK k N) (I : Finset (Fin (N + 1))) (i₀ k₀ : Fin (N + 1)),
    i₀ ∈ I → k₀ ∈ I → a' ≫ wcProjKStr k N = O'.ι ≫ sT →
    (∀ c (i : Fin (N + 1)), i ∉ I → a' c ∉ wcSgD k N i) →
    ∀ (U : T.Opens) (φ : Fin (N + 1) → Γ(T, U)), φ k₀ = 1 →
    genericPoint T ∈ U ⊓ O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀) →
    (∀ i ∈ I, (T.presheaf.map (homOfLE (inf_le_left :
        U ⊓ O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀) ≤ U)).op).hom (φ i) *
      (T.presheaf.map (homOfLE (inf_le_right : U ⊓ O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀) ≤
        O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀))).op).hom (wcpaDjStcRatioSec k O' a' i₀ k₀) =
      (T.presheaf.map (homOfLE (inf_le_right : U ⊓ O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀) ≤
        O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀))).op).hom (wcpaDjStcRatioSec k O' a' i₀ i)) →
    ∃ aT : U.toScheme ⟶ wcProjK k N, aT ≫ wcProjKStr k N = U.ι ≫ sT ∧
      T.homOfLE (inf_le_left : U ⊓ O' ≤ U) ≫ aT = T.homOfLE (inf_le_right : U ⊓ O' ≤ O') ≫ a' :=
by
  intro k _ N T _ sT O' a' I i₀ k₀ hi₀ hk₀ hstr hC1 U φ hφk hη hRel
  classical

  have hAM : ∀ {X Y : Scheme.{u}} (f : X ⟶ Y) (U₁ : Y.Opens) (V V' : X.Opens) (hVV : V' ≤ V)
      (e : V ≤ f ⁻¹ᵁ U₁) (e' : V' ≤ f ⁻¹ᵁ U₁) (y : Γ(Y, U₁)),
      X.presheaf.map (homOfLE hVV).op (f.appLE U₁ V e y) = f.appLE U₁ V' e' y := by
    intro X Y f U₁ V V' hVV e e' y
    rw [← CommRingCat.comp_apply, Scheme.Hom.appLE_map]
  have hMA : ∀ {X Y : Scheme.{u}} (f : X ⟶ Y) (U₁ U₂ : Y.Opens) (V : X.Opens) (hUU : U₁ ≤ U₂)
      (e : V ≤ f ⁻¹ᵁ U₁) (e' : V ≤ f ⁻¹ᵁ U₂) (y : Γ(Y, U₂)),
      f.appLE U₁ V e (Y.presheaf.map (homOfLE hUU).op y) = f.appLE U₂ V e' y := by
    intro X Y f U₁ U₂ V hUU e e' y
    rw [← CommRingCat.comp_apply, Scheme.Hom.map_appLE]
  have hCC : ∀ {X Y Z : Scheme.{u}} (f : X ⟶ Y) (g : Y ⟶ Z) (U₁ : Z.Opens) (V : Y.Opens)
      (W : X.Opens) (e₁ : V ≤ g ⁻¹ᵁ U₁) (e₂ : W ≤ f ⁻¹ᵁ V) (e : W ≤ (f ≫ g) ⁻¹ᵁ U₁)
      (x : Γ(Z, U₁)), (f ≫ g).appLE U₁ W e x = f.appLE V W e₂ (g.appLE U₁ V e₁ x) := by
    intro X Y Z f g U₁ V W e₁ e₂ e x
    rw [← Scheme.Hom.appLE_comp_appLE f g U₁ V W e₁ e₂]
    rfl
  have hTop : ∀ {X Y : Scheme.{u}} (f : X ⟶ Y) (V : X.Opens) (hV : V ≤ ⊤) (e : V ≤ f ⁻¹ᵁ ⊤)
      (y : Γ(Y, ⊤)), X.presheaf.map (homOfLE hV).op (f.appTop y) = f.appLE ⊤ V e y := by
    intros; rfl
  have hPP : ∀ {X : Scheme.{u}} {A B C D : X.Opens} (f1 : Opposite.op A ⟶ Opposite.op B)
      (f2 : Opposite.op B ⟶ Opposite.op D) (g1 : Opposite.op A ⟶ Opposite.op C)
      (g2 : Opposite.op C ⟶ Opposite.op D) (x : Γ(X, A)),
      X.presheaf.map f2 (X.presheaf.map f1 x) = X.presheaf.map g2 (X.presheaf.map g1 x) := by
    intro X A B C D f1 f2 g1 g2 x
    rw [← CommRingCat.comp_apply, ← CommRingCat.comp_apply, ← Functor.map_comp,
      ← Functor.map_comp, Subsingleton.elim (f1 ≫ f2) (g1 ≫ g2)]
  have hP1 : ∀ {X : Scheme.{u}} {A B C : X.Opens} (f : Opposite.op A ⟶ Opposite.op C)
      (g1 : Opposite.op A ⟶ Opposite.op B) (g2 : Opposite.op B ⟶ Opposite.op C) (x : Γ(X, A)),
      X.presheaf.map f x = X.presheaf.map g2 (X.presheaf.map g1 x) := by
    intro X A B C f g1 g2 x
    rw [← CommRingCat.comp_apply, ← Functor.map_comp, Subsingleton.elim f (g1 ≫ g2)]
  have hVO : O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀) ≤ O' := Scheme.Opens.ι_image_le O' _

  obtain ⟨t, ht_def⟩ : ∃ t : Fin (N + 1) → Γ(U.toScheme, ⊤),
      ∀ J, t J = if J ∈ I then U.topIso.inv (φ J) else 0 := ⟨_, fun _ => rfl⟩
  have htk : t k₀ = 1 := by rw [ht_def, if_pos hk₀, hφk, map_one]
  have ht : Ideal.span (Set.range t) = ⊤ :=
    Ideal.eq_top_of_isUnit_mem _ (Ideal.subset_span ⟨k₀, htk⟩) isUnit_one
  obtain ⟨aT, haTstr, -, haTrel⟩ := wc_ldpi_oai_proj_lift k N U.toScheme (U.ι ≫ sT) t ht

  have core : ∀ (Z : T.Opens) (hZU : Z ≤ U) (hZV : Z ≤ O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀)),
      (∀ i ∈ I, T.presheaf.map (homOfLE hZU).op (φ i) *
        T.presheaf.map (homOfLE hZV).op (wcpaDjStcRatioSec k O' a' i₀ k₀) =
        T.presheaf.map (homOfLE hZV).op (wcpaDjStcRatioSec k O' a' i₀ i)) →
      T.homOfLE hZU ≫ aT = T.homOfLE (hZV.trans hVO) ≫ a' := by
    intro Z hZU hZV hRelZ
    have hZO : Z ≤ O' := hZV.trans hVO
    haveI : AlgebraicGeometry.IsReduced Z.toScheme := isReduced_of_isOpenImmersion Z.ι

    have hrel1 : ∀ J L (O : Z.toScheme.Opens) (hO : O ≤ (T.homOfLE hZU ≫ aT) ⁻¹ᵁ wcSgD k N J)
        (hOW : O ≤ ⊤),
        (T.homOfLE hZU ≫ aT).appLE (wcSgD k N J) O hO (wcSgE k N J L) *
          Z.toScheme.presheaf.map (homOfLE hOW).op ((T.homOfLE hZU).appTop (t J)) =
        Z.toScheme.presheaf.map (homOfLE hOW).op ((T.homOfLE hZU).appTop (t L)) := by
      intro J L O hO hOW
      have hO' : O ≤ T.homOfLE hZU ⁻¹ᵁ (aT ⁻¹ᵁ wcSgD k N J) := by
        rw [← Scheme.Hom.comp_preimage]; exact hO
      have hOT : O ≤ T.homOfLE hZU ⁻¹ᵁ ⊤ := fun _ _ => trivial
      have e1 := congrArg (ConcreteCategory.hom
        ((T.homOfLE hZU).appLE (aT ⁻¹ᵁ wcSgD k N J) O hO'))
        (haTrel J L (aT ⁻¹ᵁ wcSgD k N J) le_rfl)
      rw [map_mul, hMA _ _ ⊤ _ le_top hO' hOT, hMA _ _ ⊤ _ le_top hO' hOT] at e1
      rw [hTop _ O hOW hOT, hTop _ O hOW hOT,
        hCC (T.homOfLE hZU) aT (wcSgD k N J) (aT ⁻¹ᵁ wcSgD k N J) O le_rfl hO' hO]
      exact e1

    have h0 : ⊤ ≤ (T.homOfLE hZO ≫ a') ⁻¹ᵁ wcSgD k N i₀ := by
      intro x _
      rw [Scheme.Hom.mem_preimage, Scheme.Hom.comp_apply]
      have hx : x.1 ∈ ((O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀) : T.Opens) : Set T) := hZV x.2
      rw [Scheme.Hom.coe_image] at hx
      obtain ⟨o, ho, hox⟩ := hx
      have hxo : T.homOfLE hZO x = o := by
        apply Subtype.ext
        first
          | exact (Scheme.homOfLE_apply hZO x).trans (hox.symm.trans (Scheme.Opens.ι_apply O' o))
          | (erw [Scheme.homOfLE_apply, ← hox, Scheme.Opens.ι_apply])
      rw [hxo]
      exact ho
    have h0' : ⊤ ≤ T.homOfLE hZO ⁻¹ᵁ (a' ⁻¹ᵁ wcSgD k N i₀) := by
      rw [← Scheme.Hom.comp_preimage]; exact h0
    have hbridge : ∀ i, (T.homOfLE hZO ≫ a').appLE (wcSgD k N i₀) ⊤ h0 (wcSgE k N i₀ i) =
        Z.topIso.inv (T.presheaf.map (homOfLE hZV).op (wcpaDjStcRatioSec k O' a' i₀ i)) := by
      intro i
      rw [hCC (T.homOfLE hZO) a' (wcSgD k N i₀) (a' ⁻¹ᵁ wcSgD k N i₀) ⊤ le_rfl h0' h0,
        Scheme.homOfLE_appLE, Scheme.Hom.appLE_eq_app, Scheme.Opens.topIso_inv]
      unfold wcpaDjStcRatioSec
      rw [Scheme.Opens.ι_appIso, Iso.refl_inv]
      exact hP1 _ _ _ _

    have htr : ∀ i ∈ I, (T.homOfLE hZU).appTop (t i) =
        Z.topIso.inv (T.presheaf.map (homOfLE hZU).op (φ i)) := by
      intro i hi
      rw [ht_def, if_pos hi, Scheme.homOfLE_appTop, Scheme.Opens.topIso_inv,
        Scheme.Opens.topIso_inv]
      exact hPP _ _ _ _ _
    have htz : ∀ J, J ∉ I → (T.homOfLE hZU).appTop (t J) = 0 := by
      intro J hJ
      rw [ht_def, if_neg hJ, map_zero]

    have hrelZ : ∀ i ∈ I, (T.homOfLE hZU).appTop (t i) *
        (T.homOfLE hZO ≫ a').appLE (wcSgD k N i₀) ⊤ h0 (wcSgE k N i₀ k₀) =
        (T.homOfLE hZO ≫ a').appLE (wcSgD k N i₀) ⊤ h0 (wcSgE k N i₀ i) := by
      intro i hi
      rw [htr i hi, hbridge k₀, hbridge i, ← map_mul]
      exact congrArg (fun x => Z.topIso.inv x) (hRelZ i hi)

    have hbot : ∀ i, i ∉ I → (T.homOfLE hZO ≫ a') ⁻¹ᵁ wcSgD k N i = ⊥ := by
      intro i hi
      rw [eq_bot_iff]
      intro x hx
      rw [Scheme.Hom.mem_preimage, Scheme.Hom.comp_apply] at hx
      exact absurd hx (hC1 _ i hi)
    have hzero : ∀ (O₁ : Z.toScheme.Opens) (x : Γ(Z.toScheme, O₁)), O₁ ≤ ⊥ → x = 0 := by
      intro O₁ x hO₁
      rw [← basicOpen_eq_bot_iff]
      exact le_bot_iff.mp ((Z.toScheme.basicOpen_le x).trans hO₁)
    have hrel2 : ∀ J L (O : Z.toScheme.Opens) (hO : O ≤ (T.homOfLE hZO ≫ a') ⁻¹ᵁ wcSgD k N J)
        (hOW : O ≤ ⊤),
        (T.homOfLE hZO ≫ a').appLE (wcSgD k N J) O hO (wcSgE k N J L) *
          Z.toScheme.presheaf.map (homOfLE hOW).op ((T.homOfLE hZU).appTop (t J)) =
        Z.toScheme.presheaf.map (homOfLE hOW).op ((T.homOfLE hZU).appTop (t L)) := by
      intro J L O hO hOW
      by_cases hJ : J ∈ I
      · by_cases hL : L ∈ I
        ·
          have h0O : O ≤ (T.homOfLE hZO ≫ a') ⁻¹ᵁ wcSgD k N i₀ := hOW.trans h0
          have hrelO : ∀ i ∈ I,
              Z.toScheme.presheaf.map (homOfLE hOW).op ((T.homOfLE hZU).appTop (t i)) *
                (T.homOfLE hZO ≫ a').appLE (wcSgD k N i₀) O h0O (wcSgE k N i₀ k₀) =
              (T.homOfLE hZO ≫ a').appLE (wcSgD k N i₀) O h0O (wcSgE k N i₀ i) := by
            intro i hi
            have e2 := congrArg (ConcreteCategory.hom
              (Z.toScheme.presheaf.map (homOfLE hOW).op)) (hrelZ i hi)
            rw [map_mul, hAM _ _ _ _ hOW h0 h0O, hAM _ _ _ _ hOW h0 h0O] at e2
            exact e2
          have hone : (T.homOfLE hZO ≫ a').appLE (wcSgD k N i₀) O h0O (wcSgE k N i₀ i₀) = 1 := by
            rw [((wcpa_dj_gsfp_chart_facts k N).2 i₀ i₀ i₀).1, map_one]
          have hu : IsUnit ((T.homOfLE hZO ≫ a').appLE (wcSgD k N i₀) O h0O
              (wcSgE k N i₀ k₀)) := by
            have e3 := hrelO i₀ hi₀
            rw [hone, mul_comm] at e3
            exact IsUnit.of_mul_eq_one _ e3
          have hQ : O ≤ (T.homOfLE hZO ≫ a') ⁻¹ᵁ (wcSgD k N i₀ ⊓ wcSgD k N J) := by
            rw [Scheme.Hom.preimage_inf]; exact le_inf h0O hO
          have hcoc := congrArg (ConcreteCategory.hom
            ((T.homOfLE hZO ≫ a').appLE (wcSgD k N i₀ ⊓ wcSgD k N J) O hQ))
            ((wcpa_dj_gsfp_chart_facts k N).2 i₀ J L).2.2
          rw [map_mul, hMA _ _ _ _ inf_le_left hQ h0O, hMA _ _ _ _ inf_le_left hQ h0O,
            hMA _ _ _ _ inf_le_right hQ hO] at hcoc
          apply (IsUnit.mul_left_inj hu).mp
          linear_combination
            (T.homOfLE hZO ≫ a').appLE (wcSgD k N J) O hO (wcSgE k N J L) * hrelO J hJ -
            hrelO L hL - hcoc
        ·
          rw [htz L hL, map_zero]
          have hs : (T.homOfLE hZO ≫ a').appLE (wcSgD k N J) O hO (wcSgE k N J L) = 0 := by
            rw [← basicOpen_eq_bot_iff, Scheme.basicOpen_appLE,
              ((wcpa_dj_gsfp_chart_facts k N).2 J L J).2.1, Scheme.Hom.preimage_inf, hbot L hL]
            simp
          rw [hs, zero_mul]
      ·
        have hle : O ≤ ⊥ := hO.trans (hbot J hJ).le
        exact (hzero O _ hle).trans (hzero O _ hle).symm

    have hstr1 : (T.homOfLE hZU ≫ aT) ≫ wcProjKStr k N =
        (T.homOfLE hZO ≫ a') ≫ wcProjKStr k N := by
      rw [Category.assoc, Category.assoc, haTstr, hstr, Scheme.homOfLE_ι_assoc,
        Scheme.homOfLE_ι_assoc]
    have hgen : (⨆ J, Z.toScheme.basicOpen ((T.homOfLE hZU).appTop (t J))) = ⊤ := by
      apply le_antisymm le_top
      refine le_trans ?_ (le_iSup _ k₀)
      show ⊤ ≤ Z.toScheme.basicOpen ((T.homOfLE hZU).appTop (t k₀))
      rw [htk, map_one, Scheme.basicOpen_one]
    have huniq := wc_csd_proj_uniq_of_relations k N Z.toScheme ⊤ (T.homOfLE hZU ≫ aT)
      (T.homOfLE hZO ≫ a') (fun J => (T.homOfLE hZU).appTop (t J)) hstr1 hgen hrel1 hrel2
    haveI : IsIso (⊤ : Z.toScheme.Opens).ι := by
      rw [← Scheme.topIso_hom]; infer_instance
    exact (cancel_epi _).mp huniq

  refine ⟨aT, haTstr, ?_⟩
  have hZUO : U ⊓ O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀) ≤ U ⊓ O' :=
    le_inf inf_le_left (inf_le_right.trans hVO)
  have hcoreZ := core (U ⊓ O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀)) inf_le_left inf_le_right hRel
  haveI : IsSeparated (wcProjKStr k N) := by
    haveI := wc_proj_space_isProper k N
    infer_instance
  haveI : Nonempty (U ⊓ O').toScheme := ⟨⟨genericPoint T, hZUO hη⟩⟩
  haveI : AlgebraicGeometry.IsIntegral (U ⊓ O').toScheme :=
    isIntegral_of_isOpenImmersion (U ⊓ O').ι
  haveI : IsDominant (T.homOfLE hZUO) :=
    IsDominant.mk (IsOpen.dense (Scheme.Hom.isOpenEmbedding _).isOpen_range
      ⟨_, ⟨⟨genericPoint T, hη⟩, rfl⟩⟩)
  refine ext_of_isDominant_of_isSeparated (wcProjKStr k N) ?_ (T.homOfLE hZUO) ?_
  · rw [Category.assoc, Category.assoc, haTstr, hstr, Scheme.homOfLE_ι_assoc,
      Scheme.homOfLE_ι_assoc]
  · rw [← Category.assoc, ← Category.assoc, Scheme.homOfLE_homOfLE, Scheme.homOfLE_homOfLE]
    exact hcoreZ

theorem wcpa_dj_glt_os_factor_agree : ∀ (C T P B : Scheme.{u}) [AlgebraicGeometry.IsIntegral C]
    (π : C ⟶ T) (U O' : T.Opens) (A : C ⟶ P) (aT : U.toScheme ⟶ P) (a' : O'.toScheme ⟶ P)
    (s : P ⟶ B) [IsSeparated s], (π ⁻¹ᵁ O').ι ≫ A = (π ∣_ O') ≫ a' →
    T.homOfLE (inf_le_left : U ⊓ O' ≤ U) ≫ aT = T.homOfLE (inf_le_right : U ⊓ O' ≤ O') ≫ a' →
    (π ⁻¹ᵁ U).ι ≫ A ≫ s = (π ∣_ U) ≫ aT ≫ s →
    ((π ⁻¹ᵁ (U ⊓ O') : C.Opens) : Set C).Nonempty →
    (π ⁻¹ᵁ U).ι ≫ A = (π ∣_ U) ≫ aT :=
by
  intro C T P B _ π U O' A aT a' s _ h1 h2 h3 h4
  have hWV : π ⁻¹ᵁ (U ⊓ O') ≤ π ⁻¹ᵁ U := π.preimage_mono inf_le_left
  have hWO : π ⁻¹ᵁ (U ⊓ O') ≤ π ⁻¹ᵁ O' := π.preimage_mono inf_le_right
  haveI : IsReduced (π ⁻¹ᵁ U).toScheme := isReduced_of_isOpenImmersion (π ⁻¹ᵁ U).ι
  haveI : IrreducibleSpace C := irreducibleSpace_of_isIntegral C
  haveI : IsDominant (C.homOfLE hWV) := by
    constructor
    have hd : Dense ((π ⁻¹ᵁ (U ⊓ O') : C.Opens) : Set C) := (π ⁻¹ᵁ (U ⊓ O')).isOpen.dense h4
    have hd2 : Dense ((π ⁻¹ᵁ U).ι ⁻¹' ((π ⁻¹ᵁ (U ⊓ O') : C.Opens) : Set C)) :=
      hd.preimage (π ⁻¹ᵁ U).ι.isOpenEmbedding.isOpenMap
    refine hd2.mono ?_
    rintro x hx
    refine ⟨⟨(π ⁻¹ᵁ U).ι x, hx⟩, ?_⟩
    apply Subtype.ext
    (try simp only [Scheme.homOfLE_apply])
    first
      | rfl
      | exact Scheme.Opens.ι_apply _ _
      | exact (Scheme.Opens.ι_apply _ _).symm
      | simp
  refine ext_of_isDominant_of_isSeparated s ?_ (C.homOfLE hWV) ?_
  · simpa only [Category.assoc] using h3
  · calc C.homOfLE hWV ≫ (π ⁻¹ᵁ U).ι ≫ A = (π ⁻¹ᵁ (U ⊓ O')).ι ≫ A := by
          rw [← Category.assoc, Scheme.homOfLE_ι]
      _ = C.homOfLE hWO ≫ (π ⁻¹ᵁ O').ι ≫ A := by
          rw [← Category.assoc, Scheme.homOfLE_ι]
      _ = C.homOfLE hWO ≫ (π ∣_ O') ≫ a' := by rw [h1]
      _ = (π ∣_ (U ⊓ O')) ≫ T.homOfLE (inf_le_right : U ⊓ O' ≤ O') ≫ a' := by
          rw [← Category.assoc, ← Category.assoc, morphismRestrict_homOfLE]
      _ = (π ∣_ (U ⊓ O')) ≫ T.homOfLE (inf_le_left : U ⊓ O' ≤ U) ≫ aT := by rw [h2]
      _ = C.homOfLE hWV ≫ (π ∣_ U) ≫ aT := by
          rw [← Category.assoc, ← Category.assoc, morphismRestrict_homOfLE]

theorem wcpa_dj_glt_os_finite_restrict : ∀ (k : Type u) [Field k] (N : ℕ) (T C : Scheme.{u})
    (sT : T ⟶ Spec (.of k)) (π : C ⟶ T) (A : C ⟶ wcProjK k N)
    (hA : π ≫ sT = A ≫ wcProjKStr k N), IsFinite (Limits.pullback.lift π A hA) →
    ∀ (U : T.Opens) (aT : U.toScheme ⟶ wcProjK k N), aT ≫ wcProjKStr k N = U.ι ≫ sT →
    (π ⁻¹ᵁ U).ι ≫ A = (π ∣_ U) ≫ aT → IsFinite (π ∣_ U) :=
by
  intro k _ N T C sT π A hA hL U aT hS hAg
  haveI := hL
  let Γ : U.toScheme ⟶ Limits.pullback sT (wcProjKStr k N) :=
    Limits.pullback.lift U.ι aT hS.symm
  have hΓ1 : Γ ≫ Limits.pullback.fst sT (wcProjKStr k N) = U.ι := Limits.pullback.lift_fst _ _ _
  have hΓ2 : Γ ≫ Limits.pullback.snd sT (wcProjKStr k N) = aT := Limits.pullback.lift_snd _ _ _
  have hrange : Set.range Γ ⊆
      Set.range (Limits.pullback.fst sT (wcProjKStr k N) ⁻¹ᵁ U).ι := by
    rw [Scheme.Opens.range_ι]
    rintro _ ⟨x, rfl⟩
    show Limits.pullback.fst sT (wcProjKStr k N) (Γ x) ∈ U
    rw [← Scheme.Hom.comp_apply, hΓ1]
    exact x.2
  let Γ' : U.toScheme ⟶ (Limits.pullback.fst sT (wcProjKStr k N) ⁻¹ᵁ U).toScheme :=
    IsOpenImmersion.lift (Limits.pullback.fst sT (wcProjKStr k N) ⁻¹ᵁ U).ι Γ hrange
  have hΓ3 : Γ' ≫ (Limits.pullback.fst sT (wcProjKStr k N) ⁻¹ᵁ U).ι = Γ :=
    IsOpenImmersion.lift_fac _ _ _
  have hsec : Γ' ≫ (Limits.pullback.fst sT (wcProjKStr k N) ∣_ U) = 𝟙 _ := by
    rw [← cancel_mono U.ι, Category.assoc, morphismRestrict_ι, ← Category.assoc, hΓ3, hΓ1,
      Category.id_comp]
  haveI : IsSeparated Γ' := by
    haveI : IsSeparated (Γ' ≫ (Limits.pullback.fst sT (wcProjKStr k N) ∣_ U)) := by
      rw [hsec]; infer_instance
    exact IsSeparated.of_comp Γ' (Limits.pullback.fst sT (wcProjKStr k N) ∣_ U)
  have hV : π ⁻¹ᵁ U = Limits.pullback.lift π A hA ⁻¹ᵁ
      (Limits.pullback.fst sT (wcProjKStr k N) ⁻¹ᵁ U) := by
    rw [← Scheme.Hom.comp_preimage, Limits.pullback.lift_fst]
  have hfac : (π ∣_ U) ≫ Γ' = (C.isoOfEq hV).hom ≫
      (Limits.pullback.lift π A hA ∣_ (Limits.pullback.fst sT (wcProjKStr k N) ⁻¹ᵁ U)) := by
    rw [← cancel_mono (Limits.pullback.fst sT (wcProjKStr k N) ⁻¹ᵁ U).ι, Category.assoc, hΓ3,
      Category.assoc, morphismRestrict_ι, Scheme.isoOfEq_hom_ι_assoc]
    apply Limits.pullback.hom_ext
    · rw [Category.assoc, hΓ1, morphismRestrict_ι, Category.assoc, Limits.pullback.lift_fst]
    · rw [Category.assoc, hΓ2, Category.assoc, Limits.pullback.lift_snd, hAg]
  haveI : IsFinite ((π ∣_ U) ≫ Γ') := by rw [hfac]; infer_instance
  exact IsFinite.of_comp (π ∣_ U) Γ'

theorem wcpa_dj_glt_os_iso_restrict : ∀ {X Y : Scheme.{u}} [IrreducibleSpace Y] (f : X ⟶ Y)
    (V U : Y.Opens), V ≠ ⊥ → U ≠ ⊥ → IsIso (f ∣_ V) →
    ∃ U'' : U.toScheme.Opens, U'' ≠ ⊥ ∧ IsIso ((f ∣_ U) ∣_ U'') :=
by
  intro X Y _ f V U hV hU hfV
  obtain ⟨y, hyU, hyV⟩ := nonempty_preirreducible_inter U.isOpen V.isOpen
    ((TopologicalSpace.Opens.ne_bot_iff_nonempty U).mp hU)
    ((TopologicalSpace.Opens.ne_bot_iff_nonempty V).mp hV)
  refine ⟨U.ι ⁻¹ᵁ V, ?_, ?_⟩
  · rw [TopologicalSpace.Opens.ne_bot_iff_nonempty]
    refine ⟨⟨y, hyU⟩, ?_⟩
    show U.ι ⟨y, hyU⟩ ∈ V
    simpa using hyV
  · have h₁ : U.ι ''ᵁ U.ι ⁻¹ᵁ V = U ⊓ V := by
      rw [Scheme.Hom.image_preimage_eq_opensRange_inf, Scheme.Opens.opensRange_ι]
    have h₂ : V.ι ''ᵁ V.ι ⁻¹ᵁ U = U ⊓ V := by
      rw [Scheme.Hom.image_preimage_eq_opensRange_inf, Scheme.Opens.opensRange_ι, inf_comm]
    have hVU : IsIso ((f ∣_ V) ∣_ (V.ι ⁻¹ᵁ U)) := inferInstance
    have e₂ := morphismRestrictRestrict f V (V.ι ⁻¹ᵁ U) ≪≫ morphismRestrictEq f h₂
    have e₁ := morphismRestrictRestrict f U (U.ι ⁻¹ᵁ V) ≪≫ morphismRestrictEq f h₁
    have hUV : IsIso (f ∣_ (U ⊓ V)) :=
      ((MorphismProperty.arrow_mk_iso_iff (MorphismProperty.isomorphisms Scheme) e₂).mp hVU)
    exact (MorphismProperty.arrow_mk_iso_iff (MorphismProperty.isomorphisms Scheme) e₁).mpr hUV

theorem wcpa_dj_glt_os_smooth_normal : ∀ (S Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral S]
    [IsLocallyNoetherian S] (g : Y ⟶ S) (y : Y),
    (∀ s : S, IsRegularLocalRing (S.presheaf.stalk s)) →
    (∃ W : Y.Opens, y ∈ W ∧ SmoothOfRelativeDimension 1 (W.ι ≫ g)) →
    IsIntegrallyClosed (Y.presheaf.stalk y) :=
by
  intro S Y _ _ g y hreg ⟨W, hyW, hWsm⟩
  obtain ⟨V, hVaff, hgyV, -⟩ := TopologicalSpace.Opens.isBasis_iff_nbhd.mp
    (Scheme.isBasis_affineOpens S) (show g y ∈ (⊤ : S.Opens) from trivial)
  have hV : IsAffineOpen V := hVaff
  haveI : Nonempty V := ⟨⟨g y, hgyV⟩⟩
  haveI : IsDomain Γ(S, V) := AlgebraicGeometry.IsIntegral.component_integral V
  haveI : IsNoetherianRing Γ(S, V) := IsLocallyNoetherian.component_noetherian ⟨V, hV⟩

  haveI : IsIntegrallyClosed Γ(S, V) := by
    apply IsIntegrallyClosed.of_localization_maximal
    intro p _ hp
    let q : PrimeSpectrum Γ(S, V) := ⟨p, hp.isPrime⟩
    have hz : hV.fromSpec q ∈ V := by
      have h1 : hV.fromSpec q ∈ Set.range hV.fromSpec := ⟨q, rfl⟩
      rw [hV.range_fromSpec] at h1
      exact h1
    letI : Algebra Γ(S, V) (S.presheaf.stalk (hV.fromSpec q)) :=
      TopCat.Presheaf.algebra_section_stalk S.presheaf ⟨hV.fromSpec q, hz⟩
    haveI hloc : IsLocalization.AtPrime (S.presheaf.stalk (hV.fromSpec q)) p :=
      hV.isLocalization_stalk' q hz
    haveI : IsRegularLocalRing (S.presheaf.stalk (hV.fromSpec q)) := hreg _
    obtain ⟨hd, hu⟩ := wc_fco_regular_local_ufd (S.presheaf.stalk (hV.fromSpec q))
    haveI := hd
    haveI := hu
    have e := IsLocalization.algEquiv p.primeCompl (Localization.AtPrime p)
      (S.presheaf.stalk (hV.fromSpec q))
    exact IsIntegrallyClosed.of_equiv e.symm.toRingEquiv
  haveI : SmoothOfRelativeDimension 1 (W.ι ≫ g) := hWsm
  haveI : Smooth (W.ι ≫ g) := SmoothOfRelativeDimension.smooth 1 (W.ι ≫ g)
  let f : ((W.ι ≫ g) ⁻¹ᵁ V).toScheme ⟶ Spec (.of Γ(S, V)) := ((W.ι ≫ g) ∣_ V) ≫ hV.isoSpec.hom
  haveI : Smooth f := inferInstance
  let y1 : W.toScheme := ⟨y, hyW⟩
  have hy1 : y1 ∈ (W.ι ≫ g) ⁻¹ᵁ V := by
    show (W.ι ≫ g) y1 ∈ V
    rw [Scheme.Hom.comp_apply]
    exact hgyV
  have hn := (wc_fntame_smooth_stalk_normal Γ(S, V) _ f ⟨y1, hy1⟩).2
  exact IsIntegrallyClosed.of_equiv
    ((((W.ι ≫ g) ⁻¹ᵁ V).stalkIso ⟨y1, hy1⟩) ≪≫ W.stalkIso y1).commRingCatIsoToRingEquiv

theorem wcpa_dj_glt_offsection_smooth : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra) (hτ : ∀ j, τ j ≫ g = 𝟙 S)
    (S'' : Scheme.{u}) [AlgebraicGeometry.IsIntegral S''] (ρ : S'' ⟶ S) (D'' : Set S''),
    wcpaDjGcHyp k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' →
    ∀ (C : Scheme.{u}) [AlgebraicGeometry.IsIntegral C] (π₅ : C ⟶ Limits.pullback g ρ)
      (A : C ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra),
      wcpaDjGcModel k sS g ρ O a π₅ A → IsProper π₅ →
      ∀ (c : C) (i₀ : Fin (N + 1)), i₀ ∈ I →
      ∀ (n : ℕ) (t : Fin n → S''.presheaf.stalk (Limits.pullback.snd g ρ (π₅ c)))
        (J : Finset (Fin n)) (α : Fin (N + 1) → ℤ) (β : Fin (N + 1) → Fin n → ℤ)
        (c₀ : Fin n → ℕ),
      wcpaDjStcMonoData (Limits.pullback.snd g ρ) m (wcpaDjStcLift g ρ τ hτ) D'' I
        (fun i => wcpaDjStcRatioSec k (Limits.pullback.fst g ρ ⁻¹ᵁ O)
          ((Limits.pullback.fst g ρ ∣_ O) ≫ a) i₀ i) (π₅ c) n t J α β c₀ →
      (∀ i ∈ I, ∀ j ∈ I, α i ≠ α j → ∀ l, (α i - α j) ∣ (β j l - β i l)) →
      (∀ v ∈ wcpaDjStcBreaks I α β c₀, ∀ w ∈ wcpaDjStcBreaks I α β c₀, v ≤ w ∨ w ≤ v) →
      c₀ = 0 → (∀ i, α i = 0) → π₅ c ∉ ⋃ j, Set.range (wcpaDjStcLift g ρ τ hτ j) →
      ∃ V : C.Opens, c ∈ V ∧ SmoothOfRelativeDimension 1 (V.ι ≫ π₅ ≫ Limits.pullback.snd g ρ) :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hτ S'' _ ρ D'' H C _ π₅ A hM hπ c i₀ hi₀ n t J α β
    c₀ hMono hO1 hO2 hc0 hα hyτ
  classical

  have H' := H
  obtain ⟨⟨hS, hY, hss, hmono, hτs, hW, hWsm, hWgc, hreg, hcomps, hWD, hO, hstr, hC1, hC2⟩,
    hρS, hρp, hρs, hρf, hreg'', hsnc'', hD'', hK⟩ := H'
  obtain ⟨hM1, ⟨hA, hLfin⟩, ⟨Viso, hViso, hVisoIso⟩, hM4⟩ := hM

  rcases hMono.2.2.2.2.2 with ⟨⟨l, hl⟩, -⟩ | ⟨-, -, j, z, hj, -⟩ |
      ⟨-, ⟨W', hyW', hW'sm⟩, -, -, hrat⟩
  · exact (hl (by simp [hc0])).elim
  · exact (hyτ (Set.mem_iUnion.mpr ⟨j, hj⟩)).elim
  choose! num den hlink hmon using hrat
  haveI hYint : AlgebraicGeometry.IsIntegral (Limits.pullback g ρ) :=
    wcpa_dj_tr_basechange_integral S S'' Y ρ g W hss.1 hρs hW hWsm hWgc
  haveI : Flat g := hss.1
  haveI : IsProper (ρ ≫ sS) := wcpa_dj_proj_proper k (ρ ≫ sS) hρS
  haveI : IsLocallyNoetherian S'' := LocallyOfFiniteType.isLocallyNoetherian (ρ ≫ sS)
  haveI : IsSeparated (wcProjKStr k N) := by
    haveI := wc_proj_space_isProper k N
    infer_instance
  have hA' : π₅ ≫ Limits.pullback.snd g ρ ≫ ρ ≫ sS = A ≫ wcProjKStr k N := hA

  obtain ⟨k₀, hk₀, hkmin0⟩ := Finset.exists_min_image I (fun i => ∑ l, β i l) ⟨i₀, hi₀⟩
  have hkmin : ∀ i ∈ I, ∀ l, β k₀ l ≤ β i l := by
    intro i hi
    have h0 : (0 : Fin n → ℚ) ∈ wcpaDjStcBreaks I α β c₀ := by
      unfold wcpaDjStcBreaks
      exact Set.mem_union_left _ (Set.mem_union_left _ (Set.mem_insert _ _))
    have hv : (fun l => ((β i l - β k₀ l : ℤ) : ℚ)) ∈ wcpaDjStcBreaks I α β c₀ := by
      unfold wcpaDjStcBreaks
      exact Set.mem_union_right _ ⟨i, hi, k₀, hk₀, by rw [hα i, hα k₀], rfl⟩
    rcases hO2 _ hv _ h0 with h | h
    · have hle : ∀ l, β i l - β k₀ l ≤ 0 := fun l => by
        have hl' : ((β i l - β k₀ l : ℤ) : ℚ) ≤ 0 := h l
        exact_mod_cast hl'
      have hsum : ∑ l, (β i l - β k₀ l) = 0 := by
        apply le_antisymm (Finset.sum_nonpos (fun l _ => hle l))
        rw [Finset.sum_sub_distrib]
        linarith [hkmin0 i hi]
      intro l
      have := (Finset.sum_eq_zero_iff_of_nonpos (fun l _ => hle l)).mp hsum l (Finset.mem_univ l)
      linarith
    · intro l
      have hl' : (0 : ℚ) ≤ ((β i l - β k₀ l : ℤ) : ℚ) := h l
      have : (0 : ℤ) ≤ β i l - β k₀ l := by exact_mod_cast hl'
      linarith

  have hs : ∀ l, ((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom (t l) ≠ 0 :=
    wcpa_dj_glt_os_params_ne_zero (Limits.pullback g ρ) S'' (Limits.pullback.snd g ρ) (π₅ c) n t
      (hreg'' _) hMono.1 hMono.2.1

  have s5 : ∀ (R : Type u) [CommRing R] [IsDomain R] (s : Fin n → R) (βi βk : Fin n → ℤ)
      (numi deni numk denk : R), (∀ l, s l ≠ 0) → (∀ l, βk l ≤ βi l) →
      wcpaDjStcMonRel (1 : R) s numi deni 0 βi → wcpaDjStcMonRel (1 : R) s numk denk 0 βk →
      ∃ F : R, F * numk * deni = numi * denk := by
    intro R _ _ s βi βk numi deni numk denk hs hle hi hk
    obtain ⟨wi, hwi⟩ := hi
    obtain ⟨wk, hwk⟩ := hk
    simp only [one_pow, mul_one] at hwi hwk
    have key : (∏ l, s l ^ (βi l - βk l).toNat) * (∏ l, s l ^ (βk l).toNat) *
        (∏ l, s l ^ (-βi l).toNat) = (∏ l, s l ^ (βi l).toNat) * (∏ l, s l ^ (-βk l).toNat) := by
      simp only [← Finset.prod_mul_distrib, ← pow_add]
      refine Finset.prod_congr rfl (fun l _ => ?_)
      congr 1
      have := hle l
      omega
    have hMi : (∏ l, s l ^ (-βi l).toNat) ≠ 0 :=
      Finset.prod_ne_zero_iff.mpr (fun l _ => pow_ne_zero _ (hs l))
    have hMk : (∏ l, s l ^ (-βk l).toNat) ≠ 0 :=
      Finset.prod_ne_zero_iff.mpr (fun l _ => pow_ne_zero _ (hs l))
    have hu : ((wk⁻¹ : Rˣ) : R) * (wk : R) = 1 := Units.inv_mul wk
    refine ⟨(wi : R) * ((wk⁻¹ : Rˣ) : R) * ∏ l, s l ^ (βi l - βk l).toNat,
      mul_right_cancel₀ (mul_ne_zero hMi hMk) ?_⟩
    linear_combination ((wi : R) * ((wk⁻¹ : Rˣ) : R) * (∏ l, s l ^ (βi l - βk l).toNat) * deni *
        (∏ l, s l ^ (-βi l).toNat)) * hwk - (denk * (∏ l, s l ^ (-βk l).toNat)) * hwi +
      ((wi : R) * deni * denk) * key +
      ((wi : R) * (∏ l, s l ^ (βi l - βk l).toNat) * deni * (∏ l, s l ^ (-βi l).toNat) * denk *
        (∏ l, s l ^ (βk l).toNat)) * hu
  have hFex : ∀ i ∈ I, ∃ F, F * num k₀ * den i = num i * den k₀ := fun i hi =>
    s5 _ (fun l => ((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom (t l)) (β i) (β k₀)
      (num i) (den i) (num k₀) (den k₀) hs (hkmin i hi) (hmon i hi) (hmon k₀ hk₀)
  choose! F hF using hFex

  have hη := wcpa_dj_glt_os_generic_in_dom k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' H i₀ hi₀

  obtain ⟨U, hyU, hUW', φ, hφk, hφ⟩ := wcpa_dj_glt_os_ratio_spread (Limits.pullback g ρ)
    ((Limits.pullback.fst g ρ ⁻¹ᵁ O).ι ''ᵁ
      (((Limits.pullback.fst g ρ ∣_ O) ≫ a) ⁻¹ᵁ wcSgD k N i₀)) hη (π₅ c) W' hyW' N I k₀
    (fun i => wcpaDjStcRatioSec k (Limits.pullback.fst g ρ ⁻¹ᵁ O)
      ((Limits.pullback.fst g ρ ∣_ O) ≫ a) i₀ i) num den F hk₀ hlink hF
  have hηU : genericPoint (Limits.pullback g ρ : Scheme.{u}) ∈ U :=
    (genericPoint_specializes (π₅ c)).mem_open U.isOpen hyU
  have hηO : genericPoint (Limits.pullback g ρ : Scheme.{u}) ∈ Limits.pullback.fst g ρ ⁻¹ᵁ O :=
    Scheme.Opens.ι_image_le _ _ hη

  have hstr'' : ((Limits.pullback.fst g ρ ∣_ O) ≫ a) ≫ wcProjKStr k N =
      (Limits.pullback.fst g ρ ⁻¹ᵁ O).ι ≫ Limits.pullback.snd g ρ ≫ ρ ≫ sS := by
    have e : a ≫ wcProjKStr k N = O.ι ≫ g ≫ sS := hstr
    rw [Category.assoc, e, morphismRestrict_ι_assoc, Limits.pullback.condition_assoc]
  have hC1'' : ∀ c (i : Fin (N + 1)), i ∉ I →
      ((Limits.pullback.fst g ρ ∣_ O) ≫ a) c ∉ wcSgD k N i := by
    intro c i hi
    rw [Scheme.Hom.comp_apply]
    exact hC1 _ i hi
  obtain ⟨aT, haTstr, haTagree⟩ := wcpa_dj_glt_os_chart_extend k N (Limits.pullback g ρ)
    (Limits.pullback.snd g ρ ≫ ρ ≫ sS) (Limits.pullback.fst g ρ ⁻¹ᵁ O)
    ((Limits.pullback.fst g ρ ∣_ O) ≫ a) I i₀ k₀ hi₀ hk₀ hstr'' hC1'' U φ hφk
    (TopologicalSpace.Opens.mem_inf.mpr ⟨hηU, hη⟩) hφ

  have hηViso : genericPoint (Limits.pullback g ρ : Scheme.{u}) ∈ Viso := by
    obtain ⟨v, hv⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty Viso).mp hViso
    exact (genericPoint_specializes v).mem_open Viso.isOpen hv
  haveI := hVisoIso
  obtain ⟨x, hx⟩ := (π₅ ∣_ Viso).surjective ⟨_, hηViso⟩
  have hπx : π₅ x.1 = genericPoint (Limits.pullback g ρ : Scheme.{u}) := by
    rw [← morphismRestrict_base_coe, hx]
  have hne : ((π₅ ⁻¹ᵁ (U ⊓ Limits.pullback.fst g ρ ⁻¹ᵁ O) : C.Opens) : Set C).Nonempty := by
    refine ⟨x.1, ?_⟩
    show x.1 ∈ π₅ ⁻¹ᵁ (U ⊓ Limits.pullback.fst g ρ ⁻¹ᵁ O)
    rw [Scheme.Hom.mem_preimage, hπx]
    exact TopologicalSpace.Opens.mem_inf.mpr ⟨hηU, hηO⟩

  have hstrA : (π₅ ⁻¹ᵁ U).ι ≫ A ≫ wcProjKStr k N = (π₅ ∣_ U) ≫ aT ≫ wcProjKStr k N := by
    rw [haTstr, morphismRestrict_ι_assoc, ← hA']
  have hagreeA := wcpa_dj_glt_os_factor_agree C (Limits.pullback g ρ) (wcProjK k N)
    (Spec (.of k)) π₅ U (Limits.pullback.fst g ρ ⁻¹ᵁ O) A aT
    ((Limits.pullback.fst g ρ ∣_ O) ≫ a) (wcProjKStr k N) hM4 haTagree hstrA hne

  haveI hqfin : IsFinite (π₅ ∣_ U) := wcpa_dj_glt_os_finite_restrict k N (Limits.pullback g ρ) C
    (Limits.pullback.snd g ρ ≫ ρ ≫ sS) π₅ A hA' hLfin U aT haTstr hagreeA

  have hUne : U ≠ ⊥ := (TopologicalSpace.Opens.ne_bot_iff_nonempty U).mpr ⟨_, hyU⟩
  haveI : Nonempty U := ⟨⟨π₅ c, hyU⟩⟩
  haveI : Nonempty (π₅ ⁻¹ᵁ U) := ⟨⟨c, hyU⟩⟩
  have hgen := wcpa_dj_glt_os_iso_restrict π₅ Viso U hViso hUne hVisoIso
  have hnorm : ∀ u : U.toScheme, u ∈ (⊤ : U.toScheme.Opens) →
      IsIntegrallyClosed (U.toScheme.presheaf.stalk u) := by
    intro u _
    haveI := wcpa_dj_glt_os_smooth_normal S'' (Limits.pullback g ρ) (Limits.pullback.snd g ρ)
      u.1 hreg'' ⟨W', hUW' u.2, hW'sm⟩
    exact IsIntegrallyClosed.of_equiv (U.stalkIso u).commRingCatIsoToRingEquiv.symm
  have hiso := wcpa_dj_gs_norm_iso_normal_locus (π₅ ⁻¹ᵁ U).toScheme U.toScheme (π₅ ∣_ U)
    hqfin hgen ⊤ hnorm
  haveI := hiso
  haveI : IsIso ((π₅ ∣_ U) ⁻¹ᵁ ⊤).ι := by
    rw [isIso_iff_isOpenImmersion_and_surjective]
    exact ⟨inferInstance, ⟨fun x => ⟨⟨x, trivial⟩, rfl⟩⟩⟩
  haveI : IsIso (⊤ : U.toScheme.Opens).ι := by
    rw [← Scheme.topIso_hom]
    infer_instance
  have e1 : ((π₅ ∣_ U) ⁻¹ᵁ ⊤).ι ≫ (π₅ ∣_ U) = ((π₅ ∣_ U) ∣_ ⊤) ≫ (⊤ : U.toScheme.Opens).ι :=
    (morphismRestrict_ι _ _).symm
  haveI : IsIso (((π₅ ∣_ U) ⁻¹ᵁ ⊤).ι ≫ (π₅ ∣_ U)) := by
    rw [e1]
    infer_instance
  haveI : IsIso (π₅ ∣_ U) := IsIso.of_isIso_comp_left ((π₅ ∣_ U) ⁻¹ᵁ ⊤).ι (π₅ ∣_ U)

  refine ⟨π₅ ⁻¹ᵁ U, (Scheme.Hom.mem_preimage π₅).mpr hyU, ?_⟩
  have e2 : (π₅ ⁻¹ᵁ U).ι ≫ π₅ ≫ Limits.pullback.snd g ρ =
      (π₅ ∣_ U) ≫ (Limits.pullback g ρ).homOfLE hUW' ≫ W'.ι ≫ Limits.pullback.snd g ρ := by
    rw [Scheme.homOfLE_ι_assoc, morphismRestrict_ι_assoc]
  rw [e2]
  haveI : SmoothOfRelativeDimension 1 (W'.ι ≫ Limits.pullback.snd g ρ) := hW'sm
  have h1 := smoothOfRelativeDimension_comp 0 1 ((Limits.pullback g ρ).homOfLE hUW')
    (W'.ι ≫ Limits.pullback.snd g ρ)
  have h2 := smoothOfRelativeDimension_comp 0 (0 + 1) (π₅ ∣_ U)
    ((Limits.pullback g ρ).homOfLE hUW' ≫ W'.ι ≫ Limits.pullback.snd g ρ) (hg := h1)
  exact h2

theorem wcpa_dj_glt_cc_hat_model : ∀ {Y S : Scheme.{u}} (g : Y ⟶ S) {V : Y.Opens} {ι : Type}
    (I : Finset ι) (r : ι → Γ(Y, V)) (y : Y) (n : ℕ) (t : Fin n → S.presheaf.stalk (g y))
    (α : ι → ℤ) (β : ι → Fin n → ℤ) (c : Fin n → ℕ) (x : wcpaDjGltHat Y y),
    IsRegularLocalRing (S.presheaf.stalk (g y)) →
    (n : WithBot ℕ∞) = ringKrullDim (S.presheaf.stalk (g y)) →
    Ideal.span (Set.range t) = IsLocalRing.maximalIdeal (S.presheaf.stalk (g y)) →
    wcpaDjGltLocModel g I r y n t α β c x →
    IsDomain (wcpaDjGltHat Y y) ∧ IsIntegrallyClosed (wcpaDjGltHat Y y) ∧ x ≠ 0 ∧
      ∀ l, algebraMap (Y.presheaf.stalk y) (wcpaDjGltHat Y y) ((g.stalkMap y).hom (t l)) ≠ 0 :=
by
  intro Y S g V ι I r y n t α β c x hreg hdim hspan hLM
  classical


  have s7 : ∀ (P : Type u) [CommRing P] [Nontrivial P] (s h : P),
      Module.Free P (AdjoinRoot (Polynomial.X ^ 2 - Polynomial.C s * Polynomial.X + Polynomial.C h)) ∧
      Module.Finite P (AdjoinRoot (Polynomial.X ^ 2 - Polynomial.C s * Polynomial.X + Polynomial.C h)) := by
    intro P _ _ s h
    have hm : (Polynomial.X ^ 2 - Polynomial.C s * Polynomial.X + Polynomial.C h : Polynomial P).Monic := by
      monicity!
    exact ⟨Module.Free.of_basis (AdjoinRoot.powerBasis' hm).basis,
      Module.Finite.of_basis (AdjoinRoot.powerBasis' hm).basis⟩


  have s3 : ∀ (R₀ P : Type u) [CommRing R₀] [CommRing P] [Algebra R₀ P] (D : Derivation R₀ P P)
      (F : P) (𝔔 : Ideal P) [𝔔.IsPrime], IsRegularLocalRing (Localization.AtPrime 𝔔) → F ∈ 𝔔 →
      D F ∉ 𝔔 → IsRegularLocalRing (Localization.AtPrime 𝔔 ⧸
        Ideal.span {algebraMap P (Localization.AtPrime 𝔔) F}) := by
    intro R₀ P _ _ _ D F 𝔔 _ hreg hF hD
    haveI := hreg
    have ha : algebraMap P (Localization.AtPrime 𝔔) F ∈
        IsLocalRing.maximalIdeal (Localization.AtPrime 𝔔) :=
      (IsLocalization.AtPrime.to_map_mem_maximal_iff (Localization.AtPrime 𝔔) 𝔔 F).mpr hF
    have hb : algebraMap P (Localization.AtPrime 𝔔) F ∉
        IsLocalRing.maximalIdeal (Localization.AtPrime 𝔔) ^ 2 := by
      intro hsq
      rw [← IsLocalization.AtPrime.map_eq_maximalIdeal 𝔔 (Localization.AtPrime 𝔔), ← Ideal.map_pow,
        IsLocalization.algebraMap_mem_map_algebraMap_iff 𝔔.primeCompl] at hsq
      obtain ⟨s, hs, hsF⟩ := hsq
      have hDsq : ∀ z ∈ 𝔔 ^ 2, D z ∈ 𝔔 := by
        intro z hz
        rw [pow_two] at hz
        refine Submodule.mul_induction_on hz ?_ ?_
        · intro m hm k hk
          rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul]
          exact Ideal.add_mem _ (Ideal.mul_mem_right _ _ hm) (Ideal.mul_mem_right _ _ hk)
        · intro a b ha hb
          rw [map_add]
          exact Ideal.add_mem _ ha hb
      have h1 := hDsq _ hsF
      rw [Derivation.leibniz, smul_eq_mul, smul_eq_mul] at h1
      have h2 : s * D F ∈ 𝔔 := by
        have := Ideal.sub_mem _ h1 (Ideal.mul_mem_right (D s) _ hF)
        simpa using this
      rcases (inferInstance : 𝔔.IsPrime).mem_or_mem h2 with h3 | h3
      · exact hs h3
      · exact hD h3
    exact (wc_rl_quot_regular wc_rl_quot_embdim _ hreg _ ha hb).1


  have s2 : ∀ (P : Type u) [CommRing P] (F : P) (Q : Ideal (P ⧸ Ideal.span {F})) [Q.IsPrime],
      Nonempty (Localization.AtPrime Q ≃+* Localization.AtPrime (Q.comap (Ideal.Quotient.mk (Ideal.span {F}))) ⧸
        Ideal.span {algebraMap P (Localization.AtPrime (Q.comap (Ideal.Quotient.mk (Ideal.span {F})))) F}) := by
    intro P _ F Q _
    have hle : Ideal.span {F} ≤ (Ideal.span {algebraMap P (Localization.AtPrime
        (Q.comap (Ideal.Quotient.mk (Ideal.span {F})))) F}).comap (algebraMap P _) := by
      rw [Ideal.span_le]
      intro z hz
      rw [Set.mem_singleton_iff] at hz
      subst hz
      exact Ideal.subset_span rfl
    letI : Algebra (P ⧸ Ideal.span {F}) (Localization.AtPrime (Q.comap (Ideal.Quotient.mk (Ideal.span {F}))) ⧸
        Ideal.span {algebraMap P (Localization.AtPrime (Q.comap (Ideal.Quotient.mk (Ideal.span {F})))) F}) :=
      (Ideal.quotientMap _ (algebraMap P _) hle).toAlgebra
    have hloc := IsLocalization.of_surjective (Q.comap (Ideal.Quotient.mk (Ideal.span {F}))).primeCompl
      (Localization.AtPrime (Q.comap (Ideal.Quotient.mk (Ideal.span {F}))))
      (Ideal.Quotient.mk (Ideal.span {F})) Ideal.Quotient.mk_surjective
      (Ideal.Quotient.mk (Ideal.span {algebraMap P (Localization.AtPrime
        (Q.comap (Ideal.Quotient.mk (Ideal.span {F})))) F})) Ideal.Quotient.mk_surjective
      (by ext p; rfl)
      (by rw [Ideal.mk_ker, Ideal.mk_ker, Ideal.map_span, Set.image_singleton])
    have hM : Submonoid.map (Ideal.Quotient.mk (Ideal.span {F}))
        (Q.comap (Ideal.Quotient.mk (Ideal.span {F}))).primeCompl = Q.primeCompl := by
      ext z
      constructor
      · rintro ⟨p, hp, rfl⟩
        exact hp
      · intro hz
        obtain ⟨p, rfl⟩ := Ideal.Quotient.mk_surjective z
        exact ⟨p, hz, rfl⟩
    rw [hM] at hloc
    haveI := hloc
    exact ⟨(IsLocalization.algEquiv Q.primeCompl (Localization.AtPrime Q) _).toRingEquiv⟩


  have s4 : ∀ (B : Type u) [CommRing B] [IsRegularLocalRing B] (h b : B),
      h ∈ IsLocalRing.maximalIdeal B → h ≠ 0 → Prime b → b ∣ h →
      ∀ (Q : Ideal (MvPowerSeries (Fin 2) B ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})) [Q.IsPrime],
      Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) (MvPowerSeries.X 0) ∈ Q →
      Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) (MvPowerSeries.X 1) ∈ Q →
      Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) (MvPowerSeries.C b) ∈ Q →
      Q.height ≠ 1 := by
    intro B _ _ h b hm h0 hb hbh Q _ hX0 hX1 hCb hQ
    obtain ⟨hdom, -, -, -⟩ := wcpa_dj_stc_kmnb_xy_domain B h hm h0
    obtain ⟨hinj, -⟩ := wcpa_dj_stc_tu_const_inj B h hm
    haveI := hdom
    haveI : (Ideal.span {b}).IsPrime := (Ideal.span_singleton_prime hb.ne_zero).mpr hb
    obtain ⟨ρ, hker, -, hρX⟩ := wcpa_dj_stc_tu_axis_ker B b h hbh 1
    haveI : (RingHom.ker ρ).IsPrime := RingHom.ker_isPrime ρ
    have hlt1 : (⊥ : Ideal _) < RingHom.ker ρ := by
      refine lt_of_le_of_ne bot_le (fun heq => ?_)
      have hmem : Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
          MvPowerSeries.C h}) (MvPowerSeries.C b) ∈ RingHom.ker ρ := by
        rw [hker]
        exact Ideal.subset_span (by simp)
      rw [← heq, Ideal.mem_bot] at hmem
      exact hb.ne_zero (hinj b hmem)
    have hlt2 : RingHom.ker ρ < Q := by
      refine lt_of_le_of_ne ?_ (fun heq => ?_)
      · rw [hker, Ideal.span_le]
        intro z hz
        simp only [Set.mem_insert_iff, Set.mem_singleton_iff] at hz
        rcases hz with rfl | rfl
        · exact hX1
        · exact hCb
      · rw [← heq, RingHom.mem_ker, hρX 0 (by decide)] at hX0
        exact PowerSeries.X_ne_zero hX0
    have h1 : Q.height ≤ ((1 : ℕ) : ℕ∞) := by rw [hQ, Nat.cast_one]
    rw [Ideal.height_le_iff] at h1
    have h2 := h1 _ inferInstance hlt2
    have h3 : (RingHom.ker ρ).height ≤ ((0 : ℕ) : ℕ∞) := by
      rw [Nat.cast_one] at h2
      rw [Nat.cast_zero]
      exact (ENat.lt_one_iff_eq_zero.mp h2).le
    rw [Ideal.height_le_iff] at h3
    have h4 := h3 ⊥ Ideal.isPrime_bot hlt1
    simp at h4


  have s5 : ∀ (P R : Type u) [CommRing P] [IsDomain P] [UniqueFactorizationMonoid P]
      [IsNoetherianRing P] [CommRing R] [IsDomain R] [Algebra P R] [Module.Free P R] [Module.Finite P R],
      (∀ (Q : Ideal R) [Q.IsPrime], Q.height = 1 → IsIntegrallyClosed (Localization.AtPrime Q)) →
      IsIntegrallyClosed R := by
    intro P R _ _ _ _ _ _ _ _ _ hloc
    have hPinj : Function.Injective (algebraMap P R) := FaithfulSMul.algebraMap_injective P R
    rw [isIntegrallyClosed_iff (FractionRing R)]
    intro z hz
    obtain ⟨⟨a, s⟩, rfl⟩ := IsLocalization.mk'_surjective (nonZeroDivisors R) z
    have hs0 : (s : R) ≠ 0 := nonZeroDivisors.coe_ne_zero s
    have hsint : IsIntegral P (s : R) := Algebra.IsIntegral.isIntegral _
    have hne := Ideal.under_ne_bot_of_integral_mem hs0 (Ideal.mem_span_singleton_self (s : R)) hsint
    obtain ⟨c, hc, hc0⟩ := Submodule.exists_mem_ne_zero_of_ne_bot hne
    have hc' : algebraMap P R c ∈ Ideal.span {(s : R)} := hc
    obtain ⟨w, hw⟩ := Ideal.mem_span_singleton'.mp hc'
    have hb0 : algebraMap P R c ≠ 0 := by
      intro h0
      apply hc0
      apply hPinj
      rw [h0, map_zero]
    have hzs := IsLocalization.mk'_spec (FractionRing R) a s
    have hzb : IsLocalization.mk' (FractionRing R) a s * algebraMap R (FractionRing R) (algebraMap P R c)
        = algebraMap R (FractionRing R) (a * w) := by
      rw [← hw, map_mul, map_mul, ← mul_assoc, mul_comm _ (algebraMap R _ w), mul_assoc, hzs, mul_comm]
    have key : a * w ∈ Ideal.span {algebraMap P R c} := by
      refine wcpa_dj_stc_tu_krull_criterion P R _ _ hb0 (fun Q hQp hQ => ?_)
      haveI := hQp
      haveI := hloc Q hQ
      haveI : IsFractionRing (Localization.AtPrime Q) (FractionRing R) :=
        IsFractionRing.isFractionRing_of_isDomain_of_isLocalization Q.primeCompl _ _
      have hzQ : IsIntegral (Localization.AtPrime Q) (IsLocalization.mk' (FractionRing R) a s) :=
        IsIntegral.tower_top hz
      obtain ⟨y, hy⟩ := (IsIntegrallyClosed.isIntegral_iff).mp hzQ
      obtain ⟨⟨α, σ⟩, rfl⟩ := IsLocalization.mk'_surjective Q.primeCompl y
      have hyσ := IsLocalization.mk'_spec (Localization.AtPrime Q) α σ
      have hyσ' := congrArg (algebraMap (Localization.AtPrime Q) (FractionRing R)) hyσ
      rw [map_mul, hy, ← IsScalarTower.algebraMap_apply, ← IsScalarTower.algebraMap_apply] at hyσ'
      refine ⟨σ, σ.2, ?_⟩
      have heq : (σ : R) * (a * w) = α * algebraMap P R c := by
        apply IsFractionRing.injective R (FractionRing R)
        rw [map_mul, ← hzb, map_mul, ← hyσ']
        ring
      rw [heq]
      exact Ideal.mul_mem_left _ _ (Ideal.mem_span_singleton_self _)
    obtain ⟨d, hd⟩ := Ideal.mem_span_singleton'.mp key
    refine ⟨d, ?_⟩
    have hb0' : algebraMap R (FractionRing R) (algebraMap P R c) ≠ 0 :=
      (map_ne_zero_iff _ (IsFractionRing.injective R (FractionRing R))).mpr hb0
    apply mul_right_cancel₀ hb0'
    rw [hzb, ← map_mul, hd]


  have s1 : ∀ (A : Type u) [CommRing A] [IsRegularLocalRing A],
      IsRegularLocalRing (MvPowerSeries (Fin 2) A) := by
    intro A _ _
    haveI : IsNoetherianRing (MvPowerSeries (Fin 2) A) := wcpa_dj_nd_mvpowerseries_two_noetherian A
    have hA := IsRegularLocalRing.spanFinrank_maximalIdeal (R := A)
    have hdim := wcpa_dj_npr_psr_dim_ge A
      (Submodule.spanFinrank (IsLocalRing.maximalIdeal A)) hA.le
    obtain ⟨s, hs_card, hs_span⟩ :=
      (IsNoetherian.noetherian (IsLocalRing.maximalIdeal A)).exists_span_set_encard_eq_spanFinrank
    have hs_span' : Ideal.span s = IsLocalRing.maximalIdeal A := hs_span
    have hs_fin : s.Finite := Set.finite_of_encard_eq_coe hs_card
    have hs_ncard : s.ncard = Submodule.spanFinrank (IsLocalRing.maximalIdeal A) := by
      have := hs_fin.cast_ncard_eq
      rw [hs_card] at this
      exact_mod_cast this
    have hmP : IsLocalRing.maximalIdeal (MvPowerSeries (Fin 2) A) =
        Ideal.span ((MvPowerSeries.C : A →+* MvPowerSeries (Fin 2) A) '' s ∪
          {MvPowerSeries.X 0, MvPowerSeries.X 1}) := by
      rw [wcpa_dj_npr_psr_maximalIdeal A, Ideal.span_union, ← Ideal.map_span, hs_span']
    have h2 : ({MvPowerSeries.X 0, MvPowerSeries.X 1} : Set (MvPowerSeries (Fin 2) A)).ncard ≤ 2 :=
      (Set.ncard_insert_le _ _).trans (by rw [Set.ncard_singleton])
    apply IsRegularLocalRing.of_spanFinrank_maximalIdeal_le
    refine le_trans ?_ hdim
    rw [hmP]
    have hle : Submodule.spanFinrank (Ideal.span ((MvPowerSeries.C : A →+* MvPowerSeries (Fin 2) A) '' s ∪
          {MvPowerSeries.X 0, MvPowerSeries.X 1})) ≤
        Submodule.spanFinrank (IsLocalRing.maximalIdeal A) + 2 := by
      calc _ ≤ ((MvPowerSeries.C : A →+* MvPowerSeries (Fin 2) A) '' s ∪
              {MvPowerSeries.X 0, MvPowerSeries.X 1}).ncard :=
            Submodule.spanFinrank_span_le_ncard_of_finite ((hs_fin.image _).union (Set.toFinite _))
        _ ≤ ((MvPowerSeries.C : A →+* MvPowerSeries (Fin 2) A) '' s).ncard +
              ({MvPowerSeries.X 0, MvPowerSeries.X 1} : Set (MvPowerSeries (Fin 2) A)).ncard :=
            Set.ncard_union_le _ _
        _ ≤ s.ncard + 2 := add_le_add (Set.ncard_image_le hs_fin) h2
        _ = _ := by rw [hs_ncard]
    exact_mod_cast hle


  have T0normal : ∀ (B : Type u) [CommRing B] [IsRegularLocalRing B] (h : B),
      IsAdicComplete (IsLocalRing.maximalIdeal B) B →
      h ∈ IsLocalRing.maximalIdeal B → h ≠ 0 →
      (∀ (Q : Ideal (MvPowerSeries (Fin 2) B ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})) [Q.IsPrime],
        Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) (MvPowerSeries.X 0) ∈ Q →
        Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) (MvPowerSeries.X 1) ∈ Q →
        Q.height ≠ 1) →
      IsIntegrallyClosed (MvPowerSeries (Fin 2) B ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}) := by
    intro B _ _ h hcomp hm h0 hax
    obtain ⟨hdomT, -, -, -⟩ := wcpa_dj_stc_kmnb_xy_domain B h hm h0
    haveI := hdomT
    haveI := wcpa_dj_stc_tu_ps_regular B
    obtain ⟨hdP, huP⟩ := wc_fco_regular_local_ufd (PowerSeries B)
    haveI := hdP
    haveI := huP
    have hPc := wcpa_dj_stc_tu_ps_complete B hcomp
    obtain ⟨Φ, -, -, -⟩ := wcpa_dj_stc_tu_weierstrass B hPc h hm
    obtain ⟨hfree, hfin⟩ := s7 (PowerSeries B) PowerSeries.X (PowerSeries.C h)
    haveI := hfree
    haveI := hfin
    haveI : IsDomain (AdjoinRoot (Polynomial.X ^ 2 - Polynomial.C PowerSeries.X * Polynomial.X +
        Polynomial.C (PowerSeries.C h) : Polynomial (PowerSeries B))) :=
      MulEquiv.isDomain _ Φ.toMulEquiv
    have hlocT : ∀ (Q : Ideal (MvPowerSeries (Fin 2) B ⧸ Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})) [Q.IsPrime],
        Q.height = 1 → IsIntegrallyClosed (Localization.AtPrime Q) := by
      intro Q _ hQ1
      have hFmem : (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h : MvPowerSeries (Fin 2) B) ∈
          Q.comap (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})) := by
        rw [Ideal.mem_comap, Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self _)]
        exact Q.zero_mem
      have branch : ∀ D : Derivation B (MvPowerSeries (Fin 2) B) (MvPowerSeries (Fin 2) B),
          D (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h) ∉
            Q.comap (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})) →
          IsIntegrallyClosed (Localization.AtPrime Q) := by
        intro D hD
        haveI := s1 B
        have hregL := wc_hnas_pfc_regular_localization (MvPowerSeries (Fin 2) B) inferInstance
          (Q.comap (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h})))
        have hregq := s3 B _ D _ _ hregL hFmem hD
        obtain ⟨hd, hu⟩ := @wc_fco_regular_local_ufd _ _ hregq
        haveI := hregq
        haveI := hd
        haveI := hu
        haveI : IsIntegrallyClosed (Localization.AtPrime
            (Q.comap (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}))) ⧸
            Ideal.span {algebraMap (MvPowerSeries (Fin 2) B) (Localization.AtPrime
              (Q.comap (Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h}))))
              (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h)}) :=
          UniqueFactorizationMonoid.instIsIntegrallyClosed
        obtain ⟨φ⟩ := s2 _ (MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C h) Q
        exact IsIntegrallyClosed.of_equiv φ.symm
      by_cases h0 : Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
          MvPowerSeries.C h}) (MvPowerSeries.X 0) ∈ Q
      · by_cases h1 : Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 -
            MvPowerSeries.C h}) (MvPowerSeries.X 1) ∈ Q
        · exact absurd hQ1 (hax Q h0 h1)
        · apply branch (MvPowerSeries.pderiv 0)
          rw [map_sub, Derivation.leibniz, MvPowerSeries.pderiv_X, MvPowerSeries.pderiv_X,
            MvPowerSeries.pderiv_C]
          simpa using h1
      · apply branch (MvPowerSeries.pderiv 1)
        rw [map_sub, Derivation.leibniz, MvPowerSeries.pderiv_X, MvPowerSeries.pderiv_X,
          MvPowerSeries.pderiv_C]
        simpa using h0
    have hlocR : ∀ (Q' : Ideal (AdjoinRoot (Polynomial.X ^ 2 - Polynomial.C PowerSeries.X * Polynomial.X +
        Polynomial.C (PowerSeries.C h) : Polynomial (PowerSeries B)))) [Q'.IsPrime],
        Q'.height = 1 → IsIntegrallyClosed (Localization.AtPrime Q') := by
      intro Q' _ hQ'
      have hht : (Ideal.comap Φ.symm Q').height = 1 := by
        rw [← hQ']
        exact RingEquiv.height_comap Φ.symm Q'
      haveI := hlocT (Ideal.comap Φ.symm Q') hht
      have hM : Submonoid.map Φ.symm.toMonoidHom (Ideal.comap Φ.symm Q').primeCompl = Q'.primeCompl := by
        ext z
        constructor
        · rintro ⟨w, hw, rfl⟩
          exact hw
        · intro hz
          refine ⟨Φ z, ?_, ?_⟩
          · show Φ.symm (Φ z) ∉ Q'
            simpa using hz
          · simp
      exact IsIntegrallyClosed.of_equiv (R := Localization.AtPrime (Ideal.comap Φ.symm Q'))
        (IsLocalization.ringEquivOfRingEquiv
          (Localization.AtPrime (Ideal.comap Φ.symm Q')) (Localization.AtPrime Q') Φ.symm hM)
    haveI := s5 (PowerSeries B) _ hlocR
    exact IsIntegrallyClosed.of_equiv Φ


  obtain ⟨hregA, -, -⟩ := wcpa_dj_stc_kmnb_completion_params _ n t hdim hspan
  haveI := hregA
  obtain ⟨hdomA, -, hprime⟩ := wcpa_dj_mn_completion_regular _ n t hdim hspan
  haveI := hdomA
  have htne : ∀ l, algebraMap (S.presheaf.stalk (g y)) (wcpaDjGltHat S (g y)) (t l) ≠ 0 :=
    fun l => (hprime l).ne_zero
  have htm : ∀ l, algebraMap (S.presheaf.stalk (g y)) (wcpaDjGltHat S (g y)) (t l) ∈
      IsLocalRing.maximalIdeal (wcpaDjGltHat S (g y)) :=
    fun l => (IsLocalRing.mem_maximalIdeal _).mpr (hprime l).not_unit
  rcases hLM.2 with ⟨⟨l₀, hl₀⟩, v, e, he, hex⟩ | ⟨-, e, he, hex⟩
  ·

    set hh : wcpaDjGltHat S (g y) :=
      ↑v * ∏ l, algebraMap (S.presheaf.stalk (g y)) (wcpaDjGltHat S (g y)) (t l) ^ c l with hhdef
    have hprodm : ∏ l, algebraMap (S.presheaf.stalk (g y)) (wcpaDjGltHat S (g y)) (t l) ^ c l ∈
        IsLocalRing.maximalIdeal (wcpaDjGltHat S (g y)) :=
      Ideal.mem_of_dvd _ (Finset.dvd_prod_of_mem _ (Finset.mem_univ l₀))
        (Ideal.pow_mem_of_mem _ (htm l₀) _ (Nat.pos_of_ne_zero hl₀))
    have hm : hh ∈ IsLocalRing.maximalIdeal (wcpaDjGltHat S (g y)) := Ideal.mul_mem_left _ _ hprodm
    have h0 : hh ≠ 0 :=
      mul_ne_zero v.ne_zero (Finset.prod_ne_zero_iff.mpr fun l _ => pow_ne_zero _ (htne l))
    obtain ⟨hdomT, -, -, -⟩ := wcpa_dj_stc_kmnb_xy_domain _ _ hm h0
    haveI := hdomT
    obtain ⟨hinj, hX0⟩ := wcpa_dj_stc_tu_const_inj _ _ hm
    obtain ⟨_, hcompl, -, -⟩ := wc_hnas_completion_local_complete (S.presheaf.stalk (g y))
    have hax : ∀ (Q : Ideal (MvPowerSeries (Fin 2) (wcpaDjGltHat S (g y)) ⧸ Ideal.span
        {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C hh})) [Q.IsPrime],
        Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C hh})
          (MvPowerSeries.X 0) ∈ Q →
        Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C hh})
          (MvPowerSeries.X 1) ∈ Q →
        Q.height ≠ 1 := by
      intro Q hQ hQ0 hQ1
      let κ : wcpaDjGltHat S (g y) →+* (MvPowerSeries (Fin 2) (wcpaDjGltHat S (g y)) ⧸
          Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C hh}) :=
        (Ideal.Quotient.mk _).comp MvPowerSeries.C
      have e1 : Ideal.Quotient.mk (Ideal.span {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C hh})
          (MvPowerSeries.X 0 * MvPowerSeries.X 1 : MvPowerSeries (Fin 2) (wcpaDjGltHat S (g y))) = κ hh :=
        Ideal.Quotient.eq.mpr (Ideal.mem_span_singleton_self _)
      have hCh : κ hh ∈ Q := by
        have h1 := Ideal.mul_mem_right (Ideal.Quotient.mk (Ideal.span
          {MvPowerSeries.X 0 * MvPowerSeries.X 1 - MvPowerSeries.C hh}) (MvPowerSeries.X 1)) Q hQ0
        rwa [← map_mul, e1] at h1
      have hk : κ hh = κ ↑v * ∏ l, κ (algebraMap (S.presheaf.stalk (g y)) (wcpaDjGltHat S (g y)) (t l)) ^ c l := by
        exact (map_mul κ _ _).trans (congrArg (κ ↑v * ·) ((map_prod κ _ _).trans
          (Finset.prod_congr rfl fun l _ => map_pow κ _ _)))
      rw [hk] at hCh
      rcases hQ.mem_or_mem hCh with hv | hpr
      · exact absurd (Ideal.eq_top_of_isUnit_mem _ hv (v.isUnit.map κ)) hQ.ne_top
      · obtain ⟨l, -, hl⟩ := (Ideal.IsPrime.prod_mem_iff).mp hpr
        have hcl : c l ≠ 0 := by
          intro hcl0
          rw [hcl0, pow_zero] at hl
          exact hQ.ne_top ((Ideal.eq_top_iff_one _).mpr hl)
        have hl' := hQ.mem_of_pow_mem _ hl
        exact s4 _ _ _ hm h0 (hprime l)
          (Dvd.dvd.mul_left (dvd_trans (dvd_pow_self _ hcl)
            (Finset.dvd_prod_of_mem _ (Finset.mem_univ l))) _) Q hQ0 hQ1 hl'
    haveI := T0normal _ _ hcompl hm h0 hax
    haveI : IsDomain (wcpaDjGltHat Y y) := MulEquiv.isDomain _ e.toMulEquiv
    refine ⟨inferInstance, IsIntegrallyClosed.of_equiv e.symm, ?_, ?_⟩
    · intro hx
      rw [hx, map_zero] at hex
      exact hX0 hex.symm
    · intro l hl
      have key : e (algebraMap (Y.presheaf.stalk y) (wcpaDjGltHat Y y) ((g.stalkMap y).hom (t l))) =
          Ideal.Quotient.mk _ (MvPowerSeries.C
            (algebraMap (S.presheaf.stalk (g y)) (wcpaDjGltHat S (g y)) (t l))) :=
        RingHom.congr_fun he (t l)
      rw [hl, map_zero] at key
      exact htne l (hinj _ key.symm)
  ·

    haveI := wcpa_dj_stc_tu_ps_regular (wcpaDjGltHat S (g y))
    obtain ⟨hd, hu⟩ := wc_fco_regular_local_ufd (PowerSeries (wcpaDjGltHat S (g y)))
    haveI := hd
    haveI := hu
    haveI : IsIntegrallyClosed (PowerSeries (wcpaDjGltHat S (g y))) :=
      UniqueFactorizationMonoid.instIsIntegrallyClosed
    haveI : IsDomain (wcpaDjGltHat Y y) := MulEquiv.isDomain _ e.toMulEquiv
    refine ⟨inferInstance, IsIntegrallyClosed.of_equiv e.symm, ?_, ?_⟩
    · intro hx
      rw [hx, map_zero] at hex
      exact PowerSeries.X_ne_zero hex.symm
    · intro l hl
      have key : e (algebraMap (Y.presheaf.stalk y) (wcpaDjGltHat Y y) ((g.stalkMap y).hom (t l))) =
          PowerSeries.C (algebraMap (S.presheaf.stalk (g y)) (wcpaDjGltHat S (g y)) (t l)) :=
        RingHom.congr_fun he (t l)
      rw [hl, map_zero] at key
      exact htne l (PowerSeries.C_injective (key.symm.trans (map_zero _).symm))

theorem wcpa_dj_glt_ccg_alg_core : ∀ (R D : Type u) [CommRing R] [CommRing D] [IsDomain R] [IsIntegrallyClosed R] [IsLocalRing R] [IsDomain D] [IsIntegrallyClosed D] [IsLocalRing D] (φ : R →+* D) [IsLocalHom φ], Function.Injective φ → ∀ (N : ℕ) (G : Fin (N + 1) → R) (k₀ : Fin (N + 1)) (z : Fin (N + 1) → D), G k₀ ≠ 0 → (∀ l, z l * φ (G k₀) = φ (G l)) → (∀ u : D, ∃ a s : R, s ≠ 0 ∧ u * φ s = φ a) → (∀ u : D, ∃ b s : D, IsIntegral (Subring.closure (Set.range φ ∪ Set.range z)) b ∧ IsIntegral (Subring.closure (Set.range φ ∪ Set.range z)) s ∧ IsUnit s ∧ u * s = b) → ∃ (P : Ideal (wcpaDjGltNC R G k₀)) (_ : P.IsPrime) (e : D ≃+* Localization.AtPrime P), P.comap (wcpaDjGltNCMap R G k₀) = IsLocalRing.maximalIdeal R ∧ e.toRingHom.comp φ = (algebraMap (wcpaDjGltNC R G k₀) (Localization.AtPrime P)).comp (wcpaDjGltNCMap R G k₀) :=
by
  intro R D _ _ _ _ _ _ _ _ φ _ hφ N G k₀ z hg hz hbir hgen
  classical

  have homog : ∀ (A : Type u) [CommRing A] [IsDomain A] [IsIntegrallyClosed A] (P : Polynomial A),
      P.Monic → ∀ (a s : A), s ≠ 0 →
      ∑ i ∈ Finset.range (P.natDegree + 1), P.coeff i * a ^ i * s ^ (P.natDegree - i) = 0 →
      ∃ x : A, x * s = a ∧ P.eval x = 0 := by
    intro A _ _ _ P hP a s hs hsum
    have hι : Function.Injective (algebraMap A (FractionRing A)) :=
      IsFractionRing.injective A (FractionRing A)
    have hs' : algebraMap A (FractionRing A) s ≠ 0 := by
      rw [map_ne_zero_iff _ hι]; exact hs
    obtain ⟨f, hf⟩ : ∃ f : FractionRing A,
        f * algebraMap A (FractionRing A) s = algebraMap A (FractionRing A) a :=
      ⟨_, div_mul_cancel₀ _ hs'⟩
    have hroot : P.eval₂ (algebraMap A (FractionRing A)) f = 0 := by
      have h1 : P.eval₂ (algebraMap A (FractionRing A)) f *
          (algebraMap A (FractionRing A) s) ^ P.natDegree =
          algebraMap A (FractionRing A)
            (∑ i ∈ Finset.range (P.natDegree + 1), P.coeff i * a ^ i * s ^ (P.natDegree - i)) := by
        rw [Polynomial.eval₂_eq_sum_range, Finset.sum_mul, map_sum]
        refine Finset.sum_congr rfl (fun i hi => ?_)
        have hi' : i ≤ P.natDegree := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
        rw [map_mul, map_mul, map_pow, map_pow, ← hf]
        have : (algebraMap A (FractionRing A) s) ^ P.natDegree =
            (algebraMap A (FractionRing A) s) ^ i *
              (algebraMap A (FractionRing A) s) ^ (P.natDegree - i) := by
          rw [← pow_add, Nat.add_sub_cancel' hi']
        rw [this]; ring
      rw [hsum, map_zero] at h1
      exact (mul_eq_zero.mp h1).resolve_right (pow_ne_zero _ hs')
    have hint : IsIntegral A f := ⟨P, hP, hroot⟩
    obtain ⟨x, hx⟩ := (IsIntegrallyClosed.isIntegral_iff (K := FractionRing A)).mp hint
    refine ⟨x, ?_, ?_⟩
    · apply hι
      rw [map_mul, hx]; exact hf
    · apply hι
      rw [map_zero, ← Polynomial.eval₂_at_apply, hx, hroot]

  have locIso : ∀ (A : Type u) [CommRing A] (θ : A →+* D), Function.Injective θ →
      (∀ u : D, ∃ x y : A, IsUnit (θ y) ∧ u * θ y = θ x) →
      ∃ e : D ≃+* Localization.AtPrime ((IsLocalRing.maximalIdeal D).comap θ),
        e.toRingHom.comp θ =
          algebraMap A (Localization.AtPrime ((IsLocalRing.maximalIdeal D).comap θ)) := by
    intro A _ θ hθ hgen
    have hunit : ∀ y : ((IsLocalRing.maximalIdeal D).comap θ).primeCompl, IsUnit (θ y) := by
      intro y
      have h := y.2
      rw [Ideal.mem_primeCompl_iff, Ideal.mem_comap] at h
      exact IsLocalRing.notMem_maximalIdeal.mp h
    obtain ⟨Θ, hΘ⟩ : ∃ Θ : Localization.AtPrime ((IsLocalRing.maximalIdeal D).comap θ) →+* D,
        Θ = IsLocalization.lift (M := ((IsLocalRing.maximalIdeal D).comap θ).primeCompl) hunit :=
      ⟨_, rfl⟩
    have hinj : Function.Injective Θ := by
      rw [injective_iff_map_eq_zero]
      intro v hv
      obtain ⟨⟨x, y⟩, rfl⟩ :=
        IsLocalization.mk'_surjective ((IsLocalRing.maximalIdeal D).comap θ).primeCompl v
      rw [hΘ, IsLocalization.lift_mk'_spec, mul_zero] at hv
      have hx : x = 0 := hθ (hv.trans (map_zero θ).symm)
      show IsLocalization.mk' (Localization.AtPrime ((IsLocalRing.maximalIdeal D).comap θ)) x y = 0
      rw [hx, IsLocalization.mk'_zero]
    have hsurj : Function.Surjective Θ := by
      intro u
      obtain ⟨x, y, hy, hu⟩ := hgen u
      have hyP : y ∈ ((IsLocalRing.maximalIdeal D).comap θ).primeCompl := by
        rw [Ideal.mem_primeCompl_iff, Ideal.mem_comap]
        exact IsLocalRing.notMem_maximalIdeal.mpr hy
      refine ⟨IsLocalization.mk' (Localization.AtPrime ((IsLocalRing.maximalIdeal D).comap θ))
        x ⟨y, hyP⟩, ?_⟩
      rw [hΘ, IsLocalization.lift_mk'_spec, ← hu, mul_comm]
    have hbij : Function.Bijective Θ := ⟨hinj, hsurj⟩
    refine ⟨(RingEquiv.ofBijective Θ hbij).symm, ?_⟩
    ext a
    show (RingEquiv.ofBijective Θ hbij).symm (θ a) = _
    rw [RingEquiv.symm_apply_eq]
    show θ a = Θ _
    rw [hΘ, IsLocalization.lift_eq]

  have hpow : Submonoid.powers (G k₀) ≤ nonZeroDivisors R :=
    powers_le_nonZeroDivisors_of_noZeroDivisors hg
  haveI hRgdom : IsDomain (Localization.Away (G k₀)) := IsLocalization.isDomain_localization hpow
  haveI hRgic : IsIntegrallyClosed (Localization.Away (G k₀)) :=
    isIntegrallyClosed_of_isLocalization _ _ hpow
  have hRg : Function.Injective (algebraMap R (Localization.Away (G k₀))) :=
    IsLocalization.injective _ hpow
  have hι : Function.Injective (algebraMap D (FractionRing D)) :=
    IsFractionRing.injective D (FractionRing D)
  have hιφ : ∀ r : R, r ≠ 0 → algebraMap D (FractionRing D) (φ r) ≠ 0 := fun r hr => by
    rw [map_ne_zero_iff _ hι, map_ne_zero_iff _ hφ]; exact hr

  let j : Localization.Away (G k₀) →+* FractionRing D :=
    IsLocalization.Away.lift (G k₀) (g := (algebraMap D (FractionRing D)).comp φ)
      (isUnit_iff_ne_zero.mpr (hιφ _ hg))
  have hj : ∀ r : R, j (algebraMap R (Localization.Away (G k₀)) r) =
      algebraMap D (FractionRing D) (φ r) :=
    fun r => IsLocalization.Away.lift_eq (G k₀) _ r
  have hjinj : Function.Injective j := by
    rw [injective_iff_map_eq_zero]
    intro v hv
    obtain ⟨⟨r, m⟩, rfl⟩ := IsLocalization.mk'_surjective (Submonoid.powers (G k₀)) v
    have h1 := IsLocalization.mk'_spec (Localization.Away (G k₀)) r m
    have h2 := congrArg j h1
    rw [map_mul, hv, zero_mul, hj] at h2
    have hr : r = 0 := by
      apply hφ; apply hι; rw [map_zero, map_zero]; exact h2.symm
    show IsLocalization.mk' (Localization.Away (G k₀)) r m = 0
    rw [hr, IsLocalization.mk'_zero]
  have hjq : ∀ l, j (IsLocalization.mk' (Localization.Away (G k₀)) (G l)
      (⟨G k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (G k₀))) =
      algebraMap D (FractionRing D) (z l) := by
    intro l
    have h1 := IsLocalization.mk'_spec (Localization.Away (G k₀)) (G l)
      (⟨G k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (G k₀))
    have h2 := congrArg j h1
    rw [map_mul, hj, hj, ← hz l, map_mul] at h2
    exact mul_right_cancel₀ (hιφ _ hg) h2
  have hjCh : ∀ x : Localization.Away (G k₀), x ∈ wcpaDjChart R G k₀ →
      j x ∈ (algebraMap D (FractionRing D)).range := by
    intro x hx
    change x ∈ Algebra.adjoin R (Set.range fun l => IsLocalization.mk'
      (Localization.Away (G k₀)) (G l)
      (⟨G k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (G k₀))) at hx
    induction hx using Algebra.adjoin_induction with
    | mem x hx =>
      obtain ⟨l, rfl⟩ := hx
      exact ⟨z l, (hjq l).symm⟩
    | algebraMap r => exact ⟨φ r, (hj r).symm⟩
    | add x y _ _ hx hy => rw [map_add]; exact add_mem hx hy
    | mul x y _ _ hx hy => rw [map_mul]; exact mul_mem hx hy
  have hjNC : ∀ x : Localization.Away (G k₀), IsIntegral (wcpaDjChart R G k₀) x →
      j x ∈ (algebraMap D (FractionRing D)).range := by
    intro x ⟨p, hp, hpx⟩
    have hlift : p.map (j.comp (algebraMap (wcpaDjChart R G k₀) (Localization.Away (G k₀)))) ∈
        Polynomial.lifts (algebraMap D (FractionRing D)) := by
      rw [Polynomial.lifts_iff_coeff_lifts]
      intro n
      rw [Polynomial.coeff_map]
      exact hjCh _ (p.coeff n).2
    obtain ⟨q, hq, -, hqm⟩ := Polynomial.lifts_and_degree_eq_and_monic hlift (hp.map _)
    have hint : IsIntegral D (j x) := by
      refine ⟨q, hqm, ?_⟩
      rw [← Polynomial.eval_map, hq, Polynomial.eval_map, ← Polynomial.hom_eval₂, hpx, map_zero]
    obtain ⟨d, hd⟩ := (IsIntegrallyClosed.isIntegral_iff (K := FractionRing D)).mp hint
    exact ⟨d, hd⟩
  let ψ : wcpaDjGltNC R G k₀ →+* FractionRing D :=
    j.comp (integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀))).val.toRingHom
  have hψ : ∀ x, ψ x ∈ (algebraMap D (FractionRing D)).range := by
    intro x
    let x' : ↥(integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀))) := x
    exact hjNC x'.1 x'.2
  let E := RingEquiv.ofBijective (algebraMap D (FractionRing D)).rangeRestrict
    ⟨fun a b h => hι (congrArg Subtype.val h), RingHom.rangeRestrict_surjective _⟩
  let θ : wcpaDjGltNC R G k₀ →+* D := E.symm.toRingHom.comp (ψ.codRestrict _ hψ)
  have hιθ : ∀ x, algebraMap D (FractionRing D) (θ x) = ψ x := by
    intro x
    exact congrArg Subtype.val (E.apply_symm_apply ⟨ψ x, hψ x⟩)
  have hθinj : Function.Injective θ := by
    intro a b hab
    have h1 : ψ a = ψ b := by rw [← hιθ, ← hιθ, hab]
    let a' : ↥(integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀))) := a
    let b' : ↥(integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀))) := b
    have h2 : a'.1 = b'.1 := hjinj h1
    exact Subtype.ext h2
  have hθφ : θ.comp (wcpaDjGltNCMap R G k₀) = φ := by
    ext r
    apply hι
    rw [RingHom.comp_apply, hιθ]
    exact hj r

  have hsurj : ∀ w : D, IsIntegral (Subring.closure (Set.range φ ∪ Set.range z)) w →
      (∃ a s : R, s ≠ 0 ∧ w * φ s = φ a) → ∃ x : wcpaDjGltNC R G k₀, θ x = w := by
    intro w hw ⟨a, s, hs, hws⟩
    let κ : wcpaDjChart R G k₀ →+* D := θ.comp (algebraMap (wcpaDjChart R G k₀)
      ↥(integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀))))
    have hικ : ∀ c : wcpaDjChart R G k₀, algebraMap D (FractionRing D) (κ c) =
        j (algebraMap (wcpaDjChart R G k₀) (Localization.Away (G k₀)) c) := fun c => hιθ _
    have hS : Subring.closure (Set.range φ ∪ Set.range z) ≤ κ.range := by
      rw [Subring.closure_le]
      rintro _ (⟨r, rfl⟩ | ⟨l, rfl⟩)
      · refine ⟨algebraMap R (wcpaDjChart R G k₀) r, hι ?_⟩
        rw [hικ]; exact hj r
      · refine ⟨⟨IsLocalization.mk' (Localization.Away (G k₀)) (G l)
          (⟨G k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (G k₀)),
          Algebra.subset_adjoin ⟨l, rfl⟩⟩, hι ?_⟩
        rw [hικ]; exact hjq l
    obtain ⟨p, hp, hpw⟩ := hw
    have hlift : p.map (algebraMap (Subring.closure (Set.range φ ∪ Set.range z)) D) ∈
        Polynomial.lifts κ := by
      rw [Polynomial.lifts_iff_coeff_lifts]
      intro n
      rw [Polynomial.coeff_map]
      exact hS (p.coeff n).2
    obtain ⟨Q, hQ, -, hQm⟩ := Polynomial.lifts_and_degree_eq_and_monic hlift (hp.map _)
    have hQw : Q.eval₂ κ w = 0 := by
      rw [← Polynomial.eval_map, hQ, Polynomial.eval_map]; exact hpw
    have hQ'm : (Q.map (algebraMap (wcpaDjChart R G k₀) (Localization.Away (G k₀)))).Monic :=
      hQm.map _
    have hdeg : (Q.map (algebraMap (wcpaDjChart R G k₀)
        (Localization.Away (G k₀)))).natDegree = Q.natDegree := hQm.natDegree_map _
    have hφs := hιφ s hs
    have hE : ∑ i ∈ Finset.range (Q.natDegree + 1),
        (Q.map (algebraMap (wcpaDjChart R G k₀) (Localization.Away (G k₀)))).coeff i *
          algebraMap R (Localization.Away (G k₀)) a ^ i *
          algebraMap R (Localization.Away (G k₀)) s ^ (Q.natDegree - i) = 0 := by
      apply hjinj
      rw [map_zero, map_sum]
      have key : ∀ i ∈ Finset.range (Q.natDegree + 1),
          j ((Q.map (algebraMap (wcpaDjChart R G k₀) (Localization.Away (G k₀)))).coeff i *
            algebraMap R (Localization.Away (G k₀)) a ^ i *
            algebraMap R (Localization.Away (G k₀)) s ^ (Q.natDegree - i)) =
          algebraMap D (FractionRing D) (φ s) ^ Q.natDegree *
            algebraMap D (FractionRing D) (κ (Q.coeff i) * w ^ i) := by
        intro i hi
        have hi' : i ≤ Q.natDegree := Nat.lt_succ_iff.mp (Finset.mem_range.mp hi)
        have hsplit : algebraMap D (FractionRing D) (φ s) ^ Q.natDegree =
            algebraMap D (FractionRing D) (φ s) ^ i *
              algebraMap D (FractionRing D) (φ s) ^ (Q.natDegree - i) := by
          rw [← pow_add, Nat.add_sub_cancel' hi']
        simp only [Polynomial.coeff_map, map_mul, map_pow, hj, ← hws, hικ]
        rw [hsplit]; ring
      rw [Finset.sum_congr rfl key, ← Finset.mul_sum,
        ← map_sum (algebraMap D (FractionRing D)) (fun i => κ (Q.coeff i) * w ^ i),
        ← Polynomial.eval₂_eq_sum_range, hQw, map_zero, mul_zero]
    obtain ⟨x, hxs, hxQ⟩ := homog (Localization.Away (G k₀)) _ hQ'm
      (algebraMap R _ a) (algebraMap R _ s) (fun h => hs (hRg (h.trans (map_zero _).symm)))
      (by rw [hdeg]; exact hE)
    have hxint : IsIntegral (wcpaDjChart R G k₀) x :=
      ⟨Q, hQm, by rw [← Polynomial.eval_map]; exact hxQ⟩
    have hxmem : x ∈ integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀)) := hxint
    let xn : wcpaDjGltNC R G k₀ :=
      (⟨x, hxmem⟩ : ↥(integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀))))
    refine ⟨xn, ?_⟩
    apply hι
    rw [hιθ xn]
    show j x = _
    apply mul_right_cancel₀ hφs
    have h1 : j x * j (algebraMap R (Localization.Away (G k₀)) s) =
        j (algebraMap R (Localization.Away (G k₀)) a) := by rw [← map_mul, hxs]
    rw [hj, hj, ← hws, map_mul] at h1
    exact h1

  have hgen' : ∀ u : D, ∃ x y : wcpaDjGltNC R G k₀, IsUnit (θ y) ∧ u * θ y = θ x := by
    intro u
    obtain ⟨b, s, hb, hs, hsu, hus⟩ := hgen u
    obtain ⟨xb, hxb⟩ := hsurj b hb (hbir b)
    obtain ⟨xs, hxs⟩ := hsurj s hs (hbir s)
    exact ⟨xb, xs, by rw [hxs]; exact hsu, by rw [hxs, hxb]; exact hus⟩
  obtain ⟨e, he⟩ := locIso _ θ hθinj hgen'
  refine ⟨(IsLocalRing.maximalIdeal D).comap θ, inferInstance, e, ?_, ?_⟩
  · rw [Ideal.comap_comap, hθφ]
    ext r
    simp only [Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff, isUnit_map_iff]
  · rw [← hθφ, ← RingHom.comp_assoc, he]

theorem wcpa_dj_glt_ccg_generic_iso : ∀ {X Y : Scheme.{u}} [AlgebraicGeometry.IsIntegral X] [AlgebraicGeometry.IsIntegral Y] (f : X ⟶ Y) (V : Y.Opens), V ≠ ⊥ → IsIso (f ∣_ V) → f (genericPoint X) = genericPoint Y ∧ Function.Bijective (f.stalkMap (genericPoint X)).hom :=
by
  intro X Y _ _ f V hV hiso
  have := hiso
  obtain ⟨v, hv⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty V).mp hV
  have : Nonempty V := ⟨⟨v, hv⟩⟩
  obtain ⟨u0, hu0⟩ := (f ∣_ V).homeomorph.surjective ⟨v, hv⟩
  have : Nonempty (f ⁻¹ᵁ V) := ⟨u0⟩
  have hmem : genericPoint X ∈ f ⁻¹ᵁ V :=
    ((genericPoint_spec X).mem_open_set_iff (f ⁻¹ᵁ V).isOpen).mpr
      ⟨u0.1, Set.mem_univ _, u0.2⟩
  let x : (f ⁻¹ᵁ V : X.Opens) := ⟨genericPoint X, hmem⟩
  have h1 : (f ⁻¹ᵁ V).ι (genericPoint (f ⁻¹ᵁ V)) = genericPoint X :=
    genericPoint_eq_of_isOpenImmersion _
  have h1' : genericPoint (f ⁻¹ᵁ V) = x := by
    apply Subtype.ext
    rw [← Scheme.Opens.ι_apply]
    exact h1
  have h2 : (f ∣_ V) (genericPoint (f ⁻¹ᵁ V)) = genericPoint V :=
    genericPoint_eq_of_isOpenImmersion _
  have h3 : V.ι (genericPoint V) = genericPoint Y := genericPoint_eq_of_isOpenImmersion _
  refine ⟨?_, ?_⟩
  · have e1 : f (genericPoint X) = f (x : X) := rfl
    rw [e1, ← morphismRestrict_base_coe f V x, ← h1', h2]
    exact h3
  · have hI : IsIso (f.stalkMap (x : X)) :=
      (Arrow.isIso_iff_isIso_of_isIso (morphismRestrictStalkMap f V x).hom).mp
        (IsOpenImmersion.instIsIsoCommRingCatStalkMap (f ∣_ V) x)
    exact ConcreteCategory.bijective_of_isIso (f.stalkMap (x : X))

theorem wcpa_dj_glt_ccg_birational_stalk : ∀ {X Y : Scheme.{u}} [AlgebraicGeometry.IsIntegral X] [AlgebraicGeometry.IsIntegral Y] (f : X ⟶ Y), f (genericPoint X) = genericPoint Y → Function.Bijective (f.stalkMap (genericPoint X)).hom → ∀ x : X, Function.Injective (f.stalkMap x).hom ∧ ∀ u : X.presheaf.stalk x, ∃ a s : Y.presheaf.stalk (f x), s ≠ 0 ∧ u * (f.stalkMap x).hom s = (f.stalkMap x).hom a :=
by
  intro X Y _ _ f _ hbij x

  have spinj : ∀ (Z : Scheme.{u}) [AlgebraicGeometry.IsIntegral Z] {p q : Z} (h : p ⤳ q),
      Function.Injective (Z.presheaf.stalkSpecializes h).hom := by
    intro Z _ p q h
    have g : genericPoint Z ⤳ p := genericPoint_specializes p
    have hc : ∀ t, (Z.presheaf.stalkSpecializes g).hom ((Z.presheaf.stalkSpecializes h).hom t)
        = (Z.presheaf.stalkSpecializes (g.trans h)).hom t := fun t =>
      TopCat.Presheaf.stalkSpecializes_comp_apply _ _ _ t
    have hinj : Function.Injective (Z.presheaf.stalkSpecializes (g.trans h)).hom :=
      IsFractionRing.injective (Z.presheaf.stalk q) Z.functionField
    intro a b hab
    apply hinj
    rw [← hc, ← hc, hab]
  have hx : genericPoint X ⤳ x := genericPoint_specializes x
  have hy : f (genericPoint X) ⤳ f x := hx.map f.continuous
  have sXinj : Function.Injective (X.presheaf.stalkSpecializes hx).hom := spinj X hx
  have sYinj : Function.Injective (Y.presheaf.stalkSpecializes hy).hom := spinj Y hy
  have SQ : ∀ y, (f.stalkMap (genericPoint X)).hom ((Y.presheaf.stalkSpecializes hy).hom y)
      = (X.presheaf.stalkSpecializes hx).hom ((f.stalkMap x).hom y) := fun y =>
    Scheme.Hom.stalkSpecializes_stalkMap_apply f (genericPoint X) x hx y
  refine ⟨?_, ?_⟩
  · intro a b hab
    apply sYinj
    apply hbij.1
    rw [SQ, SQ, hab]
  · intro w
    obtain ⟨v, hv⟩ := hbij.2 ((X.presheaf.stalkSpecializes hx).hom w)
    have gY : genericPoint Y ⤳ f (genericPoint X) := genericPoint_specializes _
    have cinj : Function.Injective (Y.presheaf.stalkSpecializes gY).hom := spinj Y gY
    have halg : ∀ t, algebraMap (Y.presheaf.stalk (f x)) Y.functionField t
        = (Y.presheaf.stalkSpecializes gY).hom ((Y.presheaf.stalkSpecializes hy).hom t) := fun t =>
      (TopCat.Presheaf.stalkSpecializes_comp_apply _ _ _ t).symm
    obtain ⟨⟨a, s⟩, hs⟩ := IsLocalization.surj (nonZeroDivisors (Y.presheaf.stalk (f x)))
      ((Y.presheaf.stalkSpecializes gY).hom v)
    simp only at hs
    rw [halg, halg, ← map_mul] at hs
    have hF : v * (Y.presheaf.stalkSpecializes hy).hom s = (Y.presheaf.stalkSpecializes hy).hom a :=
      cinj hs
    refine ⟨a, s, nonZeroDivisors.ne_zero s.2, ?_⟩
    apply sXinj
    rw [map_mul, ← hv, ← SQ, ← SQ, ← map_mul, hF]

theorem wcpa_dj_glt_ccg_chart_integral : ∀ (k : Type u) [Field k] (N : ℕ) (T C : Scheme.{u}) (sT : T ⟶ Spec (.of k)) (π : C ⟶ T) (A : C ⟶ wcProjK k N) (hA : π ≫ sT = A ≫ wcProjKStr k N), IsFinite (Limits.pullback.lift π A hA) → ∀ (k₀ : Fin (N + 1)) (c : C) (hc : A c ∈ wcSgD k N k₀), ∃ (V : C.Opens) (_ : IsAffineOpen V) (hcV : c ∈ V), ∀ b : Γ(C, V), IsIntegral (Subring.closure (Set.range (π.stalkMap c).hom ∪ Set.range (fun l => (C.presheaf.germ (A ⁻¹ᵁ wcSgD k N k₀) c hc).hom ((A.app (wcSgD k N k₀)).hom (wcSgE k N k₀ l))))) ((C.presheaf.germ V c hcV).hom b) :=
by
  intro k _ N T C sT π A hA hL k₀ c hc
  have chart : ∀ (S X Y : Scheme.{u}) [IsAffine S] (f : X ⟶ S) (g : Y ⟶ S) (U : X.Opens)
      (C : Y.Opens), IsAffineOpen U → IsAffineOpen C →
      IsAffineOpen ((Limits.pullback.fst f g) ⁻¹ᵁ U ⊓ (Limits.pullback.snd f g) ⁻¹ᵁ C) ∧
      ∀ t : Γ(Limits.pullback f g, (Limits.pullback.fst f g) ⁻¹ᵁ U ⊓
        (Limits.pullback.snd f g) ⁻¹ᵁ C), t ∈ Subring.closure
          (Set.range (((Limits.pullback f g).presheaf.map (homOfLE (inf_le_left :
            (Limits.pullback.fst f g) ⁻¹ᵁ U ⊓ (Limits.pullback.snd f g) ⁻¹ᵁ C ≤
              (Limits.pullback.fst f g) ⁻¹ᵁ U)).op).hom.comp ((Limits.pullback.fst f g).app U).hom) ∪
          Set.range (((Limits.pullback f g).presheaf.map (homOfLE (inf_le_right :
            (Limits.pullback.fst f g) ⁻¹ᵁ U ⊓ (Limits.pullback.snd f g) ⁻¹ᵁ C ≤
              (Limits.pullback.snd f g) ⁻¹ᵁ C)).op).hom.comp ((Limits.pullback.snd f g).app C).hom)) := by
    intro S X Y _ f g U C hU hC

    have s2 : ∀ (R A B P : CommRingCat.{u}) (f : R ⟶ A) (g : R ⟶ B) (inl : A ⟶ P) (inr : B ⟶ P),
        IsPushout f g inl inr → ∀ x : P, x ∈ Subring.closure (Set.range inl.hom ∪ Set.range inr.hom) := by
      intro R A B P f g inl inr hP x
      let S := Subring.closure (Set.range inl.hom ∪ Set.range inr.hom)
      let inl' : A ⟶ CommRingCat.of S := CommRingCat.ofHom (RingHom.codRestrict inl.hom S
        (fun a => Subring.subset_closure (Or.inl ⟨a, rfl⟩)))
      let inr' : B ⟶ CommRingCat.of S := CommRingCat.ofHom (RingHom.codRestrict inr.hom S
        (fun b => Subring.subset_closure (Or.inr ⟨b, rfl⟩)))
      have hw : f ≫ inl' = g ≫ inr' := by
        ext y
        exact ConcreteCategory.congr_hom hP.w y
      let d := hP.desc inl' inr' hw
      have hε : d ≫ CommRingCat.ofHom S.subtype = 𝟙 P := by
        apply hP.hom_ext
        · rw [Category.comp_id, ← Category.assoc, hP.inl_desc]
          ext a
          rfl
        · rw [Category.comp_id, ← Category.assoc, hP.inr_desc]
          ext a
          rfl
      have hx : (S.subtype (d x)) = x := by
        have := ConcreteCategory.congr_hom hε x
        exact this
      rw [← hx]
      exact (d x).property

    have s3 : ∀ (X Y : Scheme.{u}) (f : X ⟶ Y) (U : Y.Opens) (V : X.Opens) (e : V ≤ f ⁻¹ᵁ U),
        (f.resLE U V e).appTop ≫ V.topIso.hom = U.topIso.hom ≫ f.appLE U V e := by
      intro X Y f U V e
      rw [Scheme.Hom.appTop, Scheme.Hom.app_eq_appLE, Scheme.Hom.resLE_appLE,
        Scheme.Opens.topIso_hom, Scheme.Opens.topIso_hom]
      erw [Scheme.Hom.appLE_map, Scheme.Hom.map_appLE]

    have hP : IsPullback
        ((Limits.pullback.fst f g).resLE U ((Limits.pullback.fst f g) ⁻¹ᵁ U ⊓
          (Limits.pullback.snd f g) ⁻¹ᵁ C) inf_le_left)
        ((Limits.pullback.snd f g).resLE C ((Limits.pullback.fst f g) ⁻¹ᵁ U ⊓
          (Limits.pullback.snd f g) ⁻¹ᵁ C) inf_le_right)
        (U.ι ≫ f) (C.ι ≫ g) := by
      have comm : (Limits.pullback.fst f g).resLE U ((Limits.pullback.fst f g) ⁻¹ᵁ U ⊓
          (Limits.pullback.snd f g) ⁻¹ᵁ C) inf_le_left ≫ (U.ι ≫ f) =
          (Limits.pullback.snd f g).resLE C ((Limits.pullback.fst f g) ⁻¹ᵁ U ⊓
          (Limits.pullback.snd f g) ⁻¹ᵁ C) inf_le_right ≫ (C.ι ≫ g) := by
        rw [← Category.assoc, Scheme.Hom.resLE_comp_ι, ← Category.assoc, Scheme.Hom.resLE_comp_ι,
          Category.assoc, Category.assoc, Limits.pullback.condition]
      have hc : ∀ (s : Limits.PullbackCone (U.ι ≫ f) (C.ι ≫ g)),
          (s.fst ≫ U.ι) ≫ f = (s.snd ≫ C.ι) ≫ g := by
        intro s
        rw [Category.assoc, Category.assoc]
        exact s.condition
      have hrange : ∀ (s : Limits.PullbackCone (U.ι ≫ f) (C.ι ≫ g)),
          Set.range (Limits.pullback.lift (s.fst ≫ U.ι) (s.snd ≫ C.ι) (hc s)) ⊆
            Set.range ((Limits.pullback.fst f g) ⁻¹ᵁ U ⊓ (Limits.pullback.snd f g) ⁻¹ᵁ C).ι := by
        intro s
        rw [Scheme.Opens.range_ι]
        rintro _ ⟨x, rfl⟩
        refine ⟨?_, ?_⟩
        · show (Limits.pullback.fst f g) (Limits.pullback.lift (s.fst ≫ U.ι) (s.snd ≫ C.ι) (hc s) x) ∈ U
          rw [← Scheme.Hom.comp_apply, Limits.pullback.lift_fst, Scheme.Hom.comp_apply]
          have h : U.ι (s.fst x) ∈ Set.range U.ι := ⟨_, rfl⟩
          rwa [Scheme.Opens.range_ι] at h
        · show (Limits.pullback.snd f g) (Limits.pullback.lift (s.fst ≫ U.ι) (s.snd ≫ C.ι) (hc s) x) ∈ C
          rw [← Scheme.Hom.comp_apply, Limits.pullback.lift_snd, Scheme.Hom.comp_apply]
          have h : C.ι (s.snd x) ∈ Set.range C.ι := ⟨_, rfl⟩
          rwa [Scheme.Opens.range_ι] at h
      refine IsPullback.of_isLimit (c := Limits.PullbackCone.mk _ _ comm) ?_
      refine Limits.PullbackCone.IsLimit.mk comm
        (fun s => IsOpenImmersion.lift _ _ (hrange s)) ?_ ?_ ?_
      · intro s
        rw [← cancel_mono U.ι, Category.assoc, Scheme.Hom.resLE_comp_ι, ← Category.assoc,
          IsOpenImmersion.lift_fac, Limits.pullback.lift_fst]
      · intro s
        rw [← cancel_mono C.ι, Category.assoc, Scheme.Hom.resLE_comp_ι, ← Category.assoc,
          IsOpenImmersion.lift_fac, Limits.pullback.lift_snd]
      · intro s m h1 h2
        apply IsOpenImmersion.lift_uniq
        apply Limits.pullback.hom_ext
        · rw [Limits.pullback.lift_fst, ← h1, Category.assoc, Category.assoc, Scheme.Hom.resLE_comp_ι]
        · rw [Limits.pullback.lift_snd, ← h2, Category.assoc, Category.assoc, Scheme.Hom.resLE_comp_ι]
    haveI : IsAffine (U : Scheme.{u}) := hU
    haveI : IsAffine (C : Scheme.{u}) := hC
    have hOaff : IsAffineOpen ((Limits.pullback.fst f g) ⁻¹ᵁ U ⊓
        (Limits.pullback.snd f g) ⁻¹ᵁ C) := IsAffine.of_isIso hP.isoPullback.hom
    have hgen := s2 _ _ _ _ _ _ _ _ (isPushout_appTop_of_isPullback hP)

    have hOgen : ∀ t : Γ(Limits.pullback f g, (Limits.pullback.fst f g) ⁻¹ᵁ U ⊓
        (Limits.pullback.snd f g) ⁻¹ᵁ C), t ∈ Subring.closure
          (Set.range (((Limits.pullback f g).presheaf.map (homOfLE (inf_le_left :
            (Limits.pullback.fst f g) ⁻¹ᵁ U ⊓ (Limits.pullback.snd f g) ⁻¹ᵁ C ≤
              (Limits.pullback.fst f g) ⁻¹ᵁ U)).op).hom.comp ((Limits.pullback.fst f g).app U).hom) ∪
          Set.range (((Limits.pullback f g).presheaf.map (homOfLE (inf_le_right :
            (Limits.pullback.fst f g) ⁻¹ᵁ U ⊓ (Limits.pullback.snd f g) ⁻¹ᵁ C ≤
              (Limits.pullback.snd f g) ⁻¹ᵁ C)).op).hom.comp ((Limits.pullback.snd f g).app C).hom)) := by
      intro t
      have ht : ((Limits.pullback.fst f g) ⁻¹ᵁ U ⊓ (Limits.pullback.snd f g) ⁻¹ᵁ C).topIso.hom
          (((Limits.pullback.fst f g) ⁻¹ᵁ U ⊓ (Limits.pullback.snd f g) ⁻¹ᵁ C).topIso.inv t)
          = t := by
        exact ConcreteCategory.congr_hom
          ((Limits.pullback.fst f g) ⁻¹ᵁ U ⊓ (Limits.pullback.snd f g) ⁻¹ᵁ C).topIso.inv_hom_id t
      rw [← ht, ← Subring.mem_comap]
      refine (Subring.closure_le.mpr ?_) (hgen _)
      rintro _ (⟨y, rfl⟩ | ⟨z, rfl⟩)
      · rw [SetLike.mem_coe, Subring.mem_comap]
        apply Subring.subset_closure
        left
        refine ⟨U.topIso.hom y, ?_⟩
        have h := ConcreteCategory.congr_hom (s3 _ _ (Limits.pullback.fst f g) U
          ((Limits.pullback.fst f g) ⁻¹ᵁ U ⊓ (Limits.pullback.snd f g) ⁻¹ᵁ C) inf_le_left) y
        exact h.symm
      · rw [SetLike.mem_coe, Subring.mem_comap]
        apply Subring.subset_closure
        right
        refine ⟨C.topIso.hom z, ?_⟩
        have h := ConcreteCategory.congr_hom (s3 _ _ (Limits.pullback.snd f g) C
          ((Limits.pullback.fst f g) ⁻¹ᵁ U ⊓ (Limits.pullback.snd f g) ⁻¹ᵁ C) inf_le_right) z
        exact h.symm
    exact ⟨hOaff, hOgen⟩
  have projgen : ∀ (K : Type u) [Field K] (n : ℕ) (J : Fin (n + 1))
      (x : Γ(wcProjK K n, wcSgD K n J)),
      x ∈ Subring.closure (Set.range (wcSgE K n J) ∪ Set.range (fun c : K => (wcProjK K n).presheaf.map
        (homOfLE (le_top : wcSgD K n J ≤ ⊤)).op ((wcProjKStr K n).appTop ((Scheme.ΓSpecIso (.of K)).inv c)))) := by
    intro K _ n J x
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) := MvPolynomial.gradedAlgebra
    have hX : ∀ k : Fin (n + 1), (MvPolynomial.X k : MvPolynomial (Fin (n + 1)) K) ∈
        MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K 1 := fun k =>
      (MvPolynomial.mem_homogeneousSubmodule 1 _).mpr (MvPolynomial.isHomogeneous_X _ k)
    have GEN : ∀ (k : Fin (n + 1)) (d : ℕ) (F : MvPolynomial (Fin (n + 1)) K)
        (hF : F ∈ MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K (d • 1)),
        MvPolynomial.eval₂ ((HomogeneousLocalization.fromZeroRingHom
            (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (Submonoid.powers (MvPolynomial.X k))).comp
            (algebraMap K ↥(MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K 0)))
          (fun l => HomogeneousLocalization.Away.mk
            (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (hX k) 1
            (MvPolynomial.X l) (hX l)) F =
        HomogeneousLocalization.Away.mk
          (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (hX k) d F hF := by
      intro k d F hF
      have hFh : F.IsHomogeneous d := by
        have := (MvPolynomial.mem_homogeneousSubmodule (d • 1) F).mp hF
        simpa using this
      have scale : ∀ {L : Type u} [CommRing L] (χ : K →+* L) (g : Fin (n + 1) → L) (t : L),
          MvPolynomial.eval₂ χ (fun l => g l * t) F = t ^ d * MvPolynomial.eval₂ χ g F := by
        intro L _ χ g t
        rw [MvPolynomial.eval₂_eq, MvPolynomial.eval₂_eq, Finset.mul_sum]
        refine Finset.sum_congr rfl (fun e he => ?_)
        have hdeg : ∑ i ∈ e.support, e i = d := by
          by_contra hne
          exact (MvPolynomial.mem_support_iff.mp he) (hFh.coeff_eq_zero hne)
        simp_rw [mul_pow]
        rw [Finset.prod_mul_distrib, Finset.prod_pow_eq_pow_sum, hdeg]
        ring
      apply HomogeneousLocalization.val_injective
      rw [← HomogeneousLocalization.algebraMap_apply, ← HomogeneousLocalization.algebraMap_apply,
        MvPolynomial.eval₂_comp_left, HomogeneousLocalization.algebraMap_apply,
        HomogeneousLocalization.Away.val_mk]
      calc _ = MvPolynomial.eval₂
            ((algebraMap (MvPolynomial (Fin (n + 1)) K)
              (Localization (Submonoid.powers (MvPolynomial.X k : MvPolynomial (Fin (n + 1)) K)))).comp
              MvPolynomial.C)
            (fun l => algebraMap (MvPolynomial (Fin (n + 1)) K)
              (Localization (Submonoid.powers (MvPolynomial.X k : MvPolynomial (Fin (n + 1)) K)))
              (MvPolynomial.X l) * Localization.mk 1 (⟨MvPolynomial.X k ^ 1, ⟨1, rfl⟩⟩ :
                Submonoid.powers (MvPolynomial.X k : MvPolynomial (Fin (n + 1)) K))) F := by
            congr 1
            funext l
            simp only [Function.comp_apply, HomogeneousLocalization.algebraMap_apply,
              HomogeneousLocalization.Away.val_mk, ← Localization.mk_one_eq_algebraMap,
              Localization.mk_mul, mul_one, one_mul]
        _ = _ := by
            rw [scale]
            have h2 := MvPolynomial.eval₂_comp_left (algebraMap (MvPolynomial (Fin (n + 1)) K)
              (Localization (Submonoid.powers (MvPolynomial.X k : MvPolynomial (Fin (n + 1)) K))))
              MvPolynomial.C MvPolynomial.X F
            rw [MvPolynomial.eval₂_eta] at h2
            rw [show (fun l => algebraMap (MvPolynomial (Fin (n + 1)) K)
                (Localization (Submonoid.powers (MvPolynomial.X k : MvPolynomial (Fin (n + 1)) K)))
                (MvPolynomial.X l)) = ⇑(algebraMap (MvPolynomial (Fin (n + 1)) K)
                (Localization (Submonoid.powers (MvPolynomial.X k : MvPolynomial (Fin (n + 1)) K)))) ∘
                MvPolynomial.X from rfl, ← h2, Localization.mk_pow,
              ← Localization.mk_one_eq_algebraMap, Localization.mk_mul, Localization.mk_eq_mk_iff,
              Localization.r_iff_exists]
            refine ⟨1, ?_⟩
            simp only [one_pow, one_mul, mul_one, OneMemClass.coe_one, SubmonoidClass.coe_pow, ← pow_mul]
    have hι : ∀ (U : (Proj (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K)).Opens) a,
        U.ι.appTop a = U.topIso.inv ((Proj (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K)).presheaf.map (homOfLE (le_top : U ≤ ⊤)).op a) := by
      intro U a
      rw [Scheme.Opens.ι_appTop, Scheme.Opens.topIso_inv]
      erw [← CategoryTheory.comp_apply, ← Functor.map_comp]
      rfl
    have hconst : ∀ c : K, (Proj.awayToSection (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)).hom
        (HomogeneousLocalization.fromZeroRingHom (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K)
          (Submonoid.powers (MvPolynomial.X J)) (algebraMap K ↥(MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K 0) c)) =
        ((Proj (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K)).presheaf.map (homOfLE (le_top : (Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)) ≤ ⊤)).op).hom ((Proj.toSpecZero (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) ≫ Spec.map (CommRingCat.ofHom (algebraMap K ↥((MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) 0)))).appTop.hom ((Scheme.ΓSpecIso (.of K)).inv.hom c)) := by
      intro c
      have e0 : (Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)).ι =
          (Proj.basicOpenIsoSpec _ (MvPolynomial.X J) (hX J) Nat.one_pos).hom ≫
            Proj.awayι _ (MvPolynomial.X J) (hX J) Nat.one_pos := by
        rw [← Proj.basicOpenIsoSpec_inv_ι, Iso.hom_inv_id_assoc]
      have e1 : (Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)).ι ≫
          (Proj.toSpecZero (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) ≫ Spec.map (CommRingCat.ofHom (algebraMap K ↥((MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) 0)))) =
          (Proj.basicOpenIsoSpec _ (MvPolynomial.X J) (hX J) Nat.one_pos).hom ≫
            Spec.map (CommRingCat.ofHom ((HomogeneousLocalization.fromZeroRingHom
              (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (Submonoid.powers (MvPolynomial.X J))).comp
              (algebraMap K ↥(MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K 0)))) := by
        rw [e0, Category.assoc, Proj.awayι_toSpecZero_assoc, ← Spec.map_comp]
        rfl
      have e2 := congrArg (fun g => (Scheme.Hom.appTop g).hom ((Scheme.ΓSpecIso (.of K)).inv.hom c)) e1
      simp only [Scheme.Hom.comp_appTop, CommRingCat.hom_comp, RingHom.comp_apply] at e2
      have e3 := congrArg (fun g => g.hom c) (Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom ((HomogeneousLocalization.fromZeroRingHom
              (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (Submonoid.powers (MvPolynomial.X J))).comp
              (algebraMap K ↥(MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K 0)))))
      simp only [CommRingCat.hom_comp, RingHom.comp_apply] at e3
      rw [← e3] at e2
      have hi : ∀ y, (Proj.basicOpenIsoSpec _ (MvPolynomial.X J) (hX J) Nat.one_pos).hom.appTop
          ((Scheme.ΓSpecIso (CommRingCat.of (HomogeneousLocalization.Away (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)))).inv y) =
          (Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)).topIso.inv
            ((Proj.awayToSection (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)).hom y) := by
        intro y
        rw [Proj.basicOpenIsoSpec_hom]
        have hh := Proj.basicOpenToSpec_app_top (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)
        calc _ = ((Scheme.ΓSpecIso (CommRingCat.of (HomogeneousLocalization.Away (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)))).hom ≫ Proj.awayToSection _ (MvPolynomial.X J) ≫ (Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)).topIso.inv) ((Scheme.ΓSpecIso (CommRingCat.of (HomogeneousLocalization.Away (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)))).inv y) := by rw [← hh]
          _ = _ := by
            change (Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)).topIso.inv
              ((Proj.awayToSection _ (MvPolynomial.X J)) ((Scheme.ΓSpecIso _).hom ((Scheme.ΓSpecIso _).inv y))) = _
            rw [Iso.inv_hom_id_apply]
      have e4 := e2.trans (hi _)
      rw [hι] at e4
      have hinj : ∀ a b : Γ(Proj (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K), Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)),
          (Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)).topIso.inv a =
            (Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)).topIso.inv b → a = b := by
        intro a b h
        have h' := congrArg (fun w => (Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)).topIso.hom w) h
        simp only [Iso.inv_hom_id_apply] at h'
        exact h'
      exact (hinj _ _ e4).symm
    have hs : Proj.awayToSection (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K)
        (MvPolynomial.X J) ((Proj.basicOpenIsoAway _ (MvPolynomial.X J) (hX J) Nat.one_pos).inv x) = x := by
      have := Iso.inv_hom_id_apply (Proj.basicOpenIsoAway _ (MvPolynomial.X J) (hX J) Nat.one_pos) x
      rwa [Proj.basicOpenIsoAway_hom] at this
    obtain ⟨d, F, hF, hmk⟩ := HomogeneousLocalization.Away.mk_surjective
      (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (hX J)
      ((Proj.basicOpenIsoAway _ (MvPolynomial.X J) (hX J) Nat.one_pos).inv x)
    rw [← hs, ← hmk, ← GEN J d F hF]
    change (Proj.awayToSection (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) (MvPolynomial.X J)).hom _ ∈ _
    rw [MvPolynomial.eval₂_comp_left]
    apply MvPolynomial.eval₂_mem
    · intro i _
      apply Subring.subset_closure
      right
      exact ⟨F.coeff i, (hconst (F.coeff i)).symm⟩
    · intro l
      apply Subring.subset_closure
      left
      exact ⟨l, rfl⟩

  have itrans : ∀ {R B D : Type u} [CommRing R] [CommRing B] [CommRing D] (θ : R →+* B)
      (γ : B →+* D) (S : Subring D), θ.IsIntegral → (∀ r : R, γ (θ r) ∈ S) →
      ∀ b : B, _root_.IsIntegral S (γ b) := by
    intro R B D _ _ _ θ γ S hθ hS b
    obtain ⟨p, hpm, hp⟩ := hθ b
    let ψ : R →+* S := (γ.comp θ).codRestrict S hS
    refine ⟨p.map ψ, hpm.map ψ, ?_⟩
    rw [Polynomial.eval₂_map]
    have hψ : (algebraMap S D).comp ψ = γ.comp θ := by ext r; rfl
    rw [hψ, ← Polynomial.hom_eval₂, hp, map_zero]
  have closure_trick : ∀ {R D : Type u} [CommRing R] [CommRing D] (φ : R →+* D) (S : Subring D)
      (G : Set R), (∀ g ∈ G, φ g ∈ S) → ∀ r ∈ Subring.closure G, φ r ∈ S := by
    intro R D _ _ φ S G hG r hr
    exact (Subring.closure_le.mpr (fun g hg => hG g hg) : Subring.closure G ≤ S.comap φ) hr
  have mem_of_eq : ∀ {D : Type u} [CommRing D] (S : Subring D) (a b : D), a = b → b ∈ S → a ∈ S :=
    fun S a b h hb => h ▸ hb
  have gtrans : ∀ {X Y Z : Scheme.{u}} (L : X ⟶ Y) (q : Y ⟶ Z) (p : X ⟶ Z), L ≫ q = p →
      ∀ (U : Z.Opens) (Ω : Y.Opens) (h : Ω ≤ q ⁻¹ᵁ U) (x : X) (hx : x ∈ L ⁻¹ᵁ Ω) (hpx : p x ∈ U)
        (s : Γ(Z, U)),
      (X.presheaf.germ (L ⁻¹ᵁ Ω) x hx).hom ((L.app Ω).hom ((Y.presheaf.map (homOfLE h).op).hom
        ((q.app U).hom s))) = (p.stalkMap x).hom ((Z.presheaf.germ U (p x) hpx).hom s) := by
    intro X Y Z L q p hLq U Ω h x hx hpx s
    subst hLq
    calc (X.presheaf.germ (L ⁻¹ᵁ Ω) x hx).hom ((L.app Ω).hom ((Y.presheaf.map (homOfLE h).op).hom
          ((q.app U).hom s)))
        = (X.presheaf.germ (L ⁻¹ᵁ Ω) x hx).hom ((X.presheaf.map
            ((TopologicalSpace.Opens.map L.base).map (homOfLE h)).op).hom
            ((L.app (q ⁻¹ᵁ U)).hom ((q.app U).hom s))) := by
          have e := ConcreteCategory.congr_hom (Scheme.Hom.naturality L (homOfLE h).op)
            ((q.app U).hom s)
          exact congrArg (X.presheaf.germ (L ⁻¹ᵁ Ω) x hx).hom e
      _ = (X.presheaf.germ (L ⁻¹ᵁ (q ⁻¹ᵁ U)) x (h hx)).hom
            ((L.app (q ⁻¹ᵁ U)).hom ((q.app U).hom s)) :=
          TopCat.Presheaf.germ_res_apply _ _ _ _ _
      _ = ((L ≫ q).stalkMap x).hom ((Z.presheaf.germ U ((L ≫ q) x) hpx).hom s) := by
          rw [Scheme.Hom.germ_stalkMap_apply, Scheme.Hom.comp_app]
          rfl

  obtain ⟨U, hU, hcU, -⟩ := exists_isAffineOpen_mem_and_subset (x := π c) (U := ⊤) trivial
  have hD : IsAffineOpen (wcSgD k N k₀) := by
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) :=
      MvPolynomial.gradedAlgebra
    exact Proj.isAffineOpen_basicOpen _ (MvPolynomial.X k₀)
      ((MvPolynomial.mem_homogeneousSubmodule 1 _).mpr (MvPolynomial.isHomogeneous_X k k₀)) one_pos
  obtain ⟨hΩ, hgen⟩ := chart (Spec (.of k)) T (wcProjK k N) sT (wcProjKStr k N) U
    (wcSgD k N k₀) hU hD
  haveI := hL
  have hL1 : Limits.pullback.lift π A hA ≫ Limits.pullback.fst sT (wcProjKStr k N) = π :=
    Limits.pullback.lift_fst _ _ _
  have hL2 : Limits.pullback.lift π A hA ≫ Limits.pullback.snd sT (wcProjKStr k N) = A :=
    Limits.pullback.lift_snd _ _ _
  have hVaff := hΩ.preimage (Limits.pullback.lift π A hA)
  have hcV : c ∈ Limits.pullback.lift π A hA ⁻¹ᵁ (Limits.pullback.fst sT (wcProjKStr k N) ⁻¹ᵁ U ⊓
      Limits.pullback.snd sT (wcProjKStr k N) ⁻¹ᵁ wcSgD k N k₀) := by
    rw [Scheme.Hom.mem_preimage, TopologicalSpace.Opens.mem_inf, Scheme.Hom.mem_preimage,
      Scheme.Hom.mem_preimage, ← Scheme.Hom.comp_apply, ← Scheme.Hom.comp_apply, hL1, hL2]
    exact ⟨hcU, hc⟩
  have coord : ∀ t : Γ(wcProjK k N, wcSgD k N k₀),
      (C.presheaf.germ (A ⁻¹ᵁ wcSgD k N k₀) c hc).hom ((A.app (wcSgD k N k₀)).hom t) ∈
        Subring.closure (Set.range (π.stalkMap c).hom ∪ Set.range (fun l =>
          (C.presheaf.germ (A ⁻¹ᵁ wcSgD k N k₀) c hc).hom
            ((A.app (wcSgD k N k₀)).hom (wcSgE k N k₀ l)))) := by
    intro t
    refine closure_trick ((C.presheaf.germ (A ⁻¹ᵁ wcSgD k N k₀) c hc).hom.comp
      (A.app (wcSgD k N k₀)).hom) _ _ ?_ t (projgen k N k₀ t)
    rintro _ (⟨l, rfl⟩ | ⟨a, rfl⟩)
    · exact Subring.subset_closure (Or.inr ⟨l, rfl⟩)
    · have e := gtrans A (wcProjKStr k N) (π ≫ sT) hA.symm ⊤ (wcSgD k N k₀)
        (fun _ _ => trivial) c hc trivial ((Scheme.ΓSpecIso (.of k)).inv a)
      rw [Scheme.Hom.stalkMap_comp] at e
      exact mem_of_eq _ _ _ e (Subring.subset_closure (Or.inl ⟨_, rfl⟩))
  refine ⟨_, hVaff, hcV, ?_⟩
  intro b
  have hθ : (Scheme.Hom.app (Limits.pullback.lift π A hA)
      (Limits.pullback.fst sT (wcProjKStr k N) ⁻¹ᵁ U ⊓
        Limits.pullback.snd sT (wcProjKStr k N) ⁻¹ᵁ wcSgD k N k₀)).hom.IsIntegral :=
    (IsFinite.finite_app _ _ hΩ).to_isIntegral
  refine itrans _ (C.presheaf.germ _ c hcV).hom _ hθ ?_ b
  intro r
  refine closure_trick ((C.presheaf.germ _ c hcV).hom.comp (Scheme.Hom.app
    (Limits.pullback.lift π A hA) (Limits.pullback.fst sT (wcProjKStr k N) ⁻¹ᵁ U ⊓
        Limits.pullback.snd sT (wcProjKStr k N) ⁻¹ᵁ wcSgD k N k₀)).hom) _ _ ?_ r (hgen r)
  rintro _ (⟨s, rfl⟩ | ⟨t, rfl⟩)
  · have e := gtrans (Limits.pullback.lift π A hA) (Limits.pullback.fst sT (wcProjKStr k N)) π hL1
      U _ inf_le_left c hcV hcU s
    exact mem_of_eq _ _ _ e (Subring.subset_closure (Or.inl ⟨_, rfl⟩))
  · have e := gtrans (Limits.pullback.lift π A hA) (Limits.pullback.snd sT (wcProjKStr k N)) A hL2
      (wcSgD k N k₀) _ inf_le_right c hcV hc t
    rw [Scheme.Hom.germ_stalkMap_apply] at e
    exact mem_of_eq _ _ _ e (coord t)

theorem wcpa_dj_glt_ccg_ratio_identity : ∀ (k : Type u) [Field k] (N : ℕ) (T C : Scheme.{u}) [AlgebraicGeometry.IsIntegral T] [AlgebraicGeometry.IsIntegral C] (π : C ⟶ T) (O' : T.Opens) (A : C ⟶ wcProjK k N) (a' : O'.toScheme ⟶ wcProjK k N) (I : Finset (Fin (N + 1))) (i₀ k₀ : Fin (N + 1)), i₀ ∈ I → k₀ ∈ I → (π ⁻¹ᵁ O').ι ≫ A = (π ∣_ O') ≫ a' → (∀ o (i : Fin (N + 1)), i ∉ I → a' o ∉ wcSgD k N i) → π (genericPoint C) = genericPoint T → genericPoint T ∈ O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀) → ∀ (c : C) (hc : A c ∈ wcSgD k N k₀) (num den : Fin (N + 1) → T.presheaf.stalk (π c)), (∀ i ∈ I, wcpaDjStcRatioLink (wcpaDjStcRatioSec k O' a' i₀ i) (π c) (num i) (den i)) → ∀ l, (C.presheaf.germ (A ⁻¹ᵁ wcSgD k N k₀) c hc).hom ((A.app (wcSgD k N k₀)).hom (wcSgE k N k₀ l)) * (π.stalkMap c).hom (wcpaDjGltCcG I num den k₀) = (π.stalkMap c).hom (wcpaDjGltCcG I num den l) :=
by
  intro k _ N T C _ _ π O' A a' I i₀ k₀ hi₀ hk₀ hM4 hC1 hgen hη c hc num den hlink l
  classical

  have L1 : ∀ {σ : Type u} {A : Type u} [CommRing A] [SetLike σ A] [AddSubgroupClass σ A] (𝒜 : ℕ → σ) [GradedRing 𝒜] (f g : A) (hf : f ∈ 𝒜 1) (hg : g ∈ 𝒜 1), Proj.basicOpen 𝒜 f ⊓ Proj.basicOpen 𝒜 g = (Proj 𝒜).basicOpen (Proj.awayToSection 𝒜 f (HomogeneousLocalization.Away.mk 𝒜 hf 1 g hg)) := by
    intro σ A _ _ _ 𝒜 _ f g hf hg
    have ha : HomogeneousLocalization.Away.isLocalizationElem hf hg =
        HomogeneousLocalization.Away.mk 𝒜 hf 1 g hg := by
      apply HomogeneousLocalization.val_injective
      simp [HomogeneousLocalization.Away.val_mk]
    have hb : (Proj.basicOpen 𝒜 f).ι ⁻¹ᵁ Proj.basicOpen 𝒜 g =
        (Proj.basicOpenIsoSpec 𝒜 f hf Nat.one_pos).hom ⁻¹ᵁ
          PrimeSpectrum.basicOpen (HomogeneousLocalization.Away.mk 𝒜 hf 1 g hg) := by
      have h1 := Proj.awayι_preimage_basicOpen 𝒜 hf Nat.one_pos hg Nat.one_pos
      rw [← Proj.basicOpenIsoSpec_inv_ι, Scheme.Hom.comp_preimage, ha] at h1
      rw [← h1, ← Scheme.Hom.comp_preimage, Iso.hom_inv_id, Scheme.Hom.id_preimage]
    have hd : (Proj 𝒜).basicOpen (Proj.awayToSection 𝒜 f (HomogeneousLocalization.Away.mk 𝒜 hf 1 g hg)) =
        (Proj.basicOpen 𝒜 f).ι ''ᵁ ((Proj.basicOpenIsoSpec 𝒜 f hf Nat.one_pos).hom ⁻¹ᵁ
          PrimeSpectrum.basicOpen (HomogeneousLocalization.Away.mk 𝒜 hf 1 g hg)) := by
      have hsp := basicOpen_eq_of_affine (R := CommRingCat.of (HomogeneousLocalization.Away 𝒜 f))
        (HomogeneousLocalization.Away.mk 𝒜 hf 1 g hg)
      have h3 : (Proj.basicOpenIsoSpec 𝒜 f hf Nat.one_pos).hom ⁻¹ᵁ
          PrimeSpectrum.basicOpen (HomogeneousLocalization.Away.mk 𝒜 hf 1 g hg) =
          (Proj.basicOpenIsoSpec 𝒜 f hf Nat.one_pos).hom ⁻¹ᵁ
          (Spec _).basicOpen ((Scheme.ΓSpecIso _).inv (HomogeneousLocalization.Away.mk 𝒜 hf 1 g hg)) :=
        congrArg (fun V => (Proj.basicOpenIsoSpec 𝒜 f hf Nat.one_pos).hom ⁻¹ᵁ V) hsp.symm
      rw [h3, ← Scheme.Opens.ι_image_basicOpen_topIso_inv, Scheme.preimage_basicOpen_top]
      congr 2
      rw [Proj.basicOpenIsoSpec_hom]
      change _ = ConcreteCategory.hom (Scheme.Hom.app (Proj.basicOpenToSpec 𝒜 f) ⊤) _
      rw [Proj.basicOpenToSpec_app_top]
      exact congrArg (fun y => ConcreteCategory.hom (Proj.basicOpen 𝒜 f).topIso.inv
        (ConcreteCategory.hom (Proj.awayToSection 𝒜 f) y))
        (Iso.inv_hom_id_apply (Scheme.ΓSpecIso (CommRingCat.of (HomogeneousLocalization.Away 𝒜 f)))
          (HomogeneousLocalization.Away.mk 𝒜 hf 1 g hg)).symm
    rw [hd, ← hb, Scheme.Hom.image_preimage_eq_opensRange_inf, Scheme.Opens.opensRange_ι]
  have L2 : ∀ {σ : Type u} {A : Type u} [CommRing A] [SetLike σ A] [AddSubgroupClass σ A] (𝒜 : ℕ → σ) [GradedRing 𝒜] (f g h : A) (hf : f ∈ 𝒜 1) (hg : g ∈ 𝒜 1) (hh : h ∈ 𝒜 1), (Proj 𝒜).presheaf.map (homOfLE (inf_le_left : Proj.basicOpen 𝒜 f ⊓ Proj.basicOpen 𝒜 g ≤ Proj.basicOpen 𝒜 f)).op (Proj.awayToSection 𝒜 f (HomogeneousLocalization.Away.mk 𝒜 hf 1 h hh)) = (Proj 𝒜).presheaf.map (homOfLE (inf_le_left : Proj.basicOpen 𝒜 f ⊓ Proj.basicOpen 𝒜 g ≤ Proj.basicOpen 𝒜 f)).op (Proj.awayToSection 𝒜 f (HomogeneousLocalization.Away.mk 𝒜 hf 1 g hg)) * (Proj 𝒜).presheaf.map (homOfLE (inf_le_right : Proj.basicOpen 𝒜 f ⊓ Proj.basicOpen 𝒜 g ≤ Proj.basicOpen 𝒜 g)).op (Proj.awayToSection 𝒜 g (HomogeneousLocalization.Away.mk 𝒜 hg 1 h hh)) := by
    intro σ A _ _ _ 𝒜 _ f g h hf hg hh
    have key : ∀ (W : (Proj 𝒜).Opens) (_ : W = Proj.basicOpen 𝒜 (f * g))
        (h₁ : W ≤ Proj.basicOpen 𝒜 f) (h₂ : W ≤ Proj.basicOpen 𝒜 g),
        (Proj 𝒜).presheaf.map (homOfLE h₁).op
            (Proj.awayToSection 𝒜 f (HomogeneousLocalization.Away.mk 𝒜 hf 1 h hh)) =
          (Proj 𝒜).presheaf.map (homOfLE h₁).op
            (Proj.awayToSection 𝒜 f (HomogeneousLocalization.Away.mk 𝒜 hf 1 g hg)) *
          (Proj 𝒜).presheaf.map (homOfLE h₂).op
            (Proj.awayToSection 𝒜 g (HomogeneousLocalization.Away.mk 𝒜 hg 1 h hh)) := by
      rintro W rfl h₁ h₂
      have e1 : ∀ a, (Proj 𝒜).presheaf.map (homOfLE h₁).op (Proj.awayToSection 𝒜 f a) =
          Proj.awayToSection 𝒜 (f * g) (HomogeneousLocalization.awayMap 𝒜 hg rfl a) := by
        intro a
        have := ConcreteCategory.congr_hom
          (Proj.awayMap_awayToSection 𝒜 hg (rfl : f * g = f * g)) a
        exact this.symm
      have e2 : ∀ b, (Proj 𝒜).presheaf.map (homOfLE h₂).op (Proj.awayToSection 𝒜 g b) =
          Proj.awayToSection 𝒜 (f * g) (HomogeneousLocalization.awayMap 𝒜 hf (mul_comm f g) b) := by
        intro b
        have := ConcreteCategory.congr_hom
          (Proj.awayMap_awayToSection 𝒜 (f := g) hf (mul_comm f g)) b
        exact this.symm
      rw [e1, e1, e2, ← map_mul]
      congr 1
      rw [HomogeneousLocalization.awayMap_mk, HomogeneousLocalization.awayMap_mk,
        HomogeneousLocalization.awayMap_mk]
      apply HomogeneousLocalization.val_injective
      rw [HomogeneousLocalization.val_mul, HomogeneousLocalization.Away.val_mk,
        HomogeneousLocalization.Away.val_mk, HomogeneousLocalization.Away.val_mk,
        Localization.mk_mul, Localization.mk_eq_mk_iff, Localization.r_iff_exists]
      refine ⟨1, ?_⟩
      simp only [Submonoid.coe_mul, pow_one, OneMemClass.coe_one, one_mul]
      ring
    exact key _ (Proj.basicOpen_mul 𝒜 f g).symm _ _
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) := MvPolynomial.gradedAlgebra
  have hX : ∀ j : Fin (N + 1), (MvPolynomial.X j : MvPolynomial (Fin (N + 1)) k) ∈
      MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 1 := fun j =>
    (MvPolynomial.mem_homogeneousSubmodule 1 _).mpr (MvPolynomial.isHomogeneous_X _ j)
  have CF2 : ∀ J L : Fin (N + 1), (wcProjK k N).basicOpen (wcSgE k N J L) = wcSgD k N J ⊓ wcSgD k N L :=
    fun J L => (L1 _ (MvPolynomial.X J) (MvPolynomial.X L) (hX J) (hX L)).symm
  have CF3 : ∀ J L j : Fin (N + 1), ((wcProjK k N).presheaf.map (homOfLE (inf_le_left : wcSgD k N J ⊓ wcSgD k N L ≤ wcSgD k N J)).op).hom (wcSgE k N J j) = ((wcProjK k N).presheaf.map (homOfLE (inf_le_left : wcSgD k N J ⊓ wcSgD k N L ≤ wcSgD k N J)).op).hom (wcSgE k N J L) * ((wcProjK k N).presheaf.map (homOfLE (inf_le_right : wcSgD k N J ⊓ wcSgD k N L ≤ wcSgD k N L)).op).hom (wcSgE k N L j) :=
    fun J L j => L2 _ (MvPolynomial.X J) (MvPolynomial.X L) (MvPolynomial.X j) (hX J) (hX L) (hX j)

  have Gkey : ∀ {X Y : Scheme.{u}} (f g : X ⟶ Y), f = g → ∀ (U : Y.Opens) (s : Γ(Y, U)) (x : X)
      (hf : f x ∈ U) (hg : g x ∈ U),
      (X.presheaf.germ (f ⁻¹ᵁ U) x hf).hom ((f.app U).hom s) =
        (X.presheaf.germ (g ⁻¹ᵁ U) x hg).hom ((g.app U).hom s) := by
    rintro X Y f g rfl U s x hf hg
    rfl
  have Gcomp : ∀ {X Y Z : Scheme.{u}} (f : X ⟶ Y) (g : Y ⟶ Z) (U : Z.Opens) (s : Γ(Z, U)) (x : X)
      (h : (f ≫ g) x ∈ U),
      (X.presheaf.germ ((f ≫ g) ⁻¹ᵁ U) x h).hom (((f ≫ g).app U).hom s) =
        (f.stalkMap x).hom ((Y.presheaf.germ (g ⁻¹ᵁ U) (f x) h).hom ((g.app U).hom s)) := by
    intro X Y Z f g U s x h
    exact (Scheme.Hom.germ_stalkMap_apply f (g ⁻¹ᵁ U) x h ((g.app U).hom s)).symm

  have alg : ∀ (R K : Type u) [CommRing R] [CommRing K] (Φ : R →+* K) (Z ζ : Fin (N + 1) → K)
      (nm dn : Fin (N + 1) → R), (∀ i ∈ I, Z i * Φ (dn i) = Φ (nm i)) →
      (∀ j, Z j = Z k₀ * ζ j) → (∀ j, j ∉ I → ζ j = 0) →
      ∀ j, ζ j * Φ (wcpaDjGltCcG I nm dn k₀) = Φ (wcpaDjGltCcG I nm dn j) := by
    intro R K _ _ Φ Z ζ nm dn hZ hcc hv j
    have ha : ∀ i ∈ I, Φ (wcpaDjGltCcG I nm dn i) = Z i * ∏ m ∈ I, Φ (dn m) := by
      intro i hi
      have hp := Finset.mul_prod_erase I (fun m => Φ (dn m)) hi
      unfold wcpaDjGltCcG
      rw [if_pos hi, map_mul, map_prod, ← hZ i hi, mul_assoc, hp]
    by_cases hj : j ∈ I
    · rw [ha k₀ hk₀, ha j hj, hcc j]
      ring
    · rw [hv j hj]
      unfold wcpaDjGltCcG
      rw [if_neg hj, map_zero, zero_mul]

  have hξc : genericPoint C ⤳ c := genericPoint_specializes c
  have hw' : π (genericPoint C) ⤳ π c := hξc.map π.continuous
  have hwV : π (genericPoint C) ∈ O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀) := by
    rw [hgen]; exact hη
  have hξO : genericPoint C ∈ π ⁻¹ᵁ O' :=
    show π (genericPoint C) ∈ O' from Scheme.Opens.ι_image_le O' _ hwV
  let x' : (π ⁻¹ᵁ O').toScheme := ⟨genericPoint C, hξO⟩
  have hAo : A ((π ⁻¹ᵁ O').ι x') = a' ((π ∣_ O') x') := by
    rw [← Scheme.Hom.comp_apply, hM4, Scheme.Hom.comp_apply]
  have hιo : O'.ι ((π ∣_ O') x') = π (genericPoint C) := by
    rw [← Scheme.Hom.comp_apply, morphismRestrict_ι, Scheme.Hom.comp_apply] <;> rfl
  have ho : (π ∣_ O') x' ∈ a' ⁻¹ᵁ wcSgD k N i₀ := by
    have h := hwV
    rw [← hιo] at h
    exact (Scheme.Hom.apply_mem_image_iff O'.ι).mp h
  have hA₀ : A (genericPoint C) ∈ wcSgD k N i₀ := by
    have h : A ((π ⁻¹ᵁ O').ι x') ∈ wcSgD k N i₀ := by rw [hAo]; exact ho
    exact h
  have hAk : A (genericPoint C) ∈ wcSgD k N k₀ :=
    hξc.mem_open (A ⁻¹ᵁ wcSgD k N k₀).isOpen hc
  have havoid : ∀ j, j ∉ I → A (genericPoint C) ∉ wcSgD k N j := by
    intro j hj
    have h : A ((π ⁻¹ᵁ O').ι x') ∉ wcSgD k N j := by rw [hAo]; exact hC1 _ j hj
    exact h

  have hjinj : Function.Injective ((π ⁻¹ᵁ O').ι.stalkMap x').hom :=
    (ConcreteCategory.bijective_of_isIso ((π ⁻¹ᵁ O').ι.stalkMap x')).1
  have sp_inj : Function.Injective (C.presheaf.stalkSpecializes hξc).hom := by
    rw [injective_iff_map_eq_zero]
    intro s hs
    obtain ⟨U, hcU, σ, rfl⟩ := TopCat.Presheaf.exists_germ_eq C.presheaf s
    rw [TopCat.Presheaf.germ_stalkSpecializes_apply] at hs
    have hξU : genericPoint C ∈ U := hξc.mem_open U.isOpen hcU
    have h0 : σ = 0 := germ_injective_of_isIntegral C (genericPoint C) hξU (by rw [hs, map_zero])
    rw [h0, map_zero]

  have transfer : ∀ i, (π.stalkMap (genericPoint C)).hom
      ((T.presheaf.germ (O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀)) (π (genericPoint C)) hwV).hom
        (wcpaDjStcRatioSec k O' a' i₀ i)) =
      (C.presheaf.germ (A ⁻¹ᵁ wcSgD k N i₀) (genericPoint C) hA₀).hom
        ((A.app (wcSgD k N i₀)).hom (wcSgE k N i₀ i)) := by
    intro i
    apply hjinj
    have hrV : ((π ∣_ O') ≫ O'.ι) x' ∈ O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀) := by
      rw [morphismRestrict_ι]; exact hwV
    have hra : ((π ∣_ O') ≫ a') x' ∈ wcSgD k N i₀ := by
      rw [← hM4]; exact hA₀
    have hι : (O'.ι.app (O'.ι ''ᵁ (a' ⁻¹ᵁ wcSgD k N i₀))).hom (wcpaDjStcRatioSec k O' a' i₀ i) =
        (O'.toScheme.presheaf.map (eqToHom (Scheme.Hom.preimage_image_eq O'.ι
          (a' ⁻¹ᵁ wcSgD k N i₀))).op).hom ((a'.app (wcSgD k N i₀)).hom (wcSgE k N i₀ i)) := by
      have h := Scheme.Hom.appIso_inv_app O'.ι (a' ⁻¹ᵁ wcSgD k N i₀)
      exact congrArg (fun φ => φ.hom ((a'.app (wcSgD k N i₀)).hom (wcSgE k N i₀ i))) h
    refine (congrArg ((π ⁻¹ᵁ O').ι.stalkMap x').hom
      (Scheme.Hom.germ_stalkMap_apply π _ (genericPoint C) hwV _)).trans ?_
    refine (Gcomp (π ⁻¹ᵁ O').ι π _ _ x' hwV).symm.trans ?_
    refine (Gkey _ _ (morphismRestrict_ι π O').symm _ _ x' _ hrV).trans ?_
    refine (Gcomp (π ∣_ O') O'.ι _ _ x' hrV).trans ?_
    rw [hι]
    erw [TopCat.Presheaf.germ_res_apply]
    refine (Gcomp (π ∣_ O') a' (wcSgD k N i₀) (wcSgE k N i₀ i) x' hra).symm.trans ?_
    refine (Gkey _ _ hM4.symm _ _ x' hra hA₀).trans ?_
    exact Gcomp (π ⁻¹ᵁ O').ι A _ _ x' hA₀

  have hZ : ∀ i ∈ I, (C.presheaf.germ (A ⁻¹ᵁ wcSgD k N i₀) (genericPoint C) hA₀).hom
        ((A.app (wcSgD k N i₀)).hom (wcSgE k N i₀ i)) *
        (C.presheaf.stalkSpecializes hξc).hom ((π.stalkMap c).hom (den i)) =
      (C.presheaf.stalkSpecializes hξc).hom ((π.stalkMap c).hom (num i)) := by
    intro i hi
    have h1 := congrArg (π.stalkMap (genericPoint C)).hom
      ((hlink i hi).2 (π (genericPoint C)) hwV hw')
    rw [map_mul, Scheme.Hom.stalkSpecializes_stalkMap_apply π (genericPoint C) c hξc,
      Scheme.Hom.stalkSpecializes_stalkMap_apply π (genericPoint C) c hξc] at h1
    rw [← transfer i]
    exact h1
  have hcoc : ∀ j, (C.presheaf.germ (A ⁻¹ᵁ wcSgD k N i₀) (genericPoint C) hA₀).hom
        ((A.app (wcSgD k N i₀)).hom (wcSgE k N i₀ j)) =
      (C.presheaf.germ (A ⁻¹ᵁ wcSgD k N i₀) (genericPoint C) hA₀).hom
        ((A.app (wcSgD k N i₀)).hom (wcSgE k N i₀ k₀)) *
      (C.presheaf.germ (A ⁻¹ᵁ wcSgD k N k₀) (genericPoint C) hAk).hom
        ((A.app (wcSgD k N k₀)).hom (wcSgE k N k₀ j)) := by
    intro j
    have hmem : A (genericPoint C) ∈ wcSgD k N i₀ ⊓ wcSgD k N k₀ := ⟨hA₀, hAk⟩
    have h1 := congrArg (fun s => (A.stalkMap (genericPoint C)).hom
      (((wcProjK k N).presheaf.germ _ (A (genericPoint C)) hmem).hom s)) (CF3 i₀ k₀ j)
    simp only [map_mul, TopCat.Presheaf.germ_res_apply, Scheme.Hom.germ_stalkMap_apply] at h1
    exact h1
  have hv : ∀ j, j ∉ I → (C.presheaf.germ (A ⁻¹ᵁ wcSgD k N k₀) (genericPoint C) hAk).hom
        ((A.app (wcSgD k N k₀)).hom (wcSgE k N k₀ j)) = 0 := by
    intro j hj
    haveI := isReduced_of_isIntegral C
    have h0 : (A.app (wcSgD k N k₀)).hom (wcSgE k N k₀ j) = 0 := by
      apply (basicOpen_eq_bot_iff _).mp
      rw [← Scheme.preimage_basicOpen, CF2, eq_bot_iff]
      intro y hy
      exfalso
      have hy' : A y ∈ wcSgD k N k₀ ⊓ wcSgD k N j := hy
      have h2 : genericPoint C ∈ A ⁻¹ᵁ wcSgD k N j :=
        (genericPoint_specializes y).mem_open (A ⁻¹ᵁ wcSgD k N j).isOpen hy'.2
      exact havoid j hj h2
    rw [h0, map_zero]

  apply sp_inj
  have hsp := TopCat.Presheaf.germ_stalkSpecializes_apply C.presheaf hc hξc
    ((A.app (wcSgD k N k₀)).hom (wcSgE k N k₀ l))
  rw [map_mul]
  refine (congrArg (fun y => y * (C.presheaf.stalkSpecializes hξc).hom
    ((π.stalkMap c).hom (wcpaDjGltCcG I num den k₀))) hsp).trans ?_
  exact alg _ _ ((C.presheaf.stalkSpecializes hξc).hom.comp (π.stalkMap c).hom)
    (fun i => (C.presheaf.germ (A ⁻¹ᵁ wcSgD k N i₀) (genericPoint C) hA₀).hom
      ((A.app (wcSgD k N i₀)).hom (wcSgE k N i₀ i)))
    (fun j => (C.presheaf.germ (A ⁻¹ᵁ wcSgD k N k₀) (genericPoint C) hAk).hom
      ((A.app (wcSgD k N k₀)).hom (wcSgE k N k₀ j)))
    num den hZ hcoc hv l

theorem wcpa_dj_glt_cc_geom_chart : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra) (hτ : ∀ j, τ j ≫ g = 𝟙 S)
    (S'' : Scheme.{u}) [AlgebraicGeometry.IsIntegral S''] (ρ : S'' ⟶ S) (D'' : Set S''),
    wcpaDjGcHyp k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' →
    ∀ (C : Scheme.{u}) [AlgebraicGeometry.IsIntegral C] (π₅ : C ⟶ Limits.pullback g ρ)
      (A : C ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra),
      wcpaDjGcModel k sS g ρ O a π₅ A → IsProper π₅ →
      ∀ (c : C) (i₀ : Fin (N + 1)), i₀ ∈ I →
      ∀ (num den : Fin (N + 1) → (Limits.pullback g ρ).presheaf.stalk (π₅ c)),
      (∀ i ∈ I, wcpaDjStcRatioLink (wcpaDjStcRatioSec k (Limits.pullback.fst g ρ ⁻¹ᵁ O)
          ((Limits.pullback.fst g ρ ∣_ O) ≫ a) i₀ i) (π₅ c) (num i) (den i)) →
      IsDomain ((Limits.pullback g ρ).presheaf.stalk (π₅ c)) →
      IsIntegrallyClosed ((Limits.pullback g ρ).presheaf.stalk (π₅ c)) →
      (∀ i ∈ I, wcpaDjGltCcG I num den i ≠ 0) →
      ∃ k₀ ∈ I, ∃ (P : Ideal (wcpaDjGltNC ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
          (wcpaDjGltCcG I num den) k₀)) (_ : P.IsPrime)
        (e₁ : C.presheaf.stalk c ≃+* Localization.AtPrime P),
        P.comap (wcpaDjGltNCMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
            (wcpaDjGltCcG I num den) k₀) =
          IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk (π₅ c)) ∧
        e₁.toRingHom.comp (π₅.stalkMap c).hom =
          (algebraMap (wcpaDjGltNC ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
              (wcpaDjGltCcG I num den) k₀) (Localization.AtPrime P)).comp
            (wcpaDjGltNCMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
              (wcpaDjGltCcG I num den) k₀) :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hτ S'' _ ρ D'' H C _ π₅ A hM hπ c i₀ hi₀ num den
    hlink hRdom hRic hG0
  classical
  have H' := H
  obtain ⟨⟨hS, hY, hss, hmono, hτs, hW, hWsm, hWgc, hreg, hcomps, hWD, hO, hstr, hC1, hC2⟩,
    hρS, hρp, hρs, hρf, hreg'', hsnc'', hD'', hK⟩ := H'
  obtain ⟨hM1, ⟨hA, hLfin⟩, ⟨Viso, hViso, hVisoIso⟩, hM4⟩ := hM
  haveI hYint : AlgebraicGeometry.IsIntegral (Limits.pullback g ρ) :=
    wcpa_dj_tr_basechange_integral S S'' Y ρ g W hss.1 hρs hW hWsm hWgc

  obtain ⟨hgen, hbij⟩ := wcpa_dj_glt_ccg_generic_iso π₅ Viso hViso hVisoIso
  have hη := wcpa_dj_glt_os_generic_in_dom k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' H i₀ hi₀
  have hηO : genericPoint (Limits.pullback g ρ : Scheme.{u}) ∈ Limits.pullback.fst g ρ ⁻¹ᵁ O :=
    Scheme.Opens.ι_image_le _ _ hη
  have hC1'' : ∀ o (i : Fin (N + 1)), i ∉ I →
      ((Limits.pullback.fst g ρ ∣_ O) ≫ a) o ∉ wcSgD k N i := by
    intro o i hi
    rw [Scheme.Hom.comp_apply]
    exact hC1 _ i hi

  obtain ⟨k₀, hk₀, hc⟩ : ∃ k₀ ∈ I, A c ∈ wcSgD k N k₀ := by
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) :=
      MvPolynomial.gradedAlgebra
    have htop : (⨆ i, Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        (MvPolynomial.X i : MvPolynomial (Fin (N + 1)) k)) = ⊤ := by
      apply Proj.iSup_basicOpen_eq_top
      intro f hf
      have hf' : f ∈ HomogeneousIdeal.irrelevant
          (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) := hf
      rw [HomogeneousIdeal.mem_irrelevant_iff, GradedRing.proj_apply] at hf'
      clear hf
      have hf := hf'
      have h2 : ((DirectSum.decompose (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) f) 0 :
          MvPolynomial (Fin (N + 1)) k) = MvPolynomial.homogeneousComponent 0 f :=
        MvPolynomial.decomposition.decompose'_apply f 0
      rw [h2, MvPolynomial.homogeneousComponent_zero, MvPolynomial.C_eq_zero] at hf
      rw [← Set.image_univ, MvPolynomial.mem_ideal_span_X_image]
      intro mm hmm
      by_contra hcon
      push_neg at hcon
      have hm0 : mm = 0 := by
        ext i
        exact hcon i (Set.mem_univ i)
      rw [MvPolynomial.mem_support_iff, hm0] at hmm
      exact hmm hf
    have hmem : A c ∈ (⨆ i, Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        (MvPolynomial.X i : MvPolynomial (Fin (N + 1)) k)) := by
      rw [htop]
      trivial
    obtain ⟨i, hi⟩ := TopologicalSpace.Opens.mem_iSup.mp hmem
    refine ⟨i, ?_, hi⟩
    by_contra hiI
    have hξ : genericPoint C ∈ A ⁻¹ᵁ wcSgD k N i :=
      (genericPoint_specializes c).mem_open (A ⁻¹ᵁ wcSgD k N i).isOpen hi
    have hξO : genericPoint C ∈ π₅ ⁻¹ᵁ (Limits.pullback.fst g ρ ⁻¹ᵁ O) := by
      rw [Scheme.Hom.mem_preimage, hgen]
      exact hηO
    let x : ↥(π₅ ⁻¹ᵁ (Limits.pullback.fst g ρ ⁻¹ᵁ O)).toScheme := ⟨genericPoint C, hξO⟩
    have e : A ((π₅ ⁻¹ᵁ (Limits.pullback.fst g ρ ⁻¹ᵁ O)).ι x) =
        ((Limits.pullback.fst g ρ ∣_ O) ≫ a) ((π₅ ∣_ (Limits.pullback.fst g ρ ⁻¹ᵁ O)) x) := by
      rw [← Scheme.Hom.comp_apply, hM4, Scheme.Hom.comp_apply]
    have hx : (π₅ ⁻¹ᵁ (Limits.pullback.fst g ρ ⁻¹ᵁ O)).ι x = genericPoint C := rfl
    have hξ' : A ((π₅ ⁻¹ᵁ (Limits.pullback.fst g ρ ⁻¹ᵁ O)).ι x) ∈ wcSgD k N i := by
      rw [hx]; exact hξ
    rw [e] at hξ'
    exact hC1'' _ i hiI hξ'

  have hz := wcpa_dj_glt_ccg_ratio_identity k N (Limits.pullback g ρ) C π₅
    (Limits.pullback.fst g ρ ⁻¹ᵁ O) A ((Limits.pullback.fst g ρ ∣_ O) ≫ a) I i₀ k₀ hi₀ hk₀ hM4
    hC1'' hgen hη c hc num den hlink

  obtain ⟨hinj, hbir⟩ := wcpa_dj_glt_ccg_birational_stalk π₅ hgen hbij c

  have hA' : π₅ ≫ Limits.pullback.snd g ρ ≫ ρ ≫ sS = A ≫ wcProjKStr k N := hA
  obtain ⟨VC, hVC, hcV, hint⟩ := wcpa_dj_glt_ccg_chart_integral k N (Limits.pullback g ρ) C
    (Limits.pullback.snd g ρ ≫ ρ ≫ sS) π₅ A hA' hLfin k₀ c hc
  have hgen2 : ∀ u : C.presheaf.stalk c, ∃ b s : C.presheaf.stalk c,
      IsIntegral (Subring.closure (Set.range (π₅.stalkMap c).hom ∪ Set.range (fun l =>
        (C.presheaf.germ (A ⁻¹ᵁ wcSgD k N k₀) c hc).hom
          ((A.app (wcSgD k N k₀)).hom (wcSgE k N k₀ l))))) b ∧
      IsIntegral (Subring.closure (Set.range (π₅.stalkMap c).hom ∪ Set.range (fun l =>
        (C.presheaf.germ (A ⁻¹ᵁ wcSgD k N k₀) c hc).hom
          ((A.app (wcSgD k N k₀)).hom (wcSgE k N k₀ l))))) s ∧ IsUnit s ∧ u * s = b := by
    intro u
    letI := TopCat.Presheaf.algebra_section_stalk C.presheaf (⟨c, hcV⟩ : VC)
    haveI := hVC.isLocalization_stalk ⟨c, hcV⟩
    obtain ⟨⟨b, σ⟩, rfl⟩ := IsLocalization.mk'_surjective
      (hVC.primeIdealOf ⟨c, hcV⟩).asIdeal.primeCompl u
    exact ⟨(C.presheaf.germ VC c hcV).hom b, (C.presheaf.germ VC c hcV).hom σ, hint b, hint σ,
      IsLocalization.map_units _ σ, IsLocalization.mk'_spec _ b σ⟩

  haveI := hRdom
  haveI := hRic
  haveI := hM1 c
  obtain ⟨P, hP, e₁, hPc, he₁⟩ := wcpa_dj_glt_ccg_alg_core _ _ (π₅.stalkMap c).hom hinj N
    (wcpaDjGltCcG I num den) k₀ (fun l => (C.presheaf.germ (A ⁻¹ᵁ wcSgD k N k₀) c hc).hom
      ((A.app (wcSgD k N k₀)).hom (wcSgE k N k₀ l))) (hG0 k₀ hk₀) hz hbir hgen2
  exact ⟨k₀, hk₀, P, hP, e₁, hPc, he₁⟩

theorem wcpa_dj_glt_cc_stalk_ft : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra) (hτ : ∀ j, τ j ≫ g = 𝟙 S)
    (S'' : Scheme.{u}) [AlgebraicGeometry.IsIntegral S''] (ρ : S'' ⟶ S) (D'' : Set S''),
    wcpaDjGcHyp k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' →
    ∀ y : ↥(Limits.pullback g ρ : Scheme.{u}),
      ∃ (R₀ : Type u) (_ : CommRing R₀) (_ : Algebra.FiniteType ℤ R₀) (𝔬 : Ideal R₀)
        (_ : 𝔬.IsPrime),
        Nonempty (Localization.AtPrime 𝔬 ≃+* (Limits.pullback g ρ).presheaf.stalk y) :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hτ S'' _ ρ D'' H y
  classical
  have hlft : ∀ {X : Scheme.{u}} (s : X ⟶ Spec (.of k)), wcpaDjIsProjOver k s →
      LocallyOfFiniteType s := by
    intro X s hs
    obtain ⟨N₁, j₁, hj₁, hj₁eq⟩ := hs
    have hsurj : Function.Surjective
        (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N₁ + 1)) k 0)) := by
      intro x
      refine ⟨(x : MvPolynomial (Fin (N₁ + 1)) k).coeff 0, ?_⟩
      apply Subtype.ext
      have h := MvPolynomial.homogeneousComponent_of_mem (m := 0) (n := 0) x.2
      rw [if_pos rfl, MvPolynomial.homogeneousComponent_zero] at h
      exact (show _ = MvPolynomial.C ((x : MvPolynomial (Fin (N₁ + 1)) k).coeff 0) from rfl).trans h
    haveI : Algebra.FiniteType (MvPolynomial.homogeneousSubmodule (Fin (N₁ + 1)) k 0)
        (MvPolynomial (Fin (N₁ + 1)) k) := by
      have h1 : (algebraMap k (MvPolynomial (Fin (N₁ + 1)) k)).FiniteType :=
        RingHom.finiteType_algebraMap.mpr inferInstance
      have h2 : (algebraMap k (MvPolynomial (Fin (N₁ + 1)) k)) =
          (algebraMap (MvPolynomial.homogeneousSubmodule (Fin (N₁ + 1)) k 0)
            (MvPolynomial (Fin (N₁ + 1)) k)).comp
            (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N₁ + 1)) k 0)) := rfl
      rw [h2] at h1
      exact RingHom.finiteType_algebraMap.mp (RingHom.FiniteType.of_comp_finiteType h1)
    haveI : LocallyOfFiniteType (Spec.map (CommRingCat.ofHom
        (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N₁ + 1)) k 0)))) := by
      rw [HasRingHomProperty.Spec_iff (P := @LocallyOfFiniteType)]
      exact RingHom.FiniteType.of_surjective _ hsurj
    rw [← hj₁eq]
    infer_instance
  haveI h1 : LocallyOfFiniteType (g ≫ sS) := hlft _ H.1.2.1
  haveI h2 : LocallyOfFiniteType (ρ ≫ sS) := hlft _ H.2.1
  haveI : LocallyOfFiniteType g := locallyOfFiniteType_of_comp g sS
  haveI hh : LocallyOfFiniteType (Limits.pullback.snd g ρ ≫ ρ ≫ sS) := inferInstance
  obtain ⟨V, hV, hyV, -⟩ := exists_isAffineOpen_mem_and_subset (U := ⊤) (x := y) trivial
  have hft := HasRingHomProperty.appLE @LocallyOfFiniteType (Limits.pullback.snd g ρ ≫ ρ ≫ sS) hh
    ⟨⊤, isAffineOpen_top _⟩ ⟨V, hV⟩ (by simp)
  obtain ⟨φ, hφ⟩ : ∃ φ : Γ(Spec (.of k), ⊤) →+* Γ(Limits.pullback g ρ, V), φ.FiniteType :=
    ⟨_, hft⟩
  haveI : Finite Γ(Spec (.of k), ⊤) :=
    Finite.of_equiv k (Scheme.ΓSpecIso (.of k)).commRingCatIsoToRingEquiv.symm.toEquiv
  have hZ : (algebraMap ℤ Γ(Spec (.of k), ⊤)).FiniteType := by
    apply RingHom.FiniteType.of_finite
    rw [RingHom.finite_algebraMap]
    exact Module.Finite.of_finite
  have hR : Algebra.FiniteType ℤ Γ(Limits.pullback g ρ, V) := by
    have h3 := hφ.comp hZ
    rw [RingHom.ext_int (φ.comp (algebraMap ℤ Γ(Spec (.of k), ⊤)))
      (algebraMap ℤ Γ(Limits.pullback g ρ, V))] at h3
    exact RingHom.finiteType_algebraMap.mp h3
  have key : ∀ {R T : Type u} [CommRing R] [CommRing T] [Algebra R T] (p : Ideal R) [p.IsPrime],
      IsLocalization.AtPrime T p → Nonempty (Localization.AtPrime p ≃+* T) := by
    intro R T _ _ _ p _ hp
    exact ⟨(IsLocalization.algEquiv p.primeCompl (Localization.AtPrime p) T).toRingEquiv⟩
  letI := TopCat.Presheaf.algebra_section_stalk (Limits.pullback g ρ).presheaf (⟨y, hyV⟩ : V)
  have hk := key (T := (Limits.pullback g ρ).presheaf.stalk (⟨y, hyV⟩ : V).1) _
    (hV.isLocalization_stalk ⟨y, hyV⟩)
  exact ⟨Γ(Limits.pullback g ρ, V), inferInstance, hR, (hV.primeIdealOf ⟨y, hyV⟩).asIdeal,
    inferInstance, hk⟩

theorem wcpa_dj_glt_cc_fibres_of_ft_local : ∀ (R : Type u) [CommRing R] [IsLocalRing R],
    (∃ (R₀ : Type u) (_ : CommRing R₀) (_ : Algebra.FiniteType ℤ R₀) (𝔬 : Ideal R₀)
      (_ : 𝔬.IsPrime), Nonempty (Localization.AtPrime 𝔬 ≃+* R)) →
    ∀ (Λ : Type u) [CommRing Λ] [Algebra R Λ],
      Nonempty (AdicCompletion (IsLocalRing.maximalIdeal R) R ≃ₐ[R] Λ) →
      ∀ (𝔭 : Ideal R) [𝔭.IsPrime] (L : Type u) [Field L] [Algebra R L]
        [Algebra 𝔭.ResidueField L] [IsScalarTower R 𝔭.ResidueField L],
        (∃ s : Finset L, IntermediateField.adjoin 𝔭.ResidueField (s : Set L) = ⊤) →
        ∀ (𝔔 : Ideal (TensorProduct R L Λ)) [𝔔.IsPrime],
          IsRegularLocalRing (Localization.AtPrime 𝔔) :=
by
  intro R _ _ hft
  classical

  have half : ∀ (R₁ R₂ A B : Type u) [CommRing R₁] [CommRing R₂] [CommRing A] [CommRing B]
      [Algebra R₁ A] [Algebra R₁ B] [Algebra R₂ A] [Algebra R₂ B] (σ : R₁ →+* R₂),
      algebraMap R₁ A = (algebraMap R₂ A).comp σ → algebraMap R₁ B = (algebraMap R₂ B).comp σ →
      ∃ F : TensorProduct R₁ A B →+* TensorProduct R₂ A B,
        ∀ (a : A) (b : B), F (a ⊗ₜ[R₁] b) = a ⊗ₜ[R₂] b := by
    intro R₁ R₂ A B _ _ _ _ _ _ _ _ σ hA hB
    let β : A →+ B →+ TensorProduct R₂ A B :=
      AddMonoidHom.mk' (fun a => (TensorProduct.mk R₂ A B a).toAddMonoidHom)
        (fun a a' => by ext b; simp [TensorProduct.add_tmul])
    have hbal : ∀ (r : R₁) (a : A) (b : B), β (r • a) b = β a (r • b) := by
      intro r a b
      show (r • a) ⊗ₜ[R₂] b = a ⊗ₜ[R₂] (r • b)
      rw [Algebra.smul_def r a, Algebra.smul_def r b, hA, hB, RingHom.comp_apply,
        RingHom.comp_apply, ← Algebra.smul_def, ← Algebra.smul_def, TensorProduct.smul_tmul]
    let F := TensorProduct.liftAddHom β hbal
    have hF : ∀ (a : A) (b : B), F (a ⊗ₜ[R₁] b) = a ⊗ₜ[R₂] b := fun a b =>
      TensorProduct.liftAddHom_tmul _ _ _ _
    have hmul : ∀ x y, F (x * y) = F x * F y := by
      intro x y
      induction x using TensorProduct.induction_on with
      | zero => simp
      | tmul a b =>
        induction y using TensorProduct.induction_on with
        | zero => simp
        | tmul a' b' =>
          show F (a ⊗ₜ[R₁] b * a' ⊗ₜ[R₁] b') = F (a ⊗ₜ[R₁] b) * F (a' ⊗ₜ[R₁] b')
          rw [Algebra.TensorProduct.tmul_mul_tmul, hF, hF, hF, Algebra.TensorProduct.tmul_mul_tmul]
        | add y₁ y₂ h₁ h₂ =>
          show F (a ⊗ₜ[R₁] b * (y₁ + y₂)) = F (a ⊗ₜ[R₁] b) * F (y₁ + y₂)
          rw [mul_add, map_add, map_add, mul_add]
          exact congrArg₂ _ h₁ h₂
      | add x₁ x₂ h₁ h₂ =>
        show F ((x₁ + x₂) * y) = F (x₁ + x₂) * F y
        rw [add_mul, map_add, map_add, add_mul]
        exact congrArg₂ _ h₁ h₂
    have h1 : F 1 = 1 := hF 1 1
    exact ⟨RingHom.mk (MonoidHom.mk (OneHom.mk F h1) hmul) F.map_zero F.map_add, hF⟩

  have tens : ∀ (R₁ R₂ A B : Type u) [CommRing R₁] [CommRing R₂] [CommRing A] [CommRing B]
      [Algebra R₁ A] [Algebra R₁ B] [Algebra R₂ A] [Algebra R₂ B] (φ : R₁ ≃+* R₂),
      algebraMap R₁ A = (algebraMap R₂ A).comp (φ : R₁ →+* R₂) →
      algebraMap R₁ B = (algebraMap R₂ B).comp (φ : R₁ →+* R₂) →
      ∃ Ξ : TensorProduct R₁ A B ≃+* TensorProduct R₂ A B,
        ∀ (a : A) (b : B), Ξ (a ⊗ₜ[R₁] b) = a ⊗ₜ[R₂] b := by
    intro R₁ R₂ A B _ _ _ _ _ _ _ _ φ hA hB
    have hA' : algebraMap R₂ A = (algebraMap R₁ A).comp (φ.symm : R₂ →+* R₁) := by
      ext r; rw [hA]; simp
    have hB' : algebraMap R₂ B = (algebraMap R₁ B).comp (φ.symm : R₂ →+* R₁) := by
      ext r; rw [hB]; simp
    obtain ⟨F, hF⟩ := half R₁ R₂ A B (φ : R₁ →+* R₂) hA hB
    obtain ⟨G, hG⟩ := half R₂ R₁ A B (φ.symm : R₂ →+* R₁) hA' hB'
    have hGF : ∀ x, G (F x) = x := by
      intro x
      induction x using TensorProduct.induction_on with
      | zero => simp
      | tmul a b => rw [hF, hG]
      | add x₁ x₂ h₁ h₂ => rw [map_add, map_add, h₁, h₂]
    have hFG : ∀ x, F (G x) = x := by
      intro x
      induction x using TensorProduct.induction_on with
      | zero => simp
      | tmul a b => rw [hG, hF]
      | add x₁ x₂ h₁ h₂ => rw [map_add, map_add, h₁, h₂]
    exact ⟨RingEquiv.mk (Equiv.mk F G hGF hFG) (fun x y => F.map_mul x y)
      (fun x y => F.map_add x y), hF⟩
  obtain ⟨R₀, _, _, 𝔬, _, ⟨φ⟩⟩ := hft
  haveI : IsNoetherianRing R₀ := Algebra.FiniteType.isNoetherianRing ℤ R₀
  haveI : IsNoetherianRing (Localization.AtPrime 𝔬) :=
    IsLocalization.isNoetherianRing 𝔬.primeCompl _ inferInstance
  haveI : IsNoetherianRing R := isNoetherianRing_of_ringEquiv _ φ
  refine wc_hnas_pfc_fibre_fg_upgrade wc_hnas_pfc_regular_flat_ascent
    wc_hnas_pfc_regular_flat_descent wc_hnas_pfc_regular_localization R ?_
  rintro Λ _ _ ⟨e⟩ 𝔭 _ L _ _ _ _ _ 𝔔 _

  letI iΛ : Algebra (Localization.AtPrime 𝔬) Λ :=
    ((algebraMap R Λ).comp (φ : Localization.AtPrime 𝔬 →+* R)).toAlgebra
  letI iL : Algebra (Localization.AtPrime 𝔬) L :=
    ((algebraMap R L).comp (φ : Localization.AtPrime 𝔬 →+* R)).toAlgebra

  obtain ⟨𝔭', h𝔭'⟩ : ∃ q : Ideal (Localization.AtPrime 𝔬),
      q = 𝔭.comap (φ : Localization.AtPrime 𝔬 →+* R) := ⟨_, rfl⟩
  haveI : 𝔭'.IsPrime := h𝔭' ▸ inferInstance
  obtain ⟨κφ, hκφ⟩ : ∃ f : 𝔭'.ResidueField →+* 𝔭.ResidueField,
      f = Ideal.ResidueField.map 𝔭' 𝔭 (φ : Localization.AtPrime 𝔬 →+* R) h𝔭' := ⟨_, rfl⟩
  have h𝔭 : 𝔭 = 𝔭'.comap (φ.symm : R →+* Localization.AtPrime 𝔬) := by
    rw [h𝔭', Ideal.comap_comap]
    ext x
    simp [Ideal.mem_comap]
  have hsurj : Function.Surjective κφ := by
    have hκ : κφ.comp (Ideal.ResidueField.map 𝔭 𝔭' (φ.symm : R →+* Localization.AtPrime 𝔬) h𝔭)
        = RingHom.id _ := by
      apply Ideal.ResidueField.ringHom_ext
      ext r
      simp only [RingHom.comp_apply, RingHom.id_apply]
      rw [Ideal.ResidueField.map_algebraMap, hκφ, Ideal.ResidueField.map_algebraMap]
      simp
    intro y
    exact ⟨_, RingHom.congr_fun hκ y⟩
  letI iκL : Algebra 𝔭'.ResidueField L := ((algebraMap 𝔭.ResidueField L).comp κφ).toAlgebra
  haveI : IsScalarTower (Localization.AtPrime 𝔬) 𝔭'.ResidueField L :=
    IsScalarTower.of_algebraMap_eq fun x => by
      show algebraMap R L ((φ : Localization.AtPrime 𝔬 →+* R) x) =
        algebraMap 𝔭.ResidueField L (κφ (algebraMap (Localization.AtPrime 𝔬) 𝔭'.ResidueField x))
      rw [hκφ, Ideal.ResidueField.map_algebraMap, ← IsScalarTower.algebraMap_apply]
  haveI : FiniteDimensional 𝔭'.ResidueField L := by
    letI iκκ : Algebra 𝔭'.ResidueField 𝔭.ResidueField := κφ.toAlgebra
    haveI : Module.Finite 𝔭'.ResidueField 𝔭.ResidueField := RingHom.Finite.of_surjective κφ hsurj
    haveI : IsScalarTower 𝔭'.ResidueField 𝔭.ResidueField L :=
      IsScalarTower.of_algebraMap_eq fun x => rfl
    exact Module.Finite.trans 𝔭.ResidueField L

  obtain ⟨ε₀, hε₀⟩ := wcpa_dj_glt_cc_adic_congr (Localization.AtPrime 𝔬) R φ
  have e' : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime 𝔬))
      (Localization.AtPrime 𝔬) ≃ₐ[Localization.AtPrime 𝔬] Λ :=
    AlgEquiv.ofRingEquiv (f := ε₀.trans e.toRingEquiv) (fun x => by
      have h1 := RingHom.congr_fun hε₀ x
      simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingHom.coe_coe] at h1
      rw [RingEquiv.trans_apply, h1]
      exact e.commutes _)

  obtain ⟨Ξ, -⟩ := tens (Localization.AtPrime 𝔬) R L Λ φ rfl rfl
  have hreg := wc_hnas_pfc_formal_fibres_regular R₀ 𝔬 Λ ⟨e'⟩ 𝔭' L (𝔔.comap Ξ.toRingHom)
  have hmap : Submonoid.map Ξ.toMonoidHom (𝔔.comap Ξ.toRingHom).primeCompl = 𝔔.primeCompl := by
    ext z
    simp only [Submonoid.mem_map, Ideal.mem_primeCompl_iff, Ideal.mem_comap]
    constructor
    · rintro ⟨y, hy, rfl⟩
      simpa using hy
    · intro hz
      exact ⟨Ξ.symm z, by simpa using hz, by simp⟩
  haveI := hreg
  exact IsRegularLocalRing.of_ringEquiv
    (IsLocalization.ringEquivOfRingEquiv (Localization.AtPrime (𝔔.comap Ξ.toRingHom))
      (Localization.AtPrime 𝔔) Ξ hmap)

theorem wcpa_dj_glt_cc_normal_flat_basechange : ∀ (A : Type u) [CommRing A] [IsLocalRing A]
    [IsNoetherianRing A],
    (∀ (Λ : Type u) [CommRing Λ] [Algebra A Λ],
      Nonempty (AdicCompletion (IsLocalRing.maximalIdeal A) A ≃ₐ[A] Λ) →
      ∀ (𝔭 : Ideal A) [𝔭.IsPrime] (L : Type u) [Field L] [Algebra A L]
        [Algebra 𝔭.ResidueField L] [IsScalarTower A 𝔭.ResidueField L],
        (∃ s : Finset L, IntermediateField.adjoin 𝔭.ResidueField (s : Set L) = ⊤) →
        ∀ (𝔔 : Ideal (TensorProduct A L Λ)) [𝔔.IsPrime],
          IsRegularLocalRing (Localization.AtPrime 𝔔)) →
    ∀ (C : Type u) [CommRing C] [Algebra A C], Algebra.FiniteType A C →
    (∀ (𝔮 : Ideal C) [𝔮.IsPrime],
      IsDomain (Localization.AtPrime 𝔮) ∧ IsIntegrallyClosed (Localization.AtPrime 𝔮)) →
    ∀ (Q : Ideal (TensorProduct A (AdicCompletion (IsLocalRing.maximalIdeal A) A) C))
      [Q.IsPrime],
      IsDomain (Localization.AtPrime Q) ∧ IsIntegrallyClosed (Localization.AtPrime Q) :=
by
  intro A _ _ _ H C _ _ hC hCn Q _
  haveI := hC
  haveI : IsNoetherianRing C := Algebra.FiniteType.isNoetherianRing A C
  haveI : IsNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal A) A) :=
    wc_hnas_completion_noetherian A
  haveI : Algebra.FiniteType (AdicCompletion (IsLocalRing.maximalIdeal A) A)
      (TensorProduct A (AdicCompletion (IsLocalRing.maximalIdeal A) A) C) :=
    Algebra.FiniteType.baseChange (A := C) _
  haveI : IsNoetherianRing (TensorProduct A (AdicCompletion (IsLocalRing.maximalIdeal A) A) C) :=
    Algebra.FiniteType.isNoetherianRing (AdicCompletion (IsLocalRing.maximalIdeal A) A) _
  letI : Algebra C (TensorProduct A (AdicCompletion (IsLocalRing.maximalIdeal A) A) C) :=
    Algebra.TensorProduct.rightAlgebra
  haveI : Module.Flat A (AdicCompletion (IsLocalRing.maximalIdeal A) A) :=
    AdicCompletion.flat_of_isNoetherian _
  haveI : Module.Flat C (TensorProduct A (AdicCompletion (IsLocalRing.maximalIdeal A) A) C) :=
    Module.Flat.isBaseChange A C (AdicCompletion (IsLocalRing.maximalIdeal A) A) _
      (TensorProduct.isPushout' (R := A) (S := AdicCompletion (IsLocalRing.maximalIdeal A) A)
        (T := C)).out
  have hfib := wcpa_dj_ncce_fibre_regular A H C hC
    (TensorProduct A (AdicCompletion (IsLocalRing.maximalIdeal A) A) C)
    (TensorProduct.isPushout (R := A) (S := AdicCompletion (IsLocalRing.maximalIdeal A) A)
      (T := C))
  have hS := wcpa_dj_ncce_flat_serre_ascent C
    (TensorProduct A (AdicCompletion (IsLocalRing.maximalIdeal A) A) C) hCn hfib
  have hSQ := wcpa_dj_ncce_serre_localize _ hS Q
  haveI : IsNoetherianRing (Localization.AtPrime Q) :=
    IsLocalization.isNoetherianRing Q.primeCompl _ inferInstance
  exact wcpa_dj_ncce_serre_local_normal (Localization.AtPrime Q) hSQ

theorem wcpa_dj_glt_cc_nagata_ft : ∀ (R : Type u) [CommRing R],
    (∃ (R₀ : Type u) (_ : CommRing R₀) (_ : Algebra.FiniteType ℤ R₀) (𝔬 : Ideal R₀)
      (_ : 𝔬.IsPrime), Nonempty (Localization.AtPrime 𝔬 ≃+* R)) →
    ∀ (A : Type u) [CommRing A] [IsDomain A] [Algebra R A], Algebra.FiniteType R A →
      Module.Finite A (integralClosure A (FractionRing A)) :=
by
  intro R _ hft A _ _ _ hA
  classical
  obtain ⟨R₀, _, hR₀, 𝔬, _, ⟨φ⟩⟩ := hft
  obtain ⟨u, hu⟩ := hR₀.out
  obtain ⟨t, ht⟩ := hA.out

  obtain ⟨ψ, hψ⟩ : ∃ ψ : R₀ →+* A, ψ = (algebraMap R A).comp
      ((φ : Localization.AtPrime 𝔬 →+* R).comp (algebraMap R₀ (Localization.AtPrime 𝔬))) :=
    ⟨_, rfl⟩
  have hψx : ∀ x, ψ x = algebraMap R A (φ (algebraMap R₀ (Localization.AtPrime 𝔬) x)) := by
    intro x; rw [hψ]; rfl
  obtain ⟨D, hDdef⟩ : ∃ D : Subalgebra ℤ A,
      D = Algebra.adjoin ℤ ((u.image ψ ∪ t : Finset A) : Set A) := ⟨_, rfl⟩
  have hDft : Algebra.FiniteType ℤ D := by
    rw [hDdef]; exact (Subalgebra.fg_iff_finiteType _).mp (Subalgebra.fg_adjoin_finset _)
  have htD : ∀ x ∈ t, x ∈ D := by
    intro x hx
    rw [hDdef]
    exact Algebra.subset_adjoin (Finset.mem_coe.mpr (Finset.mem_union_right _ hx))
  have hψD : ∀ x : R₀, ψ x ∈ D := by
    intro x
    have hx : x ∈ Algebra.adjoin ℤ (u : Set R₀) := by rw [hu]; trivial
    induction hx using Algebra.adjoin_induction with
    | mem x hx =>
      rw [hDdef]
      exact Algebra.subset_adjoin (Finset.mem_coe.mpr
        (Finset.mem_union_left _ (Finset.mem_image_of_mem ψ (Finset.mem_coe.mp hx))))
    | algebraMap n =>
      rw [eq_intCast, map_intCast]
      exact intCast_mem D n
    | add x y _ _ hx hy => rw [map_add]; exact D.add_mem hx hy
    | mul x y _ _ hx hy => rw [map_mul]; exact D.mul_mem hx hy
  obtain ⟨M, hM⟩ : ∃ M : Submonoid D, ∀ m : D, m ∈ M ↔ IsUnit (m : A) :=
    ⟨{ carrier := {d | IsUnit (d : A)}
       mul_mem' := fun {a b} ha hb => by
         show IsUnit ((a : A) * (b : A)); exact ha.mul hb
       one_mem' := by show IsUnit (1 : A); exact isUnit_one }, fun m => Iff.rfl⟩
  have key : ∀ z : A, ∃ d m : D, IsUnit (m : A) ∧ z * (m : A) = d := by
    intro z
    have hz : z ∈ Algebra.adjoin R (t : Set A) := by rw [ht]; trivial
    induction hz using Algebra.adjoin_induction with
    | mem x hx =>
      exact ⟨⟨x, htD x (Finset.mem_coe.mp hx)⟩, 1, by show IsUnit (1 : A); exact isUnit_one,
        by show x * 1 = x; exact mul_one x⟩
    | algebraMap r =>
      obtain ⟨⟨x, s⟩, hxs⟩ := IsLocalization.mk'_surjective 𝔬.primeCompl (φ.symm r)
      dsimp only at hxs
      have e1 : φ.symm r * algebraMap R₀ (Localization.AtPrime 𝔬) s =
          algebraMap R₀ (Localization.AtPrime 𝔬) x := by
        rw [← hxs]; exact IsLocalization.mk'_spec (Localization.AtPrime 𝔬) x s
      have e2 : algebraMap R A r * ψ s = ψ x := by
        rw [hψx, hψx, ← e1]
        simp only [map_mul, RingEquiv.apply_symm_apply]
      have hu' : IsUnit (ψ s) := by
        rw [hψx]
        exact ((IsLocalization.map_units (Localization.AtPrime 𝔬) s).map φ).map (algebraMap R A)
      exact ⟨⟨ψ x, hψD x⟩, ⟨ψ s, hψD s⟩, hu', e2⟩
    | add x y _ _ hx hy =>
      obtain ⟨d, m, hm, h⟩ := hx
      obtain ⟨d', m', hm', h'⟩ := hy
      refine ⟨d * m' + d' * m, m * m', ?_, ?_⟩
      · show IsUnit ((m : A) * (m' : A)); exact hm.mul hm'
      · show (x + y) * ((m : A) * (m' : A)) = (d : A) * m' + d' * m
        rw [← h, ← h']; ring
    | mul x y _ _ hx hy =>
      obtain ⟨d, m, hm, h⟩ := hx
      obtain ⟨d', m', hm', h'⟩ := hy
      refine ⟨d * d', m * m', ?_, ?_⟩
      · show IsUnit ((m : A) * (m' : A)); exact hm.mul hm'
      · show (x * y) * ((m : A) * (m' : A)) = (d : A) * d'
        rw [← h, ← h']; ring
  have hloc : IsLocalization M A := by
    refine (isLocalization_iff M A).mpr ⟨?_, ?_, ?_⟩
    · intro y
      exact (hM y).mp y.2
    · intro z
      obtain ⟨d, m, hm, h⟩ := key z
      exact ⟨(d, ⟨m, (hM m).mpr hm⟩), h⟩
    · intro x y h
      have hxy : x = y := Subtype.ext h
      exact ⟨1, by rw [hxy]⟩

  have hinjAK : Function.Injective (algebraMap A (FractionRing A)) :=
    IsFractionRing.injective A (FractionRing A)
  have hcomp : ∀ x : D, algebraMap D (FractionRing A) x =
      algebraMap A (FractionRing A) (x : A) := fun x =>
    IsScalarTower.algebraMap_apply D A (FractionRing A) x
  have hfr : IsFractionRing D (FractionRing A) := by
    refine (isLocalization_iff (nonZeroDivisors D) (FractionRing A)).mpr ⟨?_, ?_, ?_⟩
    · intro y
      rw [hcomp]
      apply isUnit_iff_ne_zero.mpr
      rw [map_ne_zero_iff _ hinjAK]
      intro h
      exact nonZeroDivisors.coe_ne_zero y (Subtype.ext h : (y : D) = 0)
    · intro z
      obtain ⟨a, b, hb, rfl⟩ := IsFractionRing.div_surjective (A := A) z
      obtain ⟨d1, m1, hm1, h1⟩ := key a
      obtain ⟨d2, m2, hm2, h2⟩ := key b
      have hb0 : b ≠ 0 := nonZeroDivisors.ne_zero hb
      have hd2 : d2 * m1 ≠ 0 := by
        intro h0
        have h00 : ((d2 * m1 : D) : A) = 0 := by rw [h0]; rfl
        change (d2 : A) * (m1 : A) = 0 at h00
        rw [← h2] at h00
        rcases mul_eq_zero.mp h00 with h | h
        · rcases mul_eq_zero.mp h with h | h
          · exact hb0 h
          · exact hm2.ne_zero h
        · exact hm1.ne_zero h
      refine ⟨(d1 * m2, ⟨d2 * m1, mem_nonZeroDivisors_of_ne_zero hd2⟩), ?_⟩
      show (algebraMap A (FractionRing A) a / algebraMap A (FractionRing A) b) *
          algebraMap D (FractionRing A) (d2 * m1) = algebraMap D (FractionRing A) (d1 * m2)
      rw [hcomp, hcomp]
      change _ * algebraMap A _ ((d2 : A) * (m1 : A)) = algebraMap A _ ((d1 : A) * (m2 : A))
      rw [← h1, ← h2]
      have hbK : algebraMap A (FractionRing A) b ≠ 0 := (map_ne_zero_iff _ hinjAK).mpr hb0
      simp only [map_mul]
      field_simp
    · intro x y h
      rw [hcomp, hcomp] at h
      have hxy : x = y := Subtype.ext (hinjAK h)
      exact ⟨1, by rw [hxy]⟩

  haveI := hDft
  haveI := hloc
  haveI := hfr
  have hD1 : Module.Finite D (integralClosure D (FractionRing D)) :=
    wc_int_finite_type_domain_integralClosure_finite D
  have hDK : Module.Finite D (integralClosure D (FractionRing A)) :=
    Module.Finite.equiv
      ((FractionRing.algEquiv D (FractionRing A)).mapIntegralClosure).toLinearEquiv

  have hfgD : (Subalgebra.toSubmodule (integralClosure D (FractionRing A))).FG :=
    Module.Finite.iff_fg.mp hDK
  obtain ⟨S₀, hS₀⟩ := hfgD
  have hfgA : (Subalgebra.toSubmodule (integralClosure A (FractionRing A))).FG := by
    refine ⟨S₀, le_antisymm ?_ ?_⟩
    · rw [Submodule.span_le]
      intro s hs
      have hsD : s ∈ Subalgebra.toSubmodule (integralClosure D (FractionRing A)) :=
        hS₀ ▸ Submodule.subset_span hs
      have h1 : IsIntegral D s := hsD
      exact h1.tower_top
    · intro z hz
      have hzA : IsIntegral A z := hz
      obtain ⟨m, hm⟩ := IsIntegral.exists_multiple_integral_of_isLocalization M z hzA
      have h1 : (m : D) • z ∈ Submodule.span D (S₀ : Set (FractionRing A)) := by
        rw [hS₀]
        exact hm
      have h2 : (m : D) • z ∈ Submodule.span A (S₀ : Set (FractionRing A)) :=
        Submodule.span_le_restrictScalars D A _ h1
      have h3 : (m : D) • z = algebraMap D A m • z := (algebraMap_smul A (m : D) z).symm
      rw [h3] at h2
      obtain ⟨v, hv⟩ := IsLocalization.map_units A m
      have hz' : z = (↑v⁻¹ : A) • (algebraMap D A m • z) := by
        rw [← hv, smul_smul, Units.inv_mul, one_smul]
      rw [hz']
      exact Submodule.smul_mem _ _ h2
  exact (Module.Finite.iff_fg (N := Subalgebra.toSubmodule (integralClosure A (FractionRing A)))).mpr hfgA

theorem wcpa_dj_glt_cc_chart_normal : ∀ (R : Type u) [CommRing R] [IsDomain R]
    [IsIntegrallyClosed R] [IsNoetherianRing R] (N : ℕ) (G : Fin (N + 1) → R)
    (k₀ : Fin (N + 1)), G k₀ ≠ 0 →
    Module.Finite (wcpaDjChart R G k₀)
      (integralClosure (wcpaDjChart R G k₀) (FractionRing (wcpaDjChart R G k₀))) →
    letI : Algebra R (wcpaDjGltNC R G k₀) := (wcpaDjGltNCMap R G k₀).toAlgebra
    IsDomain (wcpaDjGltNC R G k₀) ∧ Algebra.FiniteType R (wcpaDjGltNC R G k₀) ∧
      ∀ (Q : Ideal (wcpaDjGltNC R G k₀)) [Q.IsPrime],
        IsDomain (Localization.AtPrime Q) ∧ IsIntegrallyClosed (Localization.AtPrime Q) :=
by
  intro R _ _ _ _ N G k₀ hG hN1
  classical
  have hle : Submonoid.powers (G k₀) ≤ nonZeroDivisors R :=
    powers_le_nonZeroDivisors_of_noZeroDivisors hG
  haveI hRgdom : IsDomain (Localization.Away (G k₀)) :=
    IsLocalization.isDomain_localization hle
  haveI hRgic : IsIntegrallyClosed (Localization.Away (G k₀)) :=
    isIntegrallyClosed_of_isLocalization (Localization.Away (G k₀)) (Submonoid.powers (G k₀)) hle
  haveI hAdom : IsDomain (wcpaDjChart R G k₀) := Subalgebra.isDomain _
  have hAft : Algebra.FiniteType R (wcpaDjChart R G k₀) := by
    apply (Subalgebra.fg_iff_finiteType _).mp
    unfold wcpaDjChart
    rw [← Set.image_univ, ← Finset.coe_univ, ← Finset.coe_image]
    exact Subalgebra.fg_adjoin_finset _
  haveI : IsNoetherianRing (wcpaDjChart R G k₀) := Algebra.FiniteType.isNoetherianRing R _

  haveI hBdom' : IsDomain ↥(integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀))) :=
    Subalgebra.isDomain _
  haveI : FaithfulSMul ↥(integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀)))
      (Localization.Away (G k₀)) := by
    rw [faithfulSMul_iff_algebraMap_injective]
    exact Subtype.val_injective
  haveI hBic' : IsIntegrallyClosed
      ↥(integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀))) :=
    IsIntegrallyClosed.of_isIntegrallyClosed_of_isIntegrallyClosedIn _ (Localization.Away (G k₀))
  haveI hBdom : IsDomain (wcpaDjGltNC R G k₀) := hBdom'
  haveI hBic : IsIntegrallyClosed (wcpaDjGltNC R G k₀) := hBic'

  have hfin : Module.Finite (wcpaDjChart R G k₀)
      ↥(integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀))) := by
    let h : R →+* FractionRing (wcpaDjChart R G k₀) :=
      (algebraMap (wcpaDjChart R G k₀) (FractionRing (wcpaDjChart R G k₀))).comp
        (algebraMap R (wcpaDjChart R G k₀))
    have hRA : Function.Injective (algebraMap R (wcpaDjChart R G k₀)) := by
      intro x y hxy
      apply IsLocalization.injective (Localization.Away (G k₀)) hle
      exact congrArg Subtype.val hxy
    have hinj : Function.Injective h :=
      (IsFractionRing.injective (wcpaDjChart R G k₀) (FractionRing (wcpaDjChart R G k₀))).comp hRA
    have hg0 : h (G k₀) ≠ 0 := (map_ne_zero_iff h hinj).mpr hG
    have hu : ∀ y : Submonoid.powers (G k₀), IsUnit (h y) := by
      rintro ⟨y, n, rfl⟩
      show IsUnit (h (G k₀ ^ n))
      rw [map_pow]
      exact (IsUnit.mk0 _ hg0).pow n
    let ψ : Localization.Away (G k₀) →+* FractionRing (wcpaDjChart R G k₀) :=
      IsLocalization.lift hu
    have hψinj : Function.Injective ψ := by
      refine (IsLocalization.lift_injective_iff hu).mpr fun x y => ?_
      rw [(IsLocalization.injective (Localization.Away (G k₀)) hle).eq_iff, hinj.eq_iff]
    have hres : ∀ a : wcpaDjChart R G k₀, ψ (a : Localization.Away (G k₀)) =
        algebraMap (wcpaDjChart R G k₀) (FractionRing (wcpaDjChart R G k₀)) a := by
      rintro ⟨a, ha⟩
      induction ha using Algebra.adjoin_induction with
      | mem x hx =>
        obtain ⟨l, rfl⟩ := hx
        have hspec : ∀ hp, algebraMap (wcpaDjChart R G k₀) (FractionRing (wcpaDjChart R G k₀))
            (⟨IsLocalization.mk' (Localization.Away (G k₀)) (G l)
            (⟨G k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (G k₀)), hp⟩ :
              wcpaDjChart R G k₀) * h (G k₀) = h (G l) := by
          intro hp
          show algebraMap (wcpaDjChart R G k₀) (FractionRing (wcpaDjChart R G k₀)) _ *
            algebraMap (wcpaDjChart R G k₀) (FractionRing (wcpaDjChart R G k₀))
              (algebraMap R (wcpaDjChart R G k₀) (G k₀)) =
            algebraMap (wcpaDjChart R G k₀) (FractionRing (wcpaDjChart R G k₀))
              (algebraMap R (wcpaDjChart R G k₀) (G l))
          rw [← map_mul]
          congr 1
          apply Subtype.ext
          exact IsLocalization.mk'_spec (Localization.Away (G k₀)) (G l)
            (⟨G k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (G k₀))
        have e1 : ψ (IsLocalization.mk' (Localization.Away (G k₀)) (G l)
            (⟨G k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (G k₀))) * h (G k₀) = h (G l) :=
          (mul_comm _ _).trans ((IsLocalization.lift_mk'_spec hu (G l) _
            (⟨G k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (G k₀))).mp rfl).symm
        apply mul_right_cancel₀ hg0
        exact e1.trans (hspec _).symm
      | algebraMap r =>
        exact IsLocalization.lift_eq hu r
      | add x y hx hy ihx ihy =>
        show ψ (x + y) = algebraMap (wcpaDjChart R G k₀) (FractionRing (wcpaDjChart R G k₀))
          (⟨x, hx⟩ + ⟨y, hy⟩)
        rw [map_add, map_add, ← ihx, ← ihy]
      | mul x y hx hy ihx ihy =>
        show ψ (x * y) = algebraMap (wcpaDjChart R G k₀) (FractionRing (wcpaDjChart R G k₀))
          (⟨x, hx⟩ * ⟨y, hy⟩)
        rw [map_mul, map_mul, ← ihx, ← ihy]
    let ψA : Localization.Away (G k₀) →ₐ[wcpaDjChart R G k₀] FractionRing (wcpaDjChart R G k₀) :=
      { ψ with commutes' := fun a => hres a }
    let Φ := ψA.mapIntegralClosure
    have hΦinj : Function.Injective Φ := by
      intro x y hxy
      apply Subtype.ext
      apply hψinj
      have := congrArg Subtype.val hxy
      rw [AlgHom.coe_mapIntegralClosure, AlgHom.coe_mapIntegralClosure] at this
      exact this
    haveI : IsNoetherian (wcpaDjChart R G k₀)
        ↥(integralClosure (wcpaDjChart R G k₀) (FractionRing (wcpaDjChart R G k₀))) :=
      isNoetherian_of_isNoetherianRing_of_finite _ _
    exact Module.Finite.of_injective (R := wcpaDjChart R G k₀) (S := wcpaDjChart R G k₀)
      (σ := RingHom.id _) (σ' := RingHom.id _)
      (N := ↥(integralClosure (wcpaDjChart R G k₀) (FractionRing (wcpaDjChart R G k₀))))
      Φ.toLinearMap hΦinj
  let φ : wcpaDjChart R G k₀ →+* wcpaDjGltNC R G k₀ :=
    algebraMap (wcpaDjChart R G k₀)
      ↥(integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀)))
  have hBA : φ.FiniteType := by
    have : Algebra.FiniteType (wcpaDjChart R G k₀)
        ↥(integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀))) :=
      Module.Finite.finiteType _
    first
      | exact this
      | exact RingHom.finiteType_algebraMap.mpr this
      | (unfold RingHom.FiniteType; convert this)
  have hAR : (algebraMap R (wcpaDjChart R G k₀)).FiniteType :=
    RingHom.finiteType_algebraMap.mpr hAft
  have hft0 := RingHom.FiniteType.comp hBA hAR
  have hft : (wcpaDjGltNCMap R G k₀).FiniteType := hft0
  letI : Algebra R (wcpaDjGltNC R G k₀) := (wcpaDjGltNCMap R G k₀).toAlgebra
  refine ⟨hBdom, ?_, fun Q _ => ⟨?_, ?_⟩⟩
  · exact hft
  · exact IsLocalization.isDomain_localization (Ideal.primeCompl_le_nonZeroDivisors Q)
  · exact isIntegrallyClosed_of_isLocalization (Localization.AtPrime Q) Q.primeCompl
      (Ideal.primeCompl_le_nonZeroDivisors Q)

theorem wcpa_dj_glt_cc_tensor_nc_iso : ∀ (R : Type u) [CommRing R] (T : Type u) [CommRing T]
    [IsDomain T] [Algebra R T] [Module.Flat R T] (N : ℕ) (G : Fin (N + 1) → R)
    (k₀ : Fin (N + 1)), algebraMap R T (G k₀) ≠ 0 →
    letI : Algebra R (wcpaDjGltNC R G k₀) := (wcpaDjGltNCMap R G k₀).toAlgebra
    (∀ (Q : Ideal (TensorProduct R T (wcpaDjGltNC R G k₀))) [Q.IsPrime],
      IsDomain (Localization.AtPrime Q) ∧ IsIntegrallyClosed (Localization.AtPrime Q)) →
    ∃ Ψ : TensorProduct R T (wcpaDjGltNC R G k₀) ≃+*
        wcpaDjGltNC T (fun i => algebraMap R T (G i)) k₀,
      Ψ.toRingHom.comp Algebra.TensorProduct.includeLeftRingHom =
          wcpaDjGltNCMap T (fun i => algebraMap R T (G i)) k₀ ∧
        Ψ.toRingHom.comp ((Algebra.TensorProduct.includeRight :
            wcpaDjGltNC R G k₀ →ₐ[R] TensorProduct R T (wcpaDjGltNC R G k₀)).toRingHom.comp
            (wcpaDjGltNCMap R G k₀)) =
          (wcpaDjGltNCMap T (fun i => algebraMap R T (G i)) k₀).comp (algebraMap R T) :=
by
  intro R _ T _ _ _ _ N G k₀ hĝ hloc
  letI : Algebra R (wcpaDjGltNC R G k₀) := (wcpaDjGltNCMap R G k₀).toAlgebra

  have hle : Submonoid.powers (algebraMap R T (G k₀)) ≤ nonZeroDivisors T :=
    powers_le_nonZeroDivisors_of_noZeroDivisors hĝ
  haveI hTgdom : IsDomain (Localization.Away (algebraMap R T (G k₀))) :=
    IsLocalization.isDomain_of_le_nonZeroDivisors _ hle

  have hu : IsUnit (((algebraMap T (Localization.Away (algebraMap R T (G k₀)))).comp
      (algebraMap R T)) (G k₀)) :=
    IsLocalization.Away.algebraMap_isUnit (algebraMap R T (G k₀))
  let lam : Localization.Away (G k₀) →+* Localization.Away (algebraMap R T (G k₀)) :=
    IsLocalization.Away.lift (G k₀) hu
  have hlam : ∀ r : R, lam (algebraMap R (Localization.Away (G k₀)) r) =
      algebraMap T (Localization.Away (algebraMap R T (G k₀))) (algebraMap R T r) :=
    fun r => IsLocalization.Away.lift_eq (G k₀) hu r
  have hgen : ∀ l : Fin (N + 1), lam (IsLocalization.mk' (Localization.Away (G k₀)) (G l)
      (⟨G k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (G k₀))) =
      IsLocalization.mk' (Localization.Away (algebraMap R T (G k₀))) (algebraMap R T (G l))
        (⟨algebraMap R T (G k₀), Submonoid.mem_powers _⟩ :
          Submonoid.powers (algebraMap R T (G k₀))) := by
    intro l
    have hu' : IsUnit (algebraMap T (Localization.Away (algebraMap R T (G k₀)))
        (algebraMap R T (G k₀))) := hu
    refine hu'.mul_left_inj.mp ?_
    have h1 := congrArg lam (IsLocalization.mk'_spec (Localization.Away (G k₀)) (G l)
      (⟨G k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (G k₀)))
    rw [map_mul, hlam, hlam] at h1
    exact h1.trans (IsLocalization.mk'_spec (Localization.Away (algebraMap R T (G k₀)))
      (algebraMap R T (G l)) (⟨algebraMap R T (G k₀), Submonoid.mem_powers _⟩ :
        Submonoid.powers (algebraMap R T (G k₀)))).symm

  have hA : ∀ x ∈ wcpaDjChart R G k₀,
      lam x ∈ wcpaDjChart T (fun i => algebraMap R T (G i)) k₀ := by
    intro x hx
    unfold wcpaDjChart at hx
    induction hx using Algebra.adjoin_induction with
    | mem x hx =>
      obtain ⟨l, rfl⟩ := hx
      dsimp only
      rw [hgen l]
      exact Algebra.subset_adjoin ⟨l, rfl⟩
    | algebraMap r =>
      rw [hlam r]
      exact Subalgebra.algebraMap_mem _ _
    | add x y _ _ hx hy => rw [map_add]; exact Subalgebra.add_mem _ hx hy
    | mul x y _ _ hx hy => rw [map_mul]; exact Subalgebra.mul_mem _ hx hy
  let lamA : wcpaDjChart R G k₀ →+* wcpaDjChart T (fun i => algebraMap R T (G i)) k₀ :=
    RingHom.codRestrict (lam.comp (algebraMap (wcpaDjChart R G k₀) (Localization.Away (G k₀))))
      (wcpaDjChart T (fun i => algebraMap R T (G i)) k₀)
      (fun x => hA (x : Localization.Away (G k₀)) x.2)

  let vA0 : wcpaDjGltNC R G k₀ →+* Localization.Away (G k₀) :=
    (integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀))).val.toRingHom
  have hint : ∀ b : wcpaDjGltNC R G k₀,
      IsIntegral (wcpaDjChart T (fun i => algebraMap R T (G i)) k₀) (lam (vA0 b)) := by
    intro b
    let b' : ↥(integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀))) := b
    exact IsIntegral.map_of_comp_eq lamA lam (RingHom.ext fun x => rfl) b'.2

  let lamAlg : Localization.Away (G k₀) →ₐ[R] Localization.Away (algebraMap R T (G k₀)) :=
    { lam with
      commutes' := fun r => by
        show lam (algebraMap R _ r) = _
        rw [hlam r]
        exact (IsScalarTower.algebraMap_apply R T _ r).symm }
  have hvA_alg : ∀ r : R, vA0 (algebraMap R (wcpaDjGltNC R G k₀) r) =
      algebraMap R (Localization.Away (G k₀)) r := fun r => rfl
  let vA : wcpaDjGltNC R G k₀ →ₐ[R] Localization.Away (G k₀) :=
    { vA0 with commutes' := hvA_alg }
  have hvA_inj : Function.Injective vA := fun x y h => Subtype.val_injective h
  let ω : TensorProduct R T (wcpaDjGltNC R G k₀) →ₐ[T]
      Localization.Away (algebraMap R T (G k₀)) :=
    Algebra.TensorProduct.lift (Algebra.ofId T _) (lamAlg.comp vA) (fun _ _ => Commute.all _ _)
  have hω_tmul : ∀ (t : T) (b : wcpaDjGltNC R G k₀), ω (t ⊗ₜ b) =
      algebraMap T (Localization.Away (algebraMap R T (G k₀))) t * lam (vA0 b) := by
    intro t b
    rw [Algebra.TensorProduct.lift_tmul]
    rfl
  let ν : TensorProduct R T (Localization.Away (G k₀)) →ₐ[T]
      Localization.Away (algebraMap R T (G k₀)) :=
    Algebra.TensorProduct.lift (Algebra.ofId T _) lamAlg (fun _ _ => Commute.all _ _)
  have hM : Algebra.algebraMapSubmonoid T (Submonoid.powers (G k₀)) =
      Submonoid.powers (algebraMap R T (G k₀)) := Submonoid.map_powers _ _
  haveI : IsLocalization (Algebra.algebraMapSubmonoid T (Submonoid.powers (G k₀)))
      (Localization.Away (algebraMap R T (G k₀))) := by
    rw [hM]; infer_instance
  have hν : Function.Injective ν := by
    let e := IsLocalization.algEquiv (Algebra.algebraMapSubmonoid T (Submonoid.powers (G k₀)))
      (TensorProduct R T (Localization.Away (G k₀))) (Localization.Away (algebraMap R T (G k₀)))
    have : ν = e.toAlgHom :=
      (IsLocalization.algHom_subsingleton
        (Algebra.algebraMapSubmonoid T (Submonoid.powers (G k₀)))).elim _ _
    rw [this]
    exact e.injective
  have hlT : Function.Injective (LinearMap.lTensor T vA.toLinearMap) :=
    Module.Flat.lTensor_preserves_injective_linearMap vA.toLinearMap hvA_inj
  have hfac : ∀ w, ω w = ν (LinearMap.lTensor T vA.toLinearMap w) := by
    intro w
    induction w using TensorProduct.induction_on with
    | zero => rw [map_zero, map_zero, map_zero]
    | tmul t b =>
      rw [LinearMap.lTensor_tmul, hω_tmul, Algebra.TensorProduct.lift_tmul]
      rfl
    | add x y hx hy => rw [map_add, map_add, map_add, hx, hy]
  have hω : Function.Injective ω := by
    rw [injective_iff_map_eq_zero]
    intro w hw
    rw [hfac] at hw
    have h1 : LinearMap.lTensor T vA.toLinearMap w = 0 := hν (by rw [map_zero]; exact hw)
    exact hlT (by rw [map_zero]; exact h1)

  haveI hCdom : IsDomain (TensorProduct R T (wcpaDjGltNC R G k₀)) :=
    Function.Injective.isDomain
      (ω : TensorProduct R T (wcpaDjGltNC R G k₀) →+* Localization.Away (algebraMap R T (G k₀))) hω
  haveI hCic : IsIntegrallyClosed (TensorProduct R T (wcpaDjGltNC R G k₀)) :=
    IsIntegrallyClosed.of_localization_maximal (fun p _ hp => by haveI := hp; exact (hloc p).2)

  have hrange : ∀ w, ω w ∈ integralClosure (wcpaDjChart T (fun i => algebraMap R T (G i)) k₀)
      (Localization.Away (algebraMap R T (G k₀))) := by
    intro w
    induction w using TensorProduct.induction_on with
    | zero => rw [map_zero]; exact Subalgebra.zero_mem _
    | tmul t b =>
      rw [hω_tmul]
      refine Subalgebra.mul_mem _ ?_ (hint b)
      exact Subalgebra.algebraMap_mem (integralClosure (wcpaDjChart T (fun i => algebraMap R T (G i)) k₀)
        (Localization.Away (algebraMap R T (G k₀))))
        (⟨algebraMap T _ t, Subalgebra.algebraMap_mem _ t⟩ :
          wcpaDjChart T (fun i => algebraMap R T (G i)) k₀)
    | add x y hx hy => rw [map_add]; exact Subalgebra.add_mem _ hx hy

  have hA'range : ∀ x ∈ wcpaDjChart T (fun i => algebraMap R T (G i)) k₀, ∃ c, ω c = x := by
    intro x hx
    unfold wcpaDjChart at hx
    induction hx using Algebra.adjoin_induction with
    | mem x hx =>
      obtain ⟨l, rfl⟩ := hx
      let bl : wcpaDjGltNC R G k₀ :=
        algebraMap (wcpaDjChart R G k₀)
          (integralClosure (wcpaDjChart R G k₀) (Localization.Away (G k₀)))
          ⟨IsLocalization.mk' (Localization.Away (G k₀)) (G l)
            (⟨G k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (G k₀)),
           Algebra.subset_adjoin ⟨l, rfl⟩⟩
      refine ⟨1 ⊗ₜ bl, ?_⟩
      rw [hω_tmul, map_one, one_mul]
      exact hgen l
    | algebraMap t => exact ⟨algebraMap T _ t, ω.commutes t⟩
    | add x y _ _ hx hy =>
      obtain ⟨c, hc⟩ := hx
      obtain ⟨d, hd⟩ := hy
      exact ⟨c + d, by rw [map_add, hc, hd]⟩
    | mul x y _ _ hx hy =>
      obtain ⟨c, hc⟩ := hx
      obtain ⟨d, hd⟩ := hy
      exact ⟨c * d, by rw [map_mul, hc, hd]⟩

  have hcore : ∀ zz : Localization.Away (algebraMap R T (G k₀)),
      IsIntegral (wcpaDjChart T (fun i => algebraMap R T (G i)) k₀) zz → ∃ y, ω y = zz := by
    intro zz hz
    obtain ⟨p₀, hp₀m, hp₀⟩ := hz
    obtain ⟨φ, hφ⟩ : ∃ φ : TensorProduct R T (wcpaDjGltNC R G k₀) →+*
        Localization.Away (algebraMap R T (G k₀)),
        φ = (ω : TensorProduct R T (wcpaDjGltNC R G k₀) →+*
          Localization.Away (algebraMap R T (G k₀))) := ⟨_, rfl⟩
    have hφinj : Function.Injective φ := by rw [hφ]; exact hω
    have hlifts : p₀.map (algebraMap (wcpaDjChart T (fun i => algebraMap R T (G i)) k₀)
        (Localization.Away (algebraMap R T (G k₀)))) ∈ Polynomial.lifts φ := by
      rw [Polynomial.lifts_iff_coeff_lifts]
      intro n
      rw [Polynomial.coeff_map]
      obtain ⟨c, hc⟩ := hA'range _ (p₀.coeff n).2
      exact ⟨c, by rw [hφ]; exact hc⟩
    obtain ⟨q, hqmap, -, hqm⟩ := Polynomial.lifts_and_degree_eq_and_monic hlifts (hp₀m.map _)
    have hq : Polynomial.eval₂ φ zz q = 0 := by
      rw [← Polynomial.eval_map, hqmap, Polynomial.eval_map]
      exact hp₀
    obtain ⟨⟨t, s⟩, hts⟩ := IsLocalization.surj (Submonoid.powers (algebraMap R T (G k₀))) zz
    have hωs : φ (algebraMap T (TensorProduct R T (wcpaDjGltNC R G k₀)) (s : T)) =
        algebraMap T (Localization.Away (algebraMap R T (G k₀))) (s : T) := by
      rw [hφ]; exact ω.commutes _
    have hωa : φ (algebraMap T (TensorProduct R T (wcpaDjGltNC R G k₀)) t) =
        algebraMap T (Localization.Away (algebraMap R T (G k₀))) t := by
      rw [hφ]; exact ω.commutes _
    have hsu : IsUnit (algebraMap T (Localization.Away (algebraMap R T (G k₀))) (s : T)) :=
      IsLocalization.map_units (Localization.Away (algebraMap R T (G k₀))) s
    have hs0 : φ (algebraMap T (TensorProduct R T (wcpaDjGltNC R G k₀)) (s : T)) ≠ 0 := by
      rw [hωs]; exact hsu.ne_zero
    have hs0' : algebraMap T (TensorProduct R T (wcpaDjGltNC R G k₀)) (s : T) ≠ 0 := by
      intro h; apply hs0; rw [h, map_zero]
    have hrel : φ (algebraMap T (TensorProduct R T (wcpaDjGltNC R G k₀)) (s : T)) * zz =
        φ (algebraMap T (TensorProduct R T (wcpaDjGltNC R G k₀)) t) := by
      rw [hωs, hωa, mul_comm]; exact hts
    generalize algebraMap T (TensorProduct R T (wcpaDjGltNC R G k₀)) (s : T) = S at hs0 hs0' hrel
    generalize algebraMap T (TensorProduct R T (wcpaDjGltNC R G k₀)) t = a at hrel
    have h1 := Polynomial.scaleRoots_eval₂_mul (p := q) φ zz S
    rw [hq, mul_zero, hrel, Polynomial.eval₂_at_apply] at h1
    have h2 : Polynomial.eval a (q.scaleRoots S) = 0 := hφinj (h1.trans (map_zero φ).symm)
    have hκ : Function.Injective (algebraMap (TensorProduct R T (wcpaDjGltNC R G k₀))
        (FractionRing (TensorProduct R T (wcpaDjGltNC R G k₀)))) :=
      IsFractionRing.injective _ _
    have hκS : algebraMap (TensorProduct R T (wcpaDjGltNC R G k₀))
        (FractionRing (TensorProduct R T (wcpaDjGltNC R G k₀))) S ≠ 0 :=
      (map_ne_zero_iff _ hκ).mpr hs0'
    have hx : algebraMap (TensorProduct R T (wcpaDjGltNC R G k₀))
          (FractionRing (TensorProduct R T (wcpaDjGltNC R G k₀))) S *
        (algebraMap (TensorProduct R T (wcpaDjGltNC R G k₀))
          (FractionRing (TensorProduct R T (wcpaDjGltNC R G k₀))) a /
         algebraMap (TensorProduct R T (wcpaDjGltNC R G k₀))
          (FractionRing (TensorProduct R T (wcpaDjGltNC R G k₀))) S) =
        algebraMap (TensorProduct R T (wcpaDjGltNC R G k₀))
          (FractionRing (TensorProduct R T (wcpaDjGltNC R G k₀))) a := by
      rw [mul_div_assoc', mul_div_cancel_left₀ _ hκS]
    have h3 := Polynomial.scaleRoots_eval₂_mul (p := q)
      (algebraMap (TensorProduct R T (wcpaDjGltNC R G k₀))
        (FractionRing (TensorProduct R T (wcpaDjGltNC R G k₀))))
      (algebraMap (TensorProduct R T (wcpaDjGltNC R G k₀))
          (FractionRing (TensorProduct R T (wcpaDjGltNC R G k₀))) a /
         algebraMap (TensorProduct R T (wcpaDjGltNC R G k₀))
          (FractionRing (TensorProduct R T (wcpaDjGltNC R G k₀))) S) S
    rw [hx, Polynomial.eval₂_at_apply, h2, map_zero] at h3
    have h4 := (mul_eq_zero.mp h3.symm).resolve_left (pow_ne_zero _ hκS)
    have hintx : IsIntegral (TensorProduct R T (wcpaDjGltNC R G k₀))
        (algebraMap (TensorProduct R T (wcpaDjGltNC R G k₀))
          (FractionRing (TensorProduct R T (wcpaDjGltNC R G k₀))) a /
         algebraMap (TensorProduct R T (wcpaDjGltNC R G k₀))
          (FractionRing (TensorProduct R T (wcpaDjGltNC R G k₀))) S) := ⟨q, hqm, h4⟩
    obtain ⟨y, hy⟩ := IsIntegrallyClosed.algebraMap_eq_of_integral hintx
    have h5 : S * y = a := by
      apply hκ
      rw [map_mul, hy, hx]
    refine ⟨y, ?_⟩
    have h6 : φ S * φ y = φ S * zz := by rw [← map_mul, h5, hrel]
    have h7 := mul_left_cancel₀ hs0 h6
    rw [hφ] at h7
    exact h7

  let incl : wcpaDjGltNC T (fun i => algebraMap R T (G i)) k₀ →+*
      Localization.Away (algebraMap R T (G k₀)) :=
    (integralClosure (wcpaDjChart T (fun i => algebraMap R T (G i)) k₀)
      (Localization.Away (algebraMap R T (G k₀)))).val.toRingHom
  have hincl_inj : Function.Injective incl := fun x y h => Subtype.val_injective h
  let Φ : TensorProduct R T (wcpaDjGltNC R G k₀) →+*
      wcpaDjGltNC T (fun i => algebraMap R T (G i)) k₀ :=
    RingHom.codRestrict (ω : TensorProduct R T (wcpaDjGltNC R G k₀) →+*
        Localization.Away (algebraMap R T (G k₀)))
      (integralClosure (wcpaDjChart T (fun i => algebraMap R T (G i)) k₀)
        (Localization.Away (algebraMap R T (G k₀)))) hrange
  have hΦ : ∀ w, incl (Φ w) = ω w := fun w => rfl
  have hΦinj : Function.Injective Φ := by
    intro x y h
    apply hω
    rw [← hΦ, ← hΦ, h]
  have hΦsurj : Function.Surjective Φ := by
    intro z
    let z' : ↥(integralClosure (wcpaDjChart T (fun i => algebraMap R T (G i)) k₀)
      (Localization.Away (algebraMap R T (G k₀)))) := z
    obtain ⟨y, hy⟩ := hcore (incl z) z'.2
    exact ⟨y, hincl_inj (by rw [hΦ]; exact hy)⟩
  refine ⟨RingEquiv.ofBijective Φ ⟨hΦinj, hΦsurj⟩, ?_, ?_⟩
  · apply RingHom.ext
    intro t
    apply hincl_inj
    show ω (t ⊗ₜ 1) = algebraMap T (Localization.Away (algebraMap R T (G k₀))) t
    rw [hω_tmul, map_one, map_one, mul_one]
  · apply RingHom.ext
    intro r
    apply hincl_inj
    show ω (1 ⊗ₜ (wcpaDjGltNCMap R G k₀ r)) =
      algebraMap T (Localization.Away (algebraMap R T (G k₀))) (algebraMap R T r)
    rw [hω_tmul, map_one, one_mul]
    exact hlam r

theorem wcpa_dj_glt_cc_level_prime : ∀ (B B' : Type u) [CommRing B] [CommRing B']
    (f : B →+* B') (J : Ideal B),
    (∀ n : ℕ, Function.Surjective ((Ideal.Quotient.mk ((J.map f) ^ n)).comp f) ∧
      RingHom.ker ((Ideal.Quotient.mk ((J.map f) ^ n)).comp f) = J ^ n) →
    ∀ (P : Ideal B) [P.IsPrime], J ≤ P →
    ∃ (P' : Ideal B') (_ : P'.IsPrime), P'.comap f = P ∧
      ∀ n : ℕ, Function.Surjective ((Ideal.Quotient.mk (P' ^ n)).comp f) ∧
        RingHom.ker ((Ideal.Quotient.mk (P' ^ n)).comp f) = P ^ n :=
by
  intro B B' _ _ f J hH P hP hJP
  have decomp : ∀ (K : Ideal B'), (∀ z : B', ∃ c : B, z - f c ∈ K) →
      ∀ (I : Ideal B) (y : B'), y ∈ I.map f → ∃ p ∈ I, y - f p ∈ K := by
    intro K hK I y hy
    have hy' : y ∈ Submodule.span B' (f '' (I : Set B)) := hy
    clear hy
    induction hy' using Submodule.span_induction with
    | mem x hx =>
      obtain ⟨p, hp, rfl⟩ := hx
      exact ⟨p, hp, by simp⟩
    | zero => exact ⟨0, I.zero_mem, by simp⟩
    | add x y _ _ hx hy =>
      obtain ⟨p, hp, hpx⟩ := hx
      obtain ⟨q, hq, hqy⟩ := hy
      refine ⟨p + q, I.add_mem hp hq, ?_⟩
      have e : x + y - f (p + q) = (x - f p) + (y - f q) := by rw [map_add]; ring
      rw [e]; exact K.add_mem hpx hqy
    | smul a x _ hx =>
      obtain ⟨p, hp, hpx⟩ := hx
      obtain ⟨c, hc⟩ := hK a
      refine ⟨c * p, I.mul_mem_left c hp, ?_⟩
      have e : a • x - f (c * p) = (a - f c) * x + f c * (x - f p) := by
        rw [smul_eq_mul, map_mul]; ring
      rw [e]
      exact K.add_mem (K.mul_mem_right x hc) (K.mul_mem_left (f c) hpx)
  have hker : ∀ K : Ideal B', RingHom.ker ((Ideal.Quotient.mk K).comp f) = K.comap f := by
    intro K; ext b
    simp only [RingHom.mem_ker, RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem,
      Ideal.mem_comap]
  have surj_iff : ∀ K : Ideal B', Function.Surjective ((Ideal.Quotient.mk K).comp f) ↔
      ∀ z : B', ∃ c : B, z - f c ∈ K := by
    intro K
    constructor
    · intro hs z
      obtain ⟨c, hc⟩ := hs (Ideal.Quotient.mk K z)
      refine ⟨c, ?_⟩
      rw [RingHom.comp_apply, Ideal.Quotient.eq] at hc
      rw [← neg_sub]; exact K.neg_mem hc
    · intro hd q
      obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective q
      obtain ⟨c, hc⟩ := hd z
      refine ⟨c, ?_⟩
      rw [RingHom.comp_apply, Ideal.Quotient.eq, ← neg_sub]
      exact K.neg_mem hc
  have dJ : ∀ n, ∀ z : B', ∃ c : B, z - f c ∈ (J.map f) ^ n :=
    fun n => (surj_iff _).1 (hH n).1
  have hpow : ∀ n, (J.map f) ^ n ≤ (P.map f) ^ n :=
    fun n => Ideal.pow_right_mono (Ideal.map_mono hJP) n
  have hcomap : ∀ n, ((P.map f) ^ n).comap f = P ^ n := by
    intro n
    apply le_antisymm
    · intro b hb
      rw [Ideal.mem_comap, ← Ideal.map_pow] at hb
      obtain ⟨p, hp, hbp⟩ := decomp _ (dJ n) (P ^ n) (f b) hb
      have h1 : b - p ∈ ((J.map f) ^ n).comap f := by
        rw [Ideal.mem_comap, map_sub]; exact hbp
      rw [← hker, (hH n).2] at h1
      have h2 : b - p ∈ P ^ n := Ideal.pow_right_mono hJP n h1
      have h3 := (P ^ n).add_mem h2 hp
      rwa [sub_add_cancel] at h3
    · intro p hp
      rw [Ideal.mem_comap, ← Ideal.map_pow]
      exact Ideal.mem_map_of_mem f hp
  have hc1 : (P.map f).comap f = P := by simpa using hcomap 1
  have hprime : (P.map f).IsPrime := by
    rw [Ideal.isPrime_iff]
    refine ⟨?_, ?_⟩
    · intro htop
      apply hP.ne_top
      rw [← hc1, htop, Ideal.comap_top]
    · intro x y hxy
      obtain ⟨a, ha⟩ := dJ 1 x
      obtain ⟨b, hb⟩ := dJ 1 y
      rw [pow_one] at ha hb
      have ha' := Ideal.map_mono hJP ha
      have hb' := Ideal.map_mono hJP hb
      have hab : f (a * b) ∈ P.map f := by
        have e : f (a * b) = x * y - (x - f a) * y - f a * (y - f b) := by rw [map_mul]; ring
        rw [e]
        exact sub_mem (sub_mem hxy (Ideal.mul_mem_right _ _ ha')) (Ideal.mul_mem_left _ _ hb')
      have hab' : a * b ∈ P := by rw [← hc1]; exact hab
      rcases hP.mem_or_mem hab' with h | h
      · left
        have h3 := add_mem ha' (Ideal.mem_map_of_mem f h)
        rwa [sub_add_cancel] at h3
      · right
        have h3 := add_mem hb' (Ideal.mem_map_of_mem f h)
        rwa [sub_add_cancel] at h3
  refine ⟨P.map f, hprime, hc1, fun n => ⟨?_, ?_⟩⟩
  · exact (surj_iff _).2 fun z => by
      obtain ⟨c, hc⟩ := dJ n z
      exact ⟨c, hpow n hc⟩
  · rw [hker, hcomap]

theorem wcpa_dj_glt_cc_completion_of_levels : ∀ (B B' : Type u) [CommRing B] [CommRing B']
    (f : B →+* B') (P : Ideal B) [P.IsPrime] (P' : Ideal B') [P'.IsPrime], P'.comap f = P →
    (∀ n : ℕ, Function.Surjective ((Ideal.Quotient.mk (P' ^ n)).comp f) ∧
      RingHom.ker ((Ideal.Quotient.mk (P' ^ n)).comp f) = P ^ n) →
    ∃ ε : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
        (Localization.AtPrime P) ≃+*
      AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P'))
        (Localization.AtPrime P'),
      ε.toRingHom.comp ((algebraMap (Localization.AtPrime P)
          (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
            (Localization.AtPrime P))).comp (algebraMap B (Localization.AtPrime P))) =
        (algebraMap (Localization.AtPrime P')
          (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P'))
            (Localization.AtPrime P'))).comp ((algebraMap B' (Localization.AtPrime P')).comp f) :=
by
  intro B B' _ _ f P _ P' _ h hlev

  have s4 : ∀ {A A' : Type u} [CommRing A] [CommRing A'] (I : Ideal A) (I' : Ideal A')
      (φ : A →+* A'), (∀ (k : ℕ) (x : A), x ∈ I ^ k ↔ φ x ∈ I' ^ k) →
      (∀ (k : ℕ) (y : A'), ∃ x : A, y - φ x ∈ I' ^ k) →
      ∃ ε : AdicCompletion I A ≃+* AdicCompletion I' A',
        ε.toRingHom.comp (algebraMap A (AdicCompletion I A)) =
          (algebraMap A' (AdicCompletion I' A')).comp φ := by
    intro A A' _ _ I I' φ hiff hsur
    have hn : ∀ n : ℕ, I ^ n ≤ Ideal.comap φ (I' ^ n) := fun n x hx => (hiff n x).mp hx
    let q : ∀ n : ℕ, A ⧸ I ^ n →+* A' ⧸ I' ^ n := fun n => Ideal.quotientMap (I' ^ n) φ (hn n)
    have hq : ∀ n (a : A), q n (Ideal.Quotient.mk _ a) = Ideal.Quotient.mk _ (φ a) :=
      fun n a => Ideal.quotientMap_mk
    have hbij : ∀ n, Function.Bijective (q n) := by
      intro n
      constructor
      · rw [injective_iff_map_eq_zero]
        intro z hz
        obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective z
        rw [hq, Ideal.Quotient.eq_zero_iff_mem] at hz
        rw [Ideal.Quotient.eq_zero_iff_mem]
        exact (hiff n a).mpr hz
      · intro z
        obtain ⟨y, rfl⟩ := Ideal.Quotient.mk_surjective z
        obtain ⟨x, hx⟩ := hsur n y
        refine ⟨Ideal.Quotient.mk _ x, ?_⟩
        rw [hq, Ideal.Quotient.eq, ← neg_sub]
        exact (Submodule.neg_mem_iff _).mpr hx
    let e : ∀ n, A ⧸ I ^ n ≃+* A' ⧸ I' ^ n := fun n => RingEquiv.ofBijective (q n) (hbij n)
    have he : ∀ n z, e n z = q n z := fun n z => RingEquiv.ofBijective_apply _ _ _
    have hsq : ∀ {m n : ℕ} (hle : m ≤ n) (z : A ⧸ I ^ n),
        Ideal.Quotient.factorPow I' hle (q n z) = q m (Ideal.Quotient.factorPow I hle z) := by
      intro m n hle z
      obtain ⟨a, rfl⟩ := Ideal.Quotient.mk_surjective z
      rw [hq]
      exact (hq m a).symm
    have hev : ∀ {R : Type u} [CommRing R] (J : Ideal R) {m n : ℕ} (hle : m ≤ n)
        (x : AdicCompletion J R),
        Ideal.Quotient.factorPow J hle (AdicCompletion.evalₐ J n x) =
          AdicCompletion.evalₐ J m x := by
      intro R _ J m n hle x
      obtain ⟨s, rfl⟩ := AdicCompletion.mk_surjective J R x
      rw [AdicCompletion.evalₐ_mk, AdicCompletion.evalₐ_mk,
        ← AdicCompletion.Ideal.mk_eq_mk J hle s]
      rfl
    let g : ∀ n : ℕ, AdicCompletion I A →+* A' ⧸ I' ^ n := fun n =>
      (q n).comp (AdicCompletion.evalₐ I n : AdicCompletion I A →+* A ⧸ I ^ n)
    have hg : ∀ {m n : ℕ} (hle : m ≤ n), (Ideal.Quotient.factorPow I' hle).comp (g n) = g m := by
      intro m n hle
      refine RingHom.ext fun x => ?_
      simp only [g, RingHom.comp_apply, AlgHom.coe_toRingHom]
      rw [hsq, hev]
    let g' : ∀ n : ℕ, AdicCompletion I' A' →+* A ⧸ I ^ n := fun n =>
      ((e n).symm : A' ⧸ I' ^ n →+* A ⧸ I ^ n).comp
        (AdicCompletion.evalₐ I' n : AdicCompletion I' A' →+* A' ⧸ I' ^ n)
    have hg' : ∀ {m n : ℕ} (hle : m ≤ n), (Ideal.Quotient.factorPow I hle).comp (g' n) = g' m := by
      intro m n hle
      refine RingHom.ext fun y => ?_
      simp only [g', RingHom.comp_apply, RingHom.coe_coe]
      apply (e m).injective
      rw [RingEquiv.apply_symm_apply, he, ← hsq, ← he, RingEquiv.apply_symm_apply, hev]
    let Φ := AdicCompletion.liftRingHom I' g hg
    let Ψ := AdicCompletion.liftRingHom I g' hg'
    have hΦ : ∀ n x, AdicCompletion.evalₐ I' n (Φ x) = q n (AdicCompletion.evalₐ I n x) := by
      intro n x
      simp only [Φ, AdicCompletion.evalₐ_liftRingHom, g, RingHom.comp_apply, AlgHom.coe_toRingHom]
    have hΨ : ∀ n y, AdicCompletion.evalₐ I n (Ψ y) = (e n).symm (AdicCompletion.evalₐ I' n y) := by
      intro n y
      simp only [Ψ, AdicCompletion.evalₐ_liftRingHom, g', RingHom.comp_apply, RingHom.coe_coe]
    have hΦΨ : Φ.comp Ψ = RingHom.id _ := by
      refine RingHom.ext fun y => ?_
      apply AdicCompletion.ext_evalₐ
      intro n
      rw [RingHom.comp_apply, hΦ, hΨ, ← he, RingEquiv.apply_symm_apply, RingHom.id_apply]
    have hΨΦ : Ψ.comp Φ = RingHom.id _ := by
      refine RingHom.ext fun x => ?_
      apply AdicCompletion.ext_evalₐ
      intro n
      rw [RingHom.comp_apply, hΨ, hΦ, ← he, RingEquiv.symm_apply_apply, RingHom.id_apply]
    refine ⟨RingEquiv.ofRingHom Φ Ψ hΦΨ hΨΦ, ?_⟩
    refine RingHom.ext fun r => ?_
    apply AdicCompletion.ext_evalₐ
    intro n
    simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingHom.coe_coe,
      RingEquiv.ofRingHom_apply, AdicCompletion.algebraMap_apply, Algebra.algebraMap_self_apply]
    rw [hΦ, AdicCompletion.evalₐ_of, AdicCompletion.evalₐ_of, hq]

  set lam := Localization.localRingHom P P' f h.symm with hlam
  have hmax : ∀ k : ℕ, IsLocalRing.maximalIdeal (Localization.AtPrime P) ^ k =
      Ideal.map (algebraMap B (Localization.AtPrime P)) (P ^ k) := by
    intro k
    rw [Ideal.map_pow, IsLocalization.AtPrime.map_eq_maximalIdeal]
  have hmax' : ∀ k : ℕ, IsLocalRing.maximalIdeal (Localization.AtPrime P') ^ k =
      Ideal.map (algebraMap B' (Localization.AtPrime P')) (P' ^ k) := by
    intro k
    rw [Ideal.map_pow, IsLocalization.AtPrime.map_eq_maximalIdeal]
  have hlift : ∀ (k : ℕ) (z : B'), ∃ c : B, z - f c ∈ P' ^ k := by
    intro k z
    obtain ⟨c, hc⟩ := (hlev k).1 (Ideal.Quotient.mk _ z)
    refine ⟨c, ?_⟩
    rw [RingHom.comp_apply, Ideal.Quotient.eq] at hc
    rw [← neg_sub]
    exact (Submodule.neg_mem_iff _).mpr hc
  have hker : ∀ (k : ℕ) (b : B), f b ∈ P' ^ k → b ∈ P ^ k := by
    intro k b hb
    rw [← (hlev k).2, RingHom.mem_ker, RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem]
    exact hb
  have hunit : ∀ k : ℕ, k ≠ 0 → ∀ (s : B') (c : B), s ∉ P' → s - f c ∈ P' ^ k → c ∉ P := by
    intro k hk s c hs hsc hcP
    apply hs
    have h1 : f c ∈ P' := by rw [← Ideal.mem_comap, h]; exact hcP
    have h2 : s - f c ∈ P' := Ideal.pow_le_self hk hsc
    have h3 := P'.add_mem h2 h1
    rwa [sub_add_cancel] at h3
  have hiff : ∀ (k : ℕ) (x : Localization.AtPrime P),
      x ∈ IsLocalRing.maximalIdeal (Localization.AtPrime P) ^ k ↔
        lam x ∈ IsLocalRing.maximalIdeal (Localization.AtPrime P') ^ k := by
    intro k x
    constructor
    · intro hx
      have h1 : IsLocalRing.maximalIdeal (Localization.AtPrime P) ≤
          Ideal.comap lam (IsLocalRing.maximalIdeal (Localization.AtPrime P')) := by
        intro z hz
        rw [Ideal.mem_comap, IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
        rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff] at hz
        intro hu
        exact hz (isUnit_of_map_unit lam z hu)
      exact (le_trans (Ideal.pow_right_mono h1 k) (Ideal.le_comap_pow lam k)) hx
    · intro hx
      rcases Nat.eq_zero_or_pos k with hk | hk
      · subst hk; simp
      obtain ⟨⟨c, d⟩, hcd⟩ := IsLocalization.mk'_surjective P.primeCompl x
      dsimp only at hcd
      subst hcd
      rw [hlam, Localization.localRingHom_mk', hmax',
        IsLocalization.mk'_mem_map_algebraMap_iff] at hx
      obtain ⟨s, hs, hsc⟩ := hx
      obtain ⟨e, he⟩ := hlift k s
      rw [hmax, IsLocalization.mk'_mem_map_algebraMap_iff]
      refine ⟨e, Ideal.mem_primeCompl_iff.mpr
        (hunit k hk.ne' s e (Ideal.mem_primeCompl_iff.mp hs) he), hker k _ ?_⟩
      have h2 : f (e * c) = s * f c - (s - f e) * f c := by rw [map_mul]; ring
      rw [h2]
      exact Ideal.sub_mem _ hsc (Ideal.mul_mem_right _ _ he)
  have hsur : ∀ (k : ℕ) (y : Localization.AtPrime P'), ∃ x : Localization.AtPrime P,
      y - lam x ∈ IsLocalRing.maximalIdeal (Localization.AtPrime P') ^ k := by
    intro k y
    rcases Nat.eq_zero_or_pos k with hk | hk
    · subst hk; exact ⟨0, by simp⟩
    obtain ⟨⟨b', s'⟩, hy⟩ := IsLocalization.mk'_surjective P'.primeCompl y
    dsimp only at hy
    subst hy
    obtain ⟨c, hc⟩ := hlift k b'
    obtain ⟨d, hd⟩ := hlift k (s' : B')
    have hdP : d ∈ P.primeCompl := Ideal.mem_primeCompl_iff.mpr
      (hunit k hk.ne' s' d (Ideal.mem_primeCompl_iff.mp s'.2) hd)
    refine ⟨IsLocalization.mk' (Localization.AtPrime P) c ⟨d, hdP⟩, ?_⟩
    rw [hlam, Localization.localRingHom_mk', ← IsLocalization.mk'_sub, hmax',
      IsLocalization.mk'_mem_map_algebraMap_iff]
    refine ⟨1, Submonoid.one_mem _, ?_⟩
    rw [one_mul]
    show b' * f d - f c * (s' : B') ∈ P' ^ k
    have h2 : b' * f d - f c * (s' : B') = (b' - f c) * f d - f c * ((s' : B') - f d) := by ring
    rw [h2]
    exact Ideal.sub_mem _ (Ideal.mul_mem_right _ _ hc) (Ideal.mul_mem_left _ _ hd)

  obtain ⟨ε, hε⟩ := s4 _ _ lam hiff hsur
  refine ⟨ε, RingHom.ext fun b => ?_⟩
  have h1 := RingHom.congr_fun hε (algebraMap B (Localization.AtPrime P) b)
  simp only [RingHom.comp_apply] at h1 ⊢
  rw [h1, hlam, Localization.localRingHom_to_map]

theorem wcpa_dj_glt_cc_tensor_levels : ∀ (R : Type u) [CommRing R] [IsLocalRing R]
    [IsNoetherianRing R] (C : Type u) [CommRing C] [Algebra R C], ∀ n : ℕ,
    Function.Surjective ((Ideal.Quotient.mk ((((IsLocalRing.maximalIdeal R).map
        (algebraMap R C)).map (Algebra.TensorProduct.includeRight :
          C →ₐ[R] TensorProduct R (AdicCompletion (IsLocalRing.maximalIdeal R) R) C).toRingHom)
        ^ n)).comp (Algebra.TensorProduct.includeRight :
          C →ₐ[R] TensorProduct R (AdicCompletion (IsLocalRing.maximalIdeal R) R) C).toRingHom) ∧
    RingHom.ker ((Ideal.Quotient.mk ((((IsLocalRing.maximalIdeal R).map
        (algebraMap R C)).map (Algebra.TensorProduct.includeRight :
          C →ₐ[R] TensorProduct R (AdicCompletion (IsLocalRing.maximalIdeal R) R) C).toRingHom)
        ^ n)).comp (Algebra.TensorProduct.includeRight :
          C →ₐ[R] TensorProduct R (AdicCompletion (IsLocalRing.maximalIdeal R) R) C).toRingHom) =
      ((IsLocalRing.maximalIdeal R).map (algebraMap R C)) ^ n :=
by
  intro R _ _ _ C _ _ n
  classical
  set 𝔪 := IsLocalRing.maximalIdeal R with h𝔪
  set f : C →ₐ[R] TensorProduct R (AdicCompletion 𝔪 R) C :=
    Algebra.TensorProduct.includeRight with hf
  set J := 𝔪.map (algebraMap R C) with hJ
  set g : AdicCompletion 𝔪 R →ₐ[R] TensorProduct R (AdicCompletion 𝔪 R) C :=
    Algebra.TensorProduct.includeLeft with hg

  have hfg : 𝔪.FG := IsNoetherian.noetherian _
  have hmem : ∀ b : AdicCompletion 𝔪 R,
      b ∈ Ideal.map (algebraMap R (AdicCompletion 𝔪 R)) (𝔪 ^ n) ↔
      AdicCompletion.eval 𝔪 R n b = 0 := by
    intro b
    have h1 := AdicCompletion.pow_smul_top_eq_ker_eval (M := R) (n := n) hfg
    have h2 := Ideal.smul_top_eq_map (S := AdicCompletion 𝔪 R) (𝔪 ^ n)
    have h3 := SetLike.ext_iff.mp (h2.symm.trans h1) b
    rw [Submodule.restrictScalars_mem, LinearMap.mem_ker] at h3
    exact h3
  have hof : ∀ p : R, AdicCompletion.eval 𝔪 R n (algebraMap R (AdicCompletion 𝔪 R) p) =
      Submodule.Quotient.mk p := by
    intro p
    change AdicCompletion.eval 𝔪 R n (AdicCompletion.of 𝔪 R p) = _
    rw [AdicCompletion.eval_of]
    rfl
  have hlift : ∀ t : AdicCompletion 𝔪 R, ∃ p : R,
      t - algebraMap R (AdicCompletion 𝔪 R) p ∈
        Ideal.map (algebraMap R (AdicCompletion 𝔪 R)) (𝔪 ^ n) := by
    intro t
    obtain ⟨p, hp⟩ := Submodule.Quotient.mk_surjective _ (AdicCompletion.eval 𝔪 R n t)
    refine ⟨p, (hmem _).mpr ?_⟩
    rw [map_sub, hof, hp, sub_self]

  have hJn : J ^ n = (𝔪 ^ n).map (algebraMap R C) := by rw [hJ, Ideal.map_pow]
  have hJ'n : (J.map f.toRingHom) ^ n = (J ^ n).map f.toRingHom :=
    (Ideal.map_pow f.toRingHom J n).symm
  have hNf : f.toRingHom.comp (algebraMap R C) =
      algebraMap R (TensorProduct R (AdicCompletion 𝔪 R) C) :=
    RingHom.ext fun r => f.commutes r
  have hNg : g.toRingHom.comp (algebraMap R (AdicCompletion 𝔪 R)) =
      algebraMap R (TensorProduct R (AdicCompletion 𝔪 R) C) :=
    RingHom.ext fun r => g.commutes r
  have hJ'alg : (J ^ n).map f.toRingHom =
      (𝔪 ^ n).map (algebraMap R (TensorProduct R (AdicCompletion 𝔪 R) C)) := by
    rw [hJn, Ideal.map_map, hNf]

  have hle : 𝔪 ^ n ≤ (J ^ n).comap (Algebra.ofId R C) := by
    intro x hx
    rw [Ideal.mem_comap, Algebra.ofId_apply, hJn]
    exact Ideal.mem_map_of_mem _ hx
  let θ := Algebra.TensorProduct.productMap
    ((Ideal.quotientMapₐ (J ^ n) (Algebra.ofId R C) hle).comp (AdicCompletion.evalₐ 𝔪 n))
    (Ideal.Quotient.mkₐ R (J ^ n))
  have hθf : ∀ c, θ (f c) = Ideal.Quotient.mk (J ^ n) c := by
    intro c
    simp only [θ, hf, Algebra.TensorProduct.includeRight_apply,
      Algebra.TensorProduct.productMap_apply_tmul, map_one, one_mul, Ideal.Quotient.mkₐ_eq_mk]
  have hker_le : ∀ c, f c ∈ (J.map f.toRingHom) ^ n → c ∈ J ^ n := by
    intro c hc
    rw [hJ'n] at hc
    have hkill : (J ^ n).map f.toRingHom ≤ RingHom.ker θ.toRingHom := by
      rw [Ideal.map_le_iff_le_comap]
      intro x hx
      rw [Ideal.mem_comap, RingHom.mem_ker]
      show θ (f x) = 0
      rw [hθf, Ideal.Quotient.eq_zero_iff_mem]
      exact hx
    have h2 := hkill hc
    rw [RingHom.mem_ker] at h2
    change θ (f c) = 0 at h2
    rwa [hθf, Ideal.Quotient.eq_zero_iff_mem] at h2

  have hS : ∀ w : TensorProduct R (AdicCompletion 𝔪 R) C,
      ∃ c : C, w - f c ∈ (J.map f.toRingHom) ^ n := by
    intro w
    induction w using TensorProduct.induction_on with
    | zero => exact ⟨0, by simp⟩
    | tmul t c₀ =>
      obtain ⟨p, hp⟩ := hlift t
      refine ⟨algebraMap R C p * c₀, ?_⟩
      have e : t ⊗ₜ[R] c₀ - f (algebraMap R C p * c₀) =
          g (t - algebraMap R (AdicCompletion 𝔪 R) p) * f c₀ := by
        rw [map_mul, f.commutes, map_sub, g.commutes, sub_mul, hg, hf,
          Algebra.TensorProduct.includeLeft_apply, Algebra.TensorProduct.includeRight_apply,
          Algebra.TensorProduct.tmul_mul_tmul, one_mul, mul_one]
      rw [e]
      apply Ideal.mul_mem_right
      rw [hJ'n, hJ'alg, ← hNg, ← Ideal.map_map]
      exact Ideal.mem_map_of_mem _ hp
    | add w₁ w₂ h₁ h₂ =>
      obtain ⟨c₁, hc₁⟩ := h₁
      obtain ⟨c₂, hc₂⟩ := h₂
      refine ⟨c₁ + c₂, ?_⟩
      have e : w₁ + w₂ - f (c₁ + c₂) = (w₁ - f c₁) + (w₂ - f c₂) := by
        rw [map_add]; abel
      rw [e]
      exact Ideal.add_mem _ hc₁ hc₂

  refine ⟨fun z => ?_, ?_⟩
  · obtain ⟨w, rfl⟩ := Ideal.Quotient.mk_surjective z
    obtain ⟨c, hc⟩ := hS w
    refine ⟨c, ?_⟩
    rw [RingHom.comp_apply, Ideal.Quotient.eq]
    have h := neg_mem hc
    rwa [neg_sub] at h
  · ext c
    rw [RingHom.mem_ker, RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem]
    constructor
    · exact hker_le c
    · intro hc
      rw [hJ'n]
      exact Ideal.mem_map_of_mem _ hc

theorem wcpa_dj_glt_cc_chart_completion : ∀ (R : Type u) [CommRing R] [IsLocalRing R]
    [IsDomain R] [IsIntegrallyClosed R],
    (∃ (R₀ : Type u) (_ : CommRing R₀) (_ : Algebra.FiniteType ℤ R₀) (𝔬 : Ideal R₀)
      (_ : 𝔬.IsPrime), Nonempty (Localization.AtPrime 𝔬 ≃+* R)) →
    IsDomain (AdicCompletion (IsLocalRing.maximalIdeal R) R) →
    IsIntegrallyClosed (AdicCompletion (IsLocalRing.maximalIdeal R) R) →
    ∀ (N : ℕ) (G : Fin (N + 1) → R) (k₀ : Fin (N + 1)), G k₀ ≠ 0 →
    ∀ (P : Ideal (wcpaDjGltNC R G k₀)) [P.IsPrime],
      P.comap (wcpaDjGltNCMap R G k₀) = IsLocalRing.maximalIdeal R →
      ∃ (Q₁ : Ideal (wcpaDjGltNC (AdicCompletion (IsLocalRing.maximalIdeal R) R)
          (fun i => algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) (G i)) k₀))
        (_ : Q₁.IsPrime)
        (ε : AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
            (Localization.AtPrime P) ≃+*
          AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime Q₁))
            (Localization.AtPrime Q₁)),
        Q₁.comap ((wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal R) R)
            (fun i => algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) (G i)) k₀).comp
            (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R))) =
          IsLocalRing.maximalIdeal R ∧
        ε.toRingHom.comp ((algebraMap (Localization.AtPrime P)
            (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
              (Localization.AtPrime P))).comp
            ((algebraMap (wcpaDjGltNC R G k₀) (Localization.AtPrime P)).comp
              (wcpaDjGltNCMap R G k₀))) =
          (algebraMap (Localization.AtPrime Q₁)
            (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime Q₁))
              (Localization.AtPrime Q₁))).comp
            ((algebraMap (wcpaDjGltNC (AdicCompletion (IsLocalRing.maximalIdeal R) R)
                (fun i => algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) (G i)) k₀)
                (Localization.AtPrime Q₁)).comp
              ((wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal R) R)
                (fun i => algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) (G i))
                  k₀).comp
                (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)))) :=
by
  intro R _ _ _ _ hft hRd hRic N G k₀ hG P _ hPc
  classical
  haveI := hRd

  obtain ⟨R₀, _, _, 𝔬, _, ⟨φ⟩⟩ := id hft
  haveI : IsNoetherianRing R₀ := Algebra.FiniteType.isNoetherianRing ℤ R₀
  haveI : IsNoetherianRing (Localization.AtPrime 𝔬) :=
    IsLocalization.isNoetherianRing 𝔬.primeCompl _ inferInstance
  haveI : IsNoetherianRing R := isNoetherianRing_of_ringEquiv _ φ

  have hH := wcpa_dj_glt_cc_fibres_of_ft_local R hft

  haveI : IsDomain (Localization.Away (G k₀)) :=
    IsLocalization.isDomain_localization (powers_le_nonZeroDivisors_of_noZeroDivisors hG)
  have hAft : Algebra.FiniteType R (wcpaDjChart R G k₀) := by
    apply (Subalgebra.fg_iff_finiteType _).mp
    unfold wcpaDjChart
    rw [← Set.image_univ, ← Finset.coe_univ, ← Finset.coe_image]
    exact Subalgebra.fg_adjoin_finset _
  have hN1 := wcpa_dj_glt_cc_nagata_ft R hft (wcpaDjChart R G k₀) hAft

  letI : Algebra R (wcpaDjGltNC R G k₀) := (wcpaDjGltNCMap R G k₀).toAlgebra
  obtain ⟨_, hBft, hBloc⟩ := wcpa_dj_glt_cc_chart_normal R N G k₀ hG hN1

  have hloc' := wcpa_dj_glt_cc_normal_flat_basechange R hH (wcpaDjGltNC R G k₀) hBft hBloc

  haveI : IsHausdorff (IsLocalRing.maximalIdeal R) R :=
    IsHausdorff.of_isLocalRing _ R (IsLocalRing.maximalIdeal.isMaximal R).ne_top
  have hιinj : Function.Injective
      (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)) := by
    intro a b h
    rw [AdicCompletion.algebraMap_apply, AdicCompletion.algebraMap_apply] at h
    simpa using AdicCompletion.of_injective (IsLocalRing.maximalIdeal R) R h
  haveI : Module.Flat R (AdicCompletion (IsLocalRing.maximalIdeal R) R) :=
    AdicCompletion.flat_of_isNoetherian _

  obtain ⟨Ψ, -, hΨ2⟩ := wcpa_dj_glt_cc_tensor_nc_iso R
    (AdicCompletion (IsLocalRing.maximalIdeal R) R) N G k₀
    ((map_ne_zero_iff _ hιinj).mpr hG) hloc'

  obtain ⟨incl, hincl⟩ : ∃ incl : wcpaDjGltNC R G k₀ →+*
      TensorProduct R (AdicCompletion (IsLocalRing.maximalIdeal R) R) (wcpaDjGltNC R G k₀),
      incl = (Algebra.TensorProduct.includeRight : wcpaDjGltNC R G k₀ →ₐ[R]
        TensorProduct R (AdicCompletion (IsLocalRing.maximalIdeal R) R)
          (wcpaDjGltNC R G k₀)).toRingHom := ⟨_, rfl⟩
  obtain ⟨J, hJ⟩ : ∃ J : Ideal (wcpaDjGltNC R G k₀),
      J = (IsLocalRing.maximalIdeal R).map (algebraMap R (wcpaDjGltNC R G k₀)) := ⟨_, rfl⟩
  have hlev : ∀ n : ℕ, Function.Surjective ((Ideal.Quotient.mk ((J.map incl) ^ n)).comp incl) ∧
      RingHom.ker ((Ideal.Quotient.mk ((J.map incl) ^ n)).comp incl) = J ^ n := by
    intro n
    rw [hincl, hJ]
    exact wcpa_dj_glt_cc_tensor_levels R (wcpaDjGltNC R G k₀) n
  have hΨ2' : Ψ.toRingHom.comp (incl.comp (wcpaDjGltNCMap R G k₀)) =
      (wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal R) R)
        (fun i => algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) (G i)) k₀).comp
        (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)) := by
    rw [hincl]; exact hΨ2

  obtain ⟨f, hf⟩ : ∃ f : wcpaDjGltNC R G k₀ →+* wcpaDjGltNC
      (AdicCompletion (IsLocalRing.maximalIdeal R) R)
      (fun i => algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) (G i)) k₀,
      f = Ψ.toRingHom.comp incl := ⟨_, rfl⟩
  have hfc : ∀ c, Ψ.symm (f c) = incl c := by
    intro c; rw [hf]; exact Ψ.symm_apply_apply (incl c)
  have htrans : ∀ n : ℕ, Function.Surjective ((Ideal.Quotient.mk ((J.map f) ^ n)).comp f) ∧
      RingHom.ker ((Ideal.Quotient.mk ((J.map f) ^ n)).comp f) = J ^ n := by
    intro n
    obtain ⟨hs, hk⟩ := hlev n
    have hI : (J.map f) ^ n = ((J.map incl) ^ n).comap Ψ.symm.toRingHom := by
      rw [hf, ← Ideal.map_map, ← Ideal.map_pow, RingEquiv.toRingHom_eq_coe,
        Ideal.map_comap_of_equiv]
      rfl
    have hmem : ∀ z, z ∈ (J.map f) ^ n ↔ Ψ.symm z ∈ (J.map incl) ^ n := by
      intro z
      rw [hI, Ideal.mem_comap]
      rfl
    constructor
    · intro z
      obtain ⟨z, rfl⟩ := Ideal.Quotient.mk_surjective z
      obtain ⟨c, hc⟩ := hs (Ideal.Quotient.mk _ (Ψ.symm z))
      refine ⟨c, ?_⟩
      simp only [RingHom.comp_apply] at hc ⊢
      rw [Ideal.Quotient.eq] at hc ⊢
      rw [hmem, map_sub, hfc]
      exact hc
    · rw [← hk]
      ext c
      simp only [RingHom.mem_ker, RingHom.comp_apply, Ideal.Quotient.eq_zero_iff_mem]
      rw [hmem, hfc]

  have hJP : J ≤ P := by
    rw [hJ, Ideal.map_le_iff_le_comap, RingHom.algebraMap_toAlgebra, hPc]

  obtain ⟨Q₁, hQ₁, hQc, hQlev⟩ := wcpa_dj_glt_cc_level_prime _ _ f J htrans P hJP
  haveI := hQ₁
  obtain ⟨ε, hε⟩ := wcpa_dj_glt_cc_completion_of_levels _ _ f P Q₁ hQc hQlev
  have hfN : f.comp (wcpaDjGltNCMap R G k₀) =
      (wcpaDjGltNCMap (AdicCompletion (IsLocalRing.maximalIdeal R) R)
        (fun i => algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R) (G i)) k₀).comp
        (algebraMap R (AdicCompletion (IsLocalRing.maximalIdeal R) R)) := by
    rw [hf, RingHom.comp_assoc]; exact hΨ2'

  refine ⟨Q₁, hQ₁, ε, ?_, ?_⟩
  · rw [← hfN, ← Ideal.comap_comap, hQc, hPc]
  · refine RingHom.ext fun z => ?_
    have h1 := RingHom.congr_fun hε (wcpaDjGltNCMap R G k₀ z)
    have h2 := RingHom.congr_fun hfN z
    simp only [RingHom.comp_apply] at h1 h2 ⊢
    rw [h1, h2]

theorem wcpa_dj_glt_cc_chart_rescale : ∀ (T : Type u) [CommRing T] [IsDomain T]
    [IsIntegrallyClosed T] (N : ℕ) (G F : Fin (N + 1) → T) (k₀ : Fin (N + 1)) (e d : T)
    (u : Fin (N + 1) → Tˣ),
    e ≠ 0 → d ≠ 0 → F k₀ ≠ 0 → (∀ i, e * G i = u i * d * F i) →
    ∃ Θ : wcpaDjGltNC T G k₀ ≃+* wcpaDjGltNC T F k₀,
      Θ.toRingHom.comp (wcpaDjGltNCMap T G k₀) = wcpaDjGltNCMap T F k₀ :=
by
  intro T _ _ _ N G F k₀ e d u he hd hF hrel
  classical
  have halg : Function.Injective (algebraMap T (FractionRing T)) :=
    IsFractionRing.injective T (FractionRing T)

  have key : ∀ H : Fin (N + 1) → T, H k₀ ≠ 0 →
      ∃ j : wcpaDjGltNC T H k₀ →+* FractionRing T, Function.Injective j ∧
        j.comp (wcpaDjGltNCMap T H k₀) = algebraMap T (FractionRing T) ∧
        ∀ w : FractionRing T, w ∈ j.range ↔ IsIntegral (Algebra.adjoin T (Set.range fun l =>
          algebraMap T (FractionRing T) (H l) / algebraMap T (FractionRing T) (H k₀))) w := by
    intro H hH
    have hle : Submonoid.powers (H k₀) ≤ nonZeroDivisors T :=
      powers_le_nonZeroDivisors_of_noZeroDivisors hH
    haveI : IsDomain (Localization.Away (H k₀)) :=
      IsLocalization.isDomain_of_le_nonZeroDivisors _ hle
    haveI : IsIntegrallyClosed (Localization.Away (H k₀)) :=
      isIntegrallyClosed_of_isLocalization _ _ hle
    have hHK : algebraMap T (FractionRing T) (H k₀) ≠ 0 := (map_ne_zero_iff _ halg).mpr hH
    let ι : Localization.Away (H k₀) →+* FractionRing T :=
      IsLocalization.Away.lift (H k₀) (isUnit_iff_ne_zero.mpr hHK)
    have hιc : ∀ t, ι (algebraMap T (Localization.Away (H k₀)) t) =
        algebraMap T (FractionRing T) t :=
      IsLocalization.Away.lift_eq (H k₀) (isUnit_iff_ne_zero.mpr hHK)
    letI : Algebra (Localization.Away (H k₀)) (FractionRing T) := ι.toAlgebra
    haveI : IsScalarTower T (Localization.Away (H k₀)) (FractionRing T) :=
      IsScalarTower.of_algebraMap_eq (fun t => (hιc t).symm)
    haveI : IsFractionRing (Localization.Away (H k₀)) (FractionRing T) :=
      IsFractionRing.isFractionRing_of_isDomain_of_isLocalization (Submonoid.powers (H k₀)) _ _
    have hιinj : Function.Injective ι :=
      IsFractionRing.injective (Localization.Away (H k₀)) (FractionRing T)
    have hgen : ∀ l, ι (IsLocalization.mk' (Localization.Away (H k₀)) (H l)
        (⟨H k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (H k₀))) =
        algebraMap T (FractionRing T) (H l) / algebraMap T (FractionRing T) (H k₀) := by
      intro l
      rw [eq_div_iff hHK]
      have := congrArg ι (IsLocalization.mk'_spec (Localization.Away (H k₀)) (H l)
        (⟨H k₀, Submonoid.mem_powers _⟩ : Submonoid.powers (H k₀)))
      rw [map_mul, hιc, hιc] at this
      exact this
    set A := Algebra.adjoin T (Set.range fun l =>
      algebraMap T (FractionRing T) (H l) / algebraMap T (FractionRing T) (H k₀)) with hAdef
    let ιₐ : Localization.Away (H k₀) →ₐ[T] FractionRing T :=
      IsScalarTower.toAlgHom T _ (FractionRing T)
    have hmap : (wcpaDjChart T H k₀).map ιₐ = A := by
      show (Algebra.adjoin T _).map ιₐ = A
      rw [AlgHom.map_adjoin, ← Set.range_comp]
      congr 2
      funext l
      exact hgen l
    let ψ : wcpaDjChart T H k₀ ≃ₐ[T] A :=
      (Subalgebra.equivMapOfInjective (wcpaDjChart T H k₀) ιₐ hιinj).trans
        (Subalgebra.equivOfEq _ _ hmap)
    have hψ : ∀ c : wcpaDjChart T H k₀, ((ψ c : A) : FractionRing T) =
        ι (c : Localization.Away (H k₀)) := fun c => rfl
    let j : wcpaDjGltNC T H k₀ →+* FractionRing T :=
      ι.comp (integralClosure (wcpaDjChart T H k₀) (Localization.Away (H k₀))).val.toRingHom
    refine ⟨j, ?_, ?_, ?_⟩
    · intro x y hxy
      exact Subtype.val_injective (hιinj hxy)
    · exact RingHom.ext fun t => hιc t
    · intro w
      rw [RingHom.mem_range]
      constructor
      · rintro ⟨x, rfl⟩
        let x' : ↥(integralClosure (wcpaDjChart T H k₀) (Localization.Away (H k₀))) := x
        have h1 : _root_.IsIntegral (wcpaDjChart T H k₀) (x' : Localization.Away (H k₀)) :=
          x'.2
        have h2 : _root_.IsIntegral (wcpaDjChart T H k₀)
            (algebraMap (Localization.Away (H k₀)) (FractionRing T) x') := h1.algebraMap
        show _root_.IsIntegral A (ι (x' : Localization.Away (H k₀)))
        exact IsIntegral.map_of_comp_eq (ψ : wcpaDjChart T H k₀ →+* A) (RingHom.id _)
          (RingHom.ext fun c => (hψ c)) h2
      · intro hw
        have h1 : _root_.IsIntegral (wcpaDjChart T H k₀) w := by
          refine IsIntegral.map_of_comp_eq (ψ.symm : A →+* wcpaDjChart T H k₀) (RingHom.id _)
            (RingHom.ext fun a => ?_) hw
          have := hψ (ψ.symm a)
          rw [AlgEquiv.apply_symm_apply] at this
          exact this.symm
        have h2 : _root_.IsIntegral (Localization.Away (H k₀)) w := h1.tower_top
        obtain ⟨z, hz⟩ := IsIntegrallyClosed.algebraMap_eq_of_integral h2
        have h3 : _root_.IsIntegral (wcpaDjChart T H k₀) z := by
          rw [← isIntegral_algHom_iff
            (IsScalarTower.toAlgHom (wcpaDjChart T H k₀) (Localization.Away (H k₀))
              (FractionRing T)) hιinj]
          rw [IsScalarTower.toAlgHom_apply, hz]
          exact h1
        exact ⟨(⟨z, h3⟩ :
          integralClosure (wcpaDjChart T H k₀) (Localization.Away (H k₀))), hz⟩

  have gen : ∀ (P Q : Fin (N + 1) → T) (v : Fin (N + 1) → Tˣ) (a b : T), a ≠ 0 →
      P k₀ ≠ 0 → Q k₀ ≠ 0 → (∀ i, a * P i = v i * b * Q i) →
      Algebra.adjoin T (Set.range fun l =>
          algebraMap T (FractionRing T) (P l) / algebraMap T (FractionRing T) (P k₀)) ≤
        Algebra.adjoin T (Set.range fun l =>
          algebraMap T (FractionRing T) (Q l) / algebraMap T (FractionRing T) (Q k₀)) := by
    intro P Q v a b ha hP hQ hPQ
    rw [Algebra.adjoin_le_iff]
    rintro _ ⟨l, rfl⟩
    have hPk : algebraMap T (FractionRing T) (P k₀) ≠ 0 := (map_ne_zero_iff _ halg).mpr hP
    have hQk : algebraMap T (FractionRing T) (Q k₀) ≠ 0 := (map_ne_zero_iff _ halg).mpr hQ
    have ha' : algebraMap T (FractionRing T) a ≠ 0 := (map_ne_zero_iff _ halg).mpr ha
    have hl := congrArg (algebraMap T (FractionRing T)) (hPQ l)
    have hk := congrArg (algebraMap T (FractionRing T)) (hPQ k₀)
    simp only [map_mul] at hl hk
    have hC : algebraMap T (FractionRing T) ↑(v l * (v k₀)⁻¹) *
        algebraMap T (FractionRing T) ↑(v k₀) = algebraMap T (FractionRing T) ↑(v l) := by
      rw [← map_mul, ← Units.val_mul, mul_assoc, inv_mul_cancel, mul_one]
    have key2 : algebraMap T (FractionRing T) (P l) * algebraMap T (FractionRing T) (Q k₀) =
        algebraMap T (FractionRing T) ↑(v l * (v k₀)⁻¹) * algebraMap T (FractionRing T) (Q l) *
          algebraMap T (FractionRing T) (P k₀) := by
      apply mul_left_cancel₀ ha'
      linear_combination algebraMap T (FractionRing T) (Q k₀) * hl -
        algebraMap T (FractionRing T) ↑(v l * (v k₀)⁻¹) * algebraMap T (FractionRing T) (Q l) * hk -
        algebraMap T (FractionRing T) b * algebraMap T (FractionRing T) (Q l) *
          algebraMap T (FractionRing T) (Q k₀) * hC
    have heq : algebraMap T (FractionRing T) (P l) / algebraMap T (FractionRing T) (P k₀) =
        algebraMap T (FractionRing T) ↑(v l * (v k₀)⁻¹) *
          (algebraMap T (FractionRing T) (Q l) / algebraMap T (FractionRing T) (Q k₀)) := by
      rw [mul_div_assoc', div_eq_div_iff hPk hQk]
      linear_combination key2
    dsimp only
    rw [heq]
    exact Subalgebra.mul_mem _ (Subalgebra.algebraMap_mem _ _) (Algebra.subset_adjoin ⟨l, rfl⟩)
  have hG0 : G k₀ ≠ 0 := by
    intro h0
    have := hrel k₀
    rw [h0, mul_zero] at this
    exact mul_ne_zero (mul_ne_zero (Units.ne_zero _) hd) hF this.symm
  have hA : Algebra.adjoin T (Set.range fun l =>
        algebraMap T (FractionRing T) (G l) / algebraMap T (FractionRing T) (G k₀)) =
      Algebra.adjoin T (Set.range fun l =>
        algebraMap T (FractionRing T) (F l) / algebraMap T (FractionRing T) (F k₀)) := by
    refine le_antisymm (gen G F u e d he hG0 hF hrel)
      (gen F G (fun i => (u i)⁻¹) d e hd hF hG0 (fun i => ?_))
    have := hrel i
    calc d * F i = ↑(u i)⁻¹ * (↑(u i) * d * F i) := by
          rw [← mul_assoc, ← mul_assoc, ← Units.val_mul, inv_mul_cancel, Units.val_one, one_mul]
      _ = ↑(u i)⁻¹ * e * G i := by rw [← this, mul_assoc]
  obtain ⟨jG, hjGi, hjGc, hjGr⟩ := key G hG0
  obtain ⟨jF, hjFi, hjFc, hjFr⟩ := key F hF
  have hrange : jG.range = jF.range := by
    ext w
    rw [hjGr, hjFr, hA]
  let eG : wcpaDjGltNC T G k₀ ≃+* jG.range := RingEquiv.ofBijective jG.rangeRestrict
    ⟨fun x y hxy => hjGi (congrArg Subtype.val hxy), jG.rangeRestrict_surjective⟩
  let eF : wcpaDjGltNC T F k₀ ≃+* jF.range := RingEquiv.ofBijective jF.rangeRestrict
    ⟨fun x y hxy => hjFi (congrArg Subtype.val hxy), jF.rangeRestrict_surjective⟩
  refine ⟨eG.trans ((RingEquiv.subringCongr hrange).trans eF.symm), ?_⟩
  have hF' : ∀ y : jF.range, jF (eF.symm y) = (y : FractionRing T) := fun y =>
    congrArg Subtype.val (eF.apply_symm_apply y)
  apply RingHom.ext
  intro t
  apply hjFi
  show jF (eF.symm (RingEquiv.subringCongr hrange (eG (wcpaDjGltNCMap T G k₀ t)))) =
    jF (wcpaDjGltNCMap T F k₀ t)
  rw [hF']
  have h1 := RingHom.congr_fun hjGc t
  have h2 := RingHom.congr_fun hjFc t
  simp only [RingHom.comp_apply] at h1 h2
  rw [h2]
  exact h1

theorem wcpa_dj_glt_completion_compare : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra) (hτ : ∀ j, τ j ≫ g = 𝟙 S)
    (S'' : Scheme.{u}) [AlgebraicGeometry.IsIntegral S''] (ρ : S'' ⟶ S) (D'' : Set S''),
    wcpaDjGcHyp k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' →
    ∀ (C : Scheme.{u}) [AlgebraicGeometry.IsIntegral C] (π₅ : C ⟶ Limits.pullback g ρ)
      (A : C ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra),
      wcpaDjGcModel k sS g ρ O a π₅ A → IsProper π₅ →
      ∀ (c : C) (i₀ : Fin (N + 1)), i₀ ∈ I →
      ∀ (n : ℕ) (t : Fin n → S''.presheaf.stalk (Limits.pullback.snd g ρ (π₅ c)))
        (J : Finset (Fin n)) (α : Fin (N + 1) → ℤ) (β : Fin (N + 1) → Fin n → ℤ)
        (c₀ : Fin n → ℕ),
      wcpaDjStcMonoData (Limits.pullback.snd g ρ) m (wcpaDjStcLift g ρ τ hτ) D'' I
        (fun i => wcpaDjStcRatioSec k (Limits.pullback.fst g ρ ⁻¹ᵁ O)
          ((Limits.pullback.fst g ρ ∣_ O) ≫ a) i₀ i) (π₅ c) n t J α β c₀ →
      (∀ i ∈ I, ∀ j ∈ I, α i ≠ α j → ∀ l, (α i - α j) ∣ (β j l - β i l)) →
      (∀ v ∈ wcpaDjStcBreaks I α β c₀, ∀ w ∈ wcpaDjStcBreaks I α β c₀, v ≤ w ∨ w ≤ v) →
      ∀ x : wcpaDjGltHat (Limits.pullback g ρ) (π₅ c),
      wcpaDjGltLocModel (Limits.pullback.snd g ρ) I
        (fun i => wcpaDjStcRatioSec k (Limits.pullback.fst g ρ ⁻¹ᵁ O)
          ((Limits.pullback.fst g ρ ∣_ O) ≫ a) i₀ i) (π₅ c) n t α β c₀ x →
      ∃ (a₀ : ℤ) (b₀ : Fin n → ℤ) (k₀ : Fin (N + 1)), k₀ ∈ I ∧
        (∀ i ∈ I, a₀ ≤ α i ∧ ∀ l, b₀ l ≤ β i l) ∧
        ∃ (Q : Ideal (wcpaDjGltNC (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c))
            (wcpaDjGltMon I x (fun l => algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
              (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c))
              (((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom (t l))) α β a₀ b₀) k₀))
          (_ : Q.IsPrime)
          (e : wcpaDjGltHat C c ≃+* AdicCompletion
            (IsLocalRing.maximalIdeal (Localization.AtPrime Q)) (Localization.AtPrime Q)),
          wcpaDjGltChartId π₅ c
            (wcpaDjGltMon I x (fun l => algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
              (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c))
              (((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom (t l))) α β a₀ b₀) k₀ Q e :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hτ S'' _ ρ D'' H C _ π₅ A hM hπ c i₀ hi₀ n t J α β
    c₀ hMono hO1 hO2 x hLM
  classical

  obtain ⟨hdom, hic, hx0, ht0⟩ := wcpa_dj_glt_cc_hat_model (Limits.pullback.snd g ρ) I _ (π₅ c)
    n t α β c₀ x (H.2.2.2.2.2.1 _) hMono.1 hMono.2.1 hLM
  haveI := hdom
  haveI := hic

  have hft := wcpa_dj_glt_cc_stalk_ft k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' H (π₅ c)
  obtain ⟨R₀, _, _, 𝔬, _, ⟨φ⟩⟩ := id hft
  haveI : IsNoetherianRing R₀ := Algebra.FiniteType.isNoetherianRing ℤ R₀
  haveI : IsNoetherianRing (Localization.AtPrime 𝔬) :=
    IsLocalization.isNoetherianRing 𝔬.primeCompl _ inferInstance
  haveI : IsNoetherianRing ((Limits.pullback g ρ).presheaf.stalk (π₅ c)) :=
    isNoetherianRing_of_ringEquiv _ φ

  obtain ⟨hinj, hRdom, hRic⟩ := wcpa_dj_glt_cc_normal_descent
    ((Limits.pullback g ρ).presheaf.stalk (π₅ c)) hdom hic
  haveI := hRdom
  haveI := hRic

  obtain ⟨hrel0, -⟩ := hLM
  choose! num den hlink hrel using hrel0
  unfold wcpaDjStcMonRel at hrel
  choose! w hw using hrel

  obtain ⟨a₀, ha₀⟩ : ∃ a₀ : ℤ, ∀ i ∈ I, a₀ ≤ α i :=
    ⟨I.inf' ⟨i₀, hi₀⟩ α, fun i hi => Finset.inf'_le _ hi⟩
  obtain ⟨b₀, hb₀⟩ : ∃ b₀ : Fin n → ℤ, ∀ i ∈ I, ∀ l, b₀ l ≤ β i l :=
    ⟨fun l => I.inf' ⟨i₀, hi₀⟩ (fun i => β i l),
      fun i hi l => Finset.inf'_le (fun i => β i l) hi⟩

  have resc : ∀ (T : Type u) [CommRing T] (x' : T) (th : Fin n → T) (nm dn P' D' : T) (w' : Tˣ)
      (al a0 : ℤ) (be b0 : Fin n → ℤ), a0 ≤ al → (∀ l, b0 l ≤ be l) →
      nm * x' ^ (-al).toNat * ∏ l, th l ^ (-be l).toNat =
        ↑w' * dn * x' ^ al.toNat * ∏ l, th l ^ (be l).toNat →
      D' = dn * P' →
      (x' ^ (-a0).toNat * ∏ l, th l ^ (-b0 l).toNat) * (nm * P') =
        ↑w' * (D' * x' ^ a0.toNat * ∏ l, th l ^ (b0 l).toNat) *
          (x' ^ (al - a0).toNat * ∏ l, th l ^ (be l - b0 l).toNat) := by
    intro T _ x' th nm dn P' D' w' al a0 be b0 ha hb hr hD
    obtain ⟨p, hp1, hp2⟩ : ∃ p : ℕ, (-a0).toNat = (-al).toNat + p ∧
        a0.toNat + (al - a0).toNat = al.toNat + p :=
      ⟨(-a0).toNat - (-al).toNat, by omega, by omega⟩
    choose q hq1 hq2 using fun l => (⟨(-b0 l).toNat - (-be l).toNat,
      by have := hb l; omega, by have := hb l; omega⟩ : ∃ q : ℕ,
        (-b0 l).toNat = (-be l).toNat + q ∧ (b0 l).toNat + (be l - b0 l).toNat = (be l).toNat + q)
    have h1 : ∏ l, th l ^ (-b0 l).toNat = (∏ l, th l ^ (-be l).toNat) * ∏ l, th l ^ q l := by
      rw [← Finset.prod_mul_distrib]
      exact Finset.prod_congr rfl fun l _ => by rw [← pow_add, ← hq1 l]
    have h2 : (∏ l, th l ^ (b0 l).toNat) * ∏ l, th l ^ (be l - b0 l).toNat =
        (∏ l, th l ^ (be l).toNat) * ∏ l, th l ^ q l := by
      rw [← Finset.prod_mul_distrib, ← Finset.prod_mul_distrib]
      exact Finset.prod_congr rfl fun l _ => by rw [← pow_add, ← pow_add, hq2 l]
    have h3 : x' ^ a0.toNat * x' ^ (al - a0).toNat = x' ^ al.toNat * x' ^ p := by
      rw [← pow_add, ← pow_add, hp2]
    have h4 : x' ^ (-a0).toNat = x' ^ (-al).toNat * x' ^ p := by rw [hp1, pow_add]
    calc (x' ^ (-a0).toNat * ∏ l, th l ^ (-b0 l).toNat) * (nm * P')
        = (nm * x' ^ (-al).toNat * ∏ l, th l ^ (-be l).toNat) *
            (x' ^ p * ∏ l, th l ^ q l) * P' := by
          rw [h4, h1]; ring
      _ = (↑w' * dn * x' ^ al.toNat * ∏ l, th l ^ (be l).toNat) *
            (x' ^ p * ∏ l, th l ^ q l) * P' := by rw [hr]
      _ = ↑w' * (dn * P') * (x' ^ al.toNat * x' ^ p) *
            ((∏ l, th l ^ (be l).toNat) * ∏ l, th l ^ q l) := by ring
      _ = ↑w' * (D' * x' ^ a0.toNat * ∏ l, th l ^ (b0 l).toNat) *
            (x' ^ (al - a0).toNat * ∏ l, th l ^ (be l - b0 l).toNat) := by
          rw [← h3, ← h2, hD]; ring

  obtain ⟨e, he⟩ : ∃ e : wcpaDjGltHat (Limits.pullback g ρ) (π₅ c),
      e = x ^ (-a₀).toNat * ∏ l, algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
        (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c))
        (((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom (t l)) ^ (-b₀ l).toNat := ⟨_, rfl⟩
  obtain ⟨d, hd⟩ : ∃ d : wcpaDjGltHat (Limits.pullback g ρ) (π₅ c),
      d = (∏ j ∈ I, algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
          (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c)) (den j)) * x ^ a₀.toNat *
        ∏ l, algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
          (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c))
          (((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom (t l)) ^ (b₀ l).toNat := ⟨_, rfl⟩
  obtain ⟨u, hu⟩ : ∃ u : Fin (N + 1) → (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c))ˣ,
      ∀ i ∈ I, u i = w i := ⟨fun i => if i ∈ I then w i else 1, fun i hi => if_pos hi⟩
  have hkey : ∀ i, e * algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
      (AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk (π₅ c)))
        ((Limits.pullback g ρ).presheaf.stalk (π₅ c))) (wcpaDjGltCcG I num den i) =
      ↑(u i) * d * wcpaDjGltMon I x (fun l => algebraMap
        ((Limits.pullback g ρ).presheaf.stalk (π₅ c)) (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c))
        (((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom (t l))) α β a₀ b₀ i := by
    intro i
    by_cases hi : i ∈ I
    · have h := resc _ x (fun l => algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
          (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c))
          (((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom (t l)))
        (algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
          (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c)) (num i))
        (algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
          (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c)) (den i))
        (∏ j ∈ I.erase i, algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
          (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c)) (den j))
        (∏ j ∈ I, algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
          (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c)) (den j))
        (w i) (α i) a₀ (β i) b₀ (ha₀ i hi) (hb₀ i hi) (hw i hi)
        (Finset.mul_prod_erase I _ hi).symm
      rw [hu i hi, he, hd]
      simp only [wcpaDjGltCcG, wcpaDjGltMon, if_pos hi, map_mul, map_prod]
      exact h
    · simp only [wcpaDjGltCcG, wcpaDjGltMon, if_neg hi, map_zero, mul_zero]

  have hTpos : ∀ (b : Fin n → ℤ), ∏ l, algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
      (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c))
      (((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom (t l)) ^ (b l).toNat ≠ 0 :=
    fun b => Finset.prod_ne_zero_iff.mpr fun l _ => pow_ne_zero _ (ht0 l)
  have he0 : e ≠ 0 := by
    rw [he]; exact mul_ne_zero (pow_ne_zero _ hx0) (hTpos fun l => -b₀ l)
  have hden0 : ∀ j ∈ I, algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
      (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c)) (den j) ≠ 0 := fun j hj =>
    (map_ne_zero_iff _ hinj).mpr (nonZeroDivisors.ne_zero (hlink j hj).1)
  have hd0 : d ≠ 0 := by
    rw [hd]
    exact mul_ne_zero (mul_ne_zero (Finset.prod_ne_zero_iff.mpr hden0) (pow_ne_zero _ hx0))
      (hTpos b₀)
  have hF0 : ∀ i ∈ I, wcpaDjGltMon I x (fun l => algebraMap
      ((Limits.pullback g ρ).presheaf.stalk (π₅ c)) (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c))
      (((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom (t l))) α β a₀ b₀ i ≠ 0 := by
    intro i hi
    simp only [wcpaDjGltMon, if_pos hi]
    exact mul_ne_zero (pow_ne_zero _ hx0) (hTpos fun l => β i l - b₀ l)
  have hG0 : ∀ i ∈ I, wcpaDjGltCcG I num den i ≠ 0 := by
    intro i hi hG
    have h1 := hkey i
    rw [hG, map_zero, mul_zero] at h1
    exact mul_ne_zero (mul_ne_zero (Units.ne_zero _) hd0) (hF0 i hi) h1.symm

  obtain ⟨k₀, hk₀, P, hP, e₁, hPc, he₁⟩ := wcpa_dj_glt_cc_geom_chart k S Y sS g m τ W mD Dc N I
    O a hτ S'' ρ D'' H C π₅ A hM hπ c i₀ hi₀ num den hlink hRdom hRic hG0
  haveI := hP

  obtain ⟨Q₁, hQ₁, ε₁, hQ₁c, hε₁⟩ := wcpa_dj_glt_cc_chart_completion
    ((Limits.pullback g ρ).presheaf.stalk (π₅ c)) hft hdom hic N (wcpaDjGltCcG I num den) k₀
    (hG0 k₀ hk₀) P hPc
  haveI := hQ₁

  obtain ⟨Θ, hΘ⟩ := wcpa_dj_glt_cc_chart_rescale (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c)) N
    (fun i => algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
      (AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk (π₅ c)))
        ((Limits.pullback g ρ).presheaf.stalk (π₅ c))) (wcpaDjGltCcG I num den i))
    (wcpaDjGltMon I x (fun l => algebraMap
      ((Limits.pullback g ρ).presheaf.stalk (π₅ c)) (wcpaDjGltHat (Limits.pullback g ρ) (π₅ c))
      (((Limits.pullback.snd g ρ).stalkMap (π₅ c)).hom (t l))) α β a₀ b₀) k₀ e d u he0 hd0
    (hF0 k₀ hk₀) hkey

  have hmap : Submonoid.map Θ.toMonoidHom Q₁.primeCompl =
      (Q₁.comap Θ.symm.toRingHom).primeCompl := by
    ext z
    simp only [Submonoid.mem_map, Ideal.mem_primeCompl_iff, Ideal.mem_comap]
    constructor
    · rintro ⟨y, hy, rfl⟩
      simpa using hy
    · intro hz
      exact ⟨Θ.symm z, by simpa using hz, by simp⟩
  obtain ⟨lam, hlam⟩ : ∃ lam : Localization.AtPrime Q₁ ≃+*
      Localization.AtPrime (Q₁.comap Θ.symm.toRingHom),
      ∀ v, lam (algebraMap _ (Localization.AtPrime Q₁) v) =
        algebraMap _ (Localization.AtPrime (Q₁.comap Θ.symm.toRingHom)) (Θ v) :=
    ⟨IsLocalization.ringEquivOfRingEquiv _ _ Θ hmap, IsLocalization.ringEquivOfRingEquiv_eq hmap⟩

  obtain ⟨ε₀, hε₀⟩ := wcpa_dj_glt_cc_adic_congr _ _ e₁
  obtain ⟨ε₂, hε₂⟩ := wcpa_dj_glt_cc_adic_congr _ _ lam
  refine ⟨a₀, b₀, k₀, hk₀, fun i hi => ⟨ha₀ i hi, hb₀ i hi⟩, Q₁.comap Θ.symm.toRingHom,
    inferInstance, (ε₀.trans ε₁).trans ε₂, ?_⟩
  unfold wcpaDjGltChartId
  constructor
  · rw [← hΘ, Ideal.comap_comap]
    convert hQ₁c using 2
    refine RingHom.ext fun z => ?_
    simp
  · refine RingHom.ext fun z => ?_
    have h0 := RingHom.congr_fun hε₀ ((π₅.stalkMap c).hom z)
    have h3 := RingHom.congr_fun he₁ z
    have h5 := RingHom.congr_fun hε₁ z
    have h8 := RingHom.congr_fun hε₂ (algebraMap _ (Localization.AtPrime Q₁)
      (wcpaDjGltNCMap _ (fun i => algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
        (AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk (π₅ c)))
          ((Limits.pullback g ρ).presheaf.stalk (π₅ c))) (wcpaDjGltCcG I num den i)) k₀
        (algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
          (AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk (π₅ c)))
            ((Limits.pullback g ρ).presheaf.stalk (π₅ c))) z)))
    have hl := hlam (wcpaDjGltNCMap _ (fun i => algebraMap
        ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
        (AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk (π₅ c)))
          ((Limits.pullback g ρ).presheaf.stalk (π₅ c))) (wcpaDjGltCcG I num den i)) k₀
        (algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
          (AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk (π₅ c)))
            ((Limits.pullback g ρ).presheaf.stalk (π₅ c))) z))
    have hΘz := RingHom.congr_fun hΘ (algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ c))
      (AdicCompletion (IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk (π₅ c)))
        ((Limits.pullback g ρ).presheaf.stalk (π₅ c))) z)
    exact (congrArg (fun v => ε₂ (ε₁ v)) h0).trans
      ((congrArg (fun v => ε₂ (ε₁ (algebraMap (Localization.AtPrime P)
        (AdicCompletion (IsLocalRing.maximalIdeal (Localization.AtPrime P))
          (Localization.AtPrime P)) v))) h3).trans
      ((congrArg ε₂ h5).trans (h8.trans
        ((congrArg (algebraMap (Localization.AtPrime (Q₁.comap Θ.symm.toRingHom))
          (AdicCompletion (IsLocalRing.maximalIdeal
            (Localization.AtPrime (Q₁.comap Θ.symm.toRingHom)))
            (Localization.AtPrime (Q₁.comap Θ.symm.toRingHom)))) hl).trans
        (congrArg (fun v => algebraMap (Localization.AtPrime (Q₁.comap Θ.symm.toRingHom))
          (AdicCompletion (IsLocalRing.maximalIdeal
            (Localization.AtPrime (Q₁.comap Θ.symm.toRingHom)))
            (Localization.AtPrime (Q₁.comap Θ.symm.toRingHom)))
          (algebraMap _ (Localization.AtPrime (Q₁.comap Θ.symm.toRingHom)) v)) hΘz)))))

end GRWTSK.FiniteFieldWeil
