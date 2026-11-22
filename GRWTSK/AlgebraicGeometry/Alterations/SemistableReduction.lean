import GRWTSK.AlgebraicGeometry.Alterations.SemistableSectionLifting

/-!
# Assembly of the marked split semistable alteration

Source candidate split from `weil_conjecture_main.lean`, lines 21051–21900.
See the adjacent `SemistableReduction.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dj_stc_graph_closure : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra) (hτ : ∀ j, τ j ≫ g = 𝟙 S),
    wcpaDjIsProjOver k sS → wcpaDjIsProjOver k (g ≫ sS) → wcpaDjSplitSemistable g →
    wcpaDjMonoNodeForm g (⋃ i, Dc i) → wcpaDjSections g m τ → W ≠ ⊥ →
    SmoothOfRelativeDimension 1 (g ∣_ W) → GeometricallyConnected (g ∣_ W) →
    (∀ s : S, IsRegularLocalRing (S.presheaf.stalk s)) → wcpaDjSNCComps S mD Dc →
    (W : Set S)ᶜ ⊆ ⋃ i, Dc i → g ⁻¹ᵁ W ≤ O →
    a ≫ @Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
        (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) =
      O.ι ≫ g ≫ sS →
    (∀ c (i : Fin (N + 1)), i ∉ I →
      a c ∉ @Proj.basicOpen _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra (MvPolynomial.X i)) →
    (∀ c, (∃ i ∈ I, a c ∉ @Proj.basicOpen _ _ _ _ _
        (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra (MvPolynomial.X i)) →
      O.ι c ∈ (⋃ j, Set.range ⇑(τ j)) ∪ ⇑g ⁻¹' ((W : Set S)ᶜ)) →
    ∀ (S'' : Scheme.{u}) [AlgebraicGeometry.IsIntegral S''] (ρ : S'' ⟶ S) (D'' : Set S''),
      wcpaDjIsProjOver k (ρ ≫ sS) → IsProper ρ → Surjective ρ →
      (∃ V : S.Opens, V ≠ ⊥ ∧ IsFinite (ρ ∣_ V)) →
      (∀ s : S'', IsRegularLocalRing (S''.presheaf.stalk s)) → wcpaDjSNCSet S'' D'' →
      ⇑ρ ⁻¹' (⋃ i, Dc i) ⊆ D'' → wcpaDjStcPullOrd k g ρ τ hτ D'' O a I →
      ∃ (C : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral C) (g' : C ⟶ S'') (π : C ⟶ Y)
        (A : C ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
          MvPolynomial.gradedAlgebra),
        π ≫ g = g' ≫ ρ ∧ wcpaDjIsProjOver k (g' ≫ ρ ≫ sS) ∧ wcpaDjSemistable g' ∧
        IsProper π ∧ Surjective π ∧ (∃ V : Y.Opens, V ≠ ⊥ ∧ IsFinite (π ∣_ V)) ∧
        A ≫ @Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
          MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
            (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) =
          g' ≫ ρ ≫ sS ∧
        (π ⁻¹ᵁ O).ι ≫ A = (π ∣_ O) ≫ a ∧
        ∃ (U' : S''.Opens) (m' : ℕ) (τ' : Fin m' → (S'' ⟶ C)),
          U' ≠ ⊥ ∧ SmoothOfRelativeDimension 1 (g' ∣_ U') ∧
          GeometricallyConnected (g' ∣_ U') ∧ wcpaDjSections g' m' τ' ∧
          ⇑π ⁻¹' ((⋃ j, Set.range ⇑(τ j)) ∪ ⇑g ⁻¹' ((W : Set S)ᶜ)) ⊆
            (⋃ j, Set.range ⇑(τ' j)) ∪ ⇑g' ⁻¹' ((U' : Set S'')ᶜ) :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hτ hS hY hss hmono hτs hW hWsm hWgc hreg hcomps
    hWD hO hstr hC1 hC2 S'' _ ρ D'' hρS hρp hρs hρf hreg'' hsnc'' hD'' hK
  have H : wcpaDjGcHyp k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' :=
    ⟨⟨hS, hY, hss, hmono, hτs, hW, hWsm, hWgc, hreg, hcomps, hWD, hO, hstr, hC1, hC2⟩,
      hρS, hρp, hρs, hρf, hreg'', hsnc'', hD'', hK⟩
  obtain ⟨C, iC, π₅, A, hM, hπ₅p, hπ₅s, hπ₅f, hproj⟩ :=
    wcpa_dj_gcl_construct k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' H
  haveI := iC
  haveI hYint : AlgebraicGeometry.IsIntegral (Limits.pullback g ρ) :=
    wcpa_dj_tr_basechange_integral S S'' Y ρ g W hss.1 hρs hW hWsm hWgc
  have hpt := wcpa_dj_gcl_local_type k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' H C π₅ A hM
    hπ₅p
  have hsemi : wcpaDjSemistable (π₅ ≫ Limits.pullback.snd g ρ) :=
    wcpa_dj_gcl_node_criterion k (π₅ ≫ Limits.pullback.snd g ρ) (ρ ≫ sS) hρS hproj hpt
  obtain ⟨τ', hτ'lift, hτ'⟩ := wcpa_dj_gcl_section_lift k S Y sS g m τ W mD Dc N I O a hτ S''
    ρ D'' H C π₅ A hM hπ₅p hpt
  obtain ⟨U', hU', hU'sm, hU'gc, hcont⟩ := wcpa_dj_gcl_boundary k S Y sS g m τ W mD Dc N I O a
    hτ S'' ρ D'' H C π₅ A hM hπ₅p τ' hτ'lift
  obtain ⟨hfp, hfs, hff⟩ := wcpa_dj_tr_basechange_alteration S S'' Y ρ g hss.1 hρp hρs hρf
  haveI := hfp
  haveI := hπ₅p
  obtain ⟨hπs, hπf⟩ :=
    wcpa_dj_alteration_comp (Limits.pullback.fst g ρ) π₅ hfp hfs hπ₅s hff hπ₅f
  obtain ⟨_, ⟨hA, _⟩, _, hagree⟩ := hM
  refine ⟨C, iC, π₅ ≫ Limits.pullback.snd g ρ, π₅ ≫ Limits.pullback.fst g ρ, A, ?_, ?_, hsemi,
    inferInstance, hπs, hπf, ?_, ?_, U', m, τ', hU', hU'sm, hU'gc, hτ', hcont⟩
  · rw [Category.assoc, Limits.pullback.condition, Category.assoc]
  · simpa only [Category.assoc] using hproj
  · simp only [Category.assoc]
    exact hA.symm
  · rw [morphismRestrict_comp]
    first
      | exact hagree.trans (Category.assoc _ _ _).symm
      | (erw [Category.assoc]; exact hagree)
      | simpa only [Category.assoc] using hagree

theorem wcpa_dj_ste_toroidal_core : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra),
    wcpaDjIsProjOver k sS → wcpaDjIsProjOver k (g ≫ sS) → wcpaDjSplitSemistable g →
    wcpaDjMonoNodeForm g (⋃ i, Dc i) → wcpaDjSections g m τ → W ≠ ⊥ →
    SmoothOfRelativeDimension 1 (g ∣_ W) → GeometricallyConnected (g ∣_ W) →
    (∀ s : S, IsRegularLocalRing (S.presheaf.stalk s)) → wcpaDjSNCComps S mD Dc →
    (W : Set S)ᶜ ⊆ ⋃ i, Dc i → g ⁻¹ᵁ W ≤ O →
    a ≫ @Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
        (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) =
      O.ι ≫ g ≫ sS →
    (∀ c (i : Fin (N + 1)), i ∉ I →
      a c ∉ @Proj.basicOpen _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra (MvPolynomial.X i)) →
    (∀ c, (∃ i ∈ I, a c ∉ @Proj.basicOpen _ _ _ _ _
        (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra (MvPolynomial.X i)) →
      O.ι c ∈ (⋃ j, Set.range ⇑(τ j)) ∪ ⇑g ⁻¹' ((W : Set S)ᶜ)) →
    ∃ d B : ℕ, 1 ≤ d ∧
      ∀ (S'' : Scheme.{u}) [AlgebraicGeometry.IsIntegral S''] (ρ : S'' ⟶ S) (D'' : Set S''),
        wcpaDjIsProjOver k (ρ ≫ sS) → IsProper ρ → Surjective ρ →
        (∃ V : S.Opens, V ≠ ⊥ ∧ IsFinite (ρ ∣_ V)) →
        (∀ s : S'', IsRegularLocalRing (S''.presheaf.stalk s)) → wcpaDjSNCSet S'' D'' →
        ⇑ρ ⁻¹' (⋃ i, Dc i) ⊆ D'' → wcpaDjKummerOrd ρ mD Dc D'' d B →
        ∃ (C : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral C) (g' : C ⟶ S'') (π : C ⟶ Y)
          (A : C ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
            MvPolynomial.gradedAlgebra),
          π ≫ g = g' ≫ ρ ∧ wcpaDjIsProjOver k (g' ≫ ρ ≫ sS) ∧ wcpaDjSemistable g' ∧
          IsProper π ∧ Surjective π ∧ (∃ V : Y.Opens, V ≠ ⊥ ∧ IsFinite (π ∣_ V)) ∧
          A ≫ @Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
            MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
              (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) =
            g' ≫ ρ ≫ sS ∧
          (π ⁻¹ᵁ O).ι ≫ A = (π ∣_ O) ≫ a ∧
          ∃ (U' : S''.Opens) (m' : ℕ) (τ' : Fin m' → (S'' ⟶ C)),
            U' ≠ ⊥ ∧ SmoothOfRelativeDimension 1 (g' ∣_ U') ∧
            GeometricallyConnected (g' ∣_ U') ∧ wcpaDjSections g' m' τ' ∧
            ⇑π ⁻¹' ((⋃ j, Set.range ⇑(τ j)) ∪ ⇑g ⁻¹' ((W : Set S)ᶜ)) ⊆
              (⋃ j, Set.range ⇑(τ' j)) ∪ ⇑g' ⁻¹' ((U' : Set S'')ᶜ) :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hS hY hss hmono hτ hW hWsm hWgc hreg hcomps
    hWD hO hstr hC1 hC2
  obtain ⟨B₀, hB₀⟩ := wcpa_dj_stc_kummer_mono k S Y sS g m τ W mD Dc N I O a hS hY hss hmono
    hτ hW hWsm hWgc hreg hcomps hWD hO hstr hC1 hC2
  refine ⟨(2 * B₀).factorial, 8 * B₀ ^ 2 + 4 * B₀ + 1, Nat.factorial_pos _, ?_⟩
  intro S'' _ ρ D'' hρS hρp hρs hρf hreg'' hsnc'' hD'' hK
  have hτ' : ∀ j, τ j ≫ g = 𝟙 S := hτ.1
  apply wcpa_dj_stc_graph_closure k S Y sS g m τ W mD Dc N I O a hτ' hS hY hss hmono hτ hW
    hWsm hWgc hreg hcomps hWD hO hstr hC1 hC2 S'' ρ D'' hρS hρp hρs hρf hreg'' hsnc'' hD''
  intro i₀ hi₀ y
  obtain ⟨n, t, J, α, r, β₀, c₀, M, hα, hβ, hc, hd, hcmp, hmd⟩ :=
    hB₀ _ _ S'' ρ D'' hτ' hρS hρp hρs hρf hreg'' hsnc'' hD'' hK i₀ hi₀ y
  obtain ⟨h1, h2⟩ := wcpa_dj_stc_order_arith B₀ r n I α β₀ c₀ M (fun i _ => hα i)
    (fun i _ j => hβ i j) hc hd hcmp
  exact ⟨n, t, J, α, _, _, hmd, h1, h2⟩

theorem wcpa_dj_ssfi_toroidal_extend : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (gY : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (Dset : Set S) (nP N : ℕ) (I : Finset (Fin (N + 1)))
    (a : (gY ⁻¹ᵁ W).toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra),
    wcpaDjIsProjOver k sS → wcpaDjIsProjOver k (gY ≫ sS) → wcpaDjSemistable gY →
    wcpaDjSections gY m τ → W ≠ ⊥ → SmoothOfRelativeDimension 1 (gY ∣_ W) →
    GeometricallyConnected (gY ∣_ W) →
    (∀ s : S, IsRegularLocalRing (S.presheaf.stalk s)) →
    topologicalKrullDim S = (nP : WithBot ℕ∞) → wcpaDjAltIH.{u} nP →
    wcpaDjSNCSet S Dset → (W : Set S)ᶜ ⊆ Dset →
    a ≫ @Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
        (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) =
      (gY ⁻¹ᵁ W).ι ≫ gY ≫ sS →
    (∀ c (i : Fin (N + 1)), i ∉ I →
      a c ∉ @Proj.basicOpen _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra (MvPolynomial.X i)) →
    (∀ c, (∃ i ∈ I, a c ∉ @Proj.basicOpen _ _ _ _ _
        (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra (MvPolynomial.X i)) →
      (gY ⁻¹ᵁ W).ι c ∈ ⋃ j, Set.range ⇑(τ j)) →
    ∃ (P' : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral P') (sP' : P' ⟶ Spec (.of k))
      (ρ' : P' ⟶ S),
      ρ' ≫ sS = sP' ∧ wcpaDjIsProjOver k sP' ∧ IsProper ρ' ∧ Surjective ρ' ∧
      (∃ V : S.Opens, V ≠ ⊥ ∧ IsFinite (ρ' ∣_ V)) ∧
      ∃ (C : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral C) (g : C ⟶ P') (π : C ⟶ Y)
        (A : C ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
          MvPolynomial.gradedAlgebra),
        π ≫ gY = g ≫ ρ' ∧ wcpaDjIsProjOver k (g ≫ sP') ∧ wcpaDjSemistable g ∧
        IsProper π ∧ Surjective π ∧ (∃ V : Y.Opens, V ≠ ⊥ ∧ IsFinite (π ∣_ V)) ∧
        A ≫ @Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
          MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
            (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) = g ≫ sP' ∧
        (π ⁻¹ᵁ (gY ⁻¹ᵁ W)).ι ≫ A = (π ∣_ (gY ⁻¹ᵁ W)) ≫ a ∧
        ∃ (U' : P'.Opens) (m' : ℕ) (τ' : Fin m' → (P' ⟶ C)),
          U' ≠ ⊥ ∧ SmoothOfRelativeDimension 1 (g ∣_ U') ∧ GeometricallyConnected (g ∣_ U') ∧
          wcpaDjSections g m' τ' ∧
          ⇑π ⁻¹' ((⋃ j, Set.range ⇑(τ j)) ∪ ⇑gY ⁻¹' ((W : Set S)ᶜ)) ⊆
            (⋃ j, Set.range ⇑(τ' j)) ∪ ⇑g ⁻¹' ((U' : Set P')ᶜ) :=
by
  intro k _ _ S Y _ _ sS gY m τ W Dset nP N I a hS hY hss hτ hW hWsm hWgc hreg hdim hIH _hsnc
    _hWD hstr hC1 hC2
  obtain ⟨S₁, iS₁, ρ₁, Y₁, iY₁, g₁, π₁, W₁, D₁, m₁, τ₁, hρ₁p, hρ₁s, hρ₁f, hS₁, hreg₁, hdim₁,
    hsnc₁, hW₁D, hW₁, hW₁le, hY₁, hss₁, hmono₁, hτ₁, hW₁sm, hW₁gc, hsq₁, hπ₁p, hπ₁s, hπ₁f,
    hcont₁⟩ := wcpa_dj_ste_prepare k S Y sS gY m τ W nP hS hY hss hτ hW hWsm hWgc hdim hIH
  haveI := iS₁
  haveI := iY₁
  obtain ⟨mD, Dc, hDcl, hD₁eq, hDloc⟩ := hsnc₁
  subst hD₁eq
  have hcomps : wcpaDjSNCComps S₁ mD Dc := ⟨hDcl, hDloc⟩

  have hO : g₁ ⁻¹ᵁ W₁ ≤ π₁ ⁻¹ᵁ (gY ⁻¹ᵁ W) := by
    intro y hy
    rw [Scheme.Hom.mem_preimage] at hy
    rw [Scheme.Hom.mem_preimage, Scheme.Hom.mem_preimage]
    have e : (π₁ ≫ gY) y = (g₁ ≫ ρ₁) y := by rw [hsq₁]
    simp only [Scheme.Hom.comp_apply] at e
    rw [e]
    have h1 := hW₁le hy
    rw [Scheme.Hom.mem_preimage] at h1
    exact h1
  have hstr₁ : ((π₁ ∣_ (gY ⁻¹ᵁ W)) ≫ a) ≫ @Proj.toSpecZero _ _ _ _ _
      (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
        (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) =
      (π₁ ⁻¹ᵁ (gY ⁻¹ᵁ W)).ι ≫ g₁ ≫ ρ₁ ≫ sS := by
    rw [Category.assoc, hstr, morphismRestrict_ι_assoc, ← Category.assoc π₁ gY sS, hsq₁,
      Category.assoc]
  have hc1 : ∀ c (i : Fin (N + 1)), i ∉ I →
      ((π₁ ∣_ (gY ⁻¹ᵁ W)) ≫ a) c ∉ @Proj.basicOpen _ _ _ _ _
        (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra (MvPolynomial.X i) := by
    intro c i hi
    rw [Scheme.Hom.comp_apply]
    exact hC1 _ i hi
  have hc2 : ∀ c, (∃ i ∈ I, ((π₁ ∣_ (gY ⁻¹ᵁ W)) ≫ a) c ∉ @Proj.basicOpen _ _ _ _ _
        (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra (MvPolynomial.X i)) →
      (π₁ ⁻¹ᵁ (gY ⁻¹ᵁ W)).ι c ∈ (⋃ j, Set.range ⇑(τ₁ j)) ∪ ⇑g₁ ⁻¹' ((W₁ : Set S₁)ᶜ) := by
    intro c ⟨i, hi, h⟩
    rw [Scheme.Hom.comp_apply] at h
    have h2 := hC2 _ ⟨i, hi, h⟩
    have e : ((π₁ ∣_ (gY ⁻¹ᵁ W)) ≫ (gY ⁻¹ᵁ W).ι) c =
        ((π₁ ⁻¹ᵁ (gY ⁻¹ᵁ W)).ι ≫ π₁) c := by rw [morphismRestrict_ι]
    simp only [Scheme.Hom.comp_apply] at e
    apply hcont₁
    rw [Set.mem_preimage]
    left
    rw [← e]
    exact h2
  obtain ⟨d, B, hd, hcore⟩ := wcpa_dj_ste_toroidal_core k S₁ Y₁ (ρ₁ ≫ sS) g₁ m₁ τ₁ W₁ mD Dc N I
    (π₁ ⁻¹ᵁ (gY ⁻¹ᵁ W)) ((π₁ ∣_ (gY ⁻¹ᵁ W)) ≫ a) hS₁ hY₁ hss₁ hmono₁ hτ₁ hW₁ hW₁sm hW₁gc hreg₁
    hcomps hW₁D hO hstr₁ hc1 hc2
  obtain ⟨S'', iS'', ρ, D'', hS'', hρp, hρs, hρf, hreg'', hsnc'', hD'', hK⟩ :=
    wcpa_dj_ste_base_kummer k S₁ (ρ₁ ≫ sS) nP mD Dc d B hS₁ hreg₁ hdim₁ hIH hcomps hd
  haveI := iS''
  obtain ⟨C, iC, g', π₅, A, hsq, hCproj, hgss, hπ₅p, hπ₅s, hπ₅f, hAstr, hAagree, U', m', τ',
    hU', hU'sm, hU'gc, hτ', hcont⟩ := hcore S'' ρ D'' hS'' hρp hρs hρf hreg'' hsnc'' hD'' hK
  haveI := iC
  haveI := hρp
  haveI := hρ₁p
  haveI := hπ₅p
  haveI := hπ₁p
  obtain ⟨hβs, hβf⟩ := wcpa_dj_alteration_comp ρ₁ ρ hρ₁p hρ₁s hρs hρ₁f hρf
  obtain ⟨hπs, hπf⟩ := wcpa_dj_alteration_comp π₁ π₅ hπ₁p hπ₁s hπ₅s hπ₁f hπ₅f
  refine ⟨S'', iS'', (ρ ≫ ρ₁) ≫ sS, ρ ≫ ρ₁, rfl, ?_, inferInstance, hβs, hβf, C, iC, g',
    π₅ ≫ π₁, A, ?_, ?_, hgss, inferInstance, hπs, hπf, ?_, ?_, U', m', τ', hU', hU'sm, hU'gc,
    hτ', ?_⟩
  · rw [Category.assoc]; exact hS''
  · simp only [Category.assoc, hsq₁]
    rw [← Category.assoc, hsq, Category.assoc]
  · simpa only [Category.assoc] using hCproj
  · rw [hAstr]; simp only [Category.assoc]
  · rw [morphismRestrict_comp]
    first
      | exact hAagree.trans (Category.assoc _ _ _).symm
      | (erw [Category.assoc]; exact hAagree)
      | simpa only [Category.assoc] using hAagree
  · intro c hc
    have h1 : π₁ (π₅ c) ∈ (⋃ j, Set.range ⇑(τ j)) ∪ ⇑gY ⁻¹' ((W : Set S)ᶜ) := by
      rw [Set.mem_preimage, Scheme.Hom.comp_apply] at hc
      exact hc
    exact hcont (hcont₁ h1)

theorem wcpa_dj_ssfi_lift_alteration : ∀ (k : Type u) [Field k] (X₃ P₂ S Y P' C : Scheme.{u})
    [AlgebraicGeometry.IsIntegral X₃] [AlgebraicGeometry.IsIntegral P₂]
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    [AlgebraicGeometry.IsIntegral C]
    (sP₂ : P₂ ⟶ Spec (.of k)) (f₃ : X₃ ⟶ P₂) (sS : S ⟶ Spec (.of k)) (ρ : S ⟶ P₂) (gY : Y ⟶ S)
    (W : S.Opens) (ψ : (gY ⁻¹ᵁ W).toScheme ⟶ X₃) (sP' : P' ⟶ Spec (.of k)) (ρ' : P' ⟶ S)
    (g : C ⟶ P') (π : C ⟶ Y) (N : ℕ)
    (j₃ : X₃ ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra)
    (A : C ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra),
    wcpaDjIsProjOver k (f₃ ≫ sP₂) → wcpaDjIsProjOver k sP₂ → Flat f₃ →
    ρ ≫ sP₂ = sS → IsProper ρ → Surjective ρ → (∃ V : P₂.Opens, V ≠ ⊥ ∧ IsFinite (ρ ∣_ V)) →
    W ≠ ⊥ → IsPullback ψ (gY ∣_ W) f₃ (W.ι ≫ ρ) → Flat gY →
    ρ' ≫ sS = sP' → IsProper ρ' → Surjective ρ' → (∃ V : S.Opens, V ≠ ⊥ ∧ IsFinite (ρ' ∣_ V)) →
    π ≫ gY = g ≫ ρ' → wcpaDjIsProjOver k (g ≫ sP') →
    IsProper π → Surjective π → (∃ V : Y.Opens, V ≠ ⊥ ∧ IsFinite (π ∣_ V)) →
    IsClosedImmersion j₃ →
    j₃ ≫ @Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
        (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) = f₃ ≫ sP₂ →
    A ≫ @Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
        (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) = g ≫ sP' →
    (π ⁻¹ᵁ (gY ⁻¹ᵁ W)).ι ≫ A = (π ∣_ (gY ⁻¹ᵁ W)) ≫ ψ ≫ j₃ →
    ∃ h₄ : C ⟶ X₃, h₄ ≫ f₃ = g ≫ ρ' ≫ ρ ∧ IsProper h₄ ∧ Surjective h₄ ∧
      (∃ V : X₃.Opens, V ≠ ⊥ ∧ IsFinite (h₄ ∣_ V)) ∧
      ∀ (c : C) (hc : π c ∈ gY ⁻¹ᵁ W), h₄ c = ψ ⟨π c, hc⟩ :=
by
  intro k _ X₃ P₂ S Y P' C _ _ _ _ _ sP₂ f₃ sS ρ gY W ψ sP' ρ' g π N j₃ A hf hP hflat hρ hρp hρs
    hρf hW hpb hgYflat hρ' _hρ'p _hρ's _hρ'f hπg hC _hπp hπs hπf hj₃ hj₃eq hAeq hAagree
  classical
  haveI := hρp
  haveI := hρs
  haveI := hπs
  haveI := hj₃

  have rmono : ∀ {A B : Scheme.{u}} (f : A ⟶ B) (U U₁ : B.Opens), U ≤ U₁ →
      IsFinite (f ∣_ U₁) → IsFinite (f ∣_ U) := by
    intro A B f U U₁ hUV h
    have hR : MorphismProperty.RespectsIso (@IsFinite : MorphismProperty Scheme.{u}) :=
      MorphismProperty.respectsIso_of_isStableUnderComposition
        (fun _ _ f (_ : MorphismProperty.isomorphisms Scheme f) => (inferInstance : IsFinite f))
    have heq : U₁.ι ''ᵁ (U₁.ι ⁻¹ᵁ U) = U := by
      rw [Scheme.Hom.image_preimage_eq_opensRange_inf, Scheme.Opens.opensRange_ι]
      exact inf_eq_right.mpr hUV
    have e := morphismRestrictRestrict f U₁ (U₁.ι ⁻¹ᵁ U) ≪≫ morphismRestrictEq f heq
    exact (MorphismProperty.arrow_mk_iso_iff (@IsFinite : MorphismProperty Scheme.{u}) e).mp
      inferInstance

  have hgen : ∀ (T : Scheme.{u}) [IrreducibleSpace T] (U : T.Opens), U ≠ ⊥ →
      genericPoint T ∈ U := by
    intro T _ U hU
    obtain ⟨x, hx⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty U).mp hU
    exact (genericPoint_specializes x).mem_open U.isOpen hx

  have hflatgen : ∀ {T T' : Scheme.{u}} [AlgebraicGeometry.IsIntegral T]
      [AlgebraicGeometry.IsIntegral T'] (f : T ⟶ T'), Flat f →
      f (genericPoint T) = genericPoint T' := by
    intro T T' _ _ f hfl
    haveI := hfl
    have hG : GeneralizingMap f := Flat.generalizingMap f
    obtain ⟨x', hx', hfx'⟩ := hG (genericPoint_specializes (f (genericPoint T)))
    have hx'eq : x' = genericPoint T := (hx'.antisymm (genericPoint_specializes x')).eq
    rw [← hx'eq]
    exact hfx'

  have hfib : ∀ {T Z : Scheme.{u}} (q : T ⟶ Z) (V : Z.Opens), IsFinite (q ∣_ V) →
      ∀ (a b : T), q a ∈ V → q a = q b → a ⤳ b → a = b := by
    intro T Z q V hq a b ha hab hsp
    have hb : q b ∈ V := by rw [← hab]; exact ha
    let a' : (q ⁻¹ᵁ V).toScheme := ⟨a, ha⟩
    let b' : (q ⁻¹ᵁ V).toScheme := ⟨b, hb⟩
    have hab' : (q ∣_ V) a' = (q ∣_ V) b' := by
      apply Subtype.ext
      exact (morphismRestrict_base_coe q V a').trans
        (hab.trans (morphismRestrict_base_coe q V b').symm)
    have hsp' : a' ⤳ b' := by
      apply ((q ⁻¹ᵁ V).ι.isOpenEmbedding.isInducing.specializes_iff).mp
      have e1 : (q ⁻¹ᵁ V).ι a' = a := Scheme.Opens.ι_apply _ _
      have e2 : (q ⁻¹ᵁ V).ι b' = b := Scheme.Opens.ι_apply _ _
      rw [e1, e2]
      exact hsp
    haveI : DiscreteTopology ((q ∣_ V) ⁻¹' {(q ∣_ V) a'}) :=
      ((q ∣_ V).isDiscrete_preimage_singleton ((q ∣_ V) a')).to_subtype
    have hsp'' : (⟨a', rfl⟩ : ((q ∣_ V) ⁻¹' {(q ∣_ V) a'})) ⤳ ⟨b', hab'.symm⟩ :=
      (subtype_specializes_iff _ _).mpr hsp'
    have habeq : a' = b' := congrArg Subtype.val hsp''.eq
    exact congrArg Subtype.val habeq

  have hopen : ∀ {T Z : Scheme.{u}} (h : T ⟶ Z) (O : T.Opens) (V : Z.Opens), h ⁻¹ᵁ V ≤ O →
      (IsFinite ((O.ι ≫ h) ∣_ V) ↔ IsFinite (h ∣_ V)) := by
    intro T Z h O V hle
    rw [morphismRestrict_comp]
    have hiso : IsIso (O.ι ∣_ (h ⁻¹ᵁ V)) := by
      rw [isIso_iff_isOpenImmersion_and_epi_base]
      refine ⟨inferInstance, ?_⟩
      rw [TopCat.epi_iff_surjective]
      intro x
      have hxO : (x.1 : T) ∈ O := hle x.2
      have hmem : (⟨x.1, hxO⟩ : O.toScheme) ∈ O.ι ⁻¹ᵁ (h ⁻¹ᵁ V) := by
        show O.ι ⟨x.1, hxO⟩ ∈ h ⁻¹ᵁ V
        rw [Scheme.Opens.ι_apply]
        exact x.2
      refine ⟨⟨⟨x.1, hxO⟩, hmem⟩, ?_⟩
      apply Subtype.ext
      exact (morphismRestrict_base_coe O.ι (h ⁻¹ᵁ V) ⟨⟨x.1, hxO⟩, hmem⟩).trans
        (Scheme.Opens.ι_apply _ _)
    haveI := hiso
    have hfe : IsFinite (O.ι ∣_ (h ⁻¹ᵁ V)) := by
      have h0 : IsFinite (inv (inv (O.ι ∣_ (h ⁻¹ᵁ V)))) := inferInstance
      simpa only [IsIso.inv_inv] using h0
    constructor
    · intro H
      have e : h ∣_ V = inv (O.ι ∣_ (h ⁻¹ᵁ V)) ≫ (O.ι ∣_ (h ⁻¹ᵁ V) ≫ h ∣_ V) :=
        (IsIso.inv_hom_id_assoc _ _).symm
      rw [e]
      exact MorphismProperty.comp_mem (@IsFinite) _ _ inferInstance H
    · intro H
      exact MorphismProperty.comp_mem (@IsFinite) _ _ hfe H

  have hpbfin : ∀ {Pp X Yy Z : Scheme.{u}} (fst : Pp ⟶ X) (snd : Pp ⟶ Yy) (f : X ⟶ Z)
      (g' : Yy ⟶ Z), IsPullback fst snd f g' → ∀ (V : Z.Opens), IsFinite (g' ∣_ V) →
      IsFinite (fst ∣_ (f ⁻¹ᵁ V)) := by
    intro Pp X Yy Z fst snd f g' H V hV
    have h1 := (isPullback_morphismRestrict fst (f ⁻¹ᵁ V)).paste_vert H
    rw [← morphismRestrict_ι f V] at h1
    have h2 := IsPullback.of_bot' h1 (isPullback_morphismRestrict g' V)
    exact MorphismProperty.of_isPullback (P := @IsFinite) h2.flip hV

  have hηX₃ : f₃ (genericPoint X₃) = genericPoint P₂ := hflatgen f₃ hflat
  have hηY : gY (genericPoint Y) = genericPoint S := hflatgen gY hgYflat
  have hηS : ρ (genericPoint S) = genericPoint P₂ := by
    have h1 := (genericPoint_spec S).image ρ.continuous
    simp only [Set.image_univ_of_surjective ρ.surjective, closure_univ] at h1
    exact h1.eq (genericPoint_spec P₂)
  have hηSW : genericPoint S ∈ W := hgen S W hW
  have hηYG : genericPoint Y ∈ gY ⁻¹ᵁ W := by
    rw [Scheme.Hom.mem_preimage, hηY]
    exact hηSW

  have projP : ∀ {Y₀ : Scheme.{u}} (s : Y₀ ⟶ Spec (.of k)), wcpaDjIsProjOver k s → IsProper s := by
    intro Y₀ s hs
    obtain ⟨N₀, j, hj, rfl⟩ := hs
    haveI := hj
    haveI hst : IsScalarTower k (↥(MvPolynomial.homogeneousSubmodule (Fin (N₀ + 1)) k 0))
        (MvPolynomial (Fin (N₀ + 1)) k) :=
      IsScalarTower.of_algebraMap_eq
        (S := ↥(MvPolynomial.homogeneousSubmodule (Fin (N₀ + 1)) k 0)) (fun c => by
          rw [SetLike.GradeZero.algebraMap_apply]
          exact (SetLike.GradeZero.coe_algebraMap
            (MvPolynomial.homogeneousSubmodule (Fin (N₀ + 1)) k) c).symm)
    haveI : Algebra.FiniteType (↥(MvPolynomial.homogeneousSubmodule (Fin (N₀ + 1)) k 0))
        (MvPolynomial (Fin (N₀ + 1)) k) :=
      Algebra.FiniteType.of_restrictScalars_finiteType k _ _
    haveI : IsProper (@Proj.toSpecZero _ _ _ _ _
        (MvPolynomial.homogeneousSubmodule (Fin (N₀ + 1)) k) MvPolynomial.gradedAlgebra) :=
      inferInstance
    have hkey : ∀ c : k, ((algebraMap k (↥(MvPolynomial.homogeneousSubmodule (Fin (N₀ + 1)) k 0))
        c : ↥(MvPolynomial.homogeneousSubmodule (Fin (N₀ + 1)) k 0)) :
          MvPolynomial (Fin (N₀ + 1)) k) = MvPolynomial.C c := by
      intro c
      rw [SetLike.GradeZero.coe_algebraMap, MvPolynomial.algebraMap_eq]
    have hbij : Function.Bijective
        (algebraMap k (↥(MvPolynomial.homogeneousSubmodule (Fin (N₀ + 1)) k 0))) := by
      constructor
      · intro a b hab
        have h1 := congrArg (fun x : ↥(MvPolynomial.homogeneousSubmodule (Fin (N₀ + 1)) k 0) =>
          (x : MvPolynomial (Fin (N₀ + 1)) k)) hab
        simp only [hkey] at h1
        exact MvPolynomial.C_injective _ _ h1
      · intro p
        have hp : (p : MvPolynomial (Fin (N₀ + 1)) k).IsHomogeneous 0 :=
          (MvPolynomial.mem_homogeneousSubmodule _ _).mp p.2
        have htd : (p : MvPolynomial (Fin (N₀ + 1)) k).totalDegree = 0 :=
          Nat.le_zero.mp hp.totalDegree_le
        refine ⟨(p : MvPolynomial (Fin (N₀ + 1)) k).coeff 0, Subtype.ext ?_⟩
        rw [hkey]
        exact ((MvPolynomial.totalDegree_eq_zero_iff_eq_C).mp htd).symm
    haveI : IsIso (CommRingCat.ofHom
        (algebraMap k (↥(MvPolynomial.homogeneousSubmodule (Fin (N₀ + 1)) k 0)))) :=
      (ConcreteCategory.isIso_iff_bijective _).mpr hbij
    infer_instance
  haveI hsP₂p : IsProper sP₂ := projP sP₂ hP
  generalize hπN : (@Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
        (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0)))) = πN
    at hj₃eq hAeq
  obtain ⟨e₃, he₃fst, he₃snd⟩ : ∃ e : X₃ ⟶ Limits.pullback πN sP₂,
      e ≫ Limits.pullback.fst πN sP₂ = j₃ ∧ e ≫ Limits.pullback.snd πN sP₂ = f₃ :=
    ⟨Limits.pullback.lift j₃ f₃ hj₃eq, Limits.pullback.lift_fst _ _ _,
      Limits.pullback.lift_snd _ _ _⟩
  haveI : IsClosedImmersion e₃ := by
    haveI : IsClosedImmersion (e₃ ≫ Limits.pullback.fst πN sP₂) := by
      rw [he₃fst]; exact hj₃
    exact IsClosedImmersion.of_comp e₃ (Limits.pullback.fst πN sP₂)
  have hA : A ≫ πN = (g ≫ ρ' ≫ ρ) ≫ sP₂ := by
    rw [hAeq, ← hρ', ← hρ]
    simp only [Category.assoc]
  obtain ⟨a, hafst, hasnd⟩ : ∃ a : C ⟶ Limits.pullback πN sP₂,
      a ≫ Limits.pullback.fst πN sP₂ = A ∧ a ≫ Limits.pullback.snd πN sP₂ = g ≫ ρ' ≫ ρ :=
    ⟨Limits.pullback.lift A (g ≫ ρ' ≫ ρ) hA, Limits.pullback.lift_fst _ _ _,
      Limits.pullback.lift_snd _ _ _⟩
  have hagree : (π ⁻¹ᵁ (gY ⁻¹ᵁ W)).ι ≫ a = (π ∣_ (gY ⁻¹ᵁ W)) ≫ ψ ≫ e₃ := by
    apply Limits.pullback.hom_ext
    · simp only [Category.assoc, hafst, he₃fst]
      exact hAagree
    · simp only [Category.assoc, hasnd, he₃snd]
      rw [hpb.w, morphismRestrict_ι_assoc, morphismRestrict_ι_assoc, reassoc_of% hπg]
  obtain ⟨c₀, hc₀⟩ := π.surjective (genericPoint Y)
  have hOdense : Dense ((π ⁻¹ᵁ (gY ⁻¹ᵁ W) : C.Opens) : Set C) :=
    (π ⁻¹ᵁ (gY ⁻¹ᵁ W)).isOpen.dense ⟨c₀, by
      show π c₀ ∈ gY ⁻¹ᵁ W
      rw [hc₀]
      exact hηYG⟩
  have hrange : Set.range ⇑a ⊆ Set.range ⇑e₃ := by
    have hsub : ⇑a '' ((π ⁻¹ᵁ (gY ⁻¹ᵁ W) : C.Opens) : Set C) ⊆ Set.range ⇑e₃ := by
      rintro _ ⟨c, hc, rfl⟩
      refine ⟨ψ ((π ∣_ (gY ⁻¹ᵁ W)) ⟨c, hc⟩), ?_⟩
      have h1 : ((π ⁻¹ᵁ (gY ⁻¹ᵁ W)).ι ≫ a) ⟨c, hc⟩ =
          ((π ∣_ (gY ⁻¹ᵁ W)) ≫ ψ ≫ e₃) ⟨c, hc⟩ := by rw [hagree]
      simp only [Scheme.Hom.comp_apply, Scheme.Opens.ι_apply] at h1
      exact h1.symm
    rintro _ ⟨c, rfl⟩
    have hcl : c ∈ closure ((π ⁻¹ᵁ (gY ⁻¹ᵁ W) : C.Opens) : Set C) := by
      rw [hOdense.closure_eq]; trivial
    have h2 := image_closure_subset_closure_image a.continuous ⟨c, hcl, rfl⟩
    exact closure_minimal hsub e₃.isClosedEmbedding.isClosed_range h2
  have hlift : ∃ b : C ⟶ X₃, b ≫ e₃ = a := by
    have H : Scheme.Hom.ker e₃ ≤ Scheme.Hom.ker a := by
      rw [Scheme.Hom.ker.eq_1 a, Scheme.IdealSheafData.le_ofIdeals_iff]
      intro U s hs
      rw [Scheme.Hom.ker_apply, RingHom.mem_ker] at hs
      rw [RingHom.mem_ker]
      apply eq_zero_of_basicOpen_eq_bot
      rw [← Scheme.Hom.preimage_basicOpen]
      have hj : e₃ ⁻¹ᵁ (Limits.pullback πN sP₂).basicOpen s = ⊥ := by
        rw [Scheme.Hom.preimage_basicOpen, hs, Scheme.basicOpen_zero]
      rw [← TopologicalSpace.Opens.not_nonempty_iff_eq_bot]
      rintro ⟨x, hx⟩
      obtain ⟨c, hc⟩ := hrange ⟨x, rfl⟩
      have hc' : c ∈ e₃ ⁻¹ᵁ (Limits.pullback πN sP₂).basicOpen s := by
        show e₃ c ∈ (Limits.pullback πN sP₂).basicOpen s
        rw [hc]
        exact hx
      rw [hj] at hc'
      exact hc'
    exact ⟨IsClosedImmersion.lift e₃ a H, IsClosedImmersion.lift_fac e₃ a H⟩
  obtain ⟨h₄, hh₄e⟩ := hlift
  have hfac : h₄ ≫ f₃ = g ≫ ρ' ≫ ρ := by
    rw [← he₃snd, ← Category.assoc, hh₄e, hasnd]
  have hagreeH : (π ⁻¹ᵁ (gY ⁻¹ᵁ W)).ι ≫ h₄ = (π ∣_ (gY ⁻¹ᵁ W)) ≫ ψ := by
    rw [← cancel_mono e₃, Category.assoc, hh₄e, hagree, Category.assoc]
  have hpt : ∀ (c : C) (hc : π c ∈ gY ⁻¹ᵁ W), h₄ c = ψ ⟨π c, hc⟩ := by
    intro c hc
    have hcO : c ∈ π ⁻¹ᵁ (gY ⁻¹ᵁ W) := hc
    have h1 : ((π ⁻¹ᵁ (gY ⁻¹ᵁ W)).ι ≫ h₄) ⟨c, hcO⟩ =
        ((π ∣_ (gY ⁻¹ᵁ W)) ≫ ψ) ⟨c, hcO⟩ := by rw [hagreeH]
    have h2 : h₄ c = ψ ((π ∣_ (gY ⁻¹ᵁ W)) ⟨c, hcO⟩) := h1
    refine h2.trans ?_
    exact congrArg (fun t => ψ t) (Subtype.ext (morphismRestrict_base_coe π (gY ⁻¹ᵁ W) ⟨c, hcO⟩))

  haveI : IsProper (g ≫ sP') := projP _ hC
  haveI : IsProper (f₃ ≫ sP₂) := projP _ hf
  haveI hh₄p : IsProper h₄ := by
    have e : h₄ ≫ f₃ ≫ sP₂ = g ≫ sP' := by
      rw [← Category.assoc, hfac, ← hρ', ← hρ]
      simp only [Category.assoc]
    haveI : IsProper (h₄ ≫ f₃ ≫ sP₂) := by rw [e]; infer_instance
    exact IsProper.of_comp h₄ (f₃ ≫ sP₂)

  obtain ⟨z', hz'1, _⟩ := Scheme.Pullback.exists_preimage_pullback (f := f₃) (g := W.ι ≫ ρ)
    (genericPoint X₃) (⟨genericPoint S, hηSW⟩ : W.toScheme) (by
      show f₃ (genericPoint X₃) = ρ (genericPoint S)
      rw [hηX₃, hηS])
  have hψz : ψ (hpb.isoPullback.inv z') = genericPoint X₃ := by
    have e := Scheme.Hom.comp_apply hpb.isoPullback.inv ψ z'
    rw [IsPullback.isoPullback_inv_fst] at e
    exact e.symm.trans hz'1
  obtain ⟨c₁, hc₁⟩ := π.surjective ((gY ⁻¹ᵁ W).ι (hpb.isoPullback.inv z'))
  have hcG₁ : π c₁ ∈ gY ⁻¹ᵁ W := by
    rw [hc₁]
    exact (hpb.isoPullback.inv z').2
  have hsurj : Surjective h₄ := by
    have hηmem : genericPoint X₃ ∈ Set.range ⇑h₄ := by
      refine ⟨c₁, (hpt c₁ hcG₁).trans ?_⟩
      refine Eq.trans ?_ hψz
      exact congrArg (fun t => ψ t) (Subtype.ext (hc₁.trans (Scheme.Opens.ι_apply _ _)))
    refine ⟨fun x => ?_⟩
    exact (genericPoint_specializes x).mem_closed h₄.isClosedMap.isClosed_range hηmem

  obtain ⟨Vρ, hVρ0, hVρfin⟩ := hρf
  obtain ⟨Vπ, hVπ0, hVπfin⟩ := hπf
  have hKs : IsClosed (ρ '' (W : Set S)ᶜ) := ρ.isClosedMap _ W.isOpen.isClosed_compl
  have hnotK : genericPoint P₂ ∉ ρ '' (W : Set S)ᶜ := by
    rintro ⟨z, hz, hzη⟩
    have hηV : genericPoint P₂ ∈ Vρ := hgen P₂ Vρ hVρ0
    have hzeq := hfib ρ Vρ hVρfin (genericPoint S) z (by rw [hηS]; exact hηV)
      (hηS.trans hzη.symm) (genericPoint_specializes z)
    rw [← hzeq] at hz
    exact hz hηSW
  let V₁ : P₂.Opens := Vρ ⊓ ⟨(ρ '' (W : Set S)ᶜ)ᶜ, hKs.isOpen_compl⟩
  have hV₁le : ρ ⁻¹ᵁ V₁ ≤ W := by
    intro y hy
    have hy' : ρ y ∈ V₁ := hy
    by_contra hyW
    exact (TopologicalSpace.Opens.mem_inf.mp hy').2 ⟨y, hyW, rfl⟩
  have hηV₁ : genericPoint P₂ ∈ V₁ :=
    TopologicalSpace.Opens.mem_inf.mpr ⟨hgen P₂ Vρ hVρ0, hnotK⟩
  have hρV₁ : IsFinite (ρ ∣_ V₁) := rmono ρ V₁ Vρ inf_le_left hVρfin
  have hG2 : IsFinite ((W.ι ≫ ρ) ∣_ V₁) := (hopen ρ W V₁ hV₁le).mpr hρV₁
  have hG3 : IsFinite (ψ ∣_ (f₃ ⁻¹ᵁ V₁)) := hpbfin ψ (gY ∣_ W) f₃ (W.ι ≫ ρ) hpb V₁ hG2
  let ηG : (gY ⁻¹ᵁ W).toScheme := ⟨genericPoint Y, hηYG⟩
  have hG4 : ∀ t : (gY ⁻¹ᵁ W).toScheme, ψ t = genericPoint X₃ → t = ηG := by
    intro t ht
    have hsp : ηG ⤳ t := by
      apply ((gY ⁻¹ᵁ W).ι.isOpenEmbedding.isInducing.specializes_iff).mp
      have e1 : (gY ⁻¹ᵁ W).ι ηG = genericPoint Y := Scheme.Opens.ι_apply _ _
      rw [e1]
      exact genericPoint_specializes _
    have hψη : ψ ηG = genericPoint X₃ := by
      have h1 : ψ ηG ⤳ genericPoint X₃ := by
        rw [← ht]
        exact hsp.map ψ.continuous
      exact (h1.antisymm (genericPoint_specializes _)).eq
    have hmem : ψ ηG ∈ f₃ ⁻¹ᵁ V₁ := by
      show f₃ (ψ ηG) ∈ V₁
      rw [hψη, hηX₃]
      exact hηV₁
    exact (hfib ψ (f₃ ⁻¹ᵁ V₁) hG3 ηG t hmem (hψη.trans ht.symm) hsp).symm
  have hKB : IsClosed (⇑h₄ '' ((π ⁻¹ᵁ ((gY ⁻¹ᵁ W) ⊓ Vπ) : C.Opens) : Set C)ᶜ) :=
    h₄.isClosedMap _ (π ⁻¹ᵁ ((gY ⁻¹ᵁ W) ⊓ Vπ)).isOpen.isClosed_compl
  let V₂ : X₃.Opens := f₃ ⁻¹ᵁ V₁ ⊓ ⟨(⇑h₄ '' ((π ⁻¹ᵁ ((gY ⁻¹ᵁ W) ⊓ Vπ) : C.Opens) : Set C)ᶜ)ᶜ,
    hKB.isOpen_compl⟩
  have hO_of : ∀ c : C, f₃ (h₄ c) ∈ V₁ → π c ∈ gY ⁻¹ᵁ W := by
    intro c hc
    have e1 : f₃ (h₄ c) = ρ (ρ' (g c)) := by
      rw [← Scheme.Hom.comp_apply h₄ f₃ c, hfac]
      simp only [Scheme.Hom.comp_apply]
    have e2 : gY (π c) = ρ' (g c) := by
      rw [← Scheme.Hom.comp_apply π gY c, hπg]
      simp only [Scheme.Hom.comp_apply]
    show gY (π c) ∈ W
    rw [e2]
    apply hV₁le
    show ρ (ρ' (g c)) ∈ V₁
    rw [← e1]
    exact hc
  have hηV₂ : genericPoint X₃ ∈ V₂ := by
    refine TopologicalSpace.Opens.mem_inf.mpr ⟨?_, ?_⟩
    · show f₃ (genericPoint X₃) ∈ V₁
      rw [hηX₃]
      exact hηV₁
    · intro hx
      obtain ⟨c, hcB, hcη⟩ := hx
      have hcG : π c ∈ gY ⁻¹ᵁ W := hO_of c (by rw [hcη, hηX₃]; exact hηV₁)
      have hz : (⟨π c, hcG⟩ : (gY ⁻¹ᵁ W).toScheme) = ηG := hG4 _ ((hpt c hcG).symm.trans hcη)
      have hπc : π c = genericPoint Y := congrArg Subtype.val hz
      exact hcB (show π c ∈ (gY ⁻¹ᵁ W) ⊓ Vπ by
        rw [hπc]
        exact TopologicalSpace.Opens.mem_inf.mpr ⟨hηYG, hgen Y Vπ hVπ0⟩)
  have hnotB : ∀ c : C, h₄ c ∈ V₂ → π c ∈ (gY ⁻¹ᵁ W) ⊓ Vπ := by
    intro c hc
    by_contra hcn
    exact (TopologicalSpace.Opens.mem_inf.mp hc).2 ⟨c, hcn, rfl⟩
  have hG7 : h₄ ⁻¹ᵁ V₂ ≤ π ⁻¹ᵁ (gY ⁻¹ᵁ W) := by
    intro c hc
    exact (TopologicalSpace.Opens.mem_inf.mp (hnotB c hc)).1
  have hG8 : (gY ⁻¹ᵁ W).ι ''ᵁ (ψ ⁻¹ᵁ V₂) ≤ Vπ := by
    intro y hy
    have hy' : y ∈ ((gY ⁻¹ᵁ W).ι ''ᵁ (ψ ⁻¹ᵁ V₂) : Set Y) := hy
    rw [Scheme.Hom.coe_image] at hy'
    obtain ⟨t, ht, rfl⟩ := hy'
    obtain ⟨c, hc⟩ := π.surjective ((gY ⁻¹ᵁ W).ι t)
    have hcG : π c ∈ gY ⁻¹ᵁ W := by
      rw [hc]
      exact t.2
    have h1 : h₄ c ∈ V₂ := by
      rw [hpt c hcG]
      have ht' : (⟨π c, hcG⟩ : (gY ⁻¹ᵁ W).toScheme) = t :=
        Subtype.ext (hc.trans (Scheme.Opens.ι_apply _ _))
      rw [ht']
      exact ht
    have h2 := (TopologicalSpace.Opens.mem_inf.mp (hnotB c h1)).2
    rw [hc] at h2
    exact h2
  have hψV₂ : IsFinite (ψ ∣_ V₂) := rmono ψ V₂ (f₃ ⁻¹ᵁ V₁) inf_le_left hG3
  have hπV : IsFinite (π ∣_ ((gY ⁻¹ᵁ W).ι ''ᵁ (ψ ⁻¹ᵁ V₂))) := rmono π _ Vπ hG8 hVπfin
  have hR : MorphismProperty.RespectsIso (@IsFinite : MorphismProperty Scheme.{u}) :=
    MorphismProperty.respectsIso_of_isStableUnderComposition
      (fun _ _ f (_ : MorphismProperty.isomorphisms Scheme f) => (inferInstance : IsFinite f))
  have hπGV : IsFinite ((π ∣_ (gY ⁻¹ᵁ W)) ∣_ (ψ ⁻¹ᵁ V₂)) :=
    (MorphismProperty.arrow_mk_iso_iff (@IsFinite : MorphismProperty Scheme.{u})
      (morphismRestrictRestrict π (gY ⁻¹ᵁ W) (ψ ⁻¹ᵁ V₂))).mpr hπV
  have hcomp : IsFinite (((π ∣_ (gY ⁻¹ᵁ W)) ≫ ψ) ∣_ V₂) := by
    rw [morphismRestrict_comp]
    exact MorphismProperty.comp_mem (@IsFinite) _ _ hπGV hψV₂
  have hfinal : IsFinite (h₄ ∣_ V₂) := by
    rw [← hagreeH] at hcomp
    exact (hopen h₄ _ V₂ hG7).mp hcomp
  exact ⟨h₄, hfac, hh₄p, hsurj,
    ⟨V₂, (TopologicalSpace.Opens.ne_bot_iff_nonempty _).mpr ⟨_, hηV₂⟩, hfinal⟩, hpt⟩

theorem wcpa_dj_ssf_temkin_stable_ih : ∀ (k : Type u) [Field k] [Finite k] (X₃ P₂ : Scheme.{u})
    [AlgebraicGeometry.IsIntegral X₃] [AlgebraicGeometry.IsIntegral P₂] (sP₂ : P₂ ⟶ Spec (.of k))
    (f₃ : X₃ ⟶ P₂), wcpaDjIsProjOver k (f₃ ≫ sP₂) → wcpaDjIsProjOver k sP₂ → Flat f₃ →
    ∀ U₂ : P₂.Opens, U₂ ≠ ⊥ → SmoothOfRelativeDimension 1 (f₃ ∣_ U₂) →
    GeometricallyConnected (f₃ ∣_ U₂) →
    ∀ (n : ℕ) (σ : Fin n → (P₂ ⟶ X₃)), (∀ i, σ i ≫ f₃ = 𝟙 P₂) →
    (∀ (i j : Fin n) (p : P₂), p ∈ U₂ → i ≠ j → σ i p ≠ σ j p) →
    ∀ (D : Scheme.{u}) (ιD : D ⟶ X₃), IsClosedImmersion ιD → AlgebraicGeometry.IsReduced D →
    Flat (ιD ≫ f₃) → Set.range ⇑ιD = ⋃ i, Set.range ⇑(σ i) →
    ∀ nP : ℕ, topologicalKrullDim P₂ = (nP : WithBot ℕ∞) → wcpaDjAltIH.{u} nP →
    ∃ (P' : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral P') (sP' : P' ⟶ Spec (.of k))
      (β₄ : P' ⟶ P₂),
      β₄ ≫ sP₂ = sP' ∧ wcpaDjIsProjOver k sP' ∧ IsProper β₄ ∧ Surjective β₄ ∧
      (∃ V : P₂.Opens, V ≠ ⊥ ∧ IsFinite (β₄ ∣_ V)) ∧
      ∃ (C : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral C) (g : C ⟶ P') (h₄ : C ⟶ X₃),
        h₄ ≫ f₃ = g ≫ β₄ ∧ wcpaDjIsProjOver k (g ≫ sP') ∧ wcpaDjSemistable g ∧
        IsProper h₄ ∧ Surjective h₄ ∧ (∃ V : X₃.Opens, V ≠ ⊥ ∧ IsFinite (h₄ ∣_ V)) ∧
        ∃ (U' : P'.Opens) (m : ℕ) (τ : Fin m → (P' ⟶ C)),
          U' ≠ ⊥ ∧ SmoothOfRelativeDimension 1 (g ∣_ U') ∧ GeometricallyConnected (g ∣_ U') ∧
          wcpaDjSections g m τ ∧
          ⇑h₄ ⁻¹' ((⋃ i, Set.range ⇑(σ i)) ∪ ⇑f₃ ⁻¹' ((U₂ : Set P₂)ᶜ)) ⊆
            (⋃ i, Set.range ⇑(τ i)) ∪ ⇑g ⁻¹' ((U' : Set P')ᶜ) :=
by
  intro k _ _ X₃ P₂ _ _ sP₂ f₃ hf hP hflat U₂ hU₂ hU₂sm hU₂gc n σ hσ hσd D ιD hιD hDred hDflat
    hDrange nP hdim hIH
  obtain ⟨S, iS, sS, ρ, Y, iY, gY, W, Dset, m, τ, ψ, hρ, hS, hρp, hρs, hρf, hreg, hSdim, hsnc,
    hWD, hY, hss, hτ, hW, hWU, hWsm, hWgc, hpb, hψσ, N, j₃, I, hj₃, hj₃eq, hI1, hI2⟩ :=
    wcpa_dj_ssfi_regular_model k X₃ P₂ sP₂ f₃ hf hP hflat U₂ hU₂ hU₂sm hU₂gc n σ hσ hσd nP hdim hIH
  haveI := iS
  haveI := iY
  have hstr : (ψ ≫ j₃) ≫ @Proj.toSpecZero _ _ _ _ _
      (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
        (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) =
      (gY ⁻¹ᵁ W).ι ≫ gY ≫ sS := by
    rw [Category.assoc, hj₃eq, ← Category.assoc ψ f₃, hpb.w, ← hρ]
    simp only [Category.assoc]
    rw [morphismRestrict_ι_assoc]
  have hc1 : ∀ c (i : Fin (N + 1)), i ∉ I →
      (ψ ≫ j₃) c ∉ @Proj.basicOpen _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra (MvPolynomial.X i) := by
    intro c i hi
    rw [Scheme.Hom.comp_apply]
    exact hI1 (ψ c) i hi
  have hc2 : ∀ c, (∃ i ∈ I, (ψ ≫ j₃) c ∉ @Proj.basicOpen _ _ _ _ _
        (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra (MvPolynomial.X i)) →
      (gY ⁻¹ᵁ W).ι c ∈ ⋃ j, Set.range ⇑(τ j) := by
    intro c ⟨i, hi, h⟩
    rw [Scheme.Hom.comp_apply] at h
    exact hI2 c ⟨i, hi, h⟩
  obtain ⟨P', iP', sP', ρ', hρ', hP', hρ'p, hρ's, hρ'f, C, iC, g, π, A, hπg, hC, hgss, hπp, hπs,
    hπf, hAstr, hAagree, U', m', τ', hU', hU'sm, hU'gc, hτ', hTB⟩ :=
    wcpa_dj_ssfi_toroidal_extend k S Y sS gY m τ W Dset nP N I (ψ ≫ j₃) hS hY hss hτ hW hWsm
      hWgc hreg hSdim hIH hsnc hWD hstr hc1 hc2
  haveI := iP'
  haveI := iC
  haveI := hρp
  haveI := hρ'p
  have hgYflat : Flat gY := by
    unfold wcpaDjSemistable at hss
    exact hss.1
  obtain ⟨h₄, hh, hh₄p, hh₄s, hh₄f, hh₄ψ⟩ :=
    wcpa_dj_ssfi_lift_alteration k X₃ P₂ S Y P' C sP₂ f₃ sS ρ gY W ψ sP' ρ' g π N j₃ A hf hP
      hflat hρ hρp hρs hρf hW hpb hgYflat hρ' hρ'p hρ's hρ'f hπg hC hπp hπs hπf hj₃ hj₃eq
      hAstr hAagree
  obtain ⟨hβs, hβf⟩ := wcpa_dj_alteration_comp ρ ρ' hρp hρs hρ's hρf hρ'f
  refine ⟨P', iP', sP', ρ' ≫ ρ, ?_, hP', inferInstance, hβs, hβf, C, iC, g, h₄, hh, hC, hgss,
    hh₄p, hh₄s, hh₄f, U', m', τ', hU', hU'sm, hU'gc, hτ', ?_⟩
  · rw [Category.assoc, hρ, hρ']
  · intro c hc
    apply hTB
    show π c ∈ (⋃ j, Set.range ⇑(τ j)) ∪ ⇑gY ⁻¹' ((W : Set S)ᶜ)
    by_cases hcW : π c ∈ gY ⁻¹ᵁ W
    · have e := hh₄ψ c hcW
      rcases (Set.mem_union _ _ _).mp hc with hσ' | hU
      · left
        have hσ'' : ψ ⟨π c, hcW⟩ ∈ ⋃ i, Set.range ⇑(σ i) := by
          rw [← e]; exact hσ'
        exact hψσ ⟨π c, hcW⟩ hσ''
      · exfalso
        have hU' : f₃ (h₄ c) ∉ (U₂ : Set P₂) := hU
        apply hU'
        have key : f₃ (ψ ⟨π c, hcW⟩) = ρ (gY (π c)) := by
          have h1 : (ψ ≫ f₃) ⟨π c, hcW⟩ = ((gY ⁻¹ᵁ W).ι ≫ gY ≫ ρ) ⟨π c, hcW⟩ := by
            rw [hpb.w, morphismRestrict_ι_assoc]
          simp only [Scheme.Hom.comp_apply] at h1
          exact h1
        rw [e, key]
        exact hWU hcW
    · right
      exact hcW

theorem wcpa_dj_semistable_reduction : ∀ (k : Type u) [Field k] [Finite k] (X₁ P : Scheme.{u})
    [AlgebraicGeometry.IsIntegral X₁] [AlgebraicGeometry.IsIntegral P] (sP : P ⟶ Spec (.of k))
    (f : X₁ ⟶ P), wcpaDjIsProjOver k (f ≫ sP) → wcpaDjIsProjOver k sP →
    ∀ U : P.Opens, U ≠ ⊥ → SmoothOfRelativeDimension 1 (f ∣_ U) → GeometricallyConnected (f ∣_ U) →
    wcpaDjGS f → ∀ nP : ℕ, topologicalKrullDim P = (nP : WithBot ℕ∞) → wcpaDjAltIH.{u} nP →
    ∀ T : Set X₁, IsClosed T → T ≠ Set.univ →
    ∃ (P' : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral P') (sP' : P' ⟶ Spec (.of k))
      (β₀ : P' ⟶ P),
      β₀ ≫ sP = sP' ∧ wcpaDjIsProjOver k sP' ∧ IsProper β₀ ∧ Surjective β₀ ∧
      (∃ V : P.Opens, V ≠ ⊥ ∧ IsFinite (β₀ ∣_ V)) ∧
      ∃ (C : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral C) (g : C ⟶ P') (h : C ⟶ X₁),
        h ≫ f = g ≫ β₀ ∧ wcpaDjIsProjOver k (g ≫ sP') ∧ wcpaDjSplitSemistable g ∧
        IsProper h ∧ Surjective h ∧ (∃ V : X₁.Opens, V ≠ ⊥ ∧ IsFinite (h ∣_ V)) ∧
        ∃ (U' : P'.Opens) (m : ℕ) (τ : Fin m → (P' ⟶ C)),
          U' ≠ ⊥ ∧ SmoothOfRelativeDimension 1 (g ∣_ U') ∧ GeometricallyConnected (g ∣_ U') ∧
          wcpaDjSections g m τ ∧
          ⇑h ⁻¹' T ⊆ (⋃ j, Set.range ⇑(τ j)) ∪ ⇑g ⁻¹' ((U' : Set P')ᶜ) :=
by
  intro k _ _ X₁ P _ _ sP f hf hP U hU hUsm hUgc _hGS nP hPdim hIH T hTcl hTne
  obtain ⟨P₁, iP₁, sP₁, β₁, hβ₁, hP₁, hβ₁p, hβ₁s, hβ₁f, X₂, iX₂, f₂, α₂, hαf, hX₂, hα₂p, hα₂s,
    hα₂f, U₁, n, σ, hU₁, hU₁sm, hU₁gc, _hn, hσ, hσd, hT₁⟩ :=
    wcpa_dj_ss_marked_sections k X₁ P sP f hf hP U hU hUsm hUgc T hTcl hTne
  haveI := iP₁
  haveI := iX₂
  obtain ⟨P₂, iP₂, sP₂, β₂, hβ₂, hP₂, hβ₂p, hβ₂s, hβ₂f, X₃, iX₃, f₃, α₃, hα₃f, hX₃, hflat,
    hα₃p, hα₃s, hα₃f', U₂, σ', D, ιD, hU₂, hU₂sm, hU₂gc, hσ', hσ'd, hιD, hDred, hDflat,
    hDrange, hT₂⟩ :=
    wcpa_dj_ssf_flatten k X₂ P₁ sP₁ f₂ hX₂ hP₁ U₁ hU₁ hU₁sm hU₁gc n σ hσ hσd
  haveI := iP₂
  haveI := iX₃
  haveI hsPp : IsProper sP := wcpa_dj_proj_proper k sP hP
  haveI hsP₁p : IsProper sP₁ := wcpa_dj_proj_proper k sP₁ hP₁
  haveI hsP₂p : IsProper sP₂ := wcpa_dj_proj_proper k sP₂ hP₂
  have hP₂dim : topologicalKrullDim P₂ = (nP : WithBot ℕ∞) :=
    (wcpa_dj_alteration_dim_eq k P₂ P₁ sP₂ sP₁ β₂ hβ₂ hβ₂s hβ₂f).trans
      ((wcpa_dj_alteration_dim_eq k P₁ P sP₁ sP β₁ hβ₁ hβ₁s hβ₁f).trans hPdim)
  obtain ⟨P', iP', sP', β₄, hβ₄, hP', hβ₄p, hβ₄s, hβ₄f, C, iC, g, h₄, hhg, hC, hss, hh₄p, hh₄s,
    hh₄f, U', m, τ, hU', hU'sm, hU'gc, hτ, hT₃⟩ :=
    wcpa_dj_ssf_temkin_stable_ih k X₃ P₂ sP₂ f₃ hX₃ hP₂ hflat U₂ hU₂ hU₂sm hU₂gc n σ' hσ' hσ'd
      D ιD hιD hDred hDflat hDrange nP hP₂dim hIH
  haveI := iP'
  haveI := iC
  obtain ⟨P'', iP'', sP'', β₃, hβ₃, hP'', hβ₃p, hβ₃s, hβ₃f, C'', iC'', g'', h₃, hhg₃, hC'',
    hsplit, hh₃p, hh₃s, hh₃f, U'', m'', τ'', hU'', hU''sm, hU''gc, hτ'', hT₄⟩ :=
    wcpa_dj_ss_split k C P' sP' g hC hP' hss U' hU' hU'sm hU'gc m τ hτ
  haveI := iP''
  haveI := iC''
  haveI := hβ₁p
  haveI := hβ₂p
  haveI := hβ₃p
  haveI := hβ₄p
  haveI := hα₂p
  haveI := hα₃p
  haveI := hh₄p
  haveI := hh₃p

  have hβ21p : IsProper (β₂ ≫ β₁) := inferInstance
  obtain ⟨hβ21s, hβ21f⟩ := wcpa_dj_alteration_comp β₁ β₂ hβ₁p hβ₁s hβ₂s hβ₁f hβ₂f
  have hβ421p : IsProper (β₄ ≫ β₂ ≫ β₁) := inferInstance
  obtain ⟨hβ421s, hβ421f⟩ := wcpa_dj_alteration_comp (β₂ ≫ β₁) β₄ hβ21p hβ21s hβ₄s hβ21f hβ₄f
  obtain ⟨hβ0s, hβ0f⟩ :=
    wcpa_dj_alteration_comp (β₄ ≫ β₂ ≫ β₁) β₃ hβ421p hβ421s hβ₃s hβ421f hβ₃f

  have hh32p : IsProper (α₃ ≫ α₂) := inferInstance
  obtain ⟨hh32s, hh32f⟩ := wcpa_dj_alteration_comp α₂ α₃ hα₂p hα₂s hα₃s hα₂f hα₃f'
  have hh432p : IsProper (h₄ ≫ α₃ ≫ α₂) := inferInstance
  obtain ⟨hh432s, hh432f⟩ := wcpa_dj_alteration_comp (α₃ ≫ α₂) h₄ hh32p hh32s hh₄s hh32f hh₄f
  obtain ⟨hh0s, hh0f⟩ :=
    wcpa_dj_alteration_comp (h₄ ≫ α₃ ≫ α₂) h₃ hh432p hh432s hh₃s hh432f hh₃f
  refine ⟨P'', iP'', sP'', β₃ ≫ β₄ ≫ β₂ ≫ β₁, ?_, hP'', inferInstance, hβ0s, hβ0f,
    C'', iC'', g'', h₃ ≫ h₄ ≫ α₃ ≫ α₂, ?_, hC'', hsplit, inferInstance, hh0s, hh0f,
    U'', m'', τ'', hU'', hU''sm, hU''gc, hτ'', ?_⟩
  · rw [Category.assoc, Category.assoc, Category.assoc, hβ₁, hβ₂, hβ₄, hβ₃]
  · have e1 : α₃ ≫ α₂ ≫ f = f₃ ≫ β₂ ≫ β₁ := by
      rw [hαf, ← Category.assoc, hα₃f, Category.assoc]
    have e2 : h₄ ≫ α₃ ≫ α₂ ≫ f = g ≫ β₄ ≫ β₂ ≫ β₁ := by
      rw [e1, ← Category.assoc, hhg, Category.assoc]
    have e3 : h₃ ≫ h₄ ≫ α₃ ≫ α₂ ≫ f = g'' ≫ β₃ ≫ β₄ ≫ β₂ ≫ β₁ := by
      rw [e2, ← Category.assoc, hhg₃, Category.assoc]
    simpa only [Category.assoc] using e3
  · intro x hx
    have hx1 : α₃ (h₄ (h₃ x)) ∈ ⇑α₂ ⁻¹' T := by
      simpa only [Set.mem_preimage, Scheme.Hom.comp_apply] using hx
    have hx2 : h₄ (h₃ x) ∈ ⇑α₃ ⁻¹' ((⋃ i, Set.range ⇑(σ i)) ∪ ⇑f₂ ⁻¹' ((U₁ : Set P₁)ᶜ)) :=
      hT₁ hx1
    have hx3 : h₃ x ∈ ⇑h₄ ⁻¹' ((⋃ i, Set.range ⇑(σ' i)) ∪ ⇑f₃ ⁻¹' ((U₂ : Set P₂)ᶜ)) := hT₂ hx2
    have hx4 : x ∈ ⇑h₃ ⁻¹' ((⋃ i, Set.range ⇑(τ i)) ∪ ⇑g ⁻¹' ((U' : Set P')ᶜ)) := hT₃ hx3
    exact hT₄ hx4

end GRWTSK.FiniteFieldWeil
