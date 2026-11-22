import GRWTSK.AlgebraicGeometry.Alterations.SemistableNodeCriterion

/-!
# Lifting marked sections and identifying their generic images

Source candidate split from `weil_conjecture_main.lean`, lines 16675–21050.
See the adjacent `SemistableSectionLifting.provenance/` for declaration locators.
Local adaptation attribution: grwtsk contributors.
-/

set_option maxHeartbeats 4000000

open CategoryTheory AlgebraicGeometry

namespace GRWTSK.FiniteFieldWeil

theorem wcpa_dj_gsl_generic_index : ∀ (k : Type u) [Field k] {Y₂ : Scheme.{u}} [IrreducibleSpace Y₂]
    (N : ℕ) (I : Finset (Fin (N + 1))) (O₂ : Y₂.Opens)
    (a₂ : O₂.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra),
    O₂ ≠ ⊥ →
    (∀ c (i : Fin (N + 1)), i ∉ I →
      a₂ c ∉ @Proj.basicOpen _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra (MvPolynomial.X i)) →
    ∃ i₀ ∈ I, genericPoint Y₂ ∈ O₂.ι ''ᵁ (a₂ ⁻¹ᵁ @Proj.basicOpen _ _ _ _ _
      (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) MvPolynomial.gradedAlgebra
      (MvPolynomial.X i₀)) :=
by
  intro k _ Y₂ _ N I O₂ a₂ hO hH
  letI : GradedRing (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) := MvPolynomial.gradedAlgebra
  have hη : genericPoint Y₂ ∈ (O₂ : Set Y₂) := by
    rw [(genericPoint_spec Y₂).mem_open_set_iff O₂.isOpen, Set.univ_inter]
    exact (TopologicalSpace.Opens.ne_bot_iff_nonempty O₂).mp hO
  set c : O₂.toScheme := ⟨genericPoint Y₂, hη⟩ with hc
  have hcov : ∃ i : Fin (N + 1), a₂ c ∈ @Proj.basicOpen _ _ _ _ _
      (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) MvPolynomial.gradedAlgebra
      (MvPolynomial.X i) := by
    by_contra hne
    push_neg at hne
    apply ProjectiveSpectrum.not_irrelevant_le (a₂ c)
    intro a ha
    have hspan : Ideal.span (Set.range (MvPolynomial.X : Fin (N + 1) → MvPolynomial (Fin (N + 1)) k))
        ≤ (a₂ c).asHomogeneousIdeal.toIdeal := by
      rw [Ideal.span_le]
      rintro _ ⟨i, rfl⟩
      have := hne i
      rw [Proj.mem_basicOpen] at this
      exact not_not.mp this
    apply hspan
    rw [HomogeneousIdeal.mem_irrelevant_iff, GradedRing.proj_apply] at ha
    have h0 : MvPolynomial.homogeneousComponent 0 a = 0 := by
      rw [← ha]
      rw [← MvPolynomial.decomposition.decompose'_apply]
      rfl
    rw [MvPolynomial.homogeneousComponent_zero, MvPolynomial.C_eq_zero] at h0
    rw [← Set.image_univ, MvPolynomial.mem_ideal_span_X_image]
    intro m hm
    have hm0 : m ≠ 0 := by
      rintro rfl
      exact (MvPolynomial.mem_support_iff.mp hm) h0
    obtain ⟨i, hi⟩ := Finsupp.ne_iff.mp hm0
    exact ⟨i, Set.mem_univ _, hi⟩
  obtain ⟨i, hi⟩ := hcov
  have hiI : i ∈ I := by
    by_contra hni
    exact hH c i hni hi
  refine ⟨i, hiI, ?_⟩
  have h1 : O₂.ι c ∈ O₂.ι ''ᵁ (a₂ ⁻¹ᵁ @Proj.basicOpen _ _ _ _ _
      (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) MvPolynomial.gradedAlgebra
      (MvPolynomial.X i)) := by
    rw [Scheme.Hom.apply_mem_image_iff]
    exact hi
  rwa [Scheme.Opens.ι_apply] at h1

theorem wcpa_dj_gsl_section_disjunct : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
    [AlgebraicGeometry.IsIntegral S] [AlgebraicGeometry.IsIntegral Y]
    (sS : S ⟶ Spec (.of k)) (g : Y ⟶ S) (m : ℕ) (τ : Fin m → (S ⟶ Y)) (W : S.Opens)
    (mD : ℕ) (Dc : Fin mD → Set S) (N : ℕ) (I : Finset (Fin (N + 1))) (O : Y.Opens)
    (a : O.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra) (hτ : ∀ j, τ j ≫ g = 𝟙 S)
    (S'' : Scheme.{u}) [AlgebraicGeometry.IsIntegral S''] (ρ : S'' ⟶ S) (D'' : Set S''),
    wcpaDjGcHyp k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' →
    ∀ (j : Fin m) (p : S'') (i₀ : Fin (N + 1)) (n : ℕ)
      (t : Fin n → S''.presheaf.stalk (Limits.pullback.snd g ρ (wcpaDjStcLift g ρ τ hτ j p)))
      (J : Finset (Fin n)) (α : Fin (N + 1) → ℤ) (β : Fin (N + 1) → Fin n → ℤ) (c : Fin n → ℕ),
      wcpaDjStcMonoData (Limits.pullback.snd g ρ) m (wcpaDjStcLift g ρ τ hτ) D'' I
        (fun i => wcpaDjStcRatioSec k (Limits.pullback.fst g ρ ⁻¹ᵁ O)
          ((Limits.pullback.fst g ρ ∣_ O) ≫ a) i₀ i) (wcpaDjStcLift g ρ τ hτ j p) n t J α β c →
      c = 0 ∧
      (∃ W₀ : (Limits.pullback g ρ).Opens, wcpaDjStcLift g ρ τ hτ j p ∈ W₀ ∧
        SmoothOfRelativeDimension 1 (W₀.ι ≫ Limits.pullback.snd g ρ)) ∧
      ∃ z : (Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p),
        (∀ (y' : ↥(Limits.pullback g ρ)) (h : y' ⤳ wcpaDjStcLift g ρ τ hτ j p),
          y' ∈ Set.range ⇑(wcpaDjStcLift g ρ τ hτ j) ↔
            ((Limits.pullback g ρ).presheaf.stalkSpecializes h).hom z ∈
              IsLocalRing.maximalIdeal ((Limits.pullback g ρ).presheaf.stalk y')) ∧
        ∃ e : AdicCompletion (IsLocalRing.maximalIdeal
              ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p)))
              ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p)) ≃+*
            PowerSeries (AdicCompletion (IsLocalRing.maximalIdeal (S''.presheaf.stalk
              (Limits.pullback.snd g ρ (wcpaDjStcLift g ρ τ hτ j p))))
              (S''.presheaf.stalk (Limits.pullback.snd g ρ (wcpaDjStcLift g ρ τ hτ j p)))),
          e.toRingHom.comp ((algebraMap
              ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p))
              (AdicCompletion (IsLocalRing.maximalIdeal
                ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p)))
                ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p)))).comp
              ((Limits.pullback.snd g ρ).stalkMap (wcpaDjStcLift g ρ τ hτ j p)).hom) =
            PowerSeries.C.comp (algebraMap
              (S''.presheaf.stalk (Limits.pullback.snd g ρ (wcpaDjStcLift g ρ τ hτ j p)))
              (AdicCompletion (IsLocalRing.maximalIdeal (S''.presheaf.stalk
                (Limits.pullback.snd g ρ (wcpaDjStcLift g ρ τ hτ j p))))
                (S''.presheaf.stalk (Limits.pullback.snd g ρ (wcpaDjStcLift g ρ τ hτ j p))))) ∧
          e (algebraMap ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p))
              (AdicCompletion (IsLocalRing.maximalIdeal
                ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p)))
                ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p))) z) =
            PowerSeries.X ∧
          ∀ i ∈ I, ∃ num den : (Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p),
            wcpaDjStcRatioLink (wcpaDjStcRatioSec k (Limits.pullback.fst g ρ ⁻¹ᵁ O)
              ((Limits.pullback.fst g ρ ∣_ O) ≫ a) i₀ i) (wcpaDjStcLift g ρ τ hτ j p) num den ∧
            wcpaDjStcMonRel (algebraMap
                ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p))
                (AdicCompletion (IsLocalRing.maximalIdeal
                  ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p)))
                  ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p))) z)
              (fun l => algebraMap
                ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p))
                (AdicCompletion (IsLocalRing.maximalIdeal
                  ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p)))
                  ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p)))
                (((Limits.pullback.snd g ρ).stalkMap (wcpaDjStcLift g ρ τ hτ j p)).hom (t l)))
              (algebraMap ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p))
                (AdicCompletion (IsLocalRing.maximalIdeal
                  ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p)))
                  ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p))) num)
              (algebraMap ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p))
                (AdicCompletion (IsLocalRing.maximalIdeal
                  ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p)))
                  ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p))) den)
              (α i) (β i) :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hτ S'' _ ρ D'' H j p i₀ n t J α β c hMD
  obtain ⟨hK, _hρS, _hρp, _hρs, _hρf, hreg'', _hsnc'', _hD'', _hPO⟩ := H
  obtain ⟨_hS, _hY, hss, _hmono, hτs, _⟩ := hK
  obtain ⟨_hn, hspan, _hD, _hβJ, _hcJ, hdisj⟩ := hMD
  rcases hdisj with hD1 | hD2 | hD3
  ·
    exfalso
    obtain ⟨hc, v, e, hcompat, -⟩ := hD1

    have key0 : ∀ (X T : Scheme.{u}) (f : X ⟶ T) (U : X.Opens) (z : U.toScheme),
        SmoothOfRelativeDimension 1 (U.ι ≫ f) →
        letI := (f.stalkMap (U.ι z)).hom.toAlgebra
        Module.Free (X.presheaf.stalk (U.ι z))
            Ω[X.presheaf.stalk (U.ι z)⁄T.presheaf.stalk (f (U.ι z))] ∧
          Module.finrank (X.presheaf.stalk (U.ι z))
            Ω[X.presheaf.stalk (U.ι z)⁄T.presheaf.stalk (f (U.ι z))] = 1 := by
      intro X T f U z hsm
      letI iAR : Algebra (T.presheaf.stalk (f (U.ι z))) (X.presheaf.stalk (U.ι z)) :=
        (f.stalkMap (U.ι z)).hom.toAlgebra
      obtain ⟨-, hfree, -, hrank⟩ := wc_ldp_il_stalk_of_smooth (U.ι ≫ f) 1 z
      letI iAR' : Algebra (T.presheaf.stalk (f (U.ι z))) (U.toScheme.presheaf.stalk z) :=
        ((U.ι ≫ f).stalkMap z).hom.toAlgebra
      let σ : X.presheaf.stalk (U.ι z) ≃+* U.toScheme.presheaf.stalk z :=
        (asIso (U.ι.stalkMap z)).commRingCatIsoToRingEquiv
      letI iR'R : Algebra (U.toScheme.presheaf.stalk z) (X.presheaf.stalk (U.ι z)) :=
        σ.symm.toRingHom.toAlgebra
      haveI : IsScalarTower (T.presheaf.stalk (f (U.ι z))) (U.toScheme.presheaf.stalk z)
          (X.presheaf.stalk (U.ι z)) := by
        refine IsScalarTower.of_algebraMap_eq (fun a => ?_)
        have h1 : ((U.ι ≫ f).stalkMap z).hom a =
            (U.ι.stalkMap z).hom ((f.stalkMap (U.ι z)).hom a) := by
          rw [Scheme.Hom.stalkMap_comp]; rfl
        show (f.stalkMap (U.ι z)).hom a = σ.symm (((U.ι ≫ f).stalkMap z).hom a)
        rw [h1]
        exact (σ.symm_apply_apply ((f.stalkMap (U.ι z)).hom a)).symm
      haveI : Algebra.FormallyEtale (U.toScheme.presheaf.stalk z) (X.presheaf.stalk (U.ι z)) :=
        Algebra.FormallyEtale.of_equiv (AlgEquiv.ofRingEquiv (f := σ.symm) (fun x => rfl))
      have eΩ := KaehlerDifferential.tensorKaehlerEquivOfFormallyEtale
        (T.presheaf.stalk (f (U.ι z))) (U.toScheme.presheaf.stalk z) (X.presheaf.stalk (U.ι z))
      haveI hF : Module.Free (U.toScheme.presheaf.stalk z)
          Ω[U.toScheme.presheaf.stalk z⁄T.presheaf.stalk (f (U.ι z))] := hfree
      refine ⟨Module.Free.of_equiv' inferInstance eΩ, ?_⟩
      rw [← eΩ.finrank_eq, Module.finrank_baseChange]
      exact hrank
    have key : ∀ (X T : Scheme.{u}) (f : X ⟶ T) (U : X.Opens) (x : X), x ∈ U →
        SmoothOfRelativeDimension 1 (U.ι ≫ f) →
        letI := (f.stalkMap x).hom.toAlgebra
        Module.Free (X.presheaf.stalk x) Ω[X.presheaf.stalk x⁄T.presheaf.stalk (f x)] ∧
          Module.finrank (X.presheaf.stalk x) Ω[X.presheaf.stalk x⁄T.presheaf.stalk (f x)] = 1 := by
      intro X T f U x hx hsm
      have h0 := key0 X T f U (⟨x, hx⟩ : U.toScheme) hsm
      first
        | exact h0
        | (rwa [Scheme.Opens.ι_apply] at h0)

    obtain ⟨W₁, hyW₁, hW₁sm⟩ := hτs.2.2 j (ρ p)
    have hyN : wcpaDjStcLift g ρ τ hτ j p ∈ Limits.pullback.fst g ρ ⁻¹ᵁ W₁ := by
      rw [Scheme.Hom.mem_preimage]
      have e3 : (wcpaDjStcLift g ρ τ hτ j ≫ Limits.pullback.fst g ρ) p = (ρ ≫ τ j) p := by
        simp only [wcpaDjStcLift, Limits.pullback.lift_fst]
      rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply] at e3
      rw [e3]
      exact hyW₁
    have hpb := (isPullback_morphismRestrict (Limits.pullback.fst g ρ) W₁).paste_vert
      (IsPullback.of_hasPullback g ρ)
    have hNsm : SmoothOfRelativeDimension 1
        ((Limits.pullback.fst g ρ ⁻¹ᵁ W₁).ι ≫ Limits.pullback.snd g ρ) :=
      MorphismProperty.of_isPullback (P := @SmoothOfRelativeDimension 1) hpb hW₁sm
    obtain ⟨hfree, hrank⟩ := key _ _ (Limits.pullback.snd g ρ) _ _ hyN hNsm

    haveI : IsProper g := hss.2.1
    have hlftg : LocallyOfFiniteType g := inferInstance
    have hlft : LocallyOfFiniteType (Limits.pullback.snd g ρ) := by
      first
        | exact MorphismProperty.of_isPullback (P := @LocallyOfFiniteType)
            (IsPullback.of_hasPullback g ρ) hlftg
        | exact MorphismProperty.of_isPullback (P := @LocallyOfFiniteType)
            (IsPullback.of_hasPullback g ρ).flip hlftg
        | exact MorphismProperty.pullback_snd _ _ hlftg
    haveI := hreg'' (Limits.pullback.snd g ρ (wcpaDjStcLift g ρ τ hτ j p))
    letI iAR : Algebra (S''.presheaf.stalk (Limits.pullback.snd g ρ (wcpaDjStcLift g ρ τ hτ j p)))
        ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p)) :=
      ((Limits.pullback.snd g ρ).stalkMap (wcpaDjStcLift g ρ τ hτ j p)).hom.toAlgebra
    haveI : IsLocalHom (algebraMap
        (S''.presheaf.stalk (Limits.pullback.snd g ρ (wcpaDjStcLift g ρ τ hτ j p)))
        ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p))) :=
      inferInstanceAs (IsLocalHom
        ((Limits.pullback.snd g ρ).stalkMap (wcpaDjStcLift g ρ τ hτ j p)).hom)
    obtain ⟨hEFT, hNR⟩ := wcpa_dj_mn_stalk_eft S'' (Limits.pullback g ρ) (Limits.pullback.snd g ρ)
      (wcpaDjStcLift g ρ τ hτ j p) hlft inferInstance
    haveI := hEFT
    haveI := hNR

    let mA := IsLocalRing.maximalIdeal
      (S''.presheaf.stalk (Limits.pullback.snd g ρ (wcpaDjStcLift g ρ τ hτ j p)))
    let ψ : AdicCompletion mA
        (S''.presheaf.stalk (Limits.pullback.snd g ρ (wcpaDjStcLift g ρ τ hτ j p))) →+*
        (S''.presheaf.stalk (Limits.pullback.snd g ρ (wcpaDjStcLift g ρ τ hτ j p))) ⧸ mA :=
      (Ideal.quotEquivOfEq (pow_one mA)).toRingHom.comp (AdicCompletion.evalₐ mA 1).toRingHom
    have hψ : ∀ x, ψ (algebraMap _ (AdicCompletion mA
        (S''.presheaf.stalk (Limits.pullback.snd g ρ (wcpaDjStcLift g ρ τ hτ j p)))) x) =
        Ideal.Quotient.mk mA x := by
      intro x
      show (Ideal.quotEquivOfEq (pow_one mA)) ((AdicCompletion.evalₐ mA 1) (algebraMap _ _ x)) = _
      rw [AlgHom.commutes, Ideal.Quotient.algebraMap_eq, Ideal.quotEquivOfEq_mk]
    obtain ⟨l₀, hl₀⟩ := hc
    have hh : (↑v * ∏ l, (algebraMap _ (AdicCompletion mA
        (S''.presheaf.stalk (Limits.pullback.snd g ρ (wcpaDjStcLift g ρ τ hτ j p)))) (t l)) ^ c l)
          ∈ RingHom.ker ψ := by
      rw [RingHom.mem_ker, map_mul, map_prod, Finset.prod_eq_zero (Finset.mem_univ l₀), mul_zero]
      rw [map_pow, hψ]
      have hmem : t l₀ ∈ mA := by
        show t l₀ ∈ IsLocalRing.maximalIdeal _
        rw [← hspan]
        exact Ideal.subset_span ⟨l₀, rfl⟩
      rw [Ideal.Quotient.eq_zero_iff_mem.mpr hmem, zero_pow hl₀]
    obtain ⟨P, hP, -, h2⟩ := wcpa_dj_mn_two_derivations
      (S''.presheaf.stalk (Limits.pullback.snd g ρ (wcpaDjStcLift g ρ τ hτ j p)))
      ((Limits.pullback g ρ).presheaf.stalk (wcpaDjStcLift g ρ τ hτ j p)) _ e (by exact hcompat)
      (RingHom.ker ψ) (RingHom.ker_isPrime ψ) hh
    haveI := hfree
    rw [Module.finrank_baseChange, hrank] at h2
    omega
  ·
    obtain ⟨hc0, hW, j', z, ⟨q, hq⟩, hrange, e, hcompat, hez, hnd⟩ := hD2
    have hjj : j' = j := by
      have e2 : (wcpaDjStcLift g ρ τ hτ j' ≫ Limits.pullback.snd g ρ) q =
          (wcpaDjStcLift g ρ τ hτ j ≫ Limits.pullback.snd g ρ) p := by
        rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply, hq]
      have e3 : (wcpaDjStcLift g ρ τ hτ j' ≫ Limits.pullback.fst g ρ) q =
          (wcpaDjStcLift g ρ τ hτ j ≫ Limits.pullback.fst g ρ) p := by
        rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply, hq]
      simp only [wcpaDjStcLift, Limits.pullback.lift_snd, Limits.pullback.lift_fst] at e2 e3
      rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply] at e3
      have hpq : q = p := by simpa using e2
      subst hpq
      by_contra hne
      exact hτs.2.1 j' j (ρ q) (ρ q) hne e3
    subst hjj
    exact ⟨hc0, hW, z, hrange, e, hcompat, hez, hnd⟩
  ·
    exfalso
    obtain ⟨-, -, hnot, -⟩ := hD3
    exact hnot (Set.mem_iUnion.mpr ⟨j, p, rfl⟩)

theorem wcpa_dj_gsl_ratio_descent : ∀ {Y₂ S₂ : Scheme.{u}} (h : Y₂ ⟶ S₂), Flat h →
    LocallyOfFiniteType h → ∀ {V : Y₂.Opens} {ι : Type} (I : Finset ι) (r : ι → Γ(Y₂, V))
    (y : Y₂), IsRegularLocalRing (S₂.presheaf.stalk (h y)) →
    ∀ (n : ℕ) (t : Fin n → S₂.presheaf.stalk (h y)),
      (n : WithBot ℕ∞) = ringKrullDim (S₂.presheaf.stalk (h y)) →
      Ideal.span (Set.range t) = IsLocalRing.maximalIdeal (S₂.presheaf.stalk (h y)) →
    ∀ (z : Y₂.presheaf.stalk y)
      (e : AdicCompletion (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk y)) (Y₂.presheaf.stalk y) ≃+*
        PowerSeries (AdicCompletion (IsLocalRing.maximalIdeal (S₂.presheaf.stalk (h y)))
          (S₂.presheaf.stalk (h y)))),
      e.toRingHom.comp ((algebraMap (Y₂.presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk y)) (Y₂.presheaf.stalk y))).comp
          (h.stalkMap y).hom) =
        PowerSeries.C.comp (algebraMap (S₂.presheaf.stalk (h y))
          (AdicCompletion (IsLocalRing.maximalIdeal (S₂.presheaf.stalk (h y)))
            (S₂.presheaf.stalk (h y)))) →
      e (algebraMap (Y₂.presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk y)) (Y₂.presheaf.stalk y)) z) =
        PowerSeries.X →
    ∀ (α : ι → ℤ) (β : ι → Fin n → ℤ),
      (∀ i ∈ I, ∃ num den : Y₂.presheaf.stalk y, wcpaDjStcRatioLink (r i) y num den ∧
        wcpaDjStcMonRel (algebraMap (Y₂.presheaf.stalk y) (AdicCompletion
            (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk y)) (Y₂.presheaf.stalk y)) z)
          (fun l => algebraMap (Y₂.presheaf.stalk y) (AdicCompletion
            (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk y)) (Y₂.presheaf.stalk y))
              ((h.stalkMap y).hom (t l)))
          (algebraMap (Y₂.presheaf.stalk y) (AdicCompletion
            (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk y)) (Y₂.presheaf.stalk y)) num)
          (algebraMap (Y₂.presheaf.stalk y) (AdicCompletion
            (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk y)) (Y₂.presheaf.stalk y)) den)
          (α i) (β i)) →
      z ≠ 0 ∧ (∀ l, (h.stalkMap y).hom (t l) ≠ 0) ∧
      ∃ w : ι → (Y₂.presheaf.stalk y)ˣ, ∀ i ∈ I, ∃ num den : Y₂.presheaf.stalk y,
        wcpaDjStcRatioLink (r i) y num den ∧
        num * z ^ (-(α i)).toNat * ∏ l, ((h.stalkMap y).hom (t l)) ^ (-(β i l)).toNat =
          ↑(w i) * den * z ^ (α i).toNat * ∏ l, ((h.stalkMap y).hom (t l)) ^ (β i l).toNat :=
by
  intro Y₂ S₂ h _hflat hlft V ι I r y hreg n t hdim hspan z e hcomp hzX α β hMon
  classical
  haveI := hreg
  haveI : LocallyOfFiniteType h := hlft

  have inj : ∀ (B : Type u) [CommRing B] [IsLocalRing B] [IsNoetherianRing B],
      Function.Injective (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)) := by
    intro B _ _ _
    haveI : IsHausdorff (IsLocalRing.maximalIdeal B) B :=
      IsHausdorff.of_isLocalRing _ B (IsLocalRing.maximalIdeal.isMaximal B).ne_top
    intro x x' hxx
    rw [AdicCompletion.algebraMap_apply, AdicCompletion.algebraMap_apply] at hxx
    first
      | simpa using hxx
      | exact AdicCompletion.of_injective _ B (by simpa only [Algebra.algebraMap_self,
          RingHom.id_apply] using hxx)

  have descent : ∀ (B : Type u) [CommRing B] [IsLocalRing B] [IsNoetherianRing B] (P Q : B)
      (s : AdicCompletion (IsLocalRing.maximalIdeal B) B),
      algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) P =
        algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B) Q * s →
      ∃ c : B, P = Q * c := by
    intro B _ _ _ P Q s hPQ
    haveI : Module.Finite B (B ⧸ Ideal.span {Q}) := Module.Finite.quotient B _
    have hH : IsHausdorff (IsLocalRing.maximalIdeal B) (B ⧸ Ideal.span {Q}) :=
      IsHausdorff.of_isLocalRing _ _ (IsLocalRing.maximalIdeal.isMaximal B).ne_top
    have key : Ideal.Quotient.mk (Ideal.span {Q}) P = 0 := by
      apply hH.haus
      intro k
      have h1 := congrArg (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal B) k) hPQ
      simp only [map_mul, AlgHom.commutes, Ideal.Quotient.algebraMap_eq] at h1
      obtain ⟨sk, hsk⟩ := Ideal.Quotient.mk_surjective
        (AdicCompletion.evalₐ (IsLocalRing.maximalIdeal B) k s)
      have h1' : P - Q * sk ∈ IsLocalRing.maximalIdeal B ^ k := by
        rw [← Ideal.Quotient.eq, map_mul, hsk]
        exact h1
      have h2 : Ideal.Quotient.mk (Ideal.span {Q}) P =
          (P - Q * sk) • (1 : B ⧸ Ideal.span {Q}) := by
        rw [Algebra.smul_def, mul_one, Ideal.Quotient.algebraMap_eq, map_sub, map_mul,
          Ideal.Quotient.eq_zero_iff_mem.mpr (Ideal.mem_span_singleton_self Q), zero_mul,
          sub_zero]
      rw [SModEq.zero, h2]
      exact Submodule.smul_mem_smul h1' Submodule.mem_top
    obtain ⟨a, ha⟩ := Ideal.mem_span_singleton'.mp (Ideal.Quotient.eq_zero_iff_mem.mp key)
    exact ⟨a, by rw [← ha, mul_comm]⟩

  have assoc : ∀ (B : Type u) [CommRing B] [IsLocalRing B] (P Q c d : B),
      P = Q * c → Q = P * d → ∃ w : Bˣ, P = ↑w * Q := by
    intro B _ _ P Q c d hc hd
    by_cases hu : IsUnit c
    · exact ⟨hu.unit, by rw [hc, IsUnit.unit_spec, mul_comm]⟩
    · have hcm : c ∈ IsLocalRing.maximalIdeal B :=
        (IsLocalRing.mem_maximalIdeal c).mpr (mem_nonunits_iff.mpr hu)
      have hm : d * c ∈ nonunits B :=
        (IsLocalRing.mem_maximalIdeal _).mp (Ideal.mul_mem_left _ d hcm)
      have h1 := IsLocalRing.isUnit_one_sub_self_of_mem_nonunits _ hm
      have e0 : P * (1 - d * c) = 0 := by
        calc P * (1 - d * c) = P - (P * d) * c := by ring
          _ = P - Q * c := by rw [← hd]
          _ = 0 := by rw [← hc, sub_self]
      have hP : P = 0 := h1.mul_left_eq_zero.mp e0
      have hQ : Q = 0 := by rw [hd, hP, zero_mul]
      exact ⟨1, by rw [hP, hQ, mul_zero]⟩

  haveI hRN : IsNoetherianRing (Y₂.presheaf.stalk y) := by
    letI : Algebra (S₂.presheaf.stalk (h y)) (Y₂.presheaf.stalk y) :=
      (h.stalkMap y).hom.toAlgebra
    haveI : Algebra.EssFiniteType (S₂.presheaf.stalk (h y)) (Y₂.presheaf.stalk y) :=
      AlgebraicGeometry.LocallyOfFiniteType.stalkMap h y
    exact Algebra.EssFiniteType.isNoetherianRing (S₂.presheaf.stalk (h y)) (Y₂.presheaf.stalk y)
  have injA := inj (S₂.presheaf.stalk (h y))

  have hreg_ne : ∀ l, t l ≠ 0 := by
    intro l htl
    have h1 := IsRegularLocalRing.spanFinrank_maximalIdeal (R := S₂.presheaf.stalk (h y))
    rw [← hdim] at h1
    have h2 : (IsLocalRing.maximalIdeal (S₂.presheaf.stalk (h y))).spanFinrank = n := by
      exact_mod_cast h1
    have hsub : Set.range t \ {0} ⊆ t '' ↑(Finset.univ.erase l) := by
      rintro x ⟨⟨j, rfl⟩, hx⟩
      refine ⟨j, ?_, rfl⟩
      simp only [Finset.coe_erase, Finset.coe_univ, Set.mem_diff, Set.mem_univ,
        Set.mem_singleton_iff, true_and]
      rintro rfl
      exact hx htl
    have hfin : (Set.range t \ {0}).Finite := (Set.finite_range t).diff
    have h3 := Submodule.spanFinrank_span_le_ncard_of_finite (R := S₂.presheaf.stalk (h y)) hfin
    rw [Submodule.span_sdiff_singleton_zero] at h3
    have h4 : (Set.range t \ {0}).ncard ≤ (t '' ↑(Finset.univ.erase l)).ncard :=
      Set.ncard_le_ncard hsub (Set.toFinite _)
    have h5 : (t '' ↑(Finset.univ.erase l)).ncard ≤ (Finset.univ.erase l).card := by
      calc _ ≤ (↑(Finset.univ.erase l) : Set (Fin n)).ncard :=
            Set.ncard_image_le (Finset.finite_toSet _)
        _ = _ := Set.ncard_coe_finset _
    rw [Finset.card_erase_of_mem (Finset.mem_univ l), Finset.card_univ, Fintype.card_fin] at h5
    have h6 : (Submodule.span (S₂.presheaf.stalk (h y)) (Set.range t)).spanFinrank =
        (IsLocalRing.maximalIdeal (S₂.presheaf.stalk (h y))).spanFinrank := by
      rw [← hspan]
    have hn : 0 < n := Nat.lt_of_le_of_lt (Nat.zero_le _) l.isLt
    omega

  have hz : z ≠ 0 := by
    intro hz0
    rw [hz0, map_zero, map_zero] at hzX
    haveI : Nontrivial (AdicCompletion (IsLocalRing.maximalIdeal (S₂.presheaf.stalk (h y)))
        (S₂.presheaf.stalk (h y))) := injA.nontrivial
    exact PowerSeries.X_ne_zero hzX.symm

  have hT : ∀ l, (h.stalkMap y).hom (t l) ≠ 0 := by
    intro l hl
    have h1 := RingHom.congr_fun hcomp (t l)
    simp only [RingHom.comp_apply, hl, map_zero] at h1
    have h2 : algebraMap (S₂.presheaf.stalk (h y)) (AdicCompletion
        (IsLocalRing.maximalIdeal (S₂.presheaf.stalk (h y))) (S₂.presheaf.stalk (h y))) (t l) =
        algebraMap (S₂.presheaf.stalk (h y)) (AdicCompletion
        (IsLocalRing.maximalIdeal (S₂.presheaf.stalk (h y))) (S₂.presheaf.stalk (h y))) 0 := by
      rw [map_zero]
      exact PowerSeries.C_injective (by rw [map_zero]; exact h1.symm)
    exact hreg_ne l (injA h2)

  have key : ∀ i ∈ I, ∃ w : (Y₂.presheaf.stalk y)ˣ, ∃ num den : Y₂.presheaf.stalk y,
      wcpaDjStcRatioLink (r i) y num den ∧
      num * z ^ (-(α i)).toNat * ∏ l, ((h.stalkMap y).hom (t l)) ^ (-(β i l)).toNat =
        ↑w * den * z ^ (α i).toNat * ∏ l, ((h.stalkMap y).hom (t l)) ^ (β i l).toNat := by
    intro i hi
    obtain ⟨num, den, hlink, hmon⟩ := hMon i hi
    unfold wcpaDjStcMonRel at hmon
    obtain ⟨ŵ, hw⟩ := hmon
    have hPQ : algebraMap (Y₂.presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk y)) (Y₂.presheaf.stalk y))
          (num * z ^ (-(α i)).toNat * ∏ l, ((h.stalkMap y).hom (t l)) ^ (-(β i l)).toNat) =
        algebraMap (Y₂.presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk y)) (Y₂.presheaf.stalk y))
          (den * z ^ (α i).toNat * ∏ l, ((h.stalkMap y).hom (t l)) ^ (β i l).toNat) * ↑ŵ := by
      simp only [map_mul, map_pow, map_prod]
      rw [hw]
      ring
    have hQP : algebraMap (Y₂.presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk y)) (Y₂.presheaf.stalk y))
          (den * z ^ (α i).toNat * ∏ l, ((h.stalkMap y).hom (t l)) ^ (β i l).toNat) =
        algebraMap (Y₂.presheaf.stalk y) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk y)) (Y₂.presheaf.stalk y))
          (num * z ^ (-(α i)).toNat * ∏ l, ((h.stalkMap y).hom (t l)) ^ (-(β i l)).toNat) *
          ↑ŵ⁻¹ := by
      rw [hPQ]
      exact (Units.mul_inv_cancel_right _ ŵ).symm
    obtain ⟨c, hc⟩ := descent _ _ _ _ hPQ
    obtain ⟨d, hd⟩ := descent _ _ _ _ hQP
    obtain ⟨w, hw'⟩ := assoc _ _ _ c d hc hd
    exact ⟨w, num, den, hlink, by rw [hw']; ring⟩
  refine ⟨hz, hT, ?_⟩
  choose! w hw using key
  exact ⟨w, fun i hi => hw i hi⟩

theorem wcpa_dj_gsl_index_shift : ∀ {ι : Type} (I : Finset ι), I.Nonempty →
    ∀ (n : ℕ) (α : ι → ℤ) (β : ι → Fin n → ℤ),
    (∀ i ∈ I, ∀ j ∈ I, α i ≠ α j → ∀ l, (α i - α j) ∣ (β j l - β i l)) →
    (∀ v ∈ wcpaDjStcBreaks I α β 0, ∀ w ∈ wcpaDjStcBreaks I α β 0, v ≤ w ∨ w ≤ v) →
    ∃ kk ∈ I, ∃ ℓ : Fin n → ℕ, (∀ i ∈ I, α kk ≤ α i) ∧
      (∀ i ∈ I, ∀ l, 0 ≤ β i l - β kk l + (α i - α kk) * (ℓ l : ℤ)) ∧
      (ℓ = 0 ∨ ∃ i' ∈ I, α kk < α i' ∧ ∀ l, β i' l - β kk l + (α i' - α kk) * (ℓ l : ℤ) = 0) :=
by
  intro ι I hI n α β hO1 hO2
  classical
  have s1 : ∀ x y : Fin n → ℤ, ((∀ l, x l ≤ y l) ∨ (∀ l, y l ≤ x l)) →
      ∑ l, x l ≤ ∑ l, y l → ∀ l, x l ≤ y l := by
    intro x y hc hs
    rcases hc with h | h
    · exact h
    · have hle : ∑ l, y l ≤ ∑ l, x l := Finset.sum_le_sum (fun l _ => h l)
      have heq : ∑ l, y l = ∑ l, x l := le_antisymm hle hs
      have hall := (Finset.sum_eq_sum_iff_of_le (fun l _ => h l)).mp heq
      intro l
      exact le_of_eq (hall l (Finset.mem_univ l)).symm
  have hB0 : (0 : Fin n → ℚ) ∈ wcpaDjStcBreaks I α β 0 := by
    unfold wcpaDjStcBreaks
    exact Or.inl (Or.inl (Or.inl rfl))
  have hB2 : ∀ i ∈ I, ∀ j ∈ I, α i ≠ α j →
      (fun l => ((β j l - β i l : ℤ) : ℚ) / ((α i - α j : ℤ) : ℚ)) ∈
        wcpaDjStcBreaks I α β 0 := by
    intro i hi j hj hne
    unfold wcpaDjStcBreaks
    exact Or.inl (Or.inr ⟨i, hi, j, hj, hne, rfl⟩)
  have hB3 : ∀ i ∈ I, ∀ j ∈ I, α i = α j →
      (fun l => ((β i l - β j l : ℤ) : ℚ)) ∈ wcpaDjStcBreaks I α β 0 := by
    intro i hi j hj heq
    unfold wcpaDjStcBreaks
    exact Or.inr ⟨i, hi, j, hj, heq, rfl⟩
  obtain ⟨k0, hk0, hk0min⟩ := Finset.exists_min_image I α hI
  have hI₀ne : (I.filter (fun i => α i = α k0)).Nonempty :=
    ⟨k0, Finset.mem_filter.mpr ⟨hk0, rfl⟩⟩
  obtain ⟨kk, hkk0, hkkmin⟩ :=
    Finset.exists_min_image (I.filter (fun i => α i = α k0)) (fun i => ∑ l, β i l) hI₀ne
  obtain ⟨hkk, hkkα⟩ := Finset.mem_filter.mp hkk0
  have ha : ∀ i ∈ I, α kk ≤ α i := by
    intro i hi
    rw [hkkα]
    exact hk0min i hi
  have hK : ∀ i ∈ I, α i = α kk → ∀ l, β kk l ≤ β i l := by
    intro i hi hik
    have hiI₀ : i ∈ I.filter (fun i => α i = α k0) :=
      Finset.mem_filter.mpr ⟨hi, hik.trans hkkα⟩
    have hc := hO2 _ (hB3 i hi kk hkk hik) _ hB0
    refine s1 (β kk) (β i) ?_ (hkkmin i hiI₀)
    rcases hc with h | h
    · right
      intro l
      have h' : ((β i l - β kk l : ℤ) : ℚ) ≤ 0 := h l
      have h'' : β i l - β kk l ≤ 0 := by exact_mod_cast h'
      linarith
    · left
      intro l
      have h' : (0 : ℚ) ≤ ((β i l - β kk l : ℤ) : ℚ) := h l
      have h'' : 0 ≤ β i l - β kk l := by exact_mod_cast h'
      linarith
  by_cases hP : ∃ i ∈ I, α kk < α i
  · have hPne : (I.filter (fun i => α kk < α i)).Nonempty := by
      obtain ⟨i, hi, hlt⟩ := hP
      exact ⟨i, Finset.mem_filter.mpr ⟨hi, hlt⟩⟩
    obtain ⟨lam, hlam⟩ : ∃ lam : ι → Fin n → ℤ,
        ∀ i l, lam i l = (β kk l - β i l) / (α i - α kk) := ⟨_, fun _ _ => rfl⟩
    have hD : ∀ i ∈ I.filter (fun i => α kk < α i), ∀ l, (α i - α kk) ∣ (β kk l - β i l) := by
      intro i hiP l
      obtain ⟨hi, hlt⟩ := Finset.mem_filter.mp hiP
      exact hO1 i hi kk hkk (ne_of_gt hlt) l
    have hL1 : ∀ i ∈ I.filter (fun i => α kk < α i), ∀ l,
        (α i - α kk) * lam i l = β kk l - β i l := by
      intro i hiP l
      rw [hlam]
      exact Int.mul_ediv_cancel' (hD i hiP l)
    have hL2 : ∀ i ∈ I.filter (fun i => α kk < α i),
        (fun l => ((β kk l - β i l : ℤ) : ℚ) / ((α i - α kk : ℤ) : ℚ)) =
          fun l => ((lam i l : ℤ) : ℚ) := by
      intro i hiP
      funext l
      obtain ⟨hi, hlt⟩ := Finset.mem_filter.mp hiP
      have hne : ((α i - α kk : ℤ) : ℚ) ≠ 0 := by
        have : α i - α kk ≠ 0 := by omega
        exact_mod_cast this
      rw [hlam]
      exact (Int.cast_div (hD i hiP l) hne).symm
    have hBl : ∀ i ∈ I.filter (fun i => α kk < α i),
        (fun l => ((lam i l : ℤ) : ℚ)) ∈ wcpaDjStcBreaks I α β 0 := by
      intro i hiP
      obtain ⟨hi, hlt⟩ := Finset.mem_filter.mp hiP
      have hm := hB2 i hi kk hkk (ne_of_gt hlt)
      rwa [hL2 i hiP] at hm
    have hcmp : ∀ i ∈ I.filter (fun i => α kk < α i), ∀ j ∈ I.filter (fun i => α kk < α i),
        (∀ l, lam i l ≤ lam j l) ∨ (∀ l, lam j l ≤ lam i l) := by
      intro i hi j hj
      rcases hO2 _ (hBl i hi) _ (hBl j hj) with h | h
      · left
        intro l
        have h' : ((lam i l : ℤ) : ℚ) ≤ ((lam j l : ℤ) : ℚ) := h l
        exact_mod_cast h'
      · right
        intro l
        have h' : ((lam j l : ℤ) : ℚ) ≤ ((lam i l : ℤ) : ℚ) := h l
        exact_mod_cast h'
    obtain ⟨is, hisP, hismax⟩ :=
      Finset.exists_max_image (I.filter (fun i => α kk < α i)) (fun i => ∑ l, lam i l) hPne
    have hΛ : ∀ i ∈ I.filter (fun i => α kk < α i), ∀ l, lam i l ≤ lam is l :=
      fun i hi => s1 _ _ (hcmp i hi is hisP) (hismax i hi)
    obtain ⟨his, hislt⟩ := Finset.mem_filter.mp hisP
    have hmemP : ∀ i ∈ I, α i ≠ α kk → i ∈ I.filter (fun i => α kk < α i) :=
      fun i hi hne => Finset.mem_filter.mpr ⟨hi, lt_of_le_of_ne (ha i hi) (Ne.symm hne)⟩
    rcases hO2 _ (hBl is hisP) _ hB0 with h | h
    · refine ⟨kk, hkk, 0, ha, ?_, Or.inl rfl⟩
      intro i hi l
      simp only [Pi.zero_apply, Nat.cast_zero, mul_zero, add_zero]
      by_cases hik : α i = α kk
      · have := hK i hi hik l
        linarith
      · have hiP := hmemP i hi hik
        have h1 := hL1 i hiP l
        have h2 : lam is l ≤ 0 := by
          have h' : ((lam is l : ℤ) : ℚ) ≤ 0 := h l
          exact_mod_cast h'
        have h3 := hΛ i hiP l
        have hpos : 0 < α i - α kk := by
          have := ha i hi
          omega
        have h4 : lam i l ≤ 0 := le_trans h3 h2
        have h5 : (α i - α kk) * lam i l ≤ 0 := mul_nonpos_of_nonneg_of_nonpos hpos.le h4
        linarith
    · have h0 : ∀ l, 0 ≤ lam is l := by
        intro l
        have h' : (0 : ℚ) ≤ ((lam is l : ℤ) : ℚ) := h l
        exact_mod_cast h'
      have hcast : ∀ l, (((lam is l).toNat : ℕ) : ℤ) = lam is l :=
        fun l => Int.toNat_of_nonneg (h0 l)
      refine ⟨kk, hkk, fun l => (lam is l).toNat, ha, ?_, Or.inr ⟨is, his, hislt, ?_⟩⟩
      · intro i hi l
        show 0 ≤ β i l - β kk l + (α i - α kk) * (((lam is l).toNat : ℕ) : ℤ)
        rw [hcast l]
        by_cases hik : α i = α kk
        · rw [show α i - α kk = 0 by omega, zero_mul, add_zero]
          linarith [hK i hi hik l]
        · have hiP := hmemP i hi hik
          have h1 := hL1 i hiP l
          have h3 := hΛ i hiP l
          have hpos : 0 < α i - α kk := by
            have := ha i hi
            omega
          have h4 := mul_le_mul_of_nonneg_left h3 hpos.le
          linarith
      · intro l
        show β is l - β kk l + (α is - α kk) * (((lam is l).toNat : ℕ) : ℤ) = 0
        rw [hcast l, hL1 is hisP l]
        ring
  · refine ⟨kk, hkk, 0, ha, ?_, Or.inl rfl⟩
    intro i hi l
    have hik : α i = α kk := by
      have := ha i hi
      by_contra hne
      exact hP ⟨i, hi, lt_of_le_of_ne this (Ne.symm hne)⟩
    simp only [Pi.zero_apply, Nat.cast_zero, mul_zero, add_zero]
    linarith [hK i hi hik l]

theorem wcpa_dj_gslc_gen_ne_zero : ∀ (B : Type u) [CommRing B] [IsLocalRing B] [IsNoetherianRing B]
    (n : ℕ) (t : Fin n → B), (n : WithBot ℕ∞) = ringKrullDim B →
    Ideal.span (Set.range t) = IsLocalRing.maximalIdeal B → ∀ l, t l ≠ 0 :=
by
  classical
  intro B _ _ _ n t hdim hspan l h0
  have hn : 1 ≤ n := by have := l.2; omega
  set s : Finset B := Finset.image t (Finset.univ.erase l) with hs
  have hs_span : Ideal.span (↑s : Set B) = IsLocalRing.maximalIdeal B := by
    rw [← hspan]
    apply le_antisymm
    · apply Ideal.span_mono
      intro x hx
      rw [hs, Finset.coe_image] at hx
      obtain ⟨j, _, rfl⟩ := hx
      exact ⟨j, rfl⟩
    · rw [Ideal.span_le]
      rintro x ⟨j, rfl⟩
      by_cases hj : j = l
      · subst hj; rw [h0]; exact Submodule.zero_mem _
      · apply Ideal.subset_span
        rw [hs, Finset.coe_image]
        exact ⟨j, by simp [hj], rfl⟩
  have hcard : s.card ≤ n - 1 := by
    calc s.card ≤ (Finset.univ.erase l).card := Finset.card_image_le
      _ = n - 1 := by rw [Finset.card_erase_of_mem (Finset.mem_univ l), Finset.card_univ, Fintype.card_fin]
  have hmin : IsLocalRing.maximalIdeal B ∈ (Ideal.span (↑s : Set B)).minimalPrimes := by
    rw [hs_span, Ideal.minimalPrimes_eq_subsingleton_self]
    exact Set.mem_singleton _
  have hht := Ideal.height_le_card_of_mem_minimalPrimes_span_finset hmin
  have hdim' := IsLocalRing.maximalIdeal_height_eq_ringKrullDim (R := B)
  rw [← hdim] at hdim'
  have hh : (IsLocalRing.maximalIdeal B).height = (n : ℕ∞) := by
    exact_mod_cast hdim'
  rw [hh] at hht
  have : n ≤ s.card := by exact_mod_cast hht
  omega

theorem wcpa_dj_gslc_affine_normal : ∀ {S : Scheme.{u}} [AlgebraicGeometry.IsIntegral S],
    (∀ s : S, IsRegularLocalRing (S.presheaf.stalk s)) → ∀ (U : S.Opens), IsAffineOpen U →
    Nonempty U → IsIntegrallyClosed Γ(S, U) :=
by
  intro S _ hreg U hU hne
  have hstalk : ∀ z : S, IsIntegrallyClosed (S.presheaf.stalk z) := by
    intro z
    haveI := hreg z
    obtain ⟨h1, h2⟩ := wc_fco_regular_local_ufd (S.presheaf.stalk z)
    haveI := h1
    haveI := h2
    exact UniqueFactorizationMonoid.instIsIntegrallyClosed
  exact wcpa_dj_fcs_sections_integrally_closed S hstalk U hU hne

theorem wcpa_dj_gslc_tensor_chart : ∀ (A R : Type u) [CommRing A] [IsDomain A] [CommRing R]
    [IsDomain R] (g : MvPolynomial (Fin 1) A →+* R) (a τ : A), g.Etale → τ ≠ 0 →
    RingHom.IsStandardSmoothOfRelativeDimension 1
      (((Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)).comp Polynomial.C).comp
        (g.comp MvPolynomial.C)) ∧
    IsDomain (Polynomial R ⧸ wcpaDjGslcIdeal g a τ) ∧
    Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ) (Polynomial.C (g (MvPolynomial.C τ))) ≠ 0 ∧
    ∀ (L : Type u) [CommRing L] [Algebra (Polynomial R ⧸ wcpaDjGslcIdeal g a τ) L]
      [IsLocalization.Away
        (Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ) (Polynomial.C (g (MvPolynomial.C τ)))) L],
      @IsLocalization.Away R _ (g (MvPolynomial.C τ)) L _
        ((algebraMap (Polynomial R ⧸ wcpaDjGslcIdeal g a τ) L).comp
          ((Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)).comp Polynomial.C)).toAlgebra :=
by
  intro A R _ _ _ _ g a τ hg hτ
  classical

  set I := wcpaDjGslcIdeal g a τ with hI
  set mk : Polynomial R →+* (Polynomial R ⧸ I) := Ideal.Quotient.mk I with hmk
  set β : R →+* (Polynomial R ⧸ I) := mk.comp Polynomial.C with hβ
  set φ' : Polynomial A →+* (Polynomial R ⧸ I) :=
    Polynomial.eval₂RingHom (β.comp (g.comp MvPolynomial.C)) (mk Polynomial.X) with hφ'

  have hrel : β (g (MvPolynomial.C τ)) * mk Polynomial.X =
      β (g (MvPolynomial.X 0) - g (MvPolynomial.C a)) := by
    simp only [hβ, RingHom.comp_apply]
    rw [← map_mul, ← sub_eq_zero, ← map_sub, hmk, Ideal.Quotient.eq_zero_iff_mem]
    exact Ideal.subset_span rfl



  have s1 : ∀ (B : Type u) [CommRing B] (π : Polynomial R →+* B), Function.Surjective π →
      RingHom.ker π = I →
      (Polynomial.eval₂RingHom ((π.comp Polynomial.C).comp (g.comp MvPolynomial.C))
        (π Polynomial.X)).Etale := by
    intro B _ π hπ hkerπ
    set βB : R →+* B := π.comp Polynomial.C with hβB
    set ψ : Polynomial A →+* B :=
      Polynomial.eval₂RingHom (βB.comp (g.comp MvPolynomial.C)) (π Polynomial.X) with hψ
    have hrelB : βB (g (MvPolynomial.C τ)) * π Polynomial.X =
        βB (g (MvPolynomial.X 0) - g (MvPolynomial.C a)) := by
      simp only [hβB, RingHom.comp_apply]
      rw [← map_mul, ← sub_eq_zero, ← map_sub, ← RingHom.mem_ker, hkerπ]
      exact Ideal.subset_span rfl
    let φ : MvPolynomial (Fin 1) A →+* Polynomial A :=
      MvPolynomial.eval₂Hom Polynomial.C (fun _ => Polynomial.C a + Polynomial.C τ * Polynomial.X)
    have hφC : ∀ x : A, φ (MvPolynomial.C x) = Polynomial.C x := fun x =>
      MvPolynomial.eval₂Hom_C _ _ x
    have hφX : φ (MvPolynomial.X 0) = Polynomial.C a + Polynomial.C τ * Polynomial.X :=
      MvPolynomial.eval₂Hom_X' _ _ 0
    have hψC : ∀ x : A, ψ (Polynomial.C x) = βB (g (MvPolynomial.C x)) := by
      intro x
      simp only [hψ, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_C, RingHom.comp_apply]
    have hψX : ψ Polynomial.X = π Polynomial.X := by
      simp only [hψ, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_X]
    have hK : ψ.comp φ = βB.comp g := by
      apply MvPolynomial.ringHom_ext
      · intro x
        rw [RingHom.comp_apply, RingHom.comp_apply, hφC, hψC]
      · intro i
        rw [Fin.fin_one_eq_zero i, RingHom.comp_apply, RingHom.comp_apply, hφX, map_add, map_mul,
          hψC, hψC, hψX, hrelB, map_sub]
        ring
    letI : Algebra (MvPolynomial (Fin 1) A) R := g.toAlgebra
    letI : Algebra (MvPolynomial (Fin 1) A) (Polynomial A) := φ.toAlgebra
    letI : Algebra (Polynomial A) B := ψ.toAlgebra
    letI : Algebra (MvPolynomial (Fin 1) A) B := (ψ.comp φ).toAlgebra
    haveI : IsScalarTower (MvPolynomial (Fin 1) A) (Polynomial A) B :=
      IsScalarTower.of_algebraMap_eq' rfl
    haveI : Algebra.Etale (MvPolynomial (Fin 1) A) R := RingHom.Etale.toAlgebra hg
    haveI hTet : Algebra.Etale (Polynomial A)
        (TensorProduct (MvPolynomial (Fin 1) A) (Polynomial A) R) :=
      Algebra.Etale.baseChange _ _ _
    let gR : R →ₐ[MvPolynomial (Fin 1) A] B :=
      { βB with
        commutes' := fun x => by
          show βB (g x) = ψ (φ x)
          exact (RingHom.congr_fun hK x).symm }
    let Ψ : TensorProduct (MvPolynomial (Fin 1) A) (Polynomial A) R →ₐ[Polynomial A] B :=
      Algebra.TensorProduct.lift (Algebra.ofId (Polynomial A) B) gR
        (fun _ _ => Commute.all _ _)
    have hΨ : ∀ (p : Polynomial A) (ρ : R), Ψ (p ⊗ₜ ρ) = ψ p * βB ρ := by
      intro p ρ
      rw [Algebra.TensorProduct.lift_tmul]
      rfl
    let incL : Polynomial A →+*
        TensorProduct (MvPolynomial (Fin 1) A) (Polynomial A) R :=
      Algebra.TensorProduct.includeLeftRingHom
    let incR : R →+* TensorProduct (MvPolynomial (Fin 1) A) (Polynomial A) R :=
      Algebra.TensorProduct.includeRight.toRingHom
    have hincL : ∀ p, incL p = p ⊗ₜ 1 := fun p => rfl
    have hincR : ∀ ρ, incR ρ = 1 ⊗ₜ ρ := fun ρ => rfl
    have hgen : ∀ y : MvPolynomial (Fin 1) A, incR (g y) = incL (φ y) := by
      intro y
      rw [hincR, hincL]
      exact (Algebra.TensorProduct.tmul_one_eq_one_tmul y).symm
    let ev : Polynomial R →+* TensorProduct (MvPolynomial (Fin 1) A) (Polynomial A) R :=
      Polynomial.eval₂RingHom incR (incL Polynomial.X)
    have hevC : ∀ ρ, ev (Polynomial.C ρ) = incR ρ := fun ρ => by
      simp only [ev, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_C]
    have hevX : ev Polynomial.X = incL Polynomial.X := by
      simp only [ev, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_X]
    have hker : RingHom.ker π ≤ RingHom.ker ev := by
      intro x hx
      rw [hkerπ] at hx
      rw [RingHom.mem_ker]
      obtain ⟨h, rfl⟩ := Ideal.mem_span_singleton'.mp hx
      rw [map_mul]
      have h0 : ev (Polynomial.C (g (MvPolynomial.C τ)) * Polynomial.X -
          Polynomial.C (g (MvPolynomial.X 0) - g (MvPolynomial.C a))) = 0 := by
        rw [map_sub, map_mul, hevC, hevC, hevX, map_sub, hgen, hgen, hgen, ← map_mul, ← map_sub,
          ← map_sub, hφC, hφC, hφX]
        have : Polynomial.C τ * Polynomial.X -
            (Polynomial.C a + Polynomial.C τ * Polynomial.X - Polynomial.C a) = (0 : Polynomial A) := by
          ring
        rw [this, map_zero]
      rw [h0, mul_zero]
    let Ψi : B →+* TensorProduct (MvPolynomial (Fin 1) A) (Polynomial A) R :=
      RingHom.liftOfSurjective π hπ ⟨ev, hker⟩
    have hΨimk : ∀ G, Ψi (π G) = ev G := fun G =>
      RingHom.liftOfSurjective_comp_apply π hπ ⟨ev, hker⟩ G

    have hright : ∀ b, Ψ (Ψi b) = b := by
      intro b
      obtain ⟨G, rfl⟩ := hπ b
      have hcomp : (Ψ.toRingHom.comp ev) = π := by
        apply Polynomial.ringHom_ext
        · intro ρ
          show Ψ (ev (Polynomial.C ρ)) = π (Polynomial.C ρ)
          rw [hevC, hincR, hΨ, map_one, one_mul]
          rfl
        · show Ψ (ev Polynomial.X) = π Polynomial.X
          rw [hevX, hincL, hΨ, map_one, mul_one, hψX]
      rw [hΨimk]
      exact RingHom.congr_fun hcomp G

    have hΨiψ : Ψi.comp ψ = incL := by
      apply Polynomial.ringHom_ext
      · intro x
        rw [RingHom.comp_apply, hψC]
        show Ψi (π (Polynomial.C (g (MvPolynomial.C x)))) = incL (Polynomial.C x)
        rw [hΨimk, hevC, hgen, hφC]
      · rw [RingHom.comp_apply, hψX, hΨimk, hevX]
    have hleft : ∀ t, Ψi (Ψ t) = t := by
      intro t
      induction t using TensorProduct.induction_on with
      | zero => rw [map_zero, map_zero]
      | tmul p ρ =>
        rw [hΨ, map_mul, ← RingHom.comp_apply Ψi ψ, hΨiψ]
        show incL p * Ψi (π (Polynomial.C ρ)) = p ⊗ₜ ρ
        rw [hΨimk, hevC, hincL, hincR, Algebra.TensorProduct.tmul_mul_tmul, mul_one, one_mul]
      | add x y hx hy => rw [map_add, map_add, hx, hy]
    have hbij : Function.Bijective Ψ :=
      ⟨Function.LeftInverse.injective hleft, Function.RightInverse.surjective hright⟩
    haveI : Algebra.Etale (Polynomial A) B :=
      Algebra.Etale.of_equiv (AlgEquiv.ofBijective Ψ hbij)
    exact RingHom.etale_algebraMap.mpr this
  have hφ'et : φ'.Etale :=
    s1 (Polynomial R ⧸ I) mk Ideal.Quotient.mk_surjective (Ideal.mk_ker)



  have hT1 : RingHom.IsStandardSmoothOfRelativeDimension 1 (β.comp (g.comp MvPolynomial.C)) := by
    have hφ'0 : RingHom.IsStandardSmoothOfRelativeDimension 0 φ' :=
      RingHom.etale_iff_isStandardSmoothOfRelativeDimension_zero.mp hφ'et
    have hC1 : RingHom.IsStandardSmoothOfRelativeDimension 1 (Polynomial.C : A →+* Polynomial A) := by
      haveI h0 := Algebra.IsStandardSmoothOfRelativeDimension.mvPolynomial A (Fin 1)
      rw [Nat.card_unique] at h0
      haveI : Algebra.IsStandardSmoothOfRelativeDimension 1 A (Polynomial A) :=
        Algebra.IsStandardSmoothOfRelativeDimension.of_algEquiv 1 (MvPolynomial.uniqueAlgEquiv A (Fin 1))
      rw [← Polynomial.algebraMap_eq]
      exact (RingHom.isStandardSmoothOfRelativeDimension_algebraMap 1).mpr this
    have h := hφ'0.comp hC1
    rw [zero_add] at h
    have hfeq : φ'.comp Polynomial.C = β.comp (g.comp MvPolynomial.C) := by
      ext x
      simp only [hφ', RingHom.comp_apply, Polynomial.coe_eval₂RingHom, Polynomial.eval₂_C]
    rw [hfeq] at h
    exact h



  have s5 : ∀ (S : Type u) [CommRing S] (f : A →+* S), f.Flat → ∀ b : S, f τ * b = 0 → b = 0 := by
    intro S _ f hf b hb
    letI := f.toAlgebra
    haveI : Module.Flat A S := RingHom.flat_algebraMap_iff.mp hf
    have hreg : IsSMulRegular S τ :=
      Module.Flat.isSMulRegular_of_nonZeroDivisors (mem_nonZeroDivisors_of_ne_zero hτ)
    apply hreg
    show τ • b = τ • (0 : S)
    rw [smul_zero, Algebra.smul_def]
    exact hb

  have hgflat : g.Flat :=
    RingHom.Smooth.flat (RingHom.IsStandardSmooth.smooth
      (RingHom.IsStandardSmoothOfRelativeDimension.isStandardSmooth 0 g
        (RingHom.etale_iff_isStandardSmoothOfRelativeDimension_zero.mp hg)))
  have hCflat : (MvPolynomial.C : A →+* MvPolynomial (Fin 1) A).Flat := by
    have : (algebraMap A (MvPolynomial (Fin 1) A)).Flat := RingHom.flat_algebraMap_iff.mpr inferInstance
    rwa [MvPolynomial.algebraMap_eq] at this
  have hc : g (MvPolynomial.C τ) ≠ 0 := by
    intro h
    apply one_ne_zero (α := R)
    apply s5 R (g.comp MvPolynomial.C) (hCflat.comp hgflat) 1
    rw [RingHom.comp_apply, h, zero_mul]



  have hβinj : Function.Injective β := by
    rw [injective_iff_map_eq_zero]
    intro ρ hρ
    have hmem : Polynomial.C ρ ∈ I := by
      rw [hβ, RingHom.comp_apply, hmk, Ideal.Quotient.eq_zero_iff_mem] at hρ
      exact hρ
    obtain ⟨G, hG⟩ := Ideal.mem_span_singleton'.mp hmem
    by_contra hρ0
    have hcoeff : (Polynomial.C (g (MvPolynomial.C τ)) * Polynomial.X -
        Polynomial.C (g (MvPolynomial.X 0) - g (MvPolynomial.C a))).coeff 1 ≠ 0 := by
      rw [Polynomial.coeff_sub, Polynomial.coeff_C_mul_X, Polynomial.coeff_C]
      simpa using hc
    have hq0 : (Polynomial.C (g (MvPolynomial.C τ)) * Polynomial.X -
        Polynomial.C (g (MvPolynomial.X 0) - g (MvPolynomial.C a))) ≠ 0 := by
      intro h
      apply hcoeff
      rw [h, Polynomial.coeff_zero]
    have hG0 : G ≠ 0 := by
      rintro rfl
      rw [zero_mul] at hG
      exact hρ0 (Polynomial.C_eq_zero.mp hG.symm)
    have hdeg := Polynomial.natDegree_mul hG0 hq0
    rw [hG, Polynomial.natDegree_C] at hdeg
    have h1 := Polynomial.le_natDegree_of_ne_zero hcoeff
    omega

  have hT3 : β (g (MvPolynomial.C τ)) ≠ 0 := by
    intro h
    exact hc (hβinj (h.trans (map_zero β).symm))



  have hrel' : β (g (MvPolynomial.C τ)) * mk Polynomial.X =
      β (g (MvPolynomial.X 0) - g (MvPolynomial.C a)) := hrel
  have s3 : ∀ G : Polynomial R, ∃ (m : ℕ) (ρ : R),
      β (g (MvPolynomial.C τ)) ^ m * mk G = β ρ := by
    intro G
    induction G using Polynomial.induction_on' with
    | add p q hp hq =>
      obtain ⟨m1, ρ1, h1⟩ := hp
      obtain ⟨m2, ρ2, h2⟩ := hq
      refine ⟨m1 + m2, g (MvPolynomial.C τ) ^ m2 * ρ1 + g (MvPolynomial.C τ) ^ m1 * ρ2, ?_⟩
      rw [map_add, map_add, map_mul, map_mul, map_pow, map_pow, ← h1, ← h2]
      ring
    | monomial n r =>
      refine ⟨n, r * (g (MvPolynomial.X 0) - g (MvPolynomial.C a)) ^ n, ?_⟩
      rw [← Polynomial.C_mul_X_pow_eq_monomial, map_mul, map_pow, map_mul, map_pow, ← hrel']
      show β (g (MvPolynomial.C τ)) ^ n * (β r * mk Polynomial.X ^ n) =
        β r * (β (g (MvPolynomial.C τ)) * mk Polynomial.X) ^ n
      ring



  have hT4 : ∀ (L : Type u) [CommRing L] [Algebra (Polynomial R ⧸ I) L]
      [IsLocalization.Away (mk (Polynomial.C (g (MvPolynomial.C τ)))) L],
      @IsLocalization.Away R _ (g (MvPolynomial.C τ)) L _
        ((algebraMap (Polynomial R ⧸ I) L).comp β).toAlgebra := by
    intro L _ _ _
    letI : Algebra R L := ((algebraMap (Polynomial R ⧸ I) L).comp β).toAlgebra
    have halg : ∀ x : R, algebraMap R L x = algebraMap (Polynomial R ⧸ I) L (β x) := fun x => rfl
    refine IsLocalization.Away.mk _ ?_ ?_ ?_
    · rw [halg]
      exact IsLocalization.Away.algebraMap_isUnit (mk (Polynomial.C (g (MvPolynomial.C τ))))
    · intro s
      obtain ⟨n, b, hb⟩ := IsLocalization.Away.surj (mk (Polynomial.C (g (MvPolynomial.C τ)))) s
      obtain ⟨G, rfl⟩ := Ideal.Quotient.mk_surjective b
      obtain ⟨m, ρ, hm⟩ := s3 G
      refine ⟨n + m, ρ, ?_⟩
      rw [halg, halg, pow_add, ← mul_assoc]
      have hb' : s * (algebraMap (Polynomial R ⧸ I) L) (β (g (MvPolynomial.C τ))) ^ n =
          (algebraMap (Polynomial R ⧸ I) L) (mk G) := hb
      rw [hb', ← map_pow, ← map_mul, mul_comm, hm]
    · intro x y hxy
      rw [halg, halg] at hxy
      obtain ⟨⟨_, k, rfl⟩, hk⟩ :=
        IsLocalization.exists_of_eq (M := Submonoid.powers (mk (Polynomial.C (g (MvPolynomial.C τ)))))
          hxy
      refine ⟨k, hβinj ?_⟩
      rw [map_mul, map_mul, map_pow]
      exact hk



  have hT2 : IsDomain (Polynomial R ⧸ I) := by
    have hfflat : (β.comp (g.comp MvPolynomial.C)).Flat :=
      RingHom.Smooth.flat (RingHom.IsStandardSmooth.smooth
        (RingHom.IsStandardSmoothOfRelativeDimension.isStandardSmooth 1 _ hT1))
    have hnzd : ∀ b : Polynomial R ⧸ I, β (g (MvPolynomial.C τ)) * b = 0 → b = 0 :=
      s5 _ _ hfflat
    let L := Localization.Away (mk (Polynomial.C (g (MvPolynomial.C τ))))
    letI : Algebra R L := ((algebraMap (Polynomial R ⧸ I) L).comp β).toAlgebra
    haveI hLR : IsLocalization.Away (g (MvPolynomial.C τ)) L := hT4 L
    haveI : IsDomain L := IsLocalization.isDomain_of_le_nonZeroDivisors L
      (M := Submonoid.powers (g (MvPolynomial.C τ))) (powers_le_nonZeroDivisors_of_noZeroDivisors hc)
    have hinj : Function.Injective (algebraMap (Polynomial R ⧸ I) L) := by
      apply IsLocalization.injective L (M := Submonoid.powers (mk (Polynomial.C (g (MvPolynomial.C τ)))))
      rw [Submonoid.powers_le, mem_nonZeroDivisors_iff]
      exact ⟨hnzd, fun x hx => hnzd x (by rw [mul_comm]; exact hx)⟩
    exact Function.Injective.isDomain _ hinj
  exact ⟨hT1, hT2, hT3, hT4⟩

theorem wcpa_dj_gslc_local_data : ∀ {Y₂ S₂ : Scheme.{u}} [AlgebraicGeometry.IsIntegral Y₂]
    [AlgebraicGeometry.IsIntegral S₂] (h : Y₂ ⟶ S₂) (σ : S₂ ⟶ Y₂) (p : S₂), σ ≫ h = 𝟙 S₂ →
    ∀ (W₀ : Y₂.Opens), σ p ∈ W₀ → SmoothOfRelativeDimension 1 (W₀.ι ≫ h) →
    ∀ (z : Y₂.presheaf.stalk (σ p)),
      (∀ (y' : Y₂) (hy : y' ⤳ σ p), y' ∈ Set.range ⇑σ ↔
        (Y₂.presheaf.stalkSpecializes hy).hom z ∈ IsLocalRing.maximalIdeal (Y₂.presheaf.stalk y')) →
    ∀ (e : AdicCompletion (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk (σ p)))
        (Y₂.presheaf.stalk (σ p)) ≃+*
        PowerSeries (AdicCompletion (IsLocalRing.maximalIdeal (S₂.presheaf.stalk (h (σ p))))
          (S₂.presheaf.stalk (h (σ p))))),
      e.toRingHom.comp ((algebraMap (Y₂.presheaf.stalk (σ p)) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk (σ p))) (Y₂.presheaf.stalk (σ p)))).comp
          (h.stalkMap (σ p)).hom) =
        PowerSeries.C.comp (algebraMap (S₂.presheaf.stalk (h (σ p)))
          (AdicCompletion (IsLocalRing.maximalIdeal (S₂.presheaf.stalk (h (σ p))))
            (S₂.presheaf.stalk (h (σ p))))) →
      e (algebraMap (Y₂.presheaf.stalk (σ p)) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk (σ p))) (Y₂.presheaf.stalk (σ p))) z) =
        PowerSeries.X →
    ∀ (n : ℕ) (t : Fin n → S₂.presheaf.stalk (h (σ p))) (r : ℕ)
      (w : Fin r → (Y₂.presheaf.stalk (σ p))ˣ),
    ∃ (U : S₂.Opens) (V : Y₂.Opens) (hle : V ≤ h ⁻¹ᵁ U) (hpV : σ p ∈ V) (hq : h (σ p) ∈ U)
      (g : MvPolynomial (Fin 1) Γ(S₂, U) →+* Γ(Y₂, V)) (a : Γ(S₂, U)) (vt : Γ(Y₂, V)ˣ)
      (tt ss : Fin n → Γ(S₂, U)) (wt : Fin r → Γ(Y₂, V)ˣ),
      IsAffineOpen U ∧ IsAffineOpen V ∧ g.Etale ∧ g.comp MvPolynomial.C = (h.appLE U V hle).hom ∧
      (σ.app V).hom (g (MvPolynomial.X 0) - g (MvPolynomial.C a)) = 0 ∧
      (Y₂.presheaf.germ V (σ p) hpV).hom
        ((vt : Γ(Y₂, V)) * (g (MvPolynomial.X 0) - g (MvPolynomial.C a))) = z ∧
      (∀ l, (S₂.presheaf.germ U (h (σ p)) hq).hom (tt l) =
        t l * (S₂.presheaf.germ U (h (σ p)) hq).hom (ss l)) ∧
      (∀ l, IsUnit ((h.appLE U V hle).hom (ss l))) ∧
      (∀ i, (Y₂.presheaf.germ V (σ p) hpV).hom (wt i : Γ(Y₂, V)) =
        (w i : Y₂.presheaf.stalk (σ p))) :=
by
  intro Y₂ S₂ _ _ h σ p hσ W₀ hW₀ hW₀sm z hz e hecomp hez n t r w
  have s3 : ∀ (B C : Type u) [CommRing B] [IsLocalRing B] [CommRing C] [IsLocalRing C] (φ : B →+* C)
      (e : AdicCompletion (IsLocalRing.maximalIdeal C) C ≃+*
        PowerSeries (AdicCompletion (IsLocalRing.maximalIdeal B) B))
      (he : e.toRingHom.comp ((algebraMap C (AdicCompletion (IsLocalRing.maximalIdeal C) C)).comp φ) =
        PowerSeries.C.comp (algebraMap B (AdicCompletion (IsLocalRing.maximalIdeal B) B)))
      (z x v : C) (hz : e (algebraMap C (AdicCompletion (IsLocalRing.maximalIdeal C) C) z) = PowerSeries.X)
      (hzx : z = x * v) (hx : x ∈ IsLocalRing.maximalIdeal C), IsUnit v := by
    intro B C _ _ _ _ φ e he z x v hz hzx hx
    classical
    letI : Field (B ⧸ IsLocalRing.maximalIdeal B) := Ideal.Quotient.field _
    let ev : AdicCompletion (IsLocalRing.maximalIdeal B) B →+* B ⧸ IsLocalRing.maximalIdeal B :=
      (AdicCompletion.evalOneₐ (IsLocalRing.maximalIdeal B)).toRingHom
    let χ : C →+* B ⧸ IsLocalRing.maximalIdeal B := ev.comp (PowerSeries.constantCoeff.comp
      (e.toRingHom.comp (algebraMap C (AdicCompletion (IsLocalRing.maximalIdeal C) C))))
    have hχ : ∀ c, χ c = ev (PowerSeries.constantCoeff
        (e (algebraMap C (AdicCompletion (IsLocalRing.maximalIdeal C) C) c))) := fun c => rfl
    have hχφ : ∀ b, χ (φ b) = Ideal.Quotient.mk _ b := by
      intro b
      have h1 := RingHom.congr_fun he b
      simp only [RingHom.comp_apply, RingEquiv.toRingHom_eq_coe, RingHom.coe_coe] at h1
      rw [hχ, h1, PowerSeries.constantCoeff_C, AdicCompletion.algebraMap_apply]
      exact AdicCompletion.evalOneₐ_of _ _
    have hsurj : Function.Surjective χ := by
      intro q
      obtain ⟨b, rfl⟩ := Ideal.Quotient.mk_surjective q
      exact ⟨φ b, hχφ b⟩
    have hker : RingHom.ker χ = IsLocalRing.maximalIdeal C :=
      IsLocalRing.eq_maximalIdeal (RingHom.ker_isMaximal_of_surjective χ hsurj)
    have hχx : χ x = 0 := by rw [← RingHom.mem_ker, hker]; exact hx
    by_contra hv
    have hχv : χ v = 0 := by
      rw [← RingHom.mem_ker, hker]; exact (IsLocalRing.mem_maximalIdeal v).mpr hv
    have hFG : e (algebraMap C (AdicCompletion (IsLocalRing.maximalIdeal C) C) x) *
        e (algebraMap C (AdicCompletion (IsLocalRing.maximalIdeal C) C) v) = PowerSeries.X := by
      rw [← map_mul, ← map_mul, ← hzx, hz]
    have hc1 := congrArg (PowerSeries.coeff 1) hFG
    rw [PowerSeries.coeff_mul, Finset.Nat.sum_antidiagonal_succ, Finset.Nat.antidiagonal_zero,
      Finset.sum_singleton, PowerSeries.coeff_one_X] at hc1
    have h2 := congrArg ev hc1
    simp only [map_add, map_mul, map_one, PowerSeries.coeff_zero_eq_constantCoeff_apply] at h2
    have e1 : ev (PowerSeries.constantCoeff
        (e (algebraMap C (AdicCompletion (IsLocalRing.maximalIdeal C) C) x))) = 0 := hχx
    have e2 : ev (PowerSeries.constantCoeff
        (e (algebraMap C (AdicCompletion (IsLocalRing.maximalIdeal C) C) v))) = 0 := hχv
    rw [e1, e2] at h2
    simp at h2
  have s4 : ∀ {R A B : Type u} [CommRing R] [CommRing A] [CommRing B]
      (g : MvPolynomial (Fin 1) R →+* A) (θ : A →+* B) (a : R) (hg : g.Etale)
      (hbij : Function.Bijective (θ.comp (g.comp MvPolynomial.C))) (hFG : (RingHom.ker θ).FG)
      (hXa : θ (g (MvPolynomial.X 0)) = θ (g (MvPolynomial.C a))),
      ∃ r : A, θ r = 1 ∧ ∀ x ∈ RingHom.ker θ, ∃ y : A, r * x = y * g (MvPolynomial.X 0 - MvPolynomial.C a) := by
    intro R A B _ _ _ g θ a hg hbij hFG hXa
    have s2 : RingHom.ker θ ≤ RingHom.ker θ ^ 2 ⊔
          Ideal.span {g (MvPolynomial.X 0 - MvPolynomial.C a)} := by
      have ha := hXa.symm
      letI := g.toAlgebra
      haveI : Algebra.Etale (MvPolynomial (Fin 1) R) A := hg
      set e := RingEquiv.ofBijective _ hbij with he
      have he_apply : ∀ c, e c = θ (g (MvPolynomial.C c)) := fun c => rfl
      set J := RingHom.ker θ with hJ
      set I₀ := J ^ 2 ⊔ Ideal.span {g (MvPolynomial.X 0 - MvPolynomial.C a)} with hI₀
      let q := Ideal.Quotient.mk I₀
      let σ : A →+* A := (g.comp MvPolynomial.C).comp ((e.symm : B →+* R).comp θ)
      have hσ : ∀ x, σ x = g (MvPolynomial.C (e.symm (θ x))) := fun x => rfl
      have hσθ : ∀ x, θ (σ x) = θ x := by
        intro x
        rw [hσ, ← he_apply, e.apply_symm_apply]
      have hcomm : (q.comp σ).comp g = q.comp g := by
        apply MvPolynomial.ringHom_ext
        · intro c
          simp only [RingHom.comp_apply]
          rw [hσ, ← he_apply, e.symm_apply_apply]
        · intro i
          have hi : i = 0 := Subsingleton.elim _ _
          subst hi
          simp only [RingHom.comp_apply]
          rw [hσ, ← ha, ← he_apply, e.symm_apply_apply]
          refine (Ideal.Quotient.eq.mpr ?_).symm
          rw [← map_sub]
          exact Ideal.mem_sup_right (Ideal.subset_span rfl)
      let q₂ : A →ₐ[MvPolynomial (Fin 1) R] A ⧸ I₀ :=
        { q.comp σ with
          commutes' := fun P => by
            have := congrArg (fun f => f P) hcomm
            simp only [RingHom.comp_apply] at this
            exact this }
      have hq₂ : ∀ x, q₂ x = q (σ x) := fun x => rfl
      have hnil : IsNilpotent (J.map q) := by
        refine ⟨2, ?_⟩
        rw [← Ideal.map_pow]
        have h1 : Ideal.map q (J ^ 2) ≤ Ideal.map q I₀ := Ideal.map_mono le_sup_left
        have h2 : Ideal.map q I₀ = ⊥ := by
          rw [Ideal.map_eq_bot_iff_le_ker, Ideal.mk_ker]
        rw [h2] at h1
        exact le_bot_iff.mp h1
      have hext := Algebra.FormallyUnramified.ext (R := MvPolynomial (Fin 1) R) (J.map q) hnil
        (g₁ := Ideal.Quotient.mkₐ (MvPolynomial (Fin 1) R) I₀) (g₂ := q₂) (fun x => by
          rw [Ideal.Quotient.eq, hq₂, Ideal.Quotient.mkₐ_eq_mk]
          show q x - q (σ x) ∈ _
          rw [← map_sub]
          apply Ideal.mem_map_of_mem
          rw [RingHom.mem_ker, map_sub, hσθ, sub_self])
      intro x hx
      have h1 := congrArg (fun f => f x) hext
      simp only [Ideal.Quotient.mkₐ_eq_mk, hq₂, hσ] at h1
      rw [RingHom.mem_ker.mp hx, map_zero, map_zero, map_zero, map_zero] at h1
      exact Ideal.Quotient.eq_zero_iff_mem.mp h1
    have s3 : ∀ (J : Ideal A) (t : A), J.FG → J ≤ J ^ 2 ⊔ Ideal.span {t} →
        ∃ r : A, r - 1 ∈ J ∧ ∀ x ∈ J, ∃ y : A, r * x = y * t := by
      intro J t hFG hle
      set K : Ideal A := Ideal.span {t} with hK
      let π := Submodule.mkQ K
      let N : Submodule A (A ⧸ K) := Submodule.map π J
      have hNfg : N.FG := Submodule.FG.map π hFG
      have hNle : N ≤ J • N := by
        rintro _ ⟨x, hx, rfl⟩
        obtain ⟨j, hj, w, hw, hjw⟩ := Submodule.mem_sup.mp (hle hx)
        have hπ : π x = π j := by
          rw [← hjw, map_add]
          have : π w = 0 := (Submodule.Quotient.mk_eq_zero K).mpr hw
          rw [this, add_zero]
        show π x ∈ J • N
        rw [hπ]
        have hj' : j ∈ J • J := by rwa [Ideal.smul_eq_mul, ← pow_two]
        have := Submodule.mem_map_of_mem (f := π) hj'
        rwa [Submodule.map_smul''] at this
      obtain ⟨r, hr1, hr⟩ :=
        Submodule.exists_sub_one_mem_and_smul_eq_zero_of_fg_of_le_smul J N hNfg hNle
      refine ⟨r, hr1, fun x hx => ?_⟩
      have h1 : π (r * x) = 0 := by
        rw [← smul_eq_mul, LinearMap.map_smul]
        exact hr _ (Submodule.mem_map_of_mem hx)
      have h2 : r * x ∈ K := (Submodule.Quotient.mk_eq_zero K).mp h1
      obtain ⟨y, hy⟩ := Ideal.mem_span_singleton'.mp h2
      exact ⟨y, hy.symm⟩
    obtain ⟨r, hr1, hr⟩ := s3 (RingHom.ker θ) _ hFG s2
    refine ⟨r, ?_, hr⟩
    have := RingHom.mem_ker.mp hr1
    rw [map_sub, map_one, sub_eq_zero] at this
    exact this
  have s5 : ∀ {R A B : Type u} [CommRing R] [CommRing A] [CommRing B]
      (g : MvPolynomial (Fin 1) R →+* A) (θ : A →+* B) (hg : g.Etale)
      (hbij : Function.Bijective (θ.comp (g.comp MvPolynomial.C))), (RingHom.ker θ).FG := by
    intro R A B _ _ _ g θ hg hbij
    letI : Algebra R A := (g.comp MvPolynomial.C).toAlgebra
    letI : Algebra R B := (θ.comp (g.comp MvPolynomial.C)).toAlgebra
    let θₐ : A →ₐ[R] B := { θ with commutes' := fun _ => rfl }
    have hsurj : Function.Surjective θ := Function.Surjective.of_comp hbij.2
    have hgfp : g.FinitePresentation := by
      letI := g.toAlgebra
      haveI : Algebra.Etale (MvPolynomial (Fin 1) R) A := hg
      exact Algebra.Etale.finitePresentation
    have hCfp : (MvPolynomial.C : R →+* MvPolynomial (Fin 1) R).FinitePresentation := by
      rw [← MvPolynomial.algebraMap_eq]
      exact RingHom.finitePresentation_algebraMap.mpr inferInstance
    haveI : Algebra.FinitePresentation R A := RingHom.FinitePresentation.comp hgfp hCfp
    haveI : Algebra.FinitePresentation R B := RingHom.FinitePresentation.of_bijective hbij
    exact Algebra.FinitePresentation.ker_fG_of_surjective θₐ hsurj
  have s6 : ∀ {Y S : Scheme.{u}} [AlgebraicGeometry.IsIntegral S] (σ : S ⟶ Y) (p : S)
      (z : Y.presheaf.stalk (σ p))
      (hz : ∀ (y' : Y) (hy : y' ⤳ σ p), y' ∈ Set.range ⇑σ →
        (Y.presheaf.stalkSpecializes hy).hom z ∈ IsLocalRing.maximalIdeal (Y.presheaf.stalk y')),
      (σ.stalkMap p).hom z = 0 := by
    intro Y S _ σ p z hz
    have hη : genericPoint S ⤳ p := genericPoint_specializes p
    have hy : σ (genericPoint S) ⤳ σ p := hη.map σ.continuous
    have hm := hz _ hy ⟨_, rfl⟩
    have h1 : (σ.stalkMap (genericPoint S)).hom ((Y.presheaf.stalkSpecializes hy).hom z) = 0 := by
      by_contra hne
      have hu : IsUnit ((σ.stalkMap (genericPoint S)).hom ((Y.presheaf.stalkSpecializes hy).hom z)) :=
        isUnit_iff_ne_zero.mpr hne
      have := (isUnit_map_iff (σ.stalkMap (genericPoint S)).hom _).mp hu
      exact (IsLocalRing.mem_maximalIdeal _).mp hm this
    rw [Scheme.Hom.stalkSpecializes_stalkMap_apply σ _ _ hη] at h1
    obtain ⟨U', hpU', f, hf⟩ := TopCat.Presheaf.germ_exist S.presheaf ((σ.stalkMap p).hom z)
    rw [← hf] at h1 ⊢
    rw [TopCat.Presheaf.germ_stalkSpecializes_apply] at h1
    have hf0 : f = 0 := by
      apply germ_injective_of_isIntegral S (genericPoint S) (hη.mem_open U'.isOpen hpU')
      rw [h1, map_zero]
    rw [hf0, map_zero]
  have s7 : ∀ {X : Scheme.{u}} (V : X.Opens) (hV : IsAffineOpen V) (x : X) (hx : x ∈ V)
      (y : X.presheaf.stalk x),
      ∃ y₀ s₀ : Γ(X, V), IsUnit ((X.presheaf.germ V x hx).hom s₀) ∧
        y * (X.presheaf.germ V x hx).hom s₀ = (X.presheaf.germ V x hx).hom y₀ := by
    intro X V hV x hx y
    have hlocS := hV.isLocalization_stalk ⟨x, hx⟩
    letI : Algebra Γ(X, V) (X.presheaf.stalk x) :=
      TopCat.Presheaf.algebra_section_stalk X.presheaf (U := V) ⟨x, hx⟩
    have halg : ∀ s, algebraMap Γ(X, V) (X.presheaf.stalk x) s = (X.presheaf.germ V x hx).hom s :=
      fun s => rfl
    obtain ⟨⟨s₁, s₂⟩, hxy⟩ := @IsLocalization.mk'_surjective _ _
      (hV.primeIdealOf ⟨x, hx⟩).asIdeal.primeCompl (X.presheaf.stalk x) _ _ hlocS y
    have hspec := @IsLocalization.mk'_spec _ _ (hV.primeIdealOf ⟨x, hx⟩).asIdeal.primeCompl
      (X.presheaf.stalk x) _ _ hlocS s₁ s₂
    have hunit := @IsLocalization.map_units _ _ (hV.primeIdealOf ⟨x, hx⟩).asIdeal.primeCompl
      (X.presheaf.stalk x) _ _ hlocS s₂
    simp only at hxy
    rw [hxy, halg, halg] at hspec
    rw [halg] at hunit
    exact ⟨s₁, s₂, hunit, hspec⟩
  have s8 : ∀ {R O B Os : Type u} [CommRing R] [CommRing O] [IsLocalRing O] [CommRing B] [CommRing Os]
      [IsLocalRing Os] (germ : R →+* O) (θ : R →+* B) (germS : B →+* Os) (ψ : O →+* Os) [IsLocalHom ψ]
      (hcomm : ψ.comp germ = germS.comp θ) (hinj : Function.Injective germS)
      (hfrac : ∀ y : O, ∃ y₀ s₀ : R, IsUnit (germ s₀) ∧ y * germ s₀ = germ y₀) (x' r : R)
      (hr : θ r = 1) (hx' : θ x' = 0) (hker : ∀ x ∈ RingHom.ker θ, ∃ y : R, r * x = y * x')
      (z : O) (hz : ψ z = 0),
      ∃ c : O, z = germ x' * c ∧ germ x' ∈ IsLocalRing.maximalIdeal O := by
    intro R O B Os _ _ _ _ _ _ germ θ germS ψ _ hcomm hinj hfrac x' r hr hx' hker z hz
    have hc : ∀ a, ψ (germ a) = germS (θ a) := fun a => RingHom.congr_fun hcomm a
    obtain ⟨y₀, s₀, hs₀, hzs⟩ := hfrac z
    have hy₀ : θ y₀ = 0 := by
      apply hinj
      rw [map_zero, ← hc, ← hzs, map_mul, hz, zero_mul]
    obtain ⟨y, hy⟩ := hker y₀ (RingHom.mem_ker.mpr hy₀)
    have hru : IsUnit (germ r) := by
      apply isUnit_of_map_unit ψ
      rw [hc, hr, map_one]; exact isUnit_one
    obtain ⟨ur, hur⟩ := hru
    obtain ⟨us, hus⟩ := hs₀
    refine ⟨germ y * ↑ur⁻¹ * ↑us⁻¹, ?_, ?_⟩
    · have e1 : germ r * germ y₀ = germ y * germ x' := by rw [← map_mul, ← map_mul, hy]
      have h1 : z = germ y₀ * ↑us⁻¹ := by rw [← hzs, ← hus, Units.mul_inv_cancel_right]
      have h2 : germ y₀ = germ y * germ x' * ↑ur⁻¹ := by
        rw [← e1, ← hur, mul_comm (ur : O), Units.mul_inv_cancel_right]
      rw [h1, h2]; ring
    · rw [IsLocalRing.mem_maximalIdeal, mem_nonunits_iff]
      intro hu
      have := hu.map ψ
      rw [hc, hx', map_zero] at this
      exact not_isUnit_zero this
  have s10 : ∀ {Y S : Scheme.{u}} (h : Y ⟶ S) (σ : S ⟶ Y) (U : S.Opens) (V : Y.Opens)
      (hle : V ≤ h ⁻¹ᵁ U) (g : MvPolynomial (Fin 1) Γ(S, U) →+* Γ(Y, V)) (a : Γ(S, U)) (f : Γ(Y, V))
      (hV : IsAffineOpen V) (hg : g.Etale) (hgC : g.comp MvPolynomial.C = (h.appLE U V hle).hom)
      (hσ : (σ.app V).hom (g (MvPolynomial.X 0) - g (MvPolynomial.C a)) = 0),
      ∃ (hle' : Y.basicOpen f ≤ h ⁻¹ᵁ U)
        (g' : MvPolynomial (Fin 1) Γ(S, U) →+* Γ(Y, Y.basicOpen f)),
        g'.Etale ∧ g'.comp MvPolynomial.C = (h.appLE U (Y.basicOpen f) hle').hom ∧
        g' = (Y.presheaf.map (homOfLE (Y.basicOpen_le f)).op).hom.comp g ∧
        (σ.app (Y.basicOpen f)).hom (g' (MvPolynomial.X 0) - g' (MvPolynomial.C a)) = 0 := by
    intro Y S h σ U V hle g a f hV hg hgC hσ
    refine ⟨(Y.basicOpen_le f).trans hle,
      (Y.presheaf.map (homOfLE (Y.basicOpen_le f)).op).hom.comp g, ?_, ?_, rfl, ?_⟩
    · have hres : RingHom.Etale (Y.presheaf.map (homOfLE (Y.basicOpen_le f)).op).hom := by
        letI := Scheme.algebra_section_section_basicOpen f
        haveI := hV.isLocalization_basicOpen f
        have : Algebra.Etale Γ(Y, V) Γ(Y, Y.basicOpen f) := Algebra.Etale.of_isLocalizationAway f
        exact this
      exact RingHom.Etale.stableUnderComposition g _ hg hres
    · rw [RingHom.comp_assoc, hgC, ← CommRingCat.hom_comp, Scheme.Hom.appLE_map]
    · have hn := congrArg (fun φ => φ.hom (g (MvPolynomial.X 0) - g (MvPolynomial.C a)))
        (σ.naturality (homOfLE (Y.basicOpen_le f)).op)
      simp only [CommRingCat.hom_comp, RingHom.comp_apply] at hn
      rw [RingHom.comp_apply, RingHom.comp_apply, ← map_sub, hn, hσ, map_zero]
  have s9 : ∀ {X : Scheme.{u}} (V : X.Opens) (hV : IsAffineOpen V) (x : X) (hx : x ∈ V) (k : ℕ)
      (c : Fin k → Γ(X, V)) (hc : ∀ l, IsUnit ((X.presheaf.germ V x hx).hom (c l))) (m : ℕ)
      (u : Fin m → (X.presheaf.stalk x)ˣ) (v : (X.presheaf.stalk x)ˣ),
      ∃ (f : Γ(X, V)) (hxf : x ∈ X.basicOpen f) (vt : Γ(X, X.basicOpen f)ˣ)
        (ut : Fin m → Γ(X, X.basicOpen f)ˣ),
        (∀ l, IsUnit ((X.presheaf.map (homOfLE (X.basicOpen_le f)).op).hom (c l))) ∧
        (X.presheaf.germ (X.basicOpen f) x hxf).hom (vt : Γ(X, X.basicOpen f)) =
          (v : X.presheaf.stalk x) ∧
        ∀ i, (X.presheaf.germ (X.basicOpen f) x hxf).hom (ut i : Γ(X, X.basicOpen f)) =
          (u i : X.presheaf.stalk x) := by
    intro X V hV x hx k c hc m u v
    classical
    let μ : Option (Fin m) → (X.presheaf.stalk x)ˣ := fun o => o.elim v u
    choose y0 s0 hs0 hy0 using fun o => s7 V hV x hx ((μ o : X.presheaf.stalk x))
    have hyu : ∀ o, IsUnit ((X.presheaf.germ V x hx).hom (y0 o)) := fun o => by
      rw [← hy0 o]; exact (μ o).isUnit.mul (hs0 o)
    set f : Γ(X, V) := (∏ l, c l) * ∏ o, (y0 o * s0 o) with hfdef
    have hfu : IsUnit ((X.presheaf.germ V x hx).hom f) := by
      rw [hfdef, map_mul, map_prod, map_prod]
      refine IsUnit.mul ?_ ?_
      · exact Finset.prod_induction _ IsUnit (fun a b ha hb => ha.mul hb) isUnit_one
          (fun l _ => hc l)
      · refine Finset.prod_induction _ IsUnit (fun a b ha hb => ha.mul hb) isUnit_one
          (fun o _ => ?_)
        rw [map_mul]; exact (hyu o).mul (hs0 o)
    have hxf : x ∈ X.basicOpen f := (Scheme.mem_basicOpen X f x hx).mpr hfu
    have hresf : IsUnit ((X.presheaf.map (homOfLE (X.basicOpen_le f)).op).hom f) := by
      letI := Scheme.algebra_section_section_basicOpen f
      haveI := hV.isLocalization_basicOpen f
      exact IsLocalization.Away.algebraMap_isUnit f
    have hdvd : ∀ d, d ∣ f → IsUnit ((X.presheaf.map (homOfLE (X.basicOpen_le f)).op).hom d) :=
      fun d hd => isUnit_of_dvd_unit (map_dvd _ hd) hresf
    have hcd : ∀ l, c l ∣ f := fun l =>
      dvd_mul_of_dvd_left (Finset.dvd_prod_of_mem c (Finset.mem_univ l)) _
    have hyd : ∀ o, y0 o ∣ f := fun o => dvd_mul_of_dvd_right
      (dvd_trans (dvd_mul_right (y0 o) (s0 o))
        (Finset.dvd_prod_of_mem (fun o => y0 o * s0 o) (Finset.mem_univ o))) _
    have hsd : ∀ o, s0 o ∣ f := fun o => dvd_mul_of_dvd_right
      (dvd_trans (dvd_mul_left (s0 o) (y0 o))
        (Finset.dvd_prod_of_mem (fun o => y0 o * s0 o) (Finset.mem_univ o))) _
    let W : Option (Fin m) → Γ(X, X.basicOpen f)ˣ := fun o =>
      (hdvd _ (hyd o)).unit * (hdvd _ (hsd o)).unit⁻¹
    have hW : ∀ o, (X.presheaf.germ (X.basicOpen f) x hxf).hom (W o : Γ(X, X.basicOpen f)) =
        (μ o : X.presheaf.stalk x) := by
      intro o
      have hG : ∀ s : Γ(X, V), (X.presheaf.germ (X.basicOpen f) x hxf).hom
          ((X.presheaf.map (homOfLE (X.basicOpen_le f)).op).hom s) =
          (X.presheaf.germ V x hx).hom s := fun s =>
        TopCat.Presheaf.germ_res_apply _ _ _ _ _
      have key : (X.presheaf.germ (X.basicOpen f) x hxf).hom (W o : Γ(X, X.basicOpen f)) *
          (X.presheaf.germ V x hx).hom (s0 o) =
          (μ o : X.presheaf.stalk x) * (X.presheaf.germ V x hx).hom (s0 o) := by
        rw [hy0 o, ← hG (s0 o), ← map_mul]
        simp only [W, Units.val_mul, IsUnit.unit_spec]
        rw [mul_assoc, IsUnit.val_inv_mul, mul_one, hG]
      exact (hs0 o).mul_left_inj.mp key
    refine ⟨f, hxf, W none, fun i => W (some i), fun l => hdvd _ (hcd l), hW none,
      fun i => hW (some i)⟩
  have chart_open : ∀ {Z S : Scheme.{u}} (uu : Z ⟶ S) (W : Z.Opens), SmoothOfRelativeDimension 1 (W.ι ≫ uu) → ∀ z ∈ W, ∃ (U : S.Opens) (V : Z.Opens) (hle : V ≤ uu ⁻¹ᵁ U) (g : MvPolynomial (Fin 1) Γ(S, U) →+* Γ(Z, V)), IsAffineOpen U ∧ IsAffineOpen V ∧ z ∈ V ∧ g.Etale ∧ g.comp MvPolynomial.C = (uu.appLE U V hle).hom := by
    intro Z S uu W hsm z hz
    have := hsm
    obtain ⟨U₀, hU₀, V₀, hV₀, hzV₀, e, hstd⟩ :=
      SmoothOfRelativeDimension.exists_isStandardSmoothOfRelativeDimension (n := 1) (f := W.ι ≫ uu)
        (⟨z, hz⟩ : W.toScheme)
    obtain ⟨g₀, hg₀C, hg₀⟩ := hstd.exists_etale_mvPolynomial
    have hle : W.ι ''ᵁ V₀ ≤ uu ⁻¹ᵁ U₀ := by
      intro y hy
      have hy' : y ∈ (W.ι ''ᵁ V₀ : Set Z) := hy
      rw [Scheme.Hom.coe_image] at hy'
      obtain ⟨x, hx, rfl⟩ := hy'
      have h1 : x ∈ (W.ι ≫ uu) ⁻¹ᵁ U₀ := e hx
      rw [Scheme.Hom.mem_preimage, Scheme.Hom.comp_apply] at h1
      exact h1
    have key : (W.ι ≫ uu).appLE U₀ V₀ e = uu.appLE U₀ (W.ι ''ᵁ V₀) hle := by
      rw [Scheme.Hom.comp_appLE]
      have h := Scheme.Opens.ι_appLE W (uu ⁻¹ᵁ U₀) V₀ (by exact e)
      rw [h, Scheme.Hom.appLE]
      rfl
    refine ⟨U₀, W.ι ''ᵁ V₀, hle, g₀, hU₀, hV₀.image_of_isOpenImmersion W.ι, ?_, hg₀, ?_⟩
    · have h2 := (Scheme.Hom.apply_mem_image_iff W.ι).mpr hzV₀
      simpa using h2
    · exact hg₀C.trans (congrArg CommRingCat.Hom.hom key)
  have chart_shrink : ∀ {Z S : Scheme.{u}} (uu : Z ⟶ S) (τ : S ⟶ Z), τ ≫ uu = 𝟙 S → ∀ (U₀ : S.Opens) (V₁ : Z.Opens) (e₁ : V₁ ≤ uu ⁻¹ᵁ U₀) (g₁ : MvPolynomial (Fin 1) Γ(S, U₀) →+* Γ(Z, V₁)), IsAffineOpen U₀ → IsAffineOpen V₁ → g₁.Etale → g₁.comp MvPolynomial.C = (uu.appLE U₀ V₁ e₁).hom → ∀ p : S, τ p ∈ V₁ → ∃ (U : S.Opens) (V : Z.Opens) (hle : V ≤ uu ⁻¹ᵁ U) (g : MvPolynomial (Fin 1) Γ(S, U) →+* Γ(Z, V)), IsAffineOpen U ∧ IsAffineOpen V ∧ τ p ∈ V ∧ g.Etale ∧ g.comp MvPolynomial.C = (uu.appLE U V hle).hom ∧ Function.Bijective ((τ.app V).hom.comp (uu.appLE U V hle).hom) := by
    intro Z S uu τ h U₀ V₁ e₁ g₁ hU₀ hV₁ hg₁ hg₁C p hp
    have hpt : ∀ x : S, uu (τ x) = x := by
      intro x
      rw [← Scheme.Hom.comp_apply, h]
      rfl
    have hpU₀ : p ∈ U₀ := by
      have h1 : τ p ∈ uu ⁻¹ᵁ U₀ := e₁ hp
      rw [Scheme.Hom.mem_preimage, hpt] at h1
      exact h1
    have hpτ : p ∈ τ ⁻¹ᵁ V₁ := hp
    obtain ⟨c, hc, hpc⟩ := hU₀.exists_basicOpen_le (V := τ ⁻¹ᵁ V₁) ⟨p, hpτ⟩ hpU₀
    have hVeq : Z.basicOpen ((uu.appLE U₀ V₁ e₁).hom c) = V₁ ⊓ uu ⁻¹ᵁ S.basicOpen c :=
      Scheme.basicOpen_appLE uu V₁ U₀ e₁ c
    set V := Z.basicOpen ((uu.appLE U₀ V₁ e₁).hom c) with hVdef
    have hle : V ≤ uu ⁻¹ᵁ S.basicOpen c := by rw [hVeq]; exact inf_le_right
    have hpV : τ p ∈ V := by
      rw [hVeq]
      refine ⟨hp, ?_⟩
      show uu (τ p) ∈ S.basicOpen c
      rw [hpt]; exact hpc
    have hτV : τ ⁻¹ᵁ V = S.basicOpen c := by
      ext x
      rw [hVeq]
      constructor
      · rintro ⟨_, h2⟩
        have h3 : uu (τ x) ∈ S.basicOpen c := h2
        rw [hpt] at h3
        exact h3
      · intro hx
        refine ⟨hc hx, ?_⟩
        show uu (τ x) ∈ S.basicOpen c
        rw [hpt]; exact hx
    have hbij : Function.Bijective ((τ.app V).hom.comp (uu.appLE (S.basicOpen c) V hle).hom) := by
      have key : ∀ (f : S ⟶ S) (W : S.Opens) (e : W ≤ f ⁻¹ᵁ S.basicOpen c), f = 𝟙 S →
          W = S.basicOpen c → Function.Bijective (f.appLE (S.basicOpen c) W e).hom := by
        intro f W e hf hW
        subst hf
        subst hW
        have h1 : (𝟙 S : S ⟶ S).appLE (S.basicOpen c) (S.basicOpen c) e = 𝟙 _ := by
          rw [Scheme.Hom.appLE]
          erw [Scheme.Hom.id_app, Category.id_comp]
          exact S.presheaf.map_id (Opposite.op (S.basicOpen c))
        rw [h1, CommRingCat.hom_id]
        exact Function.bijective_id
      rw [← CommRingCat.hom_comp, Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_comp_appLE]
      exact key _ _ _ h hτV
    haveI hlocS : IsLocalization.Away c Γ(S, S.basicOpen c) := hU₀.isLocalization_basicOpen c
    haveI hlocZ : IsLocalization.Away ((uu.appLE U₀ V₁ e₁).hom c) Γ(Z, V) :=
      hV₁.isLocalization_basicOpen _
    letI : Algebra (MvPolynomial (Fin 1) Γ(S, U₀)) (MvPolynomial (Fin 1) Γ(S, S.basicOpen c)) :=
      MvPolynomial.algebraMvPolynomial
    let M : Submonoid (MvPolynomial (Fin 1) Γ(S, U₀)) :=
      Submonoid.map MvPolynomial.C (Submonoid.powers c)
    haveI hM : IsLocalization M (MvPolynomial (Fin 1) Γ(S, S.basicOpen c)) :=
      MvPolynomial.isLocalization (Submonoid.powers c) _
    have hMmap : M.map g₁ = Submonoid.powers ((uu.appLE U₀ V₁ e₁).hom c) := by
      simp only [M, Submonoid.map_powers]
      rw [← hg₁C]
      rfl
    haveI hM2 : IsLocalization (M.map g₁) Γ(Z, V) := by rw [hMmap]; exact hlocZ
    let g : MvPolynomial (Fin 1) Γ(S, S.basicOpen c) →+* Γ(Z, V) :=
      IsLocalization.map (M := M) (T := M.map g₁) Γ(Z, V) g₁ (Submonoid.le_comap_map M)
    have hgEt : g.Etale :=
      RingHom.Etale.isStableUnderBaseChange.localizationPreserves g₁ M _ _ hg₁
    have hgC : g.comp MvPolynomial.C = (uu.appLE (S.basicOpen c) V hle).hom := by
      apply IsLocalization.ringHom_ext (Submonoid.powers c)
      ext b
      simp only [RingHom.comp_apply]
      have e1 : MvPolynomial.C (algebraMap Γ(S, U₀) Γ(S, S.basicOpen c) b) =
          algebraMap (MvPolynomial (Fin 1) Γ(S, U₀)) (MvPolynomial (Fin 1) Γ(S, S.basicOpen c))
            (MvPolynomial.C b) := by
        rw [MvPolynomial.algebraMap_def, MvPolynomial.map_C]
      rw [e1]
      show IsLocalization.map (M := M) (T := M.map g₁) Γ(Z, V) g₁ (Submonoid.le_comap_map M)
        (algebraMap _ _ (MvPolynomial.C b)) = _
      rw [IsLocalization.map_eq]
      have e2 : g₁ (MvPolynomial.C b) = (uu.appLE U₀ V₁ e₁).hom b := by rw [← hg₁C]; rfl
      rw [e2]
      have e3 : uu.appLE U₀ V₁ e₁ ≫ Z.presheaf.map (homOfLE (Z.basicOpen_le _)).op =
          S.presheaf.map (homOfLE (S.basicOpen_le c)).op ≫ uu.appLE (S.basicOpen c) V hle := by
        rw [Scheme.Hom.appLE_map, Scheme.Hom.map_appLE]
      exact congrArg (fun φ => φ.hom b) e3
    exact ⟨S.basicOpen c, V, hle, g, hU₀.basicOpen c, hV₁.basicOpen _, hpV, hgEt, hgC, hbij⟩
  have germLE : ∀ {X Z : Scheme.{u}} (f : X ⟶ Z) (U' : Z.Opens) (V' : X.Opens)
      (hle' : V' ≤ f ⁻¹ᵁ U') (x : X) (hx : x ∈ V') (hfx : f x ∈ U') (ρ : Γ(Z, U')),
      (X.presheaf.germ V' x hx).hom ((f.appLE U' V' hle').hom ρ) =
        (f.stalkMap x).hom ((Z.presheaf.germ U' (f x) hfx).hom ρ) := by
    intro X Z f U' V' hle' x hx hfx ρ
    rw [Scheme.Hom.germ_stalkMap_apply]
    simp only [Scheme.Hom.appLE, CommRingCat.hom_comp, RingHom.comp_apply]
    rw [TopCat.Presheaf.germ_res_apply]
  obtain ⟨U₀, V₁, e₁, g₁, hU₀, hV₁, hpV₁, hg₁, hg₁C⟩ := chart_open h W₀ hW₀sm (σ p) hW₀
  obtain ⟨U, V, hle, g, hU, hV, hpV, hg, hgC, hbij⟩ :=
    chart_shrink h σ hσ U₀ V₁ e₁ g₁ hU₀ hV₁ hg₁ hg₁C p hpV₁
  have hq : h (σ p) ∈ U := hle hpV
  obtain ⟨a, ha⟩ := hbij.2 ((σ.app V).hom (g (MvPolynomial.X 0)))
  have hgCa : g (MvPolynomial.C a) = (h.appLE U V hle).hom a := by
    rw [← hgC]; rfl
  have hXa : (σ.app V).hom (g (MvPolynomial.X 0)) = (σ.app V).hom (g (MvPolynomial.C a)) := by
    rw [hgCa]; exact ha.symm
  have hθx : (σ.app V).hom (g (MvPolynomial.X 0) - g (MvPolynomial.C a)) = 0 := by
    rw [map_sub, hXa, sub_self]
  have hbij' : Function.Bijective ((σ.app V).hom.comp (g.comp MvPolynomial.C)) := by
    rw [hgC]; exact hbij
  have hFG := s5 g (σ.app V).hom hg hbij'
  obtain ⟨r0, hr1, hker⟩ := s4 g (σ.app V).hom a hg hbij' hFG hXa
  have hker' : ∀ x ∈ RingHom.ker (σ.app V).hom, ∃ y : Γ(Y₂, V),
      r0 * x = y * (g (MvPolynomial.X 0) - g (MvPolynomial.C a)) := by
    intro x hx
    obtain ⟨y, hy⟩ := hker x hx
    exact ⟨y, by rw [hy, map_sub]⟩
  have hψz := s6 σ p z (fun y' hy hmem => (hz y' hy).mp hmem)
  have hpV' : p ∈ σ ⁻¹ᵁ V := hpV
  obtain ⟨c, hzc, hxm⟩ := s8 (Y₂.presheaf.germ V (σ p) hpV).hom (σ.app V).hom
    (S₂.presheaf.germ (σ ⁻¹ᵁ V) p hpV').hom (σ.stalkMap p).hom
    (RingHom.ext fun x => Scheme.Hom.germ_stalkMap_apply σ V p hpV x)
    (germ_injective_of_isIntegral S₂ p hpV') (fun y => s7 V hV (σ p) hpV y)
    _ r0 hr1 hθx hker' z hψz
  have hcu : IsUnit c := s3 _ _ (h.stalkMap (σ p)).hom e hecomp z _ c hez hzc hxm
  choose tt ss hssu htt using fun l => s7 U hU (h (σ p)) hq (t l)
  have hcl : ∀ l, IsUnit ((Y₂.presheaf.germ V (σ p) hpV).hom ((h.appLE U V hle).hom (ss l))) := by
    intro l
    rw [germLE h U V hle (σ p) hpV hq]
    exact (hssu l).map _
  obtain ⟨f, hxf, vt, ut, hcres, hvt, hut⟩ :=
    s9 V hV (σ p) hpV n (fun l => (h.appLE U V hle).hom (ss l)) hcl r w hcu.unit
  obtain ⟨hle', g', hg', hg'C, hg'def, hσ'⟩ := s10 h σ U V hle g a f hV hg hgC hθx
  refine ⟨U, Y₂.basicOpen f, hle', hxf, hq, g', a, vt, tt, ss, ut, hU, hV.basicOpen f, hg', hg'C,
    hσ', ?_, fun l => (htt l).symm, ?_, hut⟩
  · rw [map_mul, hvt, hg'def, RingHom.comp_apply, RingHom.comp_apply, ← map_sub,
      TopCat.Presheaf.germ_res_apply, IsUnit.unit_spec, hzc, mul_comm]
  · intro l
    have e3 : (h.appLE U (Y₂.basicOpen f) hle').hom (ss l) =
        (Y₂.presheaf.map (homOfLE (Y₂.basicOpen_le f)).op).hom ((h.appLE U V hle).hom (ss l)) := by
      rw [← Scheme.Hom.appLE_map h hle (homOfLE (Y₂.basicOpen_le f)).op]; rfl
    rw [e3]; exact hcres l

theorem wcpa_dj_gslc_spec_smooth : ∀ {Y S : Scheme.{u}} (h : Y ⟶ S) (U : S.Opens) (V : Y.Opens)
    (hU : IsAffineOpen U) (hV : IsAffineOpen V) (hle : V ≤ h ⁻¹ᵁ U) (B : CommRingCat.{u})
    (β : Γ(Y, V) ⟶ B),
    RingHom.IsStandardSmoothOfRelativeDimension 1 (β.hom.comp (h.appLE U V hle).hom) →
    SmoothOfRelativeDimension 1 (Spec.map β ≫ hV.fromSpec ≫ h) ∧
      SmoothOfRelativeDimension 1 (Spec.map (h.appLE U V hle ≫ β)) :=
by
  intro Y S h U V hU hV hle B β hsm
  have hsm' : RingHom.IsStandardSmoothOfRelativeDimension 1 (h.appLE U V hle ≫ β).hom := by
    rw [CommRingCat.hom_comp]; exact hsm
  have hloc : RingHom.Locally (RingHom.IsStandardSmoothOfRelativeDimension 1)
      (h.appLE U V hle ≫ β).hom :=
    RingHom.locally_of RingHom.isStandardSmoothOfRelativeDimension_respectsIso _ hsm'
  have hB : SmoothOfRelativeDimension 1 (Spec.map (h.appLE U V hle ≫ β)) :=
    (HasRingHomProperty.Spec_iff (P := @SmoothOfRelativeDimension 1)
      (Q := RingHom.Locally (RingHom.IsStandardSmoothOfRelativeDimension 1))).mpr hloc
  have s4 : Spec.map β ≫ hV.fromSpec ≫ h = Spec.map (h.appLE U V hle ≫ β) ≫ hU.fromSpec := by
    rw [← IsAffineOpen.SpecMap_appLE_fromSpec h hU hV hle, ← Category.assoc, ← Spec.map_comp]
  haveI := hB
  haveI : IsOpenImmersion hU.fromSpec := hU.isOpenImmersion_fromSpec
  have s5 : SmoothOfRelativeDimension (1 + 0)
      (Spec.map (h.appLE U V hle ≫ β) ≫ hU.fromSpec) :=
    smoothOfRelativeDimension_comp 1 0 _ _
  refine ⟨?_, hB⟩
  rw [s4]
  exact s5

theorem wcpa_dj_gsl_chart : ∀ {Y₂ S₂ : Scheme.{u}} [AlgebraicGeometry.IsIntegral Y₂]
    [AlgebraicGeometry.IsIntegral S₂] (h : Y₂ ⟶ S₂), Flat h → LocallyOfFiniteType h →
    (∀ s : S₂, IsRegularLocalRing (S₂.presheaf.stalk s)) →
    ∀ (σ : S₂ ⟶ Y₂) (p : S₂), σ ≫ h = 𝟙 S₂ →
    ∀ (W₀ : Y₂.Opens), σ p ∈ W₀ → SmoothOfRelativeDimension 1 (W₀.ι ≫ h) →
    ∀ (z : Y₂.presheaf.stalk (σ p)),
      (∀ (y' : Y₂) (hy : y' ⤳ σ p), y' ∈ Set.range ⇑σ ↔
        (Y₂.presheaf.stalkSpecializes hy).hom z ∈ IsLocalRing.maximalIdeal (Y₂.presheaf.stalk y')) →
    ∀ (e : AdicCompletion (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk (σ p)))
        (Y₂.presheaf.stalk (σ p)) ≃+*
        PowerSeries (AdicCompletion (IsLocalRing.maximalIdeal (S₂.presheaf.stalk (h (σ p))))
          (S₂.presheaf.stalk (h (σ p))))),
      e.toRingHom.comp ((algebraMap (Y₂.presheaf.stalk (σ p)) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk (σ p))) (Y₂.presheaf.stalk (σ p)))).comp
          (h.stalkMap (σ p)).hom) =
        PowerSeries.C.comp (algebraMap (S₂.presheaf.stalk (h (σ p)))
          (AdicCompletion (IsLocalRing.maximalIdeal (S₂.presheaf.stalk (h (σ p))))
            (S₂.presheaf.stalk (h (σ p))))) →
      e (algebraMap (Y₂.presheaf.stalk (σ p)) (AdicCompletion
          (IsLocalRing.maximalIdeal (Y₂.presheaf.stalk (σ p))) (Y₂.presheaf.stalk (σ p))) z) =
        PowerSeries.X →
    ∀ (n : ℕ) (t : Fin n → S₂.presheaf.stalk (h (σ p))),
      (n : WithBot ℕ∞) = ringKrullDim (S₂.presheaf.stalk (h (σ p))) →
      Ideal.span (Set.range t) = IsLocalRing.maximalIdeal (S₂.presheaf.stalk (h (σ p))) →
    ∀ (ℓ : Fin n → ℕ) (r : ℕ) (w : Fin r → (Y₂.presheaf.stalk (σ p))ˣ),
    ∃ (E : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral E) (e : E ⟶ Y₂) (c' : E)
      (hc : e c' = σ p) (U : Γ(E, ⊤)) (T : Fin n → Γ(E, ⊤)) (Wu : Fin r → (Γ(E, ⊤))ˣ)
      (E₁ : E.Opens) (V : S₂.Opens) (hp : p ∈ V) (s₀ : V.toScheme ⟶ E),
      SmoothOfRelativeDimension 1 (e ≫ h) ∧ (∀ x : E, IsIntegrallyClosed (E.presheaf.stalk x)) ∧
      E₁ ≠ ⊥ ∧ IsOpenImmersion (E₁.ι ≫ e) ∧
      (∀ l, (E.presheaf.germ ⊤ c' trivial).hom (T l) =
        wcpaDjGslTr e c' (σ p) hc ((h.stalkMap (σ p)).hom (t l))) ∧
      (∀ i, (E.presheaf.germ ⊤ c' trivial).hom (Wu i : Γ(E, ⊤)) =
        wcpaDjGslTr e c' (σ p) hc (w i : Y₂.presheaf.stalk (σ p))) ∧
      wcpaDjGslTr e c' (σ p) hc z = (E.presheaf.germ ⊤ c' trivial).hom U *
        ∏ l, (E.presheaf.germ ⊤ c' trivial).hom (T l) ^ ℓ l ∧
      (∀ x : E.presheaf.stalk c', ∃ F₁ F₂ : Polynomial (Y₂.presheaf.stalk (e c')),
        IsUnit (Polynomial.eval₂ (e.stalkMap c').hom ((E.presheaf.germ ⊤ c' trivial).hom U) F₂) ∧
        x * Polynomial.eval₂ (e.stalkMap c').hom ((E.presheaf.germ ⊤ c' trivial).hom U) F₂ =
          Polynomial.eval₂ (e.stalkMap c').hom ((E.presheaf.germ ⊤ c' trivial).hom U) F₁) ∧
      s₀ ≫ e = V.ι ≫ σ ∧ s₀ ⟨p, hp⟩ = c' :=
by
  intro Y₂ S₂ _ _ h _hflat _hlft hreg σ p hσ W₀ hW₀ hW₀sm z hz e hecomp hez n t hn ht ℓ r w

  have germLE : ∀ {X Z : Scheme.{u}} (f : X ⟶ Z) (U' : Z.Opens) (V' : X.Opens)
      (hle' : V' ≤ f ⁻¹ᵁ U') (x : X) (hx : x ∈ V') (hfx : f x ∈ U') (ρ : Γ(Z, U')),
      (X.presheaf.germ V' x hx).hom ((f.appLE U' V' hle').hom ρ) =
        (f.stalkMap x).hom ((Z.presheaf.germ U' (f x) hfx).hom ρ) := by
    intro X Z f U' V' hle' x hx hfx ρ
    rw [Scheme.Hom.germ_stalkMap_apply]
    simp only [Scheme.Hom.appLE, CommRingCat.hom_comp, RingHom.comp_apply]
    rw [TopCat.Presheaf.germ_res_apply]

  obtain ⟨U, V, hle, hpV, hq, g, a, vt, tt, ss, wt, hU, hV, hget, hgC, hθx, hzv, htt, hss, hwt⟩ :=
    wcpa_dj_gslc_local_data h σ p hσ W₀ hW₀ hW₀sm z hz e hecomp hez n t r w
  haveI : Nonempty U := ⟨⟨_, hq⟩⟩
  haveI : Nonempty V := ⟨⟨_, hpV⟩⟩
  haveI : IsRegularLocalRing (S₂.presheaf.stalk (h (σ p))) := hreg _

  have ht0 := wcpa_dj_gslc_gen_ne_zero (S₂.presheaf.stalk (h (σ p))) n t hn ht
  have hssq : ∀ l, IsUnit ((S₂.presheaf.germ U (h (σ p)) hq).hom (ss l)) := by
    intro l
    apply isUnit_of_map_unit (h.stalkMap (σ p)).hom
    rw [← germLE h U V hle (σ p) hpV hq]
    exact (hss l).map _
  have htt0 : ∀ l, tt l ≠ 0 := by
    intro l h0
    apply ht0 l
    have h1 := htt l
    rw [h0, map_zero] at h1
    exact (hssq l).mul_left_eq_zero.mp h1.symm
  obtain ⟨τ, hτdef⟩ : ∃ τ : Γ(S₂, U), τ = ∏ l, tt l ^ ℓ l := ⟨_, rfl⟩
  have hτ0 : τ ≠ 0 := by
    rw [hτdef]
    exact Finset.prod_ne_zero_iff.mpr (fun l _ => pow_ne_zero _ (htt0 l))

  obtain ⟨hsm, hBdom, hβτ, hloc⟩ := wcpa_dj_gslc_tensor_chart _ _ g a τ hget hτ0
  haveI := hBdom
  obtain ⟨β, hβ⟩ : ∃ β : Γ(Y₂, V) ⟶ CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ),
      β = CommRingCat.ofHom ((Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)).comp Polynomial.C) :=
    ⟨_, rfl⟩
  have hβapp : ∀ ρ, β.hom ρ = Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ) (Polynomial.C ρ) := by
    intro ρ; subst hβ; rfl

  have hsm' : RingHom.IsStandardSmoothOfRelativeDimension 1 (β.hom.comp (h.appLE U V hle).hom) := by
    rw [hβ, CommRingCat.hom_ofHom, ← hgC]; exact hsm
  obtain ⟨hG1, hSpecA⟩ := wcpa_dj_gslc_spec_smooth h U V hU hV hle _ β hsm'

  haveI : IsIntegrallyClosed Γ(S₂, U) := wcpa_dj_gslc_affine_normal hreg U hU ⟨⟨_, hq⟩⟩
  have hG2 : ∀ x : Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ)),
      IsIntegrallyClosed ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸
        wcpaDjGslcIdeal g a τ))).presheaf.stalk x) := fun x =>
    (@wcpa_dj_lus_cvs_ct_fcn_smooth_stalk_normal _ _ _ _ _ (Spec.map (h.appLE U V hle ≫ β)) 1
      hSpecA x).2

  obtain ⟨Vs', hVs', hpVs', hVs'le⟩ : ∃ Vs' : S₂.Opens, IsAffineOpen Vs' ∧ p ∈ Vs' ∧
      Vs' ≤ σ ⁻¹ᵁ V := by
    obtain ⟨Vs', hVs'aff, hpVs', hVs'le⟩ := (TopologicalSpace.Opens.isBasis_iff_nbhd.mp
      (Scheme.isBasis_affineOpens S₂)) ((Scheme.Hom.mem_preimage σ).mpr hpV)
    exact ⟨Vs', hVs'aff, hpVs', hVs'le⟩
  have hθ'x : (σ.appLE V Vs' hVs'le).hom (g (MvPolynomial.X 0) - g (MvPolynomial.C a)) = 0 := by
    simp only [Scheme.Hom.appLE, CommRingCat.hom_comp, RingHom.comp_apply]
    rw [hθx, map_zero]
  obtain ⟨ψ, hψ⟩ : ∃ ψ : (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ) →+* Γ(S₂, Vs'),
      ψ.comp ((Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)).comp Polynomial.C) =
        (σ.appLE V Vs' hVs'le).hom := by
    refine ⟨Ideal.Quotient.lift (wcpaDjGslcIdeal g a τ)
      (Polynomial.eval₂RingHom (σ.appLE V Vs' hVs'le).hom 0) ?_, ?_⟩
    · intro q hq'
      obtain ⟨c, rfl⟩ := Ideal.mem_span_singleton'.mp hq'
      rw [map_mul]
      simp only [Polynomial.coe_eval₂RingHom, Polynomial.eval₂_sub, Polynomial.eval₂_mul,
        Polynomial.eval₂_C, Polynomial.eval₂_X, mul_zero, zero_sub, hθ'x, neg_zero]
    · ext ρ
      simp
  obtain ⟨s₀, hs₀⟩ : ∃ s₀ : Vs'.toScheme ⟶
      Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ)),
      s₀ ≫ (Spec.map β ≫ hV.fromSpec) = Vs'.ι ≫ σ := by
    refine ⟨hVs'.isoSpec.hom ≫ Spec.map (CommRingCat.ofHom ψ), ?_⟩
    have hβψ : β ≫ CommRingCat.ofHom ψ = σ.appLE V Vs' hVs'le := by
      subst hβ
      exact CommRingCat.hom_ext hψ
    rw [Category.assoc, ← Category.assoc (Spec.map (CommRingCat.ofHom ψ)), ← Spec.map_comp, hβψ,
      IsAffineOpen.SpecMap_appLE_fromSpec σ hV hVs' hVs'le, ← hVs'.isoSpec_inv_ι, Category.assoc,
      Iso.hom_inv_id_assoc]
  obtain ⟨c', hc'⟩ : ∃ c', c' = s₀ ⟨p, hpVs'⟩ := ⟨_, rfl⟩
  have hc : (Spec.map β ≫ hV.fromSpec) c' = σ p := by
    have h1 : (s₀ ≫ (Spec.map β ≫ hV.fromSpec)) ⟨p, hpVs'⟩ = (Vs'.ι ≫ σ) ⟨p, hpVs'⟩ := by
      rw [hs₀]
    rw [hc']
    simp only [Scheme.Hom.comp_apply, Scheme.Opens.ι_apply] at h1 ⊢
    exact h1

  have hmem : ∀ x, (Spec.map β ≫ hV.fromSpec) x ∈ V := by
    intro x
    rw [Scheme.Hom.comp_apply]
    show _ ∈ (V : Set Y₂)
    rw [← hV.range_fromSpec]
    exact Set.mem_range_self _
  have hT : (⊤ : (Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).Opens) ≤
      (Spec.map β ≫ hV.fromSpec) ⁻¹ᵁ V := fun x _ => hmem x
  have happ : (Spec.map β ≫ hV.fromSpec).appLE V ⊤ hT =
      β ≫ (Scheme.ΓSpecIso (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).inv := by
    rw [Scheme.Hom.comp_appLE, IsAffineOpen.fromSpec_app_self, Category.assoc,
      Scheme.ΓSpecIso_inv_naturality]
    congr 1
  have star' : ∀ (x : Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ)))
      (ρ : Γ(Y₂, V)),
      ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).presheaf.germ ⊤ x
        trivial).hom ((Scheme.ΓSpecIso (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸
          wcpaDjGslcIdeal g a τ))).inv.hom (β.hom ρ)) =
      ((Spec.map β ≫ hV.fromSpec).stalkMap x).hom ((Y₂.presheaf.germ V _ (hmem x)).hom ρ) := by
    intro x ρ
    rw [← germLE _ V ⊤ hT x trivial (hmem x) ρ, happ]
    rfl
  have star : ∀ ρ : Γ(Y₂, V),
      ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).presheaf.germ ⊤ c'
        trivial).hom ((Scheme.ΓSpecIso (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸
          wcpaDjGslcIdeal g a τ))).inv.hom (β.hom ρ)) =
      wcpaDjGslTr (Spec.map β ≫ hV.fromSpec) c' (σ p) hc ((Y₂.presheaf.germ V (σ p) hpV).hom ρ) := by
    intro ρ
    rw [star' c' ρ]
    simp only [wcpaDjGslTr, CommRingCat.hom_comp, RingHom.comp_apply,
      TopCat.Presheaf.germ_stalkSpecializes_apply]

  obtain ⟨gc, hgc⟩ : ∃ gc : Γ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))), ⊤) →+* (Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).presheaf.stalk c',
      gc = ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).presheaf.germ ⊤ c' trivial).hom := ⟨_, rfl⟩
  obtain ⟨Tr, hTr⟩ : ∃ Tr : Y₂.presheaf.stalk (σ p) →+* (Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).presheaf.stalk c',
      Tr = wcpaDjGslTr (Spec.map β ≫ hV.fromSpec) c' (σ p) hc := ⟨_, rfl⟩
  obtain ⟨ι, hι⟩ : ∃ ι : (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ) →+* Γ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))), ⊤),
      ι = (Scheme.ΓSpecIso (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).inv.hom := ⟨_, rfl⟩
  have star2 : ∀ ρ : Γ(Y₂, V), gc (ι (β.hom ρ)) = Tr ((Y₂.presheaf.germ V (σ p) hpV).hom ρ) := by
    intro ρ; rw [hgc, hι, hTr]; exact star ρ
  have star2' : ∀ ρ : Γ(Y₂, V), gc (ι (β.hom ρ)) =
      ((Spec.map β ≫ hV.fromSpec).stalkMap c').hom ((Y₂.presheaf.germ V _ (hmem c')).hom ρ) := by
    intro ρ; rw [hgc, hι]; exact star' c' ρ
  have hτR : g (MvPolynomial.C τ) = ∏ l, (h.appLE U V hle).hom (tt l) ^ ℓ l := by
    have h1 := RingHom.congr_fun hgC τ
    simp only [RingHom.comp_apply] at h1
    rw [h1, hτdef, map_prod]
    simp only [map_pow]
  have hrel : β.hom (g (MvPolynomial.C τ)) * (Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)) Polynomial.X =
      β.hom (g (MvPolynomial.X 0) - g (MvPolynomial.C a)) := by
    rw [hβapp, hβapp, ← map_mul, ← sub_eq_zero, ← map_sub, Ideal.Quotient.eq_zero_iff_mem]
    exact Ideal.subset_span rfl
  obtain ⟨sU, hsU⟩ : ∃ sU : Fin n → Γ(Y₂, V)ˣ, ∀ l, ((sU l : Γ(Y₂, V)ˣ) : Γ(Y₂, V)) =
      (h.appLE U V hle).hom (ss l) := ⟨fun l => (hss l).unit, fun l => (hss l).unit_spec⟩
  obtain ⟨κ₀, hκ₀⟩ : ∃ κ₀ : Γ(Y₂, V)ˣ, κ₀ = vt * ∏ l, sU l ^ ℓ l := ⟨_, rfl⟩
  obtain ⟨ρT, hρT⟩ : ∃ ρT : Fin n → Γ(Y₂, V), ∀ l, ρT l =
      (h.appLE U V hle).hom (tt l) * (((sU l)⁻¹ : Γ(Y₂, V)ˣ) : Γ(Y₂, V)) :=
    ⟨fun l => _, fun l => rfl⟩
  have hκρ : (κ₀ : Γ(Y₂, V)) * ∏ l, ρT l ^ ℓ l = vt * g (MvPolynomial.C τ) := by
    rw [hκ₀, hτR, Units.val_mul, Units.coe_prod, mul_assoc, ← Finset.prod_mul_distrib]
    congr 1
    refine Finset.prod_congr rfl (fun l _ => ?_)
    rw [Units.val_pow_eq_pow_val, ← mul_pow, hρT, mul_left_comm, Units.mul_inv, mul_one]

  obtain ⟨U0, hU0⟩ : ∃ U0 : Γ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))), ⊤), U0 = ι (β.hom κ₀ * (Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)) Polynomial.X) := ⟨_, rfl⟩
  obtain ⟨T0, hT0⟩ : ∃ T0 : Fin n → Γ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))), ⊤), ∀ l, T0 l = ι (β.hom (ρT l)) :=
    ⟨fun l => _, fun l => rfl⟩
  obtain ⟨Wu0, hWu0⟩ : ∃ Wu0 : Fin r → Γ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))), ⊤)ˣ, ∀ i, ((Wu0 i : Γ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))), ⊤)ˣ) : Γ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))), ⊤)) =
      ι (β.hom (wt i)) := ⟨fun i => Units.map (ι.comp β.hom).toMonoidHom (wt i), fun i => rfl⟩

  have G4T : ∀ l, gc (T0 l) = Tr ((h.stalkMap (σ p)).hom (t l)) := by
    intro l
    have key : (Y₂.presheaf.germ V (σ p) hpV).hom (ρT l) = (h.stalkMap (σ p)).hom (t l) := by
      rw [hρT, map_mul, germLE h U V hle (σ p) hpV hq, htt l, map_mul,
        ← germLE h U V hle (σ p) hpV hq, ← hsU, mul_assoc, ← map_mul, Units.mul_inv, map_one,
        mul_one]
    rw [hT0, star2, key]
  have G4W : ∀ i, gc ((Wu0 i : Γ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))), ⊤)ˣ) : Γ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))), ⊤)) = Tr ((w i : Y₂.presheaf.stalk (σ p))) := by
    intro i
    rw [hWu0, star2, hwt]

  have G5 : Tr z = gc U0 * ∏ l, gc (T0 l) ^ ℓ l := by
    have hB : β.hom ((vt : Γ(Y₂, V)) * (g (MvPolynomial.X 0) - g (MvPolynomial.C a))) =
        β.hom κ₀ * (Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)) Polynomial.X * ∏ l, β.hom (ρT l) ^ ℓ l := by
      rw [map_mul, ← hrel]
      have h2 := congrArg β.hom hκρ
      rw [map_mul, map_mul, map_prod] at h2
      simp only [map_pow] at h2
      linear_combination (-((Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)) Polynomial.X)) * h2
    rw [← hzv, ← star2, hB, hU0]
    simp only [map_mul, map_prod, map_pow, hT0]

  have hP : ∀ G : Polynomial Γ(Y₂, V), ∃ F : Polynomial (Y₂.presheaf.stalk ((Spec.map β ≫ hV.fromSpec) c')),
      gc (ι ((Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)) G)) = Polynomial.eval₂ ((Spec.map β ≫ hV.fromSpec).stalkMap c').hom (gc U0) F := by
    intro G
    refine Polynomial.induction_on' G ?_ ?_
    · intro p₁ p₂ hp₁ hp₂
      obtain ⟨F₁, hF₁⟩ := hp₁
      obtain ⟨F₂, hF₂⟩ := hp₂
      exact ⟨F₁ + F₂, by rw [map_add, map_add, map_add, hF₁, hF₂, Polynomial.eval₂_add]⟩
    · intro k ρ
      refine ⟨Polynomial.monomial k ((Y₂.presheaf.germ V _ (hmem c')).hom
        (ρ * (((κ₀⁻¹ : Γ(Y₂, V)ˣ) : Γ(Y₂, V)) ^ k))), ?_⟩
      have hm : (Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)) (Polynomial.monomial k ρ) =
          β.hom (ρ * (((κ₀⁻¹ : Γ(Y₂, V)ˣ) : Γ(Y₂, V)) ^ k)) * (β.hom κ₀ * (Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)) Polynomial.X) ^ k := by
        rw [← Polynomial.C_mul_X_pow_eq_monomial, map_mul, map_pow, ← hβapp, map_mul, map_pow,
          mul_pow]
        have hinv : β.hom ((κ₀⁻¹ : Γ(Y₂, V)ˣ) : Γ(Y₂, V)) * β.hom (κ₀ : Γ(Y₂, V)) = 1 := by
          rw [← map_mul, Units.inv_mul, map_one]
        calc β.hom ρ * (Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)) Polynomial.X ^ k
            = β.hom ρ * (β.hom ((κ₀⁻¹ : Γ(Y₂, V)ˣ) : Γ(Y₂, V)) * β.hom (κ₀ : Γ(Y₂, V))) ^ k *
              (Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)) Polynomial.X ^ k := by rw [hinv, one_pow, mul_one]
          _ = _ := by ring
      rw [hm, map_mul ι, map_pow ι, map_mul gc, map_pow gc, star2', hU0, Polynomial.eval₂_monomial]
  have hP' : ∀ s : Γ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))), ⊤), ∃ F : Polynomial (Y₂.presheaf.stalk ((Spec.map β ≫ hV.fromSpec) c')),
      gc s = Polynomial.eval₂ ((Spec.map β ≫ hV.fromSpec).stalkMap c').hom (gc U0) F := by
    intro s
    obtain ⟨G, hG⟩ := Ideal.Quotient.mk_surjective
      ((Scheme.ΓSpecIso (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).hom.hom s)
    obtain ⟨F, hF⟩ := hP G
    refine ⟨F, ?_⟩
    rw [← hF, hG, hι]
    congr 1
    first
      | simp
      | exact (Iso.hom_inv_id_apply (Scheme.ΓSpecIso (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))) s).symm
  have G6 : ∀ x : (Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).presheaf.stalk c', ∃ F₁ F₂ : Polynomial (Y₂.presheaf.stalk ((Spec.map β ≫ hV.fromSpec) c')),
      IsUnit (Polynomial.eval₂ ((Spec.map β ≫ hV.fromSpec).stalkMap c').hom (gc U0) F₂) ∧
      x * Polynomial.eval₂ ((Spec.map β ≫ hV.fromSpec).stalkMap c').hom (gc U0) F₂ =
        Polynomial.eval₂ ((Spec.map β ≫ hV.fromSpec).stalkMap c').hom (gc U0) F₁ := by
    intro x
    have hlocS := (isAffineOpen_top (Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ)))).isLocalization_stalk ⟨c', trivial⟩
    letI : Algebra Γ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))), ⊤) ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).presheaf.stalk c') :=
      TopCat.Presheaf.algebra_section_stalk (Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).presheaf (U := ⊤) ⟨c', trivial⟩
    have halg : ∀ s, algebraMap Γ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))), ⊤) ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).presheaf.stalk c') s =
        ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).presheaf.germ ⊤ c' trivial).hom s := fun s => rfl
    obtain ⟨⟨s₁, s₂⟩, hx⟩ := @IsLocalization.mk'_surjective _ _
      ((isAffineOpen_top (Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ)))).primeIdealOf ⟨c', trivial⟩).asIdeal.primeCompl
      ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).presheaf.stalk c') _ _ hlocS x
    have hspec := @IsLocalization.mk'_spec _ _
      ((isAffineOpen_top (Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ)))).primeIdealOf ⟨c', trivial⟩).asIdeal.primeCompl
      ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).presheaf.stalk c') _ _ hlocS s₁ s₂
    have hunit := @IsLocalization.map_units _ _
      ((isAffineOpen_top (Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ)))).primeIdealOf ⟨c', trivial⟩).asIdeal.primeCompl
      ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).presheaf.stalk c') _ _ hlocS s₂
    simp only at hx
    rw [hx, halg, halg] at hspec
    rw [halg] at hunit
    obtain ⟨F₁, hF₁⟩ := hP' s₁
    obtain ⟨F₂, hF₂⟩ := hP' (s₂ : Γ((Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))), ⊤))
    refine ⟨F₁, F₂, ?_, ?_⟩
    · rw [← hF₂, hgc]; exact hunit
    · rw [← hF₁, ← hF₂, hgc]; exact hspec

  obtain ⟨E₁, hE₁ne, hE₁o⟩ : ∃ E₁ : (Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))).Opens, E₁ ≠ ⊥ ∧ IsOpenImmersion (E₁.ι ≫ (Spec.map β ≫ hV.fromSpec)) := by
    let L := Localization.Away ((Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)) (Polynomial.C (g (MvPolynomial.C τ))))
    have hlocR := hloc L
    have hopen : IsOpenImmersion (Spec.map (CommRingCat.ofHom
        ((algebraMap (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ) L).comp ((Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)).comp Polynomial.C)))) :=
      @IsOpenImmersion.of_isLocalization Γ(Y₂, V) L _ _
        (((algebraMap (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ) L).comp ((Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)).comp Polynomial.C)).toAlgebra)
        (g (MvPolynomial.C τ)) hlocR
    have hBL : IsOpenImmersion (Spec.map (CommRingCat.ofHom (algebraMap (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ) L))) :=
      IsOpenImmersion.of_isLocalization ((Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)) (Polynomial.C (g (MvPolynomial.C τ))))
    refine ⟨(Spec.map (CommRingCat.ofHom (algebraMap (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ) L))).opensRange, ?_, ?_⟩
    · haveI : IsDomain L := IsLocalization.isDomain_of_le_nonZeroDivisors L
        (M := Submonoid.powers ((Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)) (Polynomial.C (g (MvPolynomial.C τ)))))
        (powers_le_nonZeroDivisors_of_noZeroDivisors hβτ)
      obtain ⟨x⟩ : Nonempty (Spec (CommRingCat.of L)) := inferInstance
      rw [TopologicalSpace.Opens.ne_bot_iff_nonempty]
      exact ⟨_, Scheme.Hom.mem_opensRange.mpr ⟨x, rfl⟩⟩
    · have e1 : (Spec.map (CommRingCat.ofHom (algebraMap (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ) L))).opensRange.ι =
          (Scheme.Hom.isoOpensRange (Spec.map (CommRingCat.ofHom (algebraMap (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ) L)))).inv ≫
            Spec.map (CommRingCat.ofHom (algebraMap (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ) L)) := by
        rw [Iso.eq_inv_comp, Scheme.Hom.isoOpensRange_hom_ι]
      have e2 : Spec.map (CommRingCat.ofHom (algebraMap (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ) L)) ≫ Spec.map β =
          Spec.map (CommRingCat.ofHom ((algebraMap (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ) L).comp ((Ideal.Quotient.mk (wcpaDjGslcIdeal g a τ)).comp Polynomial.C))) := by
        rw [← Spec.map_comp, hβ]; rfl
      rw [e1, Category.assoc, ← Category.assoc (Spec.map (CommRingCat.ofHom (algebraMap (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ) L)))
        (Spec.map β), e2]
      haveI := hV.isOpenImmersion_fromSpec
      infer_instance

  subst hgc hTr
  refine ⟨(Spec (CommRingCat.of (Polynomial Γ(Y₂, V) ⧸ wcpaDjGslcIdeal g a τ))), inferInstance, (Spec.map β ≫ hV.fromSpec), c', hc, U0, T0, Wu0, E₁, Vs', hpVs', s₀, ?_, hG2, hE₁ne,
    hE₁o, G4T, G4W, G5, G6, hs₀, hc'.symm⟩
  rw [Category.assoc]; exact hG1

theorem wcpa_dj_gsl_rm_ratio_basicOpen_le : ∀ (k : Type u) [Field k] (N : ℕ) (j i : Fin (N + 1)),
    (wcProjK k N).basicOpen (wcSgE k N j i) ≤ wcSgD k N i :=
by
  intro k _ N j i P hP₀
  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) :=
    MvPolynomial.gradedAlgebra
  have hP : P ∈ wcSgD k N j := Scheme.basicOpen_le _ _ hP₀
  have u1 := (Scheme.mem_basicOpen _ _ P hP).mp hP₀
  have u2 := u1.map (Proj.stalkIso' (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) P)
  erw [Proj.stalkIso'_germ] at u2
  rw [← HomogeneousLocalization.isUnit_iff_isUnit_val] at u2
  erw [ProjectiveSpectrum.Proj.awayToSection_apply, HomogeneousLocalization.Away.val_mk,
    Localization.mk_eq_mk', IsLocalization.map_mk'] at u2
  rw [IsLocalization.AtPrime.isUnit_mk'_iff] at u2
  show P ∈ Proj.basicOpen _ _
  rw [Proj.mem_basicOpen]
  exact fun h => u2 (HomogeneousIdeal.mem_iff.mpr h)

theorem wcpa_dj_gsl_rm_ratio_mul : ∀ (k : Type u) [Field k] (N : ℕ) (j₀ j i : Fin (N + 1)),
    ((wcProjK k N).presheaf.map
        (homOfLE (inf_le_left : wcSgD k N j₀ ⊓ wcSgD k N j ≤ wcSgD k N j₀)).op).hom
        (wcSgE k N j₀ i) =
      ((wcProjK k N).presheaf.map
          (homOfLE (inf_le_left : wcSgD k N j₀ ⊓ wcSgD k N j ≤ wcSgD k N j₀)).op).hom
          (wcSgE k N j₀ j) *
        ((wcProjK k N).presheaf.map
          (homOfLE (inf_le_right : wcSgD k N j₀ ⊓ wcSgD k N j ≤ wcSgD k N j)).op).hom
          (wcSgE k N j i) :=
by
  intro k _ N j₀ j i
  let _ : GradedRing (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) :=
    MvPolynomial.gradedAlgebra
  have hX : ∀ m : Fin (N + 1), (MvPolynomial.X m : MvPolynomial (Fin (N + 1)) k) ∈
      MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 1 :=
    fun m => (MvPolynomial.mem_homogeneousSubmodule 1 _).mpr (MvPolynomial.isHomogeneous_X k m)
  have hW : Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      (MvPolynomial.X j₀ * MvPolynomial.X j) = wcSgD k N j₀ ⊓ wcSgD k N j :=
    Proj.basicOpen_mul _ _ _
  have hge : wcSgD k N j₀ ⊓ wcSgD k N j ≤ Proj.basicOpen
      (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) (MvPolynomial.X j₀ * MvPolynomial.X j) :=
    hW.ge
  have hle₀ : Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      (MvPolynomial.X j₀ * MvPolynomial.X j) ≤ wcSgD k N j₀ := hW.le.trans inf_le_left
  have hle₁ : Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      (MvPolynomial.X j₀ * MvPolynomial.X j) ≤ wcSgD k N j := hW.le.trans inf_le_right
  have hfun : ∀ (U : (wcProjK k N).Opens) (h1 : wcSgD k N j₀ ⊓ wcSgD k N j ≤ U)
      (h2 : Proj.basicOpen (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        (MvPolynomial.X j₀ * MvPolynomial.X j) ≤ U) (s : Γ(wcProjK k N, U)),
      ((wcProjK k N).presheaf.map (homOfLE h1).op).hom s =
        ((wcProjK k N).presheaf.map (homOfLE hge).op).hom
          (((wcProjK k N).presheaf.map (homOfLE h2).op).hom s) := by
    intro U h1 h2 s
    rw [← CommRingCat.comp_apply, ← Functor.map_comp]
    rfl
  have hA : ∀ m : Fin (N + 1),
      ((wcProjK k N).presheaf.map (homOfLE hle₀).op).hom (wcSgE k N j₀ m) =
        (Proj.awayToSection (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
          (MvPolynomial.X j₀ * MvPolynomial.X j)).hom
          (HomogeneousLocalization.awayMap (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
            (hX j) (f := MvPolynomial.X j₀) (x := MvPolynomial.X j₀ * MvPolynomial.X j) rfl
            (HomogeneousLocalization.Away.mk (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
              (hX j₀) 1 (MvPolynomial.X m) (by rw [smul_eq_mul, mul_one]; exact hX m))) := by
    intro m
    have key := Proj.awayMap_awayToSection (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      (hX j) (f := MvPolynomial.X j₀) (x := MvPolynomial.X j₀ * MvPolynomial.X j) rfl
    have key' := congrArg (fun φ => φ.hom
      (HomogeneousLocalization.Away.mk (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        (hX j₀) 1 (MvPolynomial.X m) (by rw [smul_eq_mul, mul_one]; exact hX m))) key
    simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at key'
    exact key'.symm
  have hB : ∀ m : Fin (N + 1),
      ((wcProjK k N).presheaf.map (homOfLE hle₁).op).hom (wcSgE k N j m) =
        (Proj.awayToSection (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
          (MvPolynomial.X j₀ * MvPolynomial.X j)).hom
          (HomogeneousLocalization.awayMap (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
            (hX j₀) (f := MvPolynomial.X j) (x := MvPolynomial.X j₀ * MvPolynomial.X j)
            (mul_comm _ _)
            (HomogeneousLocalization.Away.mk (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
              (hX j) 1 (MvPolynomial.X m) (by rw [smul_eq_mul, mul_one]; exact hX m))) := by
    intro m
    have key := Proj.awayMap_awayToSection (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      (hX j₀) (f := MvPolynomial.X j) (x := MvPolynomial.X j₀ * MvPolynomial.X j) (mul_comm _ _)
    have key' := congrArg (fun φ => φ.hom
      (HomogeneousLocalization.Away.mk (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        (hX j) 1 (MvPolynomial.X m) (by rw [smul_eq_mul, mul_one]; exact hX m))) key
    simp only [CommRingCat.hom_comp, RingHom.comp_apply, CommRingCat.hom_ofHom] at key'
    exact key'.symm
  rw [hfun _ inf_le_left hle₀ (wcSgE k N j₀ i), hfun _ inf_le_left hle₀ (wcSgE k N j₀ j),
    hfun _ inf_le_right hle₁ (wcSgE k N j i), ← map_mul, hA i, hA j, hB i, ← map_mul]
  refine congrArg _ (congrArg _ ?_)
  rw [HomogeneousLocalization.awayMap_mk, HomogeneousLocalization.awayMap_mk,
    HomogeneousLocalization.awayMap_mk]
  apply HomogeneousLocalization.val_injective
  rw [HomogeneousLocalization.val_mul, HomogeneousLocalization.Away.val_mk,
    HomogeneousLocalization.Away.val_mk, HomogeneousLocalization.Away.val_mk,
    Localization.mk_mul, Localization.mk_eq_mk_iff, Localization.r_iff_exists]
  refine ⟨1, ?_⟩
  simp only [Submonoid.coe_one, Submonoid.coe_mul, one_mul, mul_one, pow_one]
  ring

theorem wcpa_dj_gsl_rm_transport_ratio : ∀ {Y X : Scheme.{u}} (O : Y.Opens) (a : O.toScheme ⟶ X)
    (D₀ D₁ : X.Opens) (s₁ s₂ : Γ(X, D₀)) (s₃ : Γ(X, D₁)),
    (X.presheaf.map (homOfLE (inf_le_left : D₀ ⊓ D₁ ≤ D₀)).op).hom s₁ =
      (X.presheaf.map (homOfLE (inf_le_left : D₀ ⊓ D₁ ≤ D₀)).op).hom s₂ *
        (X.presheaf.map (homOfLE (inf_le_right : D₀ ⊓ D₁ ≤ D₁)).op).hom s₃ →
    ∀ (w : Y) (hw : w ∈ O.ι ''ᵁ (a ⁻¹ᵁ (D₀ ⊓ D₁))) (hw₀ : w ∈ O.ι ''ᵁ (a ⁻¹ᵁ D₀)),
      (Y.presheaf.germ _ w hw).hom ((O.ι.appIso (a ⁻¹ᵁ (D₀ ⊓ D₁))).inv.hom
          ((a.appLE D₁ (a ⁻¹ᵁ (D₀ ⊓ D₁)) (fun _ hx => hx.2)).hom s₃)) *
        (Y.presheaf.germ _ w hw₀).hom ((O.ι.appIso (a ⁻¹ᵁ D₀)).inv.hom ((a.app D₀).hom s₂)) =
      (Y.presheaf.germ _ w hw₀).hom ((O.ι.appIso (a ⁻¹ᵁ D₀)).inv.hom ((a.app D₀).hom s₁)) :=
by
  intro Y X O a D₀ D₁ s₁ s₂ s₃ H w hw hw₀
  have hV : a ⁻¹ᵁ (D₀ ⊓ D₁) ≤ a ⁻¹ᵁ D₀ := fun _ hx => hx.1
  have hW : O.ι ''ᵁ (a ⁻¹ᵁ (D₀ ⊓ D₁)) ≤ O.ι ''ᵁ (a ⁻¹ᵁ D₀) := Scheme.Hom.image_mono O.ι hV
  let Φ : Γ(X, D₀ ⊓ D₁) ⟶ Y.presheaf.stalk w :=
    a.appLE (D₀ ⊓ D₁) (a ⁻¹ᵁ (D₀ ⊓ D₁)) le_rfl ≫ (O.ι.appIso (a ⁻¹ᵁ (D₀ ⊓ D₁))).inv ≫
      Y.presheaf.germ _ w hw
  have T1 : a.appLE D₁ (a ⁻¹ᵁ (D₀ ⊓ D₁)) (fun _ hx => hx.2) =
      X.presheaf.map (homOfLE (inf_le_right : D₀ ⊓ D₁ ≤ D₁)).op ≫
        a.appLE (D₀ ⊓ D₁) (a ⁻¹ᵁ (D₀ ⊓ D₁)) le_rfl := by
    rw [Scheme.Hom.map_appLE]
  have M0 : a.app D₀ ≫ (O.ι.appIso (a ⁻¹ᵁ D₀)).inv ≫ Y.presheaf.germ _ w hw₀ =
      X.presheaf.map (homOfLE (inf_le_left : D₀ ⊓ D₁ ≤ D₀)).op ≫ Φ := by
    have hg : Y.presheaf.germ _ w hw₀ =
        Y.presheaf.map (O.ι.opensFunctor.op.map (homOfLE hV).op) ≫ Y.presheaf.germ _ w hw :=
      (Y.presheaf.germ_res (homOfLE hW) w hw).symm
    rw [hg, ← Category.assoc (O.ι.appIso (a ⁻¹ᵁ D₀)).inv, ← Scheme.Hom.appIso_inv_naturality]
    simp only [Φ, ← Category.assoc]
    congr 2
    rw [Scheme.Hom.app_eq_appLE, Scheme.Hom.appLE_map, Scheme.Hom.map_appLE]
  have key : ∀ t : Γ(X, D₀),
      (Y.presheaf.germ _ w hw₀).hom ((O.ι.appIso (a ⁻¹ᵁ D₀)).inv.hom ((a.app D₀).hom t)) =
        Φ.hom ((X.presheaf.map (homOfLE (inf_le_left : D₀ ⊓ D₁ ≤ D₀)).op).hom t) := by
    intro t
    have := congrArg (fun φ => φ.hom t) M0
    simpa only [CommRingCat.hom_comp, RingHom.comp_apply] using this
  have key1 : (Y.presheaf.germ _ w hw).hom ((O.ι.appIso (a ⁻¹ᵁ (D₀ ⊓ D₁))).inv.hom
          ((a.appLE D₁ (a ⁻¹ᵁ (D₀ ⊓ D₁)) (fun _ hx => hx.2)).hom s₃)) =
        Φ.hom ((X.presheaf.map (homOfLE (inf_le_right : D₀ ⊓ D₁ ≤ D₁)).op).hom s₃) := by
    rw [T1]
    rfl
  rw [key1, key s₂, key s₁, H, map_mul, mul_comm]

theorem wcpa_dj_gsl_rm_field_algebra : ∀ {L : Type u} [Field L] {ι : Type} (I : Finset ι) (kk : ι),
    kk ∈ I → ∀ (n : ℕ) (α : ι → ℤ) (β : ι → Fin n → ℤ) (ℓ : Fin n → ℕ) (u : L) (t : Fin n → L),
    (∀ l, t l ≠ 0) → u * ∏ l, t l ^ ℓ l ≠ 0 →
    ∀ (W Nm Dn ρ : ι → L), (∀ i ∈ I, W i ≠ 0) →
    (∀ i ∈ I, α kk ≤ α i) → (∀ i ∈ I, ∀ l, 0 ≤ β i l - β kk l + (α i - α kk) * (ℓ l : ℤ)) →
    (∀ i ∈ I, Dn i ≠ 0 ∧ ρ i * Dn i = Nm i ∧
      Nm i * (u * ∏ l, t l ^ ℓ l) ^ (-(α i)).toNat * ∏ l, t l ^ (-(β i l)).toNat =
        W i * Dn i * (u * ∏ l, t l ^ ℓ l) ^ (α i).toNat * ∏ l, t l ^ (β i l).toNat) →
    ρ kk ≠ 0 ∧ ∀ i ∈ I, ρ i = ρ kk * (W i * (W kk)⁻¹ * u ^ (α i - α kk).toNat *
      ∏ l, t l ^ (β i l - β kk l + (α i - α kk) * (ℓ l : ℤ)).toNat) :=
by
  intro L _ ι I kk hkk n α β ℓ u t ht hz W Nm Dn ρ hW hα hβ hrel
  have hu : u ≠ 0 := left_ne_zero_of_mul hz
  have s1 : ∀ (x : L) (k : ℤ), x ≠ 0 → x ^ k.toNat = x ^ k * x ^ (-k).toNat := by
    intro x k hx
    have h1 : ((k.toNat : ℕ) : ℤ) = k + (((-k).toNat : ℕ) : ℤ) := by omega
    rw [← zpow_natCast, h1, zpow_add₀ hx, zpow_natCast]
  have s0 : ∀ (x : L) (k : ℤ), 0 ≤ k → x ^ k.toNat = x ^ k := by
    intro x k hk
    rw [← zpow_natCast, Int.toNat_of_nonneg hk]
  have hPm : ∀ b : Fin n → ℤ, ∏ l, t l ^ (b l).toNat =
      (∏ l, t l ^ (b l)) * ∏ l, t l ^ (-(b l)).toNat := by
    intro b
    rw [← Finset.prod_mul_distrib]
    exact Finset.prod_congr rfl (fun l _ => s1 (t l) (b l) (ht l))
  have hPne : ∀ b : Fin n → ℤ, ∏ l, t l ^ (-(b l)).toNat ≠ 0 := by
    intro b
    exact Finset.prod_ne_zero_iff.mpr (fun l _ => pow_ne_zero _ (ht l))
  have hQne : ∀ b : Fin n → ℤ, ∏ l, t l ^ (b l) ≠ 0 := fun b =>
    Finset.prod_ne_zero_iff.mpr (fun l _ => zpow_ne_zero _ (ht l))
  generalize hzdef : u * ∏ l, t l ^ ℓ l = z at hz hrel
  have CF : ∀ i ∈ I, ρ i = W i * z ^ (α i) * ∏ l, t l ^ (β i l) := by
    intro i hi
    obtain ⟨hD, hρ, hr⟩ := hrel i hi
    rw [s1 z (α i) hz, hPm (β i)] at hr
    have hZm : z ^ (-(α i)).toNat ≠ 0 := pow_ne_zero _ hz
    have hP := hPne (β i)
    have hN : Nm i = W i * Dn i * z ^ (α i) * ∏ l, t l ^ (β i l) := by
      apply mul_right_cancel₀ (mul_ne_zero hZm hP)
      linear_combination hr
    apply mul_right_cancel₀ hD
    rw [hρ, hN]
    ring
  refine ⟨?_, ?_⟩
  · rw [CF kk hkk]
    exact mul_ne_zero (mul_ne_zero (hW kk hkk) (zpow_ne_zero _ hz)) (hQne (β kk))
  · intro i hi
    have ha : 0 ≤ α i - α kk := by have := hα i hi; omega
    have key : u ^ (α i - α kk).toNat *
        ∏ l, t l ^ (β i l - β kk l + (α i - α kk) * (ℓ l : ℤ)).toNat =
        z ^ (α i - α kk) * ∏ l, t l ^ (β i l - β kk l) := by
      rw [s0 u _ ha, Finset.prod_congr rfl (fun l _ => s0 (t l) _ (hβ i hi l)), ← hzdef,
        mul_zpow, ← Finset.prod_zpow, mul_assoc, ← Finset.prod_mul_distrib]
      congr 1
      refine Finset.prod_congr rfl (fun l _ => ?_)
      rw [← zpow_natCast, ← zpow_mul, ← zpow_add₀ (ht l)]
      congr 1
      ring
    have e : W i * (W kk)⁻¹ * u ^ (α i - α kk).toNat *
        ∏ l, t l ^ (β i l - β kk l + (α i - α kk) * (ℓ l : ℤ)).toNat =
        W i * (W kk)⁻¹ * (z ^ (α i - α kk) * ∏ l, t l ^ (β i l - β kk l)) := by
      rw [mul_assoc, key]
    have hzp : z ^ (α i) = z ^ (α kk) * z ^ (α i - α kk) := by
      rw [← zpow_add₀ hz]
      congr 1
      ring
    have hpp : ∏ l, t l ^ (β i l) = (∏ l, t l ^ (β kk l)) * ∏ l, t l ^ (β i l - β kk l) := by
      rw [← Finset.prod_mul_distrib]
      refine Finset.prod_congr rfl (fun l _ => ?_)
      rw [← zpow_add₀ (ht l)]
      congr 1
      ring
    rw [e, CF i hi, CF kk hkk, hzp, hpp]
    have hWk : W kk * (W kk)⁻¹ = 1 := mul_inv_cancel₀ (hW kk hkk)
    linear_combination (-(W i * z ^ (α kk) * z ^ (α i - α kk) * (∏ l, t l ^ (β kk l)) *
      ∏ l, t l ^ (β i l - β kk l))) * hWk

theorem wcpa_dj_gsl_rm_chart_exists : ∀ (k : Type u) [Field k] (N : ℕ) (kk : Fin (N + 1))
    (Z : Scheme.{u}) (sZ : Z ⟶ Spec (.of k)) (f : Fin (N + 1) → Γ(Z, ⊤)), f kk = 1 →
    ∃ (ϑ : Z ⟶ wcProjK k N) (hϑ : ⊤ ≤ ϑ ⁻¹ᵁ wcSgD k N kk), ϑ ≫ wcProjKStr k N = sZ ∧
      ∀ i, (ϑ.appLE (wcSgD k N kk) ⊤ hϑ).hom (wcSgE k N kk i) = f i :=
by
  have hres : ∀ (X : Scheme.{u}) (A B C : X.Opens) (h1 : B ≤ A) (h2 : C ≤ B) (h3 : C ≤ A) (x : Γ(X, A)),
      X.presheaf.map (homOfLE h2).op (X.presheaf.map (homOfLE h1).op x) =
        X.presheaf.map (homOfLE h3).op x := by
    intro X A B C h1 h2 h3 x
    rw [← CategoryTheory.comp_apply, ← Functor.map_comp]
    rfl
  have s3a : ∀ (X : Scheme.{u}) (r a : Γ(X, ⊤)), ((X.isoOfEq (X.toSpecΓ_preimage_basicOpen r)).inv ≫ X.toSpecΓ ∣_ PrimeSpectrum.basicOpen r ≫ (basicOpenIsoSpecAway r).hom).appTop ((Scheme.ΓSpecIso (.of (Localization.Away r))).inv (algebraMap Γ(X, ⊤) (Localization.Away r) a)) = (X.basicOpen r).ι.appTop a := by
    intro X r a
    have h1 : ((X.isoOfEq (X.toSpecΓ_preimage_basicOpen r)).inv ≫ X.toSpecΓ ∣_ PrimeSpectrum.basicOpen r ≫ (basicOpenIsoSpecAway r).hom) ≫ Spec.map (CommRingCat.ofHom (algebraMap Γ(X, ⊤) (Localization.Away r))) = (X.basicOpen r).ι ≫ X.toSpecΓ := by
      have hm := morphismRestrict_ι X.toSpecΓ (PrimeSpectrum.basicOpen r)
      rw [Category.assoc, Category.assoc, basicOpenIsoSpecAway_hom_SpecMap, hm, ← Category.assoc,
        Scheme.isoOfEq_inv_ι]
    have h2 := congrArg Scheme.Hom.appTop h1
    rw [Scheme.Hom.comp_appTop _ (Spec.map _), Scheme.Hom.comp_appTop (X.basicOpen r).ι,
      Scheme.toSpecΓ_appTop] at h2
    have h3 := Scheme.ΓSpecIso_inv_naturality (CommRingCat.ofHom (algebraMap Γ(X, ⊤) (Localization.Away r)))
    calc _ = (CommRingCat.ofHom (algebraMap Γ(X, ⊤) (Localization.Away r)) ≫ (Scheme.ΓSpecIso (.of (Localization.Away r))).inv ≫ ((X.isoOfEq (X.toSpecΓ_preimage_basicOpen r)).inv ≫ X.toSpecΓ ∣_ PrimeSpectrum.basicOpen r ≫ (basicOpenIsoSpecAway r).hom).appTop) a := rfl
      _ = ((Scheme.ΓSpecIso Γ(X, ⊤)).inv ≫ (Spec.map (CommRingCat.ofHom (algebraMap Γ(X, ⊤) (Localization.Away r)))).appTop ≫ ((X.isoOfEq (X.toSpecΓ_preimage_basicOpen r)).inv ≫ X.toSpecΓ ∣_ PrimeSpectrum.basicOpen r ≫ (basicOpenIsoSpecAway r).hom).appTop) a := by
        rw [← Category.assoc, h3, Category.assoc]; rfl
      _ = ((Scheme.ΓSpecIso Γ(X, ⊤)).inv ≫ (Scheme.ΓSpecIso Γ(X, ⊤)).hom ≫ (X.basicOpen r).ι.appTop) a := by
        rw [h2]
      _ = _ := by rw [Iso.inv_hom_id_assoc]
  have s3 : ∀ {σ A : Type u} [CommRing A] [SetLike σ A] [AddSubgroupClass σ A] (𝒜 : ℕ → σ) [GradedRing 𝒜] (X : Scheme.{u}) (f : A →+* Γ(X, ⊤)) (hf : (HomogeneousIdeal.irrelevant 𝒜).toIdeal.map f = ⊤) {t : A} {d : ℕ} (hd : 0 < d) (ht : t ∈ 𝒜 d) (n : ℕ) (y : A) (hy : y ∈ 𝒜 (n • d)), (Proj.fromOfGlobalSections 𝒜 f hf).app (Proj.basicOpen 𝒜 t) ((Proj.awayToSection 𝒜 t).hom (HomogeneousLocalization.Away.mk 𝒜 ht n y hy)) * X.presheaf.map (homOfLE (le_top : Proj.fromOfGlobalSections 𝒜 f hf ⁻¹ᵁ Proj.basicOpen 𝒜 t ≤ ⊤)).op (f t) ^ n = X.presheaf.map (homOfLE (le_top : Proj.fromOfGlobalSections 𝒜 f hf ⁻¹ᵁ Proj.basicOpen 𝒜 t ≤ ⊤)).op (f y) := by
    intro σ A _ _ _ 𝒜 _ X f hf t d hd ht n y hy
    have key : ∀ {U V : Scheme.{u}} {R L : CommRingCat.{u}} (W : V ⟶ Spec L) (φ₀ : R ⟶ L) (i : U ≅ Spec R) (T : V ⟶ U), T = (W ≫ Spec.map φ₀) ≫ i.inv → ∀ x : R, T.appTop (i.hom.appTop ((Scheme.ΓSpecIso R).inv x)) = W.appTop ((Scheme.ΓSpecIso L).inv (φ₀ x)) := by
      intro U V R L W φ₀ i T hT x
      subst hT
      have e1 : ((W ≫ Spec.map φ₀) ≫ i.inv).appTop = i.inv.appTop ≫ (Spec.map φ₀).appTop ≫ W.appTop := by
        rw [Scheme.Hom.comp_appTop, Scheme.Hom.comp_appTop]
      have e2 : i.hom.appTop ≫ i.inv.appTop = 𝟙 _ := by
        rw [← Scheme.Hom.comp_appTop, Iso.inv_hom_id, Scheme.Hom.id_appTop]
      have e3 := Scheme.ΓSpecIso_inv_naturality φ₀
      calc _ = ((Scheme.ΓSpecIso R).inv ≫ (i.hom.appTop ≫ i.inv.appTop) ≫ (Spec.map φ₀).appTop ≫ W.appTop) x := by
            rw [e1]; rfl
        _ = ((φ₀ ≫ (Scheme.ΓSpecIso L).inv) ≫ W.appTop) x := by
            rw [e2, Category.id_comp, ← Category.assoc, ← e3]
    have resLE_top : ∀ {X Y : Scheme.{u}} (φ : X ⟶ Y) {U : Y.Opens} {V : X.Opens} (e : V ≤ φ ⁻¹ᵁ U) (r : Γ(Y, U)), (φ.resLE U V e).appTop (U.topIso.inv r) = V.topIso.inv (φ.appLE U V e r) := by
      intro X Y φ U V e r
      calc _ = (U.topIso.inv ≫ U.topIso.hom ≫ φ.appLE U V e ≫ V.topIso.inv) r := by
            rw [← Scheme.Hom.resLE_app_top]; rfl
        _ = _ := by rw [Iso.inv_hom_id_assoc]; rfl
    have hPV : Proj.fromOfGlobalSections 𝒜 f hf ⁻¹ᵁ Proj.basicOpen 𝒜 t = X.basicOpen (f t) :=
      Proj.fromOfGlobalSections_preimage_basicOpen 𝒜 f hf hd ht
    have hle : Submonoid.powers t ≤ (Submonoid.powers (f t)).comap f :=
      Submonoid.powers_le.mpr (Submonoid.mem_powers (f t))
    have hT : (Proj.fromOfGlobalSections 𝒜 f hf).resLE (Proj.basicOpen 𝒜 t) (X.basicOpen (f t)) hPV.ge =
        (((X.isoOfEq (X.toSpecΓ_preimage_basicOpen (f t))).inv ≫ X.toSpecΓ ∣_ PrimeSpectrum.basicOpen (f t) ≫ (basicOpenIsoSpecAway (f t)).hom) ≫
          Spec.map (CommRingCat.ofHom ((IsLocalization.map (Localization.Away (f t)) f hle).comp
            (algebraMap (HomogeneousLocalization.Away 𝒜 t) (Localization.Away t))))) ≫
          (Proj.basicOpenIsoSpec 𝒜 t ht hd).inv := by
      rw [Proj.fromOfGlobalSections_resLE 𝒜 f hf hd ht, Proj.toBasicOpenOfGlobalSections.eq_1]
      simp only [Category.assoc]
    have hi : (Proj.basicOpenIsoSpec 𝒜 t ht hd).hom.appTop ((Scheme.ΓSpecIso (CommRingCat.of (HomogeneousLocalization.Away 𝒜 t))).inv (HomogeneousLocalization.Away.mk 𝒜 ht n y hy)) = (Proj.basicOpen 𝒜 t).topIso.inv ((Proj.awayToSection 𝒜 t).hom (HomogeneousLocalization.Away.mk 𝒜 ht n y hy)) := by
      rw [Proj.basicOpenIsoSpec_hom]
      have hh := Proj.basicOpenToSpec_app_top 𝒜 t
      calc _ = ((Scheme.ΓSpecIso (CommRingCat.of (HomogeneousLocalization.Away 𝒜 t))).hom ≫ Proj.awayToSection 𝒜 t ≫ (Proj.basicOpen 𝒜 t).topIso.inv) ((Scheme.ΓSpecIso (CommRingCat.of (HomogeneousLocalization.Away 𝒜 t))).inv (HomogeneousLocalization.Away.mk 𝒜 ht n y hy)) := by rw [← hh]
        _ = (Proj.basicOpen 𝒜 t).topIso.inv (Proj.awayToSection 𝒜 t ((Scheme.ΓSpecIso (CommRingCat.of (HomogeneousLocalization.Away 𝒜 t))).hom ((Scheme.ΓSpecIso (CommRingCat.of (HomogeneousLocalization.Away 𝒜 t))).inv (HomogeneousLocalization.Away.mk 𝒜 ht n y hy)))) := rfl
        _ = _ := by rw [Iso.inv_hom_id_apply]
    have h1 := key _ _ _ _ hT (HomogeneousLocalization.Away.mk 𝒜 ht n y hy)
    rw [hi, resLE_top] at h1
    have hD : ((IsLocalization.map (Localization.Away (f t)) f hle).comp
            (algebraMap (HomogeneousLocalization.Away 𝒜 t) (Localization.Away t))) (HomogeneousLocalization.Away.mk 𝒜 ht n y hy) * (algebraMap Γ(X, ⊤) (Localization.Away (f t)) (f t)) ^ n = algebraMap Γ(X, ⊤) (Localization.Away (f t)) (f y) := by
      rw [RingHom.comp_apply, HomogeneousLocalization.algebraMap_apply, HomogeneousLocalization.Away.val_mk,
        Localization.mk_eq_mk', IsLocalization.map_mk', ← map_pow, ← map_pow f]
      exact IsLocalization.mk'_spec _ _ _
    have hΦ : ∀ a b c : Localization.Away (f t), a * b ^ n = c →
        ((X.isoOfEq (X.toSpecΓ_preimage_basicOpen (f t))).inv ≫ X.toSpecΓ ∣_ PrimeSpectrum.basicOpen (f t) ≫ (basicOpenIsoSpecAway (f t)).hom).appTop ((Scheme.ΓSpecIso (.of (Localization.Away (f t)))).inv a) * (((X.isoOfEq (X.toSpecΓ_preimage_basicOpen (f t))).inv ≫ X.toSpecΓ ∣_ PrimeSpectrum.basicOpen (f t) ≫ (basicOpenIsoSpecAway (f t)).hom).appTop ((Scheme.ΓSpecIso (.of (Localization.Away (f t)))).inv b)) ^ n = ((X.isoOfEq (X.toSpecΓ_preimage_basicOpen (f t))).inv ≫ X.toSpecΓ ∣_ PrimeSpectrum.basicOpen (f t) ≫ (basicOpenIsoSpecAway (f t)).hom).appTop ((Scheme.ΓSpecIso (.of (Localization.Away (f t)))).inv c) := by
      intro a b c h
      rw [← map_pow, ← map_pow, ← map_mul, ← map_mul, h]
    have h2 := hΦ _ _ _ hD
    rw [s3a, s3a] at h2
    have h1' : (X.basicOpen (f t)).topIso.inv ((Proj.fromOfGlobalSections 𝒜 f hf).appLE (Proj.basicOpen 𝒜 t) (X.basicOpen (f t)) hPV.ge ((Proj.awayToSection 𝒜 t).hom (HomogeneousLocalization.Away.mk 𝒜 ht n y hy))) = ((X.isoOfEq (X.toSpecΓ_preimage_basicOpen (f t))).inv ≫ X.toSpecΓ ∣_ PrimeSpectrum.basicOpen (f t) ≫ (basicOpenIsoSpecAway (f t)).hom).appTop ((Scheme.ΓSpecIso (.of (Localization.Away (f t)))).inv (((IsLocalization.map (Localization.Away (f t)) f hle).comp
            (algebraMap (HomogeneousLocalization.Away 𝒜 t) (Localization.Away t))) (HomogeneousLocalization.Away.mk 𝒜 ht n y hy))) := h1
    rw [← h1'] at h2
    have hι : ∀ a, (X.basicOpen (f t)).ι.appTop a = (X.basicOpen (f t)).topIso.inv (X.presheaf.map (homOfLE (le_top : X.basicOpen (f t) ≤ ⊤)).op a) := by
      intro a
      rw [Scheme.Opens.ι_appTop, Scheme.Opens.topIso_inv]
      erw [← CategoryTheory.comp_apply, ← Functor.map_comp]
      rfl
    rw [hι, hι, ← map_pow, ← map_mul] at h2
    have hinj : ∀ a b : Γ(X, X.basicOpen (f t)), (X.basicOpen (f t)).topIso.inv a = (X.basicOpen (f t)).topIso.inv b → a = b := by
      intro a b h
      have h' := congrArg (fun w => (X.basicOpen (f t)).topIso.hom w) h
      simp only [Iso.inv_hom_id_apply] at h'
      exact h'
    have hSS := hinj _ _ h2
    have hG1 : (Proj.fromOfGlobalSections 𝒜 f hf).app (Proj.basicOpen 𝒜 t) ((Proj.awayToSection 𝒜 t).hom (HomogeneousLocalization.Away.mk 𝒜 ht n y hy)) = X.presheaf.map (homOfLE hPV.le).op ((Proj.fromOfGlobalSections 𝒜 f hf).appLE (Proj.basicOpen 𝒜 t) (X.basicOpen (f t)) hPV.ge ((Proj.awayToSection 𝒜 t).hom (HomogeneousLocalization.Away.mk 𝒜 ht n y hy))) := by
      have hh := Scheme.Hom.appLE_map (Proj.fromOfGlobalSections 𝒜 f hf) hPV.ge (homOfLE hPV.le).op
      rw [Scheme.Hom.app_eq_appLE, ← hh]
      rfl
    have hG2 : ∀ a, X.presheaf.map (homOfLE (le_top : Proj.fromOfGlobalSections 𝒜 f hf ⁻¹ᵁ Proj.basicOpen 𝒜 t ≤ ⊤)).op a = X.presheaf.map (homOfLE hPV.le).op (X.presheaf.map (homOfLE (le_top : X.basicOpen (f t) ≤ ⊤)).op a) := by
      intro a
      rw [← CategoryTheory.comp_apply, ← Functor.map_comp]
      rfl
    rw [hG1, hG2, hG2, ← map_pow, ← map_mul, hSS]
  have S3 : ∀ (K : Type u) [Field K] (n : ℕ) (V : Scheme.{u}) (fV : V ⟶ Spec (.of K)) (t : Fin (n + 1) → Γ(V, ⊤)),
      Ideal.span (Set.range t) = ⊤ →
      ∃ φ : V ⟶ wcProjK K n, φ ≫ wcProjKStr K n = fV ∧ (∀ J, φ ⁻¹ᵁ wcSgD K n J = V.basicOpen (t J)) ∧
        ∀ J L (O : V.Opens) (hO : O ≤ φ ⁻¹ᵁ wcSgD K n J), φ.appLE (wcSgD K n J) O hO (wcSgE K n J L) *
          V.presheaf.map (homOfLE (le_top : O ≤ ⊤)).op (t J) =
          V.presheaf.map (homOfLE (le_top : O ≤ ⊤)).op (t L) := by
    intro K _ N V fV s hspan
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) :=
      MvPolynomial.gradedAlgebra
    have hX : ∀ J : Fin (N + 1), (MvPolynomial.X J : MvPolynomial (Fin (N + 1)) K) ∈
        MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K 1 := fun J =>
      (MvPolynomial.mem_homogeneousSubmodule 1 _).mpr (MvPolynomial.isHomogeneous_X _ J)
    let F : MvPolynomial (Fin (N + 1)) K →+* Γ(V, ⊤) :=
      MvPolynomial.eval₂Hom (fV.appTop.hom.comp (Scheme.ΓSpecIso (.of K)).inv.hom) s
    have hFX : ∀ J, F (MvPolynomial.X J) = s J := fun J => MvPolynomial.eval₂Hom_X' _ _ J
    have hF : (HomogeneousIdeal.irrelevant (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K)).toIdeal.map F = ⊤ := by
      rw [eq_top_iff, ← hspan, Ideal.span_le]
      rintro _ ⟨J, rfl⟩
      rw [← hFX J]
      apply Ideal.mem_map_of_mem
      exact (HomogeneousIdeal.mem_irrelevant_iff _ _).mpr (by
        rw [GradedRing.proj_apply]
        exact DirectSum.decompose_of_mem_ne _ (hX J) one_ne_zero)
    refine ⟨Proj.fromOfGlobalSections _ F hF, ?_, fun J => ?_, fun J L O hO => ?_⟩
    · have h1 := Proj.fromOfGlobalSections_toSpecZero
        (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) F hF
      have hc : CommRingCat.ofHom (algebraMap K (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K 0)) ≫
          CommRingCat.ofHom (F.comp (algebraMap (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K 0)
            (MvPolynomial (Fin (N + 1)) K))) = (Scheme.ΓSpecIso (.of K)).inv ≫ fV.appTop := by
        apply CommRingCat.hom_ext
        apply RingHom.ext
        intro k
        show F (MvPolynomial.C k) = fV.appTop.hom ((Scheme.ΓSpecIso (.of K)).inv.hom k)
        exact MvPolynomial.eval₂Hom_C _ _ k
      have h2 : (Spec (.of K)).toSpecΓ ≫ Spec.map (Scheme.ΓSpecIso (.of K)).inv = 𝟙 _ := by
        rw [← Scheme.isoSpec_hom, Scheme.isoSpec_Spec_hom, ← Spec.map_comp, Iso.inv_hom_id, Spec.map_id]
      calc Proj.fromOfGlobalSections _ F hF ≫ (Proj.toSpecZero (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) ≫ Spec.map (CommRingCat.ofHom (algebraMap K ↥((MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) 0))))
          = (Proj.fromOfGlobalSections _ F hF ≫
              Proj.toSpecZero (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K)) ≫
              Spec.map (CommRingCat.ofHom (algebraMap K (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K 0))) :=
            (Category.assoc _ _ _).symm
        _ = V.toSpecΓ ≫ (Spec.map (CommRingCat.ofHom (F.comp (algebraMap (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K 0)
              (MvPolynomial (Fin (N + 1)) K)))) ≫
              Spec.map (CommRingCat.ofHom (algebraMap K (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K 0)))) := by
            rw [h1, Category.assoc]
        _ = V.toSpecΓ ≫ Spec.map ((Scheme.ΓSpecIso (.of K)).inv ≫ fV.appTop) := by
            rw [← Spec.map_comp, hc]
        _ = (V.toSpecΓ ≫ Spec.map fV.appTop) ≫ Spec.map (Scheme.ΓSpecIso (.of K)).inv := by
            rw [Spec.map_comp, Category.assoc]
        _ = fV ≫ ((Spec (.of K)).toSpecΓ ≫ Spec.map (Scheme.ΓSpecIso (.of K)).inv) := by
            rw [← Scheme.toSpecΓ_naturality, Category.assoc]
        _ = fV := by rw [h2, Category.comp_id]
    · rw [← hFX J]
      exact Proj.fromOfGlobalSections_preimage_basicOpen _ F hF Nat.one_pos (hX J)
    · have hy : (MvPolynomial.X L : MvPolynomial (Fin (N + 1)) K) ∈
          MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K (1 • 1) := by
        rw [one_smul]
        exact hX L
      have h := s3 (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) K) V F hF Nat.one_pos (hX J) 1
        (MvPolynomial.X L) hy
      rw [hFX, hFX, pow_one] at h
      have e := congrArg (V.presheaf.map (homOfLE hO).op) h
      rw [map_mul, hres, hres] at e
      exact e

  intro k _ N kk Z sZ f hf1
  have hspan : Ideal.span (Set.range f) = ⊤ :=
    Ideal.eq_top_of_isUnit_mem _ (Ideal.subset_span ⟨kk, rfl⟩) (by rw [hf1]; exact isUnit_one)
  obtain ⟨φ, hstr, hpre, hrel⟩ := S3 k N Z sZ f hspan
  have hφ : ⊤ ≤ φ ⁻¹ᵁ wcSgD k N kk := by
    rw [hpre kk, hf1, Scheme.basicOpen_of_isUnit _ isUnit_one]
  refine ⟨φ, hφ, hstr, fun i => ?_⟩
  have h := hrel kk i ⊤ hφ
  have hid : ∀ x : Γ(Z, ⊤), Z.presheaf.map (homOfLE (le_top : (⊤ : Z.Opens) ≤ ⊤)).op x = x := by
    intro x
    rw [show (homOfLE (le_top : (⊤ : Z.Opens) ≤ ⊤)).op = 𝟙 _ from rfl,
      CategoryTheory.Functor.map_id]
    rfl
  rw [hid, hid, hf1, mul_one] at h
  exact h

theorem wcpa_dj_gsl_rm_chart_unique : ∀ (k : Type u) [Field k] (N : ℕ) (kk : Fin (N + 1))
    (T : Scheme.{u}) (b b' : T ⟶ wcProjK k N) (hb : ⊤ ≤ b ⁻¹ᵁ wcSgD k N kk)
    (hb' : ⊤ ≤ b' ⁻¹ᵁ wcSgD k N kk), b ≫ wcProjKStr k N = b' ≫ wcProjKStr k N →
    (∀ i, (b.appLE (wcSgD k N kk) ⊤ hb).hom (wcSgE k N kk i) =
      (b'.appLE (wcSgD k N kk) ⊤ hb').hom (wcSgE k N kk i)) → b = b' :=
by
  intro k _ N kk T b b' hb hb' hstr hσ

  have S1 : ∀ (K : Type u) [Field K] (n : ℕ) (J : Fin (n + 1)) (x : Γ(wcProjK K n, wcSgD K n J)),
      x ∈ Subring.closure (Set.range (wcSgE K n J) ∪ Set.range (fun c : K => (wcProjK K n).presheaf.map
        (homOfLE (le_top : wcSgD K n J ≤ ⊤)).op ((wcProjKStr K n).appTop ((Scheme.ΓSpecIso (.of K)).inv c)))) := by
    intro K _ n
    letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K) := MvPolynomial.gradedAlgebra
    have hX : ∀ k : Fin (n + 1), (MvPolynomial.X k : MvPolynomial (Fin (n + 1)) K) ∈
        MvPolynomial.homogeneousSubmodule (Fin (n + 1)) K 1 := fun k =>
      (MvPolynomial.mem_homogeneousSubmodule 1 _).mpr (MvPolynomial.isHomogeneous_X _ k)
    intro J x
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

  letI : GradedAlgebra (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) :=
    MvPolynomial.gradedAlgebra
  have hX : (MvPolynomial.X kk : MvPolynomial (Fin (N + 1)) k) ∈
      MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 1 :=
    (MvPolynomial.mem_homogeneousSubmodule 1 _).mpr (MvPolynomial.isHomogeneous_X k kk)
  have hU : IsAffineOpen (wcSgD k N kk) :=
    Proj.isAffineOpen_basicOpen _ (MvPolynomial.X kk) hX Nat.one_pos

  have hres : ∀ (f : T ⟶ wcProjK k N) (hf : ⊤ ≤ f ⁻¹ᵁ wcSgD k N kk) (x : Γ(wcProjK k N, ⊤)),
      (f.appLE (wcSgD k N kk) ⊤ hf) ((wcProjK k N).presheaf.map
        (homOfLE (le_top : wcSgD k N kk ≤ ⊤)).op x) = f.appTop x := by
    intro f hf x
    have h := Scheme.Hom.map_appLE f hf (homOfLE (le_top : wcSgD k N kk ≤ ⊤)).op
    have h2 := congrArg (fun φ => φ x) h
    show _ = (f.app ⊤) x
    rw [Scheme.Hom.app_eq_appLE]
    exact h2

  have hc : ∀ y, b.appTop ((wcProjKStr k N).appTop y) = b'.appTop ((wcProjKStr k N).appTop y) := by
    intro y
    have h := congrArg (fun g => Scheme.Hom.appTop g y) hstr
    simp only at h
    rw [Scheme.Hom.comp_appTop, Scheme.Hom.comp_appTop] at h
    exact h

  have hring : b.appLE (wcSgD k N kk) ⊤ hb = b'.appLE (wcSgD k N kk) ⊤ hb' := by
    apply CommRingCat.hom_ext
    apply RingHom.ext
    intro x
    have hx := S1 k N kk x
    refine RingHom.eqOn_set_closure (f := (b.appLE (wcSgD k N kk) ⊤ hb).hom)
      (g := (b'.appLE (wcSgD k N kk) ⊤ hb').hom) ?_ hx
    rintro _ (⟨i, rfl⟩ | ⟨c, rfl⟩)
    · exact hσ i
    · exact (hres b hb _).trans ((hc _).trans (hres b' hb' _).symm)

  haveI : IsAffine (wcSgD k N kk : Scheme.{u}) := hU
  have hr : b.resLE (wcSgD k N kk) ⊤ hb = b'.resLE (wcSgD k N kk) ⊤ hb' := by
    apply ext_of_isAffine
    show Scheme.Hom.app (b.resLE (wcSgD k N kk) ⊤ hb) ⊤ =
      Scheme.Hom.app (b'.resLE (wcSgD k N kk) ⊤ hb') ⊤
    rw [Scheme.Hom.resLE_app_top, Scheme.Hom.resLE_app_top, hring]
  have h1 := Scheme.Hom.resLE_comp_ι b hb
  have h2 := Scheme.Hom.resLE_comp_ι b' hb'
  rw [hr] at h1
  have h3 : (⊤ : T.Opens).ι ≫ b = (⊤ : T.Opens).ι ≫ b' := h1.symm.trans h2
  rw [← Scheme.topIso_hom] at h3
  exact (cancel_epi _).mp h3

theorem wcpa_dj_gsl_rm_appLE_agree : ∀ {E Y X : Scheme.{u}} [AlgebraicGeometry.IsIntegral E]
    (O : Y.Opens) (a : O.toScheme ⟶ X) (e : E ⟶ Y) (E₂ : E.Opens) (h₂ : E₂.toScheme ⟶ O.toScheme)
    (D : X.Opens) (V' : O.toScheme.Opens) (hle : V' ≤ a ⁻¹ᵁ D) (s : Γ(X, D)) (F : Γ(E, ⊤))
    (_ : genericPoint E ∈ E₂) (hx : e (genericPoint E) ∈ O.ι ''ᵁ V'),
    h₂ ≫ O.ι = E₂.ι ≫ e → ∀ (hV : ⊤ ≤ (h₂ ≫ a) ⁻¹ᵁ D),
    (E.presheaf.germ ⊤ (genericPoint E) trivial).hom F =
      (e.stalkMap (genericPoint E)).hom ((Y.presheaf.germ (O.ι ''ᵁ V') (e (genericPoint E)) hx).hom
        ((O.ι.appIso V').inv.hom ((a.appLE D V' hle).hom s))) →
    ((h₂ ≫ a).appLE D ⊤ hV).hom s = (E₂.ι.appLE ⊤ ⊤ le_top).hom F :=
by
  intro E Y X _ O a e E₂ h₂ D V' hle s F hη hx hh hV hyp

  have hA : (E.presheaf.map (homOfLE (le_top : e ⁻¹ᵁ (O.ι ''ᵁ V') ≤ ⊤)).op).hom F =
      (e.app (O.ι ''ᵁ V')).hom ((O.ι.appIso V').inv.hom ((a.appLE D V' hle).hom s)) := by
    have hxN : genericPoint E ∈ e ⁻¹ᵁ (O.ι ''ᵁ V') := hx
    apply germ_injective_of_isIntegral E (genericPoint E) hxN
    refine (TopCat.Presheaf.germ_res_apply E.presheaf
      (homOfLE (le_top : e ⁻¹ᵁ (O.ι ''ᵁ V') ≤ ⊤)) _ hxN F).trans ?_
    exact hyp.trans (Scheme.Hom.germ_stalkMap_apply e _ _ hx _)

  have hM : E₂.ι ⁻¹ᵁ (e ⁻¹ᵁ (O.ι ''ᵁ V')) ≤ h₂ ⁻¹ᵁ V' := by
    intro z hz
    have hz' : e (E₂.ι z) ∈ O.ι ''ᵁ V' := hz
    have heq : O.ι (h₂ z) = e (E₂.ι z) := by
      rw [← Scheme.Hom.comp_apply, hh, Scheme.Hom.comp_apply]
    have : h₂ z ∈ O.ι ⁻¹ᵁ (O.ι ''ᵁ V') := by
      show O.ι (h₂ z) ∈ O.ι ''ᵁ V'
      rw [heq]; exact hz'
    rwa [Scheme.Hom.preimage_image_eq] at this
  set M := E₂.ι ⁻¹ᵁ (e ⁻¹ᵁ (O.ι ''ᵁ V')) with hMdef

  have hL : (h₂ ≫ a).appLE D ⊤ hV ≫ E₂.toScheme.presheaf.map (homOfLE (le_top : M ≤ ⊤)).op =
      a.appLE D V' hle ≫ h₂.appLE V' M hM :=
    (Scheme.Hom.appLE_map (h₂ ≫ a) hV _).trans (Scheme.Hom.appLE_comp_appLE h₂ a D V' M hle hM).symm

  have hR1 : E₂.ι.appLE ⊤ ⊤ le_top ≫ E₂.toScheme.presheaf.map (homOfLE (le_top : M ≤ ⊤)).op =
      E.presheaf.map (homOfLE (le_top : e ⁻¹ᵁ (O.ι ''ᵁ V') ≤ ⊤)).op ≫
        E₂.ι.appLE (e ⁻¹ᵁ (O.ι ''ᵁ V')) M le_rfl :=
    (Scheme.Hom.appLE_map E₂.ι _ _).trans (Scheme.Hom.map_appLE E₂.ι _ _).symm
  have hR2 : e.app (O.ι ''ᵁ V') ≫ E₂.ι.appLE (e ⁻¹ᵁ (O.ι ''ᵁ V')) M le_rfl =
      (E₂.ι ≫ e).appLE (O.ι ''ᵁ V') M le_rfl :=
    (Scheme.Hom.comp_appLE E₂.ι e (O.ι ''ᵁ V') M le_rfl).symm
  have hS1 : ∀ (g : E₂.toScheme ⟶ Y) (_ : h₂ ≫ O.ι = g) (p : M ≤ g ⁻¹ᵁ (O.ι ''ᵁ V')),
      (O.ι.appIso V').inv ≫ g.appLE (O.ι ''ᵁ V') M p = h₂.appLE V' M hM := by
    rintro g rfl p
    rw [Scheme.Hom.comp_appLE, ← Category.assoc, Scheme.Hom.appIso_inv_app]
    exact Scheme.Hom.map_appLE h₂ (U := O.ι ⁻¹ᵁ (O.ι ''ᵁ V')) (V := M) p _
  have hξ : (⟨genericPoint E, hη⟩ : E₂.toScheme) ∈ M := hx
  have : Nonempty E₂ := ⟨⟨genericPoint E, hη⟩⟩
  have e1 := congrArg (fun φ => φ.hom s) hL
  have e2 := congrArg (fun φ => φ.hom F) hR1
  have e3 := congrArg (fun φ => φ.hom ((O.ι.appIso V').inv.hom ((a.appLE D V' hle).hom s))) hR2
  have e4 := congrArg (fun φ => φ.hom ((a.appLE D V' hle).hom s)) (hS1 _ hh le_rfl)
  simp only [CommRingCat.hom_comp, RingHom.comp_apply] at e1 e2 e3 e4
  have hres : (E₂.toScheme.presheaf.map (homOfLE (le_top : M ≤ ⊤)).op).hom
        (((h₂ ≫ a).appLE D ⊤ hV).hom s) =
      (E₂.toScheme.presheaf.map (homOfLE (le_top : M ≤ ⊤)).op).hom
        ((E₂.ι.appLE ⊤ ⊤ le_top).hom F) :=
    e1.trans (e2.trans ((congrArg _ hA).trans (e3.trans e4))).symm
  apply germ_injective_of_isIntegral E₂.toScheme (U := ⊤) (⟨genericPoint E, hη⟩ : E₂.toScheme)
    trivial
  refine (TopCat.Presheaf.germ_res_apply E₂.toScheme.presheaf
    (homOfLE (le_top : M ≤ ⊤)) _ hξ _).symm.trans ?_
  refine Eq.trans ?_ (TopCat.Presheaf.germ_res_apply E₂.toScheme.presheaf
    (homOfLE (le_top : M ≤ ⊤)) _ hξ _)
  exact congrArg _ hres

theorem wcpa_dj_gsl_rm_generic_transport : ∀ {E Y : Scheme.{u}} [AlgebraicGeometry.IsIntegral E]
    [AlgebraicGeometry.IsIntegral Y] (e : E ⟶ Y) (E₁ : E.Opens) (c' : E) (y : Y) (hc : e c' = y),
    E₁ ≠ ⊥ → IsOpenImmersion (E₁.ι ≫ e) → ∀ (h : e (genericPoint E) ⤳ y),
    e (genericPoint E) = genericPoint Y ∧ genericPoint E ∈ E₁ ∧
      IsIso (e.stalkMap (genericPoint E)) ∧ Function.Injective (Y.presheaf.stalkSpecializes h).hom ∧
      ∀ (s : Γ(E, ⊤)) (t : Y.presheaf.stalk y),
        (E.presheaf.germ ⊤ c' trivial).hom s = wcpaDjGslTr e c' y hc t →
        (E.presheaf.germ ⊤ (genericPoint E) trivial).hom s =
          (e.stalkMap (genericPoint E)).hom ((Y.presheaf.stalkSpecializes h).hom t) :=
by
  intro E Y _ _ e E₁ c' y hc hE₁ hE₁o h
  haveI := hE₁o
  have hη : genericPoint E ∈ E₁ := by
    obtain ⟨x, hx⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty E₁).mp hE₁
    exact ((genericPoint_spec E).mem_open_set_iff E₁.isOpen).mpr ⟨x, trivial, hx⟩
  haveI : Nonempty E₁.toScheme := ⟨⟨genericPoint E, hη⟩⟩
  haveI : AlgebraicGeometry.IsIntegral E₁.toScheme := isIntegral_of_isOpenImmersion E₁.ι
  have hξ : E₁.ι (genericPoint E₁.toScheme) = genericPoint E :=
    genericPoint_eq_of_isOpenImmersion E₁.ι
  have hξ2 : (E₁.ι ≫ e) (genericPoint E₁.toScheme) = genericPoint Y :=
    genericPoint_eq_of_isOpenImmersion (E₁.ι ≫ e)
  have hC1 : e (genericPoint E) = genericPoint Y := by
    rw [← hξ, ← Scheme.Hom.comp_apply]; exact hξ2
  have hC3 : IsIso (e.stalkMap (genericPoint E)) := by
    haveI h1 : IsIso (e.stalkMap (E₁.ι (genericPoint E₁.toScheme)) ≫
        E₁.ι.stalkMap (genericPoint E₁.toScheme)) := by
      rw [← Scheme.Hom.stalkMap_comp]
      exact IsOpenImmersion.instIsIsoCommRingCatStalkMap (E₁.ι ≫ e) _
    have h2 := IsIso.of_isIso_comp_right (e.stalkMap (E₁.ι (genericPoint E₁.toScheme)))
      (E₁.ι.stalkMap (genericPoint E₁.toScheme))
    have key : ∀ x, x = genericPoint E → IsIso (e.stalkMap x) →
        IsIso (e.stalkMap (genericPoint E)) := by
      rintro x rfl hx; exact hx
    exact key _ hξ h2
  have hC4 : Function.Injective (Y.presheaf.stalkSpecializes h).hom := by
    rw [injective_iff_map_eq_zero]
    intro t ht
    obtain ⟨U, hyU, σ, rfl⟩ := TopCat.Presheaf.exists_germ_eq Y.presheaf t
    have hm : e (genericPoint E) ∈ U := h.mem_open U.isOpen hyU
    rw [TopCat.Presheaf.germ_stalkSpecializes_apply] at ht
    have hσ : σ = 0 := germ_injective_of_isIntegral Y _ hm (ht.trans (map_zero _).symm)
    rw [hσ, map_zero]
  refine ⟨hC1, hη, hC3, hC4, ?_⟩
  intro s t H
  have g : genericPoint E ⤳ c' := genericPoint_specializes c'
  have L : (E.presheaf.stalkSpecializes g).hom ((E.presheaf.germ ⊤ c' trivial).hom s) =
      (E.presheaf.germ ⊤ (genericPoint E) trivial).hom s :=
    TopCat.Presheaf.germ_stalkSpecializes_apply E.presheaf (U := ⊤) (y := c') trivial g s
  have R2 : ∀ (p : e (genericPoint E) ⤳ e c'),
      (Y.presheaf.stalkSpecializes p).hom
        ((Y.presheaf.stalkSpecializes (specializes_of_eq hc)).hom t) =
      (Y.presheaf.stalkSpecializes h).hom t :=
    fun p => TopCat.Presheaf.stalkSpecializes_comp_apply Y.presheaf p _ t
  calc (E.presheaf.germ ⊤ (genericPoint E) trivial).hom s
      = (E.presheaf.stalkSpecializes g).hom ((E.presheaf.germ ⊤ c' trivial).hom s) := L.symm
    _ = (E.presheaf.stalkSpecializes g).hom (wcpaDjGslTr e c' y hc t) := by rw [H]
    _ = (E.presheaf.stalkSpecializes g).hom ((e.stalkMap c').hom
          ((Y.presheaf.stalkSpecializes (specializes_of_eq hc)).hom t)) := rfl
    _ = (e.stalkMap (genericPoint E)).hom ((Y.presheaf.stalkSpecializes (g.map e.continuous)).hom
          ((Y.presheaf.stalkSpecializes (specializes_of_eq hc)).hom t)) :=
        (Scheme.Hom.stalkSpecializes_stalkMap_apply e _ _ g _).symm
    _ = (e.stalkMap (genericPoint E)).hom ((Y.presheaf.stalkSpecializes h).hom t) :=
        congrArg (e.stalkMap (genericPoint E)).hom (R2 _)

theorem wcpa_dj_gsl_ratio_map : ∀ (k : Type u) [Field k] {Y₂ E : Scheme.{u}}
    [AlgebraicGeometry.IsIntegral Y₂] [AlgebraicGeometry.IsIntegral E] (s₂ : Y₂ ⟶ Spec (.of k))
    (N : ℕ) (I : Finset (Fin (N + 1))) (O₂ : Y₂.Opens)
    (a₂ : O₂.toScheme ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra),
    a₂ ≫ @Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
      MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
        (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) = O₂.ι ≫ s₂ →
    (∀ c (i : Fin (N + 1)), i ∉ I →
      a₂ c ∉ @Proj.basicOpen _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra (MvPolynomial.X i)) →
    ∀ i₀ ∈ I, genericPoint Y₂ ∈ O₂.ι ''ᵁ (a₂ ⁻¹ᵁ @Proj.basicOpen _ _ _ _ _
      (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) MvPolynomial.gradedAlgebra
      (MvPolynomial.X i₀)) →
    ∀ (y : Y₂) (n : ℕ) (z : Y₂.presheaf.stalk y) (T : Fin n → Y₂.presheaf.stalk y)
      (α : Fin (N + 1) → ℤ) (β : Fin (N + 1) → Fin n → ℤ) (w : Fin (N + 1) → (Y₂.presheaf.stalk y)ˣ),
      z ≠ 0 → (∀ l, T l ≠ 0) →
      (∀ i ∈ I, ∃ num den : Y₂.presheaf.stalk y,
        wcpaDjStcRatioLink (wcpaDjStcRatioSec k O₂ a₂ i₀ i) y num den ∧
        num * z ^ (-(α i)).toNat * ∏ l, T l ^ (-(β i l)).toNat =
          ↑(w i) * den * z ^ (α i).toNat * ∏ l, T l ^ (β i l).toNat) →
    ∀ kk ∈ I, ∀ ℓ : Fin n → ℕ, (∀ i ∈ I, α kk ≤ α i) →
      (∀ i ∈ I, ∀ l, 0 ≤ β i l - β kk l + (α i - α kk) * (ℓ l : ℤ)) →
      (ℓ = 0 ∨ ∃ i' ∈ I, α kk < α i' ∧ ∀ l, β i' l - β kk l + (α i' - α kk) * (ℓ l : ℤ) = 0) →
    ∀ (e : E ⟶ Y₂) (c' : E) (hc : e c' = y) (U : Γ(E, ⊤)) (T' : Fin n → Γ(E, ⊤))
      (Wu : Fin (N + 1) → (Γ(E, ⊤))ˣ) (E₁ : E.Opens), E₁ ≠ ⊥ → IsOpenImmersion (E₁.ι ≫ e) →
      (∀ l, (E.presheaf.germ ⊤ c' trivial).hom (T' l) = wcpaDjGslTr e c' y hc (T l)) →
      (∀ i, (E.presheaf.germ ⊤ c' trivial).hom (Wu i : Γ(E, ⊤)) =
        wcpaDjGslTr e c' y hc (w i : Y₂.presheaf.stalk y)) →
      wcpaDjGslTr e c' y hc z = (E.presheaf.germ ⊤ c' trivial).hom U *
        ∏ l, (E.presheaf.germ ⊤ c' trivial).hom (T' l) ^ ℓ l →
    ∃ (ϑ : E ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra) (E₂ : E.Opens) (h₂ : E₂.toScheme ⟶ O₂.toScheme),
      e ≫ s₂ = ϑ ≫ @Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
          (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) ∧
      E₂ ≠ ⊥ ∧ IsOpenImmersion (E₂.ι ≫ e) ∧ h₂ ≫ O₂.ι = E₂.ι ≫ e ∧ h₂ ≫ a₂ = E₂.ι ≫ ϑ ∧
      ∀ (R : Type u) [CommRing R] (f : R →+* E.presheaf.stalk c'),
        (∀ x : Y₂.presheaf.stalk (e c'), ∃ r, f r = (e.stalkMap c').hom x) →
        (∀ x : (@Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
            MvPolynomial.gradedAlgebra).presheaf.stalk (ϑ c'),
          ∃ r, f r = (ϑ.stalkMap c').hom x) →
        ∃ q : Polynomial R, q.Monic ∧
          Polynomial.eval₂ f ((E.presheaf.germ ⊤ c' trivial).hom U) q = 0 :=
by
  intro k _ Y₂ E _ _ s₂ N I O₂ a₂ hstr hC1 i₀ hi₀ hη y n z T α β w hz0 hT0 hrel kk hkk ℓ hka hkb
    hkc e c' hc U T' Wu E₁ hE₁ hE₁o hT' hWu hzU
  classical
  haveI := hE₁o

  let f : Fin (N + 1) → Γ(E, ⊤) := fun i => if i ∈ I then
    (↑(Wu i) : Γ(E, ⊤)) * ↑(Wu kk)⁻¹ * U ^ (α i - α kk).toNat *
      ∏ l, T' l ^ (β i l - β kk l + (α i - α kk) * (ℓ l : ℤ)).toNat else 0
  have hf1 : f kk = 1 := by
    simp only [f, if_pos hkk, sub_self, zero_mul, add_zero, Int.toNat_zero, pow_zero,
      Finset.prod_const_one, mul_one, Units.mul_inv]
  obtain ⟨ϑ, hϑ, hϑs, hϑf⟩ := wcpa_dj_gsl_rm_chart_exists k N kk E (e ≫ s₂) f hf1

  have hsp : e (genericPoint E) ⤳ y := by
    rw [← hc]; exact (genericPoint_specializes c').map e.continuous
  obtain ⟨hηY, hηE₁, hiso, hspinj, htr⟩ :=
    wcpa_dj_gsl_rm_generic_transport e E₁ c' y hc hE₁ hE₁o hsp
  haveI := hiso
  have hεinj : Function.Injective (e.stalkMap (genericPoint E)).hom :=
    (asIso (e.stalkMap (genericPoint E))).commRingCatIsoToRingEquiv.injective
  obtain ⟨Φ, hΦ⟩ : ∃ Φ : Y₂.presheaf.stalk y →+* E.presheaf.stalk (genericPoint E),
      ∀ t, Φ t = (e.stalkMap (genericPoint E)).hom ((Y₂.presheaf.stalkSpecializes hsp).hom t) :=
    ⟨(e.stalkMap (genericPoint E)).hom.comp (Y₂.presheaf.stalkSpecializes hsp).hom,
      fun t => rfl⟩
  have hΦinj : Function.Injective Φ := by
    intro a b hab
    rw [hΦ, hΦ] at hab
    exact hspinj (hεinj hab)
  have hT'η : ∀ l, (E.presheaf.germ ⊤ (genericPoint E) trivial).hom (T' l) = Φ (T l) :=
    fun l => (htr _ _ (hT' l)).trans (hΦ _).symm
  have hWη : ∀ i, (E.presheaf.germ ⊤ (genericPoint E) trivial).hom (Wu i : Γ(E, ⊤)) =
      Φ (w i) := fun i => (htr _ _ (hWu i)).trans (hΦ _).symm
  have hzη : (E.presheaf.germ ⊤ (genericPoint E) trivial).hom U *
      ∏ l, Φ (T l) ^ ℓ l = Φ z := by
    have h := htr (U * ∏ l, T' l ^ ℓ l) z (by
      rw [map_mul, map_prod]; simp only [map_pow]; exact hzU.symm)
    rw [map_mul, map_prod] at h
    simp only [map_pow, hT'η] at h
    exact h.trans (hΦ _).symm
  have hWinv' : ∀ i, (E.presheaf.germ ⊤ c' trivial).hom ↑(Wu i)⁻¹ =
      wcpaDjGslTr e c' y hc ↑(w i)⁻¹ := by
    intro i
    have h1 : (E.presheaf.germ ⊤ c' trivial).hom ↑(Wu i)⁻¹ *
        (E.presheaf.germ ⊤ c' trivial).hom ↑(Wu i) = 1 := by
      rw [← map_mul, Units.inv_mul, map_one]
    have h2 : wcpaDjGslTr e c' y hc ↑(w i)⁻¹ * wcpaDjGslTr e c' y hc ↑(w i) = 1 := by
      rw [← map_mul, Units.inv_mul, map_one]
    rw [hWu i] at h1
    calc (E.presheaf.germ ⊤ c' trivial).hom ↑(Wu i)⁻¹
        = (E.presheaf.germ ⊤ c' trivial).hom ↑(Wu i)⁻¹ *
            (wcpaDjGslTr e c' y hc ↑(w i) * wcpaDjGslTr e c' y hc ↑(w i)⁻¹) := by
          rw [mul_comm (wcpaDjGslTr e c' y hc ↑(w i)), h2, mul_one]
      _ = _ := by rw [← mul_assoc, h1, one_mul]

  choose! num den hlink hreln using hrel
  have hw0dom : e (genericPoint E) ∈ O₂.ι ''ᵁ (a₂ ⁻¹ᵁ wcSgD k N i₀) := by
    rw [hηY]; exact hη
  obtain ⟨ρ, hρdef⟩ : ∃ ρ : Fin (N + 1) → E.presheaf.stalk (genericPoint E), ∀ i,
      ρ i = (e.stalkMap (genericPoint E)).hom ((Y₂.presheaf.germ _ (e (genericPoint E))
        hw0dom).hom (wcpaDjStcRatioSec k O₂ a₂ i₀ i)) := ⟨_, fun i => rfl⟩
  have hρlink : ∀ i ∈ I, ρ i * Φ (den i) = Φ (num i) := by
    intro i hi
    have h := congrArg (e.stalkMap (genericPoint E)).hom ((hlink i hi).2 _ hw0dom hsp)
    rw [map_mul] at h
    rw [hρdef, hΦ, hΦ]
    exact h
  obtain ⟨hρkk, hρ⟩ := wcpa_dj_gsl_rm_field_algebra I kk hkk n α β ℓ
    ((E.presheaf.germ ⊤ (genericPoint E) trivial).hom U) (fun l => Φ (T l))
    (fun l h => hT0 l (hΦinj (h.trans (map_zero Φ).symm)))
    (by rw [hzη]; exact fun h => hz0 (hΦinj (h.trans (map_zero Φ).symm)))
    (fun i => Φ (w i)) (fun i => Φ (num i)) (fun i => Φ (den i)) ρ
    (fun i _ h => (w i).ne_zero (hΦinj (h.trans (map_zero Φ).symm)))
    hka hkb
    (by
      intro i hi
      refine ⟨fun h => nonZeroDivisors.ne_zero (hlink i hi).1
        (hΦinj (h.trans (map_zero Φ).symm)), hρlink i hi, ?_⟩
      have h := congrArg Φ (hreln i hi)
      simp only [map_mul, map_pow, map_prod] at h
      rw [← hzη] at h
      exact h)
  have hfG : ∀ i ∈ I, (E.presheaf.germ ⊤ (genericPoint E) trivial).hom (f i) =
      Φ (w i) * (Φ (w kk))⁻¹ * (E.presheaf.germ ⊤ (genericPoint E) trivial).hom U ^
        (α i - α kk).toNat *
      ∏ l, Φ (T l) ^ (β i l - β kk l + (α i - α kk) * (ℓ l : ℤ)).toNat := by
    intro i hi
    simp only [f, if_pos hi, map_mul, map_pow, map_prod, map_units_inv, hWη, hT'η]

  have hY : e (genericPoint E) ∈ O₂.ι ''ᵁ (a₂ ⁻¹ᵁ (wcSgD k N i₀ ⊓ wcSgD k N kk)) := by
    have hu : IsUnit ((Y₂.presheaf.germ _ (e (genericPoint E)) hw0dom).hom
        (wcpaDjStcRatioSec k O₂ a₂ i₀ kk)) :=
      isUnit_of_map_unit (e.stalkMap (genericPoint E)).hom _
        (by rw [← hρdef]; exact isUnit_iff_ne_zero.mpr hρkk)
    have hb := (Scheme.mem_basicOpen Y₂ _ _ hw0dom).mpr hu
    have hb2 : e (genericPoint E) ∈
        O₂.ι ''ᵁ (a₂ ⁻¹ᵁ (wcProjK k N).basicOpen (wcSgE k N i₀ kk)) := by
      rw [Scheme.preimage_basicOpen, Scheme.image_basicOpen]; exact hb
    obtain ⟨x, hx, hxe⟩ := hb2
    exact ⟨x, ⟨Scheme.basicOpen_le _ _ hx, wcpa_dj_gsl_rm_ratio_basicOpen_le k N i₀ kk hx⟩, hxe⟩

  have hle' : a₂ ⁻¹ᵁ (wcSgD k N i₀ ⊓ wcSgD k N kk) ≤ a₂ ⁻¹ᵁ wcSgD k N kk := fun _ hx => hx.2
  have hQ : ∀ i, (E.presheaf.germ ⊤ (genericPoint E) trivial).hom (f i) =
      (e.stalkMap (genericPoint E)).hom ((Y₂.presheaf.germ _ (e (genericPoint E)) hY).hom
        ((O₂.ι.appIso (a₂ ⁻¹ᵁ (wcSgD k N i₀ ⊓ wcSgD k N kk))).inv.hom
          ((a₂.appLE (wcSgD k N kk) _ hle').hom (wcSgE k N kk i)))) := by
    intro i
    by_cases hi : i ∈ I
    · have h0 := wcpa_dj_gsl_rm_transport_ratio O₂ a₂ (wcSgD k N i₀) (wcSgD k N kk) _ _ _
        (wcpa_dj_gsl_rm_ratio_mul k N i₀ kk i) (e (genericPoint E)) hY hw0dom
      have h := congrArg (e.stalkMap (genericPoint E)).hom h0
      rw [map_mul] at h
      have h' : (e.stalkMap (genericPoint E)).hom ((Y₂.presheaf.germ _ (e (genericPoint E)) hY).hom
          ((O₂.ι.appIso (a₂ ⁻¹ᵁ (wcSgD k N i₀ ⊓ wcSgD k N kk))).inv.hom
            ((a₂.appLE (wcSgD k N kk) _ hle').hom (wcSgE k N kk i)))) * ρ kk = ρ i := by
        rw [hρdef, hρdef]; exact h
      rw [hfG i hi]
      rw [hρ i hi, mul_comm] at h'
      exact (mul_left_cancel₀ hρkk h').symm
    · have hf0 : f i = 0 := by simp only [f, if_neg hi]
      rw [hf0, map_zero]
      by_contra hne
      have hu := isUnit_of_map_unit (e.stalkMap (genericPoint E)).hom _
        (isUnit_iff_ne_zero.mpr (Ne.symm hne))
      have hb := (Scheme.mem_basicOpen Y₂ _ _ hY).mpr hu
      have hb2 : e (genericPoint E) ∈ O₂.ι ''ᵁ (a₂ ⁻¹ᵁ (wcSgD k N i₀ ⊓ wcSgD k N kk) ⊓
          a₂ ⁻¹ᵁ (wcProjK k N).basicOpen (wcSgE k N kk i)) := by
        rw [Scheme.preimage_basicOpen,
          ← Scheme.basicOpen_res O₂.toScheme _ (homOfLE hle').op, Scheme.image_basicOpen]
        exact hb
      obtain ⟨x, ⟨_, hxB⟩, _⟩ := hb2
      exact hC1 x i hi (wcpa_dj_gsl_rm_ratio_basicOpen_le k N kk i hxB)

  let E₂ : E.Opens := E₁ ⊓ e ⁻¹ᵁ (O₂.ι ''ᵁ (a₂ ⁻¹ᵁ (wcSgD k N i₀ ⊓ wcSgD k N kk)))
  have hηE₂ : genericPoint E ∈ E₂ := ⟨hηE₁, hY⟩
  have hE₂ne : E₂ ≠ ⊥ := (TopologicalSpace.Opens.ne_bot_iff_nonempty _).mpr ⟨_, hηE₂⟩
  have hE₂o : IsOpenImmersion (E₂.ι ≫ e) := by
    rw [← Scheme.homOfLE_ι E (inf_le_left : E₂ ≤ E₁), Category.assoc]
    infer_instance
  have hrange : Set.range ⇑(E₂.ι ≫ e) ⊆ Set.range ⇑O₂.ι := by
    rintro _ ⟨x, rfl⟩
    have hx2 : e x.1 ∈ O₂.ι ''ᵁ (a₂ ⁻¹ᵁ (wcSgD k N i₀ ⊓ wcSgD k N kk)) := x.2.2
    obtain ⟨v, -, hv⟩ := hx2
    refine ⟨v, ?_⟩
    rw [Scheme.Hom.comp_apply]
    exact hv
  let h₂ : E₂.toScheme ⟶ O₂.toScheme := IsOpenImmersion.lift O₂.ι (E₂.ι ≫ e) hrange
  have hh₂ : h₂ ≫ O₂.ι = E₂.ι ≫ e := IsOpenImmersion.lift_fac _ _ _
  have hV'top : ⊤ ≤ h₂ ⁻¹ᵁ (a₂ ⁻¹ᵁ (wcSgD k N i₀ ⊓ wcSgD k N kk)) := by
    intro x _
    have hx2 : e x.1 ∈ O₂.ι ''ᵁ (a₂ ⁻¹ᵁ (wcSgD k N i₀ ⊓ wcSgD k N kk)) := x.2.2
    obtain ⟨v, hv, hve⟩ := hx2
    have h1 : O₂.ι (h₂ x) = e x.1 := by
      rw [← Scheme.Hom.comp_apply, hh₂, Scheme.Hom.comp_apply]
      rfl
    have hvx : v = h₂ x := O₂.ι.isOpenEmbedding.injective (hve.trans h1.symm)
    show h₂ x ∈ a₂ ⁻¹ᵁ (wcSgD k N i₀ ⊓ wcSgD k N kk)
    rw [← hvx]; exact hv
  have hb : ⊤ ≤ (h₂ ≫ a₂) ⁻¹ᵁ wcSgD k N kk := fun x hx => hle' (hV'top hx)
  have hb' : ⊤ ≤ (E₂.ι ≫ ϑ) ⁻¹ᵁ wcSgD k N kk := fun x _ => hϑ (show E₂.ι x ∈ ⊤ from trivial)
  have hstr' : a₂ ≫ wcProjKStr k N = O₂.ι ≫ s₂ := hstr
  have hG5 : h₂ ≫ a₂ = E₂.ι ≫ ϑ := by
    apply wcpa_dj_gsl_rm_chart_unique k N kk E₂ (h₂ ≫ a₂) (E₂.ι ≫ ϑ) hb hb'
    · rw [Category.assoc, Category.assoc, hstr', hϑs, ← Category.assoc, hh₂, Category.assoc]
    · intro i
      rw [wcpa_dj_gsl_rm_appLE_agree O₂ a₂ e E₂ h₂ (wcSgD k N kk) _ hle' (wcSgE k N kk i) (f i)
        hηE₂ hY hh₂ hb (hQ i)]
      rw [← Scheme.Hom.appLE_comp_appLE E₂.ι ϑ (wcSgD k N kk) ⊤ ⊤ hϑ (fun _ _ => trivial),
        CommRingCat.comp_apply, hϑf i]
  refine ⟨ϑ, E₂, h₂, hϑs.symm, hE₂ne, hE₂o, hh₂, hG5, ?_⟩

  intro R _ fR hfe hfϑ
  rcases hkc with hℓ0 | ⟨i', hi', hlt, he0⟩
  · subst hℓ0
    obtain ⟨r, hr⟩ := hfe ((Y₂.presheaf.stalkSpecializes (specializes_of_eq hc)).hom z)
    refine ⟨Polynomial.X - Polynomial.C r, Polynomial.monic_X_sub_C r, ?_⟩
    rw [Polynomial.eval₂_sub, Polynomial.eval₂_X, Polynomial.eval₂_C, hr, sub_eq_zero]
    have h := hzU
    simp only [Pi.zero_apply, pow_zero, Finset.prod_const_one, mul_one] at h
    exact h.symm
  · have hd : (α i' - α kk).toNat ≠ 0 := by omega
    have hmem : ϑ c' ∈ wcSgD k N kk := hϑ (show c' ∈ (⊤ : E.Opens) from trivial)
    have h1 : (ϑ.stalkMap c').hom (((wcProjK k N).presheaf.germ (wcSgD k N kk) (ϑ c') hmem).hom
        (wcSgE k N kk i')) = (E.presheaf.germ ⊤ c' trivial).hom (f i') := by
      rw [Scheme.Hom.germ_stalkMap_apply, ← hϑf i']
      exact (TopCat.Presheaf.germ_res_apply E.presheaf (homOfLE hϑ) c' trivial _).symm
    obtain ⟨r₁, hr₁⟩ := hfϑ (((wcProjK k N).presheaf.germ (wcSgD k N kk) (ϑ c') hmem).hom
        (wcSgE k N kk i'))
    obtain ⟨r₂, hr₂⟩ := hfe ((Y₂.presheaf.stalkSpecializes (specializes_of_eq hc)).hom
      (↑(w kk) * ↑(w i')⁻¹))
    have h2 : fR r₂ = (E.presheaf.germ ⊤ c' trivial).hom ↑(Wu kk) *
        (E.presheaf.germ ⊤ c' trivial).hom ↑(Wu i')⁻¹ := by
      rw [hr₂]
      show wcpaDjGslTr e c' y hc (↑(w kk) * ↑(w i')⁻¹) = _
      rw [map_mul, hWu, hWinv']
    have h3 : fR (r₂ * r₁) = (E.presheaf.germ ⊤ c' trivial).hom U ^ (α i' - α kk).toNat := by
      rw [map_mul, h2, hr₁, h1]
      simp only [f, if_pos hi', he0, Int.toNat_zero, pow_zero, Finset.prod_const_one, mul_one,
        map_mul, map_pow]
      have u1 : (E.presheaf.germ ⊤ c' trivial).hom ↑(Wu i')⁻¹ *
          (E.presheaf.germ ⊤ c' trivial).hom ↑(Wu i') = 1 := by
        rw [← map_mul, Units.inv_mul, map_one]
      have u2 : (E.presheaf.germ ⊤ c' trivial).hom ↑(Wu kk) *
          (E.presheaf.germ ⊤ c' trivial).hom ↑(Wu kk)⁻¹ = 1 := by
        rw [← map_mul, Units.mul_inv, map_one]
      linear_combination ((E.presheaf.germ ⊤ c' trivial).hom U ^ (α i' - α kk).toNat *
          (E.presheaf.germ ⊤ c' trivial).hom ↑(Wu kk) *
          (E.presheaf.germ ⊤ c' trivial).hom ↑(Wu kk)⁻¹) * u1 +
        (E.presheaf.germ ⊤ c' trivial).hom U ^ (α i' - α kk).toNat * u2
    refine ⟨Polynomial.X ^ (α i' - α kk).toNat - Polynomial.C (r₂ * r₁),
      Polynomial.monic_X_pow_sub_C _ hd, ?_⟩
    rw [Polynomial.eval₂_sub, Polynomial.eval₂_X_pow, Polynomial.eval₂_C, h3, sub_self]

theorem wcpa_dj_gsl_birational_lift : ∀ {E C Y P : Scheme.{u}} [IrreducibleSpace Y] (π : C ⟶ Y)
    (A : C ⟶ P) (O : Y.Opens) (b : O.toScheme ⟶ P) (e : E ⟶ Y) (ϑ : E ⟶ P) (E₂ : E.Opens)
    (h₂ : E₂.toScheme ⟶ O.toScheme),
    (∃ V : Y.Opens, V ≠ ⊥ ∧ IsIso (π ∣_ V)) → (π ⁻¹ᵁ O).ι ≫ A = (π ∣_ O) ≫ b →
    E₂ ≠ ⊥ → IsOpenImmersion (E₂.ι ≫ e) → h₂ ≫ O.ι = E₂.ι ≫ e → h₂ ≫ b = E₂.ι ≫ ϑ →
    ∃ (E₁ : E.Opens) (ψ₁ : E₁.toScheme ⟶ C), E₁ ≠ ⊥ ∧ IsOpenImmersion ψ₁ ∧
      ψ₁ ≫ π = E₁.ι ≫ e ∧ ψ₁ ≫ A = E₁.ι ≫ ϑ :=
by
  intro E C Y P _ π A O b e ϑ E₂ h₂ hV hAb hE₂ne hE₂o hh₂ι hh₂b
  obtain ⟨V, hV0, hVi⟩ := hV
  haveI := hVi
  haveI := hE₂o
  let E₁ : E.Opens := E₂ ⊓ e ⁻¹ᵁ V
  let j : E₁.toScheme ⟶ E₂.toScheme := E.homOfLE (inf_le_left : E₂ ⊓ e ⁻¹ᵁ V ≤ E₂)
  have hj : j ≫ E₂.ι = E₁.ι := Scheme.homOfLE_ι _ _

  have hE₁ne : E₁ ≠ ⊥ := by
    have hRopen : IsOpen (Set.range (E₂.ι ≫ e)) := (E₂.ι ≫ e).isOpenEmbedding.isOpen_range
    obtain ⟨x, hx⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty E₂).mp hE₂ne
    have hRne : (Set.range (E₂.ι ≫ e)).Nonempty := ⟨_, ⟨⟨x, hx⟩, rfl⟩⟩
    have hVne : (V : Set Y).Nonempty := (TopologicalSpace.Opens.ne_bot_iff_nonempty V).mp hV0
    obtain ⟨y, hyV, z, hz⟩ := nonempty_preirreducible_inter V.isOpen hRopen hVne hRne
    rw [TopologicalSpace.Opens.ne_bot_iff_nonempty]
    refine ⟨z.1, z.2, ?_⟩
    show e z.1 ∈ V
    have : (E₂.ι ≫ e) z = e z.1 := by
      rw [Scheme.Hom.comp_apply]; rfl
    rw [← this, hz]
    exact hyV
  have heq1 : E₁.ι ≫ e = j ≫ E₂.ι ≫ e := by rw [← Category.assoc, hj]
  haveI : IsOpenImmersion (E₁.ι ≫ e) := by rw [heq1]; infer_instance
  have hrV : Set.range (E₁.ι ≫ e) ⊆ Set.range V.ι := by
    rintro _ ⟨x, rfl⟩
    rw [Scheme.Opens.range_ι, Scheme.Hom.comp_apply]
    exact x.2.2
  let f₁ : E₁.toScheme ⟶ V.toScheme := IsOpenImmersion.lift V.ι (E₁.ι ≫ e) hrV
  have hf₁ : f₁ ≫ V.ι = E₁.ι ≫ e := IsOpenImmersion.lift_fac _ _ _
  haveI : IsOpenImmersion f₁ := by
    haveI : IsOpenImmersion (f₁ ≫ V.ι) := by rw [hf₁]; infer_instance
    exact IsOpenImmersion.of_comp f₁ V.ι
  let ψ₁ : E₁.toScheme ⟶ C := f₁ ≫ inv (π ∣_ V) ≫ (π ⁻¹ᵁ V).ι
  have hψπ : ψ₁ ≫ π = E₁.ι ≫ e := by
    show (f₁ ≫ inv (π ∣_ V) ≫ (π ⁻¹ᵁ V).ι) ≫ π = E₁.ι ≫ e
    rw [Category.assoc, Category.assoc, ← morphismRestrict_ι, IsIso.inv_hom_id_assoc, hf₁]
  have hrO : Set.range ψ₁ ⊆ Set.range (π ⁻¹ᵁ O).ι := by
    rintro _ ⟨x, rfl⟩
    rw [Scheme.Opens.range_ι]
    show π (ψ₁ x) ∈ O
    have h1 : π (ψ₁ x) = (ψ₁ ≫ π) x := (Scheme.Hom.comp_apply _ _ _).symm
    rw [h1, hψπ, heq1, ← hh₂ι]
    rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply]
    exact (h₂ (j x)).2
  let ψ' := IsOpenImmersion.lift (π ⁻¹ᵁ O).ι ψ₁ hrO
  have hψ' : ψ' ≫ (π ⁻¹ᵁ O).ι = ψ₁ := IsOpenImmersion.lift_fac _ _ _
  have hlift : ψ' ≫ π ∣_ O = j ≫ h₂ := by
    rw [← cancel_mono O.ι]
    calc (ψ' ≫ π ∣_ O) ≫ O.ι = ψ' ≫ (π ⁻¹ᵁ O).ι ≫ π := by
          rw [Category.assoc, morphismRestrict_ι]
      _ = ψ₁ ≫ π := by rw [← Category.assoc, hψ']
      _ = j ≫ E₂.ι ≫ e := by rw [hψπ, heq1]
      _ = (j ≫ h₂) ≫ O.ι := by rw [Category.assoc, hh₂ι]
  refine ⟨E₁, ψ₁, hE₁ne, ?_, hψπ, ?_⟩
  · show IsOpenImmersion (f₁ ≫ inv (π ∣_ V) ≫ (π ⁻¹ᵁ V).ι)
    infer_instance
  calc ψ₁ ≫ A = ψ' ≫ (π ⁻¹ᵁ O).ι ≫ A := by rw [← Category.assoc, hψ']
    _ = ψ' ≫ π ∣_ O ≫ b := by rw [hAb]
    _ = j ≫ h₂ ≫ b := by rw [← Category.assoc, hlift, Category.assoc]
    _ = j ≫ E₂.ι ≫ ϑ := by rw [hh₂b]
    _ = E₁.ι ≫ ϑ := by rw [← Category.assoc, hj]

theorem wcpa_dj_gsl_chart_model : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
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
      ∀ (j : Fin m) (p : S''),
      ∃ (E : Scheme.{u}) (_ : AlgebraicGeometry.IsIntegral E) (e : E ⟶ Limits.pullback g ρ)
        (ϑ : E ⟶ @Proj _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
          MvPolynomial.gradedAlgebra) (c' : E) (E₁ : E.Opens) (ψ₁ : E₁.toScheme ⟶ C)
        (V : S''.Opens) (hp : p ∈ V) (s₀ : V.toScheme ⟶ E) (u : E.presheaf.stalk c'),
        e ≫ Limits.pullback.snd g ρ ≫ ρ ≫ sS =
          ϑ ≫ @Proj.toSpecZero _ _ _ _ _ (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
            MvPolynomial.gradedAlgebra ≫ Spec.map (CommRingCat.ofHom
              (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) ∧
        (∀ x : E, IsIntegrallyClosed (E.presheaf.stalk x)) ∧
        SmoothOfRelativeDimension 1 (e ≫ Limits.pullback.snd g ρ) ∧
        E₁ ≠ ⊥ ∧ IsOpenImmersion ψ₁ ∧ ψ₁ ≫ π₅ = E₁.ι ≫ e ∧ ψ₁ ≫ A = E₁.ι ≫ ϑ ∧
        s₀ ≫ e = V.ι ≫ wcpaDjStcLift g ρ τ hτ j ∧ s₀ ⟨p, hp⟩ = c' ∧
        ∀ μ : E ⟶ C, μ ≫ π₅ = e → μ ≫ A = ϑ →
          (∃ q : Polynomial (C.presheaf.stalk (μ c')), q.Monic ∧
            Polynomial.eval₂ (μ.stalkMap c').hom u q = 0) ∧
          ∀ x : E.presheaf.stalk c', ∃ f₁ f₂ : Polynomial (C.presheaf.stalk (μ c')),
            IsUnit (Polynomial.eval₂ (μ.stalkMap c').hom u f₂) ∧
            x * Polynomial.eval₂ (μ.stalkMap c').hom u f₂ =
              Polynomial.eval₂ (μ.stalkMap c').hom u f₁ :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hτ S'' _ ρ D'' H C _ π₅ A hM _hπ₅p j p
  have H0 := H
  obtain ⟨hK, _hρS, _hρp, hρs, _hρf, hreg'', _hsnc'', _hD'', hPO⟩ := H
  obtain ⟨_hS, _hY, hss, _hmono, _hτs, hW, hWsm, hWgc, _hreg, _hcomps, _hWD, hO, hstr, hC1,
    _hC2⟩ := hK
  haveI hYint : AlgebraicGeometry.IsIntegral (Limits.pullback g ρ) :=
    wcpa_dj_tr_basechange_integral S S'' Y ρ g W hss.1 hρs hW hWsm hWgc
  have hflat : Flat (Limits.pullback.snd g ρ) := by
    first
      | exact MorphismProperty.of_isPullback (P := @Flat) (IsPullback.of_hasPullback g ρ) hss.1
      | exact MorphismProperty.of_isPullback (P := @Flat) (IsPullback.of_hasPullback g ρ).flip
          hss.1
      | exact MorphismProperty.pullback_snd _ _ hss.1
  haveI : IsProper g := hss.2.1
  have hlftg : LocallyOfFiniteType g := inferInstance
  have hlft : LocallyOfFiniteType (Limits.pullback.snd g ρ) := by
    first
      | exact MorphismProperty.of_isPullback (P := @LocallyOfFiniteType)
          (IsPullback.of_hasPullback g ρ) hlftg
      | exact MorphismProperty.of_isPullback (P := @LocallyOfFiniteType)
          (IsPullback.of_hasPullback g ρ).flip hlftg
      | exact MorphismProperty.pullback_snd _ _ hlftg
  have hO''ne : Limits.pullback.fst g ρ ⁻¹ᵁ O ≠ ⊥ := by
    intro hbot
    apply wcpa_dj_gcl_fst_preimage_ne_bot g ρ W hρs hW hWgc
    rw [eq_bot_iff] at hbot ⊢
    exact le_trans (fun x hx => hO hx) hbot
  have hC1'' : ∀ c (i : Fin (N + 1)), i ∉ I →
      ((Limits.pullback.fst g ρ ∣_ O) ≫ a) c ∉ @Proj.basicOpen _ _ _ _ _
        (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k)
        MvPolynomial.gradedAlgebra (MvPolynomial.X i) :=
    fun c i hi => hC1 _ i hi
  obtain ⟨i₀, hi₀, hη⟩ := wcpa_dj_gsl_generic_index k N I (Limits.pullback.fst g ρ ⁻¹ᵁ O)
    ((Limits.pullback.fst g ρ ∣_ O) ≫ a) hO''ne hC1''
  obtain ⟨n, t, J, α, β, c, hMD, hO1, hO2⟩ := hPO i₀ hi₀ (wcpaDjStcLift g ρ τ hτ j p)
  obtain ⟨hc0, ⟨W₀, hyW₀, hW₀sm⟩, z, hzr, ê, hêC, hêz, hnd⟩ :=
    wcpa_dj_gsl_section_disjunct k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' H0 j p i₀ n t J α β c
      hMD
  subst hc0
  obtain ⟨hz0, hT0, w, hw⟩ := wcpa_dj_gsl_ratio_descent (Limits.pullback.snd g ρ) hflat hlft I
    (fun i => wcpaDjStcRatioSec k (Limits.pullback.fst g ρ ⁻¹ᵁ O)
      ((Limits.pullback.fst g ρ ∣_ O) ≫ a) i₀ i) (wcpaDjStcLift g ρ τ hτ j p) (hreg'' _) n t
    hMD.1 hMD.2.1 z ê hêC hêz α β hnd
  obtain ⟨kk, hkk, ℓ, hka, hkb, hkc⟩ := wcpa_dj_gsl_index_shift I ⟨i₀, hi₀⟩ n α β hO1 hO2
  have hσ : wcpaDjStcLift g ρ τ hτ j ≫ Limits.pullback.snd g ρ = 𝟙 S'' := by
    unfold wcpaDjStcLift
    exact Limits.pullback.lift_snd _ _ _
  obtain ⟨E, iE, e, c', hc, U, T', Wu, E₁, V, hp, s₀, hEsm, hEn, hE₁, hE₁o, hT', hWu, hzU, hpres,
    hs₀, hs₀p⟩ := wcpa_dj_gsl_chart (Limits.pullback.snd g ρ) hflat hlft hreg''
      (wcpaDjStcLift g ρ τ hτ j) p hσ W₀ hyW₀ hW₀sm z hzr ê hêC hêz n t hMD.1 hMD.2.1 ℓ (N + 1) w
  haveI := iE
  obtain ⟨ϑ, E₂, h₂, hϑ, hE₂, hE₂o, hh₂ι, hh₂a, hint⟩ := wcpa_dj_gsl_ratio_map k
    (Limits.pullback.snd g ρ ≫ ρ ≫ sS) N I (Limits.pullback.fst g ρ ⁻¹ᵁ O)
    ((Limits.pullback.fst g ρ ∣_ O) ≫ a)
    (by
      simp only [Category.assoc]
      rw [hstr, morphismRestrict_ι_assoc, Limits.pullback.condition_assoc])
    hC1'' i₀ hi₀ hη (wcpaDjStcLift g ρ τ hτ j p) n z
    (fun l => ((Limits.pullback.snd g ρ).stalkMap (wcpaDjStcLift g ρ τ hτ j p)).hom (t l)) α β w
    hz0 hT0 hw kk hkk ℓ hka hkb hkc e c' hc U T' Wu E₁ hE₁ hE₁o hT' hWu hzU
  obtain ⟨E₁', ψ₁, hE₁', hψo, hψπ, hψA⟩ := wcpa_dj_gsl_birational_lift π₅ A
    (Limits.pullback.fst g ρ ⁻¹ᵁ O) ((Limits.pullback.fst g ρ ∣_ O) ≫ a) e ϑ E₂ h₂
    hM.2.2.1 hM.2.2.2 hE₂ hE₂o hh₂ι hh₂a
  refine ⟨E, iE, e, ϑ, c', E₁', ψ₁, V, hp, s₀, (E.presheaf.germ ⊤ c' trivial).hom U, hϑ, hEn,
    hEsm, hE₁', hψo, hψπ, hψA, hs₀, hs₀p, ?_⟩
  intro μ hμπ hμA
  subst hμπ hμA
  have key : (μ.stalkMap c').hom.comp (π₅.stalkMap (μ c')).hom =
      ((μ ≫ π₅).stalkMap c').hom := by
    first
      | exact (congrArg CommRingCat.Hom.hom (Scheme.Hom.stalkMap_comp μ π₅ c')).symm
      | (rw [Scheme.Hom.stalkMap_comp]; rfl)
  have keyA : (μ.stalkMap c').hom.comp (A.stalkMap (μ c')).hom =
      ((μ ≫ A).stalkMap c').hom := by
    first
      | exact (congrArg CommRingCat.Hom.hom (Scheme.Hom.stalkMap_comp μ A c')).symm
      | (rw [Scheme.Hom.stalkMap_comp]; rfl)
  refine ⟨hint (C.presheaf.stalk (μ c')) (μ.stalkMap c').hom
    (fun x => ⟨(π₅.stalkMap (μ c')).hom x, RingHom.congr_fun key x⟩)
    (fun x => ⟨(A.stalkMap (μ c')).hom x, RingHom.congr_fun keyA x⟩), ?_⟩
  intro x
  obtain ⟨F₁, F₂, hu, hx⟩ := hpres x
  refine ⟨F₁.map (π₅.stalkMap (μ c')).hom, F₂.map (π₅.stalkMap (μ c')).hom, ?_⟩
  generalize (E.presheaf.germ ⊤ c' trivial).hom U = uu at hu hx ⊢
  have hm : ∀ F : Polynomial ((Limits.pullback g ρ).presheaf.stalk ((μ ≫ π₅) c')),
      Polynomial.eval₂ (μ.stalkMap c').hom uu (F.map (π₅.stalkMap (μ c')).hom) =
        Polynomial.eval₂ ((μ ≫ π₅).stalkMap c').hom uu F := by
    intro F
    exact (Polynomial.eval₂_map (p := F) (π₅.stalkMap (μ c')).hom (μ.stalkMap c').hom uu).trans
      (congrArg (fun φ => Polynomial.eval₂ φ uu F) key)
  exact ⟨(congrArg IsUnit (hm F₂)).mpr hu,
    (congrArg (fun v => x * v) (hm F₂)).trans (hx.trans (hm F₁).symm)⟩

theorem wcpa_dj_gsl_normal_lift : ∀ (E C Q : Scheme.{u}) [AlgebraicGeometry.IsIntegral E]
    (L : C ⟶ Q) (φ : E ⟶ Q) (E₁ : E.Opens) (ψ₁ : E₁.toScheme ⟶ C), IsFinite L →
    (∀ e : E, IsIntegrallyClosed (E.presheaf.stalk e)) → E₁ ≠ ⊥ → E₁.ι ≫ φ = ψ₁ ≫ L →
    ∃ μ : E ⟶ C, μ ≫ L = φ ∧ E₁.ι ≫ μ = ψ₁ :=
by
  intro E C Q _ L φ E₁ ψ₁ hL hn hE₁ hcomm
  classical
  haveI := hL

  have s1 : ∀ (Λ Γ' D Ds : Type u) [CommRing Λ] [CommRing Γ'] [CommRing D] [IsDomain D]
      [IsIntegrallyClosed D] [CommRing Ds] [Algebra D Ds] (s : D), s ≠ 0 →
      ∀ [IsLocalization.Away s Ds] (g : Λ →+* Γ') (α : Λ →+* D) (β : Γ' →+* Ds),
      g.IsIntegral → β.comp g = (algebraMap D Ds).comp α →
      ∃ θ : Γ' →+* D, θ.comp g = α ∧ (algebraMap D Ds).comp θ = β := by
    intro Λ Γ' D Ds _ _ _ _ _ _ _ s hs _ g α β hg hc
    set ι := algebraMap D Ds with hι
    have hle : Submonoid.powers s ≤ nonZeroDivisors D :=
      powers_le_nonZeroDivisors_of_noZeroDivisors hs
    have hιinj : Function.Injective ι := IsLocalization.injective Ds hle
    let K := FractionRing D
    have hunit : ∀ y : Submonoid.powers s, IsUnit (algebraMap D K y) := by
      intro y
      apply IsUnit.mk0
      intro h
      have : (y : D) = 0 := (IsFractionRing.injective D K) (by rw [h, map_zero])
      exact (nonZeroDivisors.ne_zero (hle y.2)) this
    let j : Ds →+* K := IsLocalization.lift (M := Submonoid.powers s) hunit
    have hj : ∀ d : D, j (ι d) = algebraMap D K d := fun d => IsLocalization.lift_eq hunit d
    have hjinj : Function.Injective j := by
      rw [IsLocalization.lift_injective_iff]
      intro x y
      constructor
      · intro h; rw [hιinj h]
      · intro h; rw [IsFractionRing.injective D K h]
    have hmem : ∀ γ : Γ', ∃ d : D, ι d = β γ := by
      intro γ
      obtain ⟨P, hPm, hP⟩ := hg γ
      have hint : IsIntegral D (j (β γ)) := by
        refine ⟨P.map α, hPm.map α, ?_⟩
        have e1 : Polynomial.eval₂ (algebraMap D K) (j (β γ)) (P.map α)
            = j (Polynomial.eval₂ ι (β γ) (P.map α)) := by
          rw [Polynomial.hom_eval₂]
          congr 1
          ext d
          exact (hj d).symm
        rw [e1, Polynomial.eval₂_map]
        have e2 : ι.comp α = β.comp g := hc.symm
        rw [e2, ← Polynomial.hom_eval₂, hP, map_zero, map_zero]
      obtain ⟨d, hd⟩ := IsIntegrallyClosed.algebraMap_eq_of_integral hint
      exact ⟨d, hjinj (by rw [hj, hd])⟩
    choose θf hθf using hmem
    let θ : Γ' →+* D :=
      { toFun := θf
        map_one' := hιinj (by rw [hθf, map_one, map_one])
        map_mul' := fun x y => hιinj (by rw [hθf, map_mul, map_mul, hθf, hθf])
        map_zero' := hιinj (by rw [hθf, map_zero, map_zero])
        map_add' := fun x y => hιinj (by rw [hθf, map_add, map_add, hθf, hθf]) }
    refine ⟨θ, ?_, ?_⟩
    · ext l
      apply hιinj
      show ι (θf (g l)) = ι (α l)
      rw [hθf]
      exact RingHom.congr_fun hc l
    · ext γ
      exact hθf γ

  have s2 : ∀ (U : E.Opens), IsAffineOpen U → U ≠ ⊥ → IsIntegrallyClosed Γ(E, U) := by
    intro U hU hU0
    haveI : Nonempty U := by
      rw [TopologicalSpace.Opens.ne_bot_iff_nonempty] at hU0
      obtain ⟨x, hx⟩ := hU0; exact ⟨⟨x, hx⟩⟩
    haveI : IsDomain Γ(E, U) := IsIntegral.component_integral U
    apply IsIntegrallyClosed.of_localization_maximal
    intro p _ hp
    let y : PrimeSpectrum Γ(E, U) := ⟨p, hp.isPrime⟩
    have hx : hU.fromSpec y ∈ U := by
      rw [← SetLike.mem_coe, ← hU.range_fromSpec]; exact ⟨y, rfl⟩
    letI := TopCat.Presheaf.algebra_section_stalk E.presheaf ⟨hU.fromSpec y, hx⟩
    haveI hloc : IsLocalization.AtPrime (E.presheaf.stalk (hU.fromSpec y)) y.asIdeal :=
      hU.isLocalization_stalk' y hx
    haveI := hn (hU.fromSpec y)
    have e : E.presheaf.stalk (hU.fromSpec y) ≃ₐ[Γ(E, U)] Localization.AtPrime y.asIdeal :=
      IsLocalization.algEquiv y.asIdeal.primeCompl _ _
    exact IsIntegrallyClosed.of_equiv e.toRingEquiv

  have s3 : ∀ (T : Scheme.{u}) (O : E.Opens) (i : T ⟶ E) [IsOpenImmersion i] (s s' : T ⟶ C),
      O ≠ ⊥ → s ≫ L = i ≫ φ → s' ≫ L = i ≫ φ → (i ⁻¹ᵁ O).ι ≫ s = (i ⁻¹ᵁ O).ι ≫ s' →
      s = s' := by
    intro T O i _ s s' hO hs hs' h
    haveI : IsReduced T := isReduced_of_isOpenImmersion i
    have hd0 : Dense (O : Set E) := by
      rw [TopologicalSpace.Opens.ne_bot_iff_nonempty] at hO
      exact O.isOpen.dense hO
    have hdense : Dense ((i ⁻¹ᵁ O : T.Opens) : Set T) :=
      hd0.preimage i.isOpenEmbedding.isOpenMap
    haveI : IsDominant (i ⁻¹ᵁ O).ι := Opens.isDominant_ι hdense
    exact ext_of_isDominant_of_isSeparated L (hs.trans hs'.symm) (i ⁻¹ᵁ O).ι h

  have s4 : ∀ (U : E.Opens) (V : Q.Opens), IsAffineOpen U → IsAffineOpen V →
      U ≤ φ ⁻¹ᵁ V → U ⊓ E₁ ≠ ⊥ → IsIntegrallyClosed Γ(E, U) →
      ∃ (σ : U.toScheme ⟶ C) (B : E.Opens) (hBU : B ≤ U) (hBE : B ≤ E₁), B ≠ ⊥ ∧
        σ ≫ L = U.ι ≫ φ ∧ E.homOfLE hBU ≫ σ = E.homOfLE hBE ≫ ψ₁ := by
    intro U V hU hV hUV hUE _
    have hW : IsAffineOpen (L ⁻¹ᵁ V) := hV.preimage L
    haveI : Nonempty U := by
      obtain ⟨x, hx⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty _).mp hUE
      exact ⟨⟨x, hx.1⟩⟩
    haveI : IsDomain Γ(E, U) := IsIntegral.component_integral U
    obtain ⟨x, hx⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty _).mp hUE
    obtain ⟨s, hsle, hxs⟩ := hU.exists_basicOpen_le (V := U ⊓ E₁) ⟨x, hx⟩ hx.1
    have hBU : E.basicOpen s ≤ U := E.basicOpen_le s
    have hBE : E.basicOpen s ≤ E₁ := hsle.trans inf_le_right
    have hB0 : E.basicOpen s ≠ ⊥ :=
      (TopologicalSpace.Opens.ne_bot_iff_nonempty _).mpr ⟨x, hxs⟩
    have hs0 : s ≠ 0 := by
      rintro rfl
      exact hB0 (E.basicOpen_zero U)
    haveI := hU.isLocalization_basicOpen s
    obtain ⟨τ, hτdef⟩ : ∃ τ : (E.basicOpen s).toScheme ⟶ C, τ = E.homOfLE hBE ≫ ψ₁ :=
      ⟨_, rfl⟩
    have hτL : τ ≫ L = (E.basicOpen s).ι ≫ φ := by
      rw [hτdef, Category.assoc, ← hcomm, Scheme.homOfLE_ι_assoc]
    have hτ : ⊤ ≤ τ ⁻¹ᵁ (L ⁻¹ᵁ V) := by
      intro y _
      show L (τ y) ∈ V
      have e : (τ ≫ L) y = ((E.basicOpen s).ι ≫ φ) y := by rw [hτL]
      rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply] at e
      rw [e]
      have hy : (E.basicOpen s).ι y ∈ E.basicOpen s := by
        rw [← SetLike.mem_coe, ← Scheme.Opens.range_ι]; exact ⟨y, rfl⟩
      exact hUV (hBU hy)
    have hfin : (L.app V).hom.Finite := IsFinite.finite_app L V hV
    have hint : (L.app V).hom.IsIntegral := hfin.to_isIntegral
    have gen : ∀ (f : (E.basicOpen s).toScheme ⟶ Q) (hf : f = (E.basicOpen s).ι ≫ φ)
        (e : ⊤ ≤ f ⁻¹ᵁ V), f.appLE V ⊤ e ≫ (E.basicOpen s).topIso.hom =
          φ.appLE V U hUV ≫ E.presheaf.map (homOfLE hBU).op := by
      rintro f rfl e
      have e2 : ⊤ ≤ (E.basicOpen s).ι ⁻¹ᵁ U := by
        intro y _
        rw [Scheme.Hom.mem_preimage]
        apply hBU
        rw [← SetLike.mem_coe, ← Scheme.Opens.range_ι]; exact ⟨y, rfl⟩
      rw [← Scheme.Hom.appLE_comp_appLE (E.basicOpen s).ι φ V U ⊤ hUV e2, Category.assoc,
        Scheme.Opens.ι_appLE, Scheme.Opens.topIso_hom]
      congr 1
      first
        | (erw [← Functor.map_comp]; rfl)
        | (rw [← Functor.map_comp]; rfl)
        | exact (E.presheaf.map_comp _ _).symm.trans (congrArg _ (Subsingleton.elim _ _))
    have hcompat : L.app V ≫ τ.appLE (L ⁻¹ᵁ V) ⊤ hτ ≫ (E.basicOpen s).topIso.hom =
        φ.appLE V U hUV ≫ E.presheaf.map (homOfLE hBU).op := by
      rw [Scheme.Hom.app_eq_appLE, ← Category.assoc, Scheme.Hom.appLE_comp_appLE]
      exact gen _ hτL _
    obtain ⟨θ, hθg, hθβ⟩ := s1 Γ(Q, V) Γ(C, L ⁻¹ᵁ V) Γ(E, U) Γ(E, E.basicOpen s) s hs0
      (L.app V).hom (φ.appLE V U hUV).hom
      (τ.appLE (L ⁻¹ᵁ V) ⊤ hτ ≫ (E.basicOpen s).topIso.hom).hom hint
      (by rw [← CommRingCat.hom_comp, hcompat, CommRingCat.hom_comp]; rfl)
    let θc : Γ(C, L ⁻¹ᵁ V) ⟶ Γ(E, U) := CommRingCat.ofHom θ
    have hθg' : L.app V ≫ θc = φ.appLE V U hUV := by
      ext1; exact hθg
    have hθβ' : θc ≫ E.presheaf.map (homOfLE hBU).op =
        τ.appLE (L ⁻¹ᵁ V) ⊤ hτ ≫ (E.basicOpen s).topIso.hom := by
      ext1; exact hθβ
    refine ⟨hU.isoSpec.hom ≫ Spec.map θc ≫ hW.fromSpec, E.basicOpen s, hBU, hBE, hB0, ?_, ?_⟩
    · have h1 := IsAffineOpen.SpecMap_appLE_fromSpec L hV hW (le_refl _)
      have h2 := IsAffineOpen.SpecMap_appLE_fromSpec φ hV hU hUV
      have h3 : L.appLE V (L ⁻¹ᵁ V) (le_refl _) = L.app V := (Scheme.Hom.app_eq_appLE L).symm
      rw [h3] at h1
      rw [Category.assoc, Category.assoc, ← h1, ← Category.assoc (Spec.map θc), ← Spec.map_comp,
        hθg', h2, ← hU.isoSpec_inv_ι, Category.assoc, Iso.hom_inv_id_assoc]
    · haveI : IsAffine (E.basicOpen s).toScheme := hU.basicOpen s
      have h4 := IsAffineOpen.SpecMap_appLE_fromSpec τ hW (isAffineOpen_top _) hτ
      rw [IsAffineOpen.fromSpec_top] at h4
      have hT : (E.basicOpen s).toSpecΓ ≫ Spec.map (E.basicOpen s).topIso.hom =
          (E.basicOpen s).toScheme.toSpecΓ := by
        rw [Scheme.Opens.toSpecΓ, Category.assoc, ← Spec.map_comp, Iso.hom_inv_id, Spec.map_id,
          Category.comp_id]
      rw [← hτdef, hU.isoSpec_hom, ← Category.assoc,
        ← Scheme.Opens.toSpecΓ_SpecMap_presheaf_map,
        Category.assoc, ← Category.assoc (Spec.map _) (Spec.map θc), ← Spec.map_comp, hθβ',
        Spec.map_comp]
      simp only [Category.assoc]
      rw [← Category.assoc (E.basicOpen s).toSpecΓ, hT, h4, ← Scheme.isoSpec_hom,
        Iso.hom_inv_id_assoc]

  have hdata : ∀ x : E, ∃ (U : E.Opens) (V : Q.Opens), IsAffineOpen U ∧ IsAffineOpen V ∧
      x ∈ U ∧ U ≤ φ ⁻¹ᵁ V := by
    intro x
    obtain ⟨V, hV, hxV, -⟩ := exists_isAffineOpen_mem_and_subset (x := φ x)
      (U := (⊤ : Q.Opens)) trivial
    obtain ⟨U, hU, hxU, hUV⟩ := exists_isAffineOpen_mem_and_subset (x := x)
      (U := φ ⁻¹ᵁ V) hxV
    exact ⟨U, V, hU, hV, hxU, hUV⟩
  choose Uc Vc hUc hVc hmem hUV using hdata
  have hlift : ∀ x : E, ∃ (σ : (Uc x).toScheme ⟶ C) (B : E.Opens) (hBU : B ≤ Uc x)
      (hBE : B ≤ E₁), B ≠ ⊥ ∧ σ ≫ L = (Uc x).ι ≫ φ ∧
        E.homOfLE hBU ≫ σ = E.homOfLE hBE ≫ ψ₁ := by
    intro x
    have hU0 : Uc x ≠ ⊥ :=
      (TopologicalSpace.Opens.ne_bot_iff_nonempty _).mpr ⟨x, hmem x⟩
    have hUE : Uc x ⊓ E₁ ≠ ⊥ := by
      have h2 := hE₁
      rw [TopologicalSpace.Opens.ne_bot_iff_nonempty] at h2 ⊢
      exact nonempty_preirreducible_inter (Uc x).isOpen E₁.isOpen ⟨x, hmem x⟩ h2
    exact s4 (Uc x) (Vc x) (hUc x) (hVc x) (hUV x) hUE (s2 (Uc x) (hUc x) hU0)
  choose σ Bc hBU hBE hB0 hσL hagree using hlift

  have hιmem : ∀ (T : Scheme.{u}) (O : T.Opens) (w : O.toScheme), O.ι w ∈ O := by
    intro T O w
    rw [← SetLike.mem_coe, ← Scheme.Opens.range_ι]; exact ⟨w, rfl⟩
  have aux : ∀ (x : E) (Wsch : Scheme.{u}) (r : Wsch ⟶ (Uc x).toScheme)
      (hr : Set.range ⇑(r ≫ (Uc x).ι) ⊆ (Bc x : Set E)),
      r ≫ σ x = IsOpenImmersion.lift E₁.ι (r ≫ (Uc x).ι) (by
        rw [Scheme.Opens.range_ι]; exact hr.trans (hBE x)) ≫ ψ₁ := by
    intro x Wsch r hr
    have hr' : Set.range ⇑r ⊆ Set.range ⇑(E.homOfLE (hBU x)) := by
      rintro _ ⟨w, rfl⟩
      have hw : (Uc x).ι (r w) ∈ Bc x := hr ⟨w, by rw [Scheme.Hom.comp_apply]⟩
      refine ⟨⟨(Uc x).ι (r w), hw⟩, ?_⟩
      apply Subtype.ext
      rw [Scheme.homOfLE_apply]
      exact Scheme.Opens.ι_apply _ _
    have hkf : IsOpenImmersion.lift (E.homOfLE (hBU x)) r hr' ≫ E.homOfLE (hBU x) = r :=
      IsOpenImmersion.lift_fac _ _ _
    have e1 : r ≫ σ x =
        (IsOpenImmersion.lift (E.homOfLE (hBU x)) r hr' ≫ E.homOfLE (hBE x)) ≫ ψ₁ := by
      conv_lhs => rw [← hkf]
      rw [Category.assoc, hagree x, Category.assoc]
    rw [e1]
    congr 1
    rw [← cancel_mono E₁.ι, IsOpenImmersion.lift_fac, Category.assoc, Scheme.homOfLE_ι]
    conv_rhs => rw [← hkf]
    rw [Category.assoc, Scheme.homOfLE_ι]
  have hcov : TopologicalSpace.IsOpenCover Uc := by
    rw [TopologicalSpace.IsOpenCover, eq_top_iff]
    intro p _
    exact TopologicalSpace.Opens.mem_iSup.mpr ⟨p, hmem p⟩
  have hglue : ∀ x y : E, Limits.pullback.fst (Uc x).ι (Uc y).ι ≫ σ x =
      Limits.pullback.snd (Uc x).ι (Uc y).ι ≫ σ y := by
    intro x y
    have hO : Bc x ⊓ Bc y ≠ ⊥ := by
      have h1 := hB0 x
      have h2 := hB0 y
      rw [TopologicalSpace.Opens.ne_bot_iff_nonempty] at h1 h2 ⊢
      exact nonempty_preirreducible_inter (Bc x).isOpen (Bc y).isOpen h1 h2
    have hcond : ∀ z, (Uc y).ι (Limits.pullback.snd (Uc x).ι (Uc y).ι z) =
        (Uc x).ι (Limits.pullback.fst (Uc x).ι (Uc y).ι z) := by
      intro z
      have e : (Limits.pullback.fst (Uc x).ι (Uc y).ι ≫ (Uc x).ι) z =
          (Limits.pullback.snd (Uc x).ι (Uc y).ι ≫ (Uc y).ι) z := by
        rw [Limits.pullback.condition]
      rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply] at e
      exact e.symm
    apply s3 _ (Bc x ⊓ Bc y) (Limits.pullback.fst (Uc x).ι (Uc y).ι ≫ (Uc x).ι) _ _ hO
    · rw [Category.assoc, hσL, Category.assoc]
    · rw [Category.assoc, hσL, ← Category.assoc, ← Limits.pullback.condition, Category.assoc]
    · have hw : ∀ w, Limits.pullback.fst (Uc x).ι (Uc y).ι
          (((Limits.pullback.fst (Uc x).ι (Uc y).ι ≫ (Uc x).ι) ⁻¹ᵁ (Bc x ⊓ Bc y)).ι w) ∈
            (Uc x).ι ⁻¹ᵁ (Bc x ⊓ Bc y) := by
        intro w
        have h := hιmem _ _ w
        rw [Scheme.Hom.mem_preimage, Scheme.Hom.comp_apply] at h
        exact h
      have hrx : Set.range ⇑((((Limits.pullback.fst (Uc x).ι (Uc y).ι ≫ (Uc x).ι) ⁻¹ᵁ
          (Bc x ⊓ Bc y)).ι ≫ Limits.pullback.fst (Uc x).ι (Uc y).ι) ≫ (Uc x).ι) ⊆
            (Bc x : Set E) := by
        rintro _ ⟨w, rfl⟩
        rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply]
        exact (hw w).1
      have hry : Set.range ⇑((((Limits.pullback.fst (Uc x).ι (Uc y).ι ≫ (Uc x).ι) ⁻¹ᵁ
          (Bc x ⊓ Bc y)).ι ≫ Limits.pullback.snd (Uc x).ι (Uc y).ι) ≫ (Uc y).ι) ⊆
            (Bc y : Set E) := by
        rintro _ ⟨w, rfl⟩
        rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply, hcond]
        exact (hw w).2
      rw [← Category.assoc, aux x _ _ hrx, ← Category.assoc, aux y _ _ hry]
      congr 1
      rw [← cancel_mono E₁.ι, IsOpenImmersion.lift_fac, IsOpenImmersion.lift_fac,
        Category.assoc, Category.assoc, Limits.pullback.condition]
  let 𝒰 := E.openCoverOfIsOpenCover Uc hcov
  let μ : E ⟶ C := 𝒰.glueMorphisms σ hglue
  have hμ : ∀ x, (Uc x).ι ≫ μ = σ x := fun x => 𝒰.ι_glueMorphisms σ hglue x
  have hμL : μ ≫ L = φ := by
    apply 𝒰.hom_ext
    intro (x : E)
    have e1 : (Uc x).ι ≫ μ ≫ L = (Uc x).ι ≫ φ := by
      rw [← Category.assoc, hμ, hσL]
    exact e1
  refine ⟨μ, hμL, ?_⟩
  obtain ⟨x₀⟩ := (inferInstance : Nonempty E)
  apply s3 _ (Bc x₀) E₁.ι _ _ (hB0 x₀)
  · rw [Category.assoc, hμL]
  · exact hcomm.symm
  · have hr : Set.range ⇑((E₁.ι ⁻¹ᵁ Bc x₀).ι ≫ E₁.ι) ⊆ Set.range ⇑(Uc x₀).ι := by
      rintro _ ⟨w, rfl⟩
      rw [Scheme.Opens.range_ι]
      have h := hιmem _ _ w
      rw [Scheme.Hom.mem_preimage] at h
      rw [Scheme.Hom.comp_apply]
      exact hBU x₀ h
    have hmf : IsOpenImmersion.lift (Uc x₀).ι ((E₁.ι ⁻¹ᵁ Bc x₀).ι ≫ E₁.ι) hr ≫ (Uc x₀).ι =
        (E₁.ι ⁻¹ᵁ Bc x₀).ι ≫ E₁.ι := IsOpenImmersion.lift_fac _ _ _
    have hrm : Set.range ⇑(IsOpenImmersion.lift (Uc x₀).ι ((E₁.ι ⁻¹ᵁ Bc x₀).ι ≫ E₁.ι) hr ≫
        (Uc x₀).ι) ⊆ (Bc x₀ : Set E) := by
      rw [hmf]
      rintro _ ⟨w, rfl⟩
      have h := hιmem _ _ w
      rw [Scheme.Hom.mem_preimage] at h
      rw [Scheme.Hom.comp_apply]
      exact h
    rw [← Category.assoc, ← hmf, Category.assoc, hμ, aux x₀ _ _ hrm]
    congr 1
    rw [← cancel_mono E₁.ι, IsOpenImmersion.lift_fac, hmf]

theorem wcpa_dj_gsl_normal_stalk_iso : ∀ (E C : Scheme.{u}) [AlgebraicGeometry.IsIntegral E]
    [AlgebraicGeometry.IsIntegral C] (μ : E ⟶ C) (E₁ : E.Opens) (c' : E)
    (u : E.presheaf.stalk c'),
    E₁ ≠ ⊥ → IsOpenImmersion (E₁.ι ≫ μ) → IsIntegrallyClosed (C.presheaf.stalk (μ c')) →
    (∃ q : Polynomial (C.presheaf.stalk (μ c')), q.Monic ∧
      Polynomial.eval₂ (μ.stalkMap c').hom u q = 0) →
    (∀ x : E.presheaf.stalk c', ∃ f₁ f₂ : Polynomial (C.presheaf.stalk (μ c')),
      IsUnit (Polynomial.eval₂ (μ.stalkMap c').hom u f₂) ∧
      x * Polynomial.eval₂ (μ.stalkMap c').hom u f₂ =
        Polynomial.eval₂ (μ.stalkMap c').hom u f₁) →
    IsIso (μ.stalkMap c') :=
by
  intro E C _ _ μ E₁ c' u hE₁ hopen hR hq hloc
  classical
  have := hopen
  have := hR

  have hη : genericPoint E ∈ E₁ := by
    have hne : (E₁ : Set E).Nonempty := (TopologicalSpace.Opens.ne_bot_iff_nonempty E₁).mp hE₁
    exact ((genericPoint_spec E).mem_open_set_iff E₁.isOpen).mpr (by simpa using hne)

  have hiso0 : IsIso (μ.stalkMap (E₁.ι ⟨genericPoint E, hη⟩)) := by
    have h := Scheme.Hom.stalkMap_comp E₁.ι μ ⟨genericPoint E, hη⟩
    have h2 : IsIso ((E₁.ι ≫ μ).stalkMap ⟨genericPoint E, hη⟩) :=
      IsOpenImmersion.instIsIsoCommRingCatStalkMap (E₁.ι ≫ μ) _
    have h3 : IsIso (E₁.ι.stalkMap ⟨genericPoint E, hη⟩) :=
      IsOpenImmersion.instIsIsoCommRingCatStalkMap E₁.ι _
    rw [h] at h2
    exact @IsIso.of_isIso_comp_right _ _ _ _ _ _ _ h3 h2
  have hpt : E₁.ι ⟨genericPoint E, hη⟩ = genericPoint E := Scheme.Opens.ι_apply _ _
  rw [hpt] at hiso0

  have hE : genericPoint E ⤳ c' := (genericPoint_spec E).specializes (Set.mem_univ c')
  have hC : genericPoint C ⤳ μ (genericPoint E) :=
    (genericPoint_spec C).specializes (Set.mem_univ _)
  set spE := E.presheaf.stalkSpecializes hE with hspE
  set θ := inv (μ.stalkMap (genericPoint E)) with hθ
  set spC := C.presheaf.stalkSpecializes hC with hspC
  set R := C.presheaf.stalk (μ c') with hRdef
  set K := C.functionField with hKdef
  set j : E.presheaf.stalk c' →+* K := (spE ≫ θ ≫ spC).hom with hj
  set φ := (μ.stalkMap c').hom with hφ

  have hspE_inj : Function.Injective spE.hom :=
    IsFractionRing.injective (E.presheaf.stalk c') E.functionField
  have hspC_inj : Function.Injective spC.hom :=
    IsFractionRing.injective (C.presheaf.stalk (μ (genericPoint E))) C.functionField
  have hθ_inj : Function.Injective θ.hom :=
    ((ConcreteCategory.isIso_iff_bijective θ).mp inferInstance).1
  have hjinj : Function.Injective j := by
    intro a b hab
    apply hspE_inj
    apply hθ_inj
    apply hspC_inj
    exact hab

  have key : μ.stalkMap c' ≫ spE ≫ θ ≫ spC =
      C.presheaf.stalkSpecializes ((genericPoint_spec C).specializes (Set.mem_univ (μ c'))) := by
    rw [← Category.assoc, ← Scheme.Hom.stalkSpecializes_stalkMap, Category.assoc,
      IsIso.hom_inv_id_assoc, TopCat.Presheaf.stalkSpecializes_comp]
  have hjφ : ∀ r : R, j (φ r) = algebraMap R K r := by
    intro r
    have h1 : j (φ r) = (μ.stalkMap c' ≫ spE ≫ θ ≫ spC).hom r := rfl
    rw [h1, key]
    rfl
  have hcomp : j.comp φ = algebraMap R K := RingHom.ext hjφ

  obtain ⟨q, hqm, hq0⟩ := hq
  have hint : IsIntegral R (j u) := by
    refine ⟨q, hqm, ?_⟩
    have h := Polynomial.hom_eval₂ q φ j u
    rw [hq0, map_zero, hcomp] at h
    exact h.symm
  obtain ⟨r₀, hr₀⟩ := IsIntegrallyClosed.isIntegral_iff.mp hint
  have hu : u = φ r₀ := hjinj (by rw [hjφ, hr₀])

  have hinj : Function.Injective φ := by
    intro a b hab
    apply IsFractionRing.injective R K
    rw [← hjφ, ← hjφ, hab]
  have hsurj : Function.Surjective φ := by
    intro x
    obtain ⟨f₁, f₂, hu2, hx⟩ := hloc x
    rw [hu, Polynomial.eval₂_at_apply] at hu2 hx
    rw [Polynomial.eval₂_at_apply] at hx
    obtain ⟨v, hv⟩ := isUnit_of_map_unit φ _ hu2
    refine ⟨f₁.eval r₀ * ↑v⁻¹, ?_⟩
    rw [map_mul, ← hx, ← hv, mul_assoc, ← map_mul, Units.mul_inv, map_one, mul_one]
  exact (ConcreteCategory.isIso_iff_bijective _).mpr ⟨hinj, hsurj⟩

theorem wcpa_dj_gsl_local_iso_spread : ∀ (E C : Scheme.{u}) [AlgebraicGeometry.IsIntegral E]
    [AlgebraicGeometry.IsIntegral C] (μ : E ⟶ C) (e : E), LocallyOfFiniteType μ →
    IsIso (μ.stalkMap e) → ∃ N : E.Opens, e ∈ N ∧ IsOpenImmersion (N.ι ≫ μ) :=
by
  intro E C _ _ μ e hlft hiso
  have hφ : (Spec.map (inv (μ.stalkMap e)) ≫ E.fromSpecStalk e) ≫ μ =
      C.fromSpecStalk (μ e) ≫ 𝟙 C := by
    rw [Category.assoc, ← Scheme.SpecMap_stalkMap_fromSpecStalk, ← Category.assoc,
      ← Spec.map_comp, IsIso.hom_inv_id, Spec.map_id, Category.id_comp, Category.comp_id]
  obtain ⟨U, hU, f, hfφ, hfμ⟩ := spread_out_of_isGermInjective' (𝟙 C) μ _ hφ
  rw [Category.comp_id] at hfμ
  have he : e ∈ μ ⁻¹ᵁ U := hU
  haveI : Nonempty (μ ⁻¹ᵁ U).toScheme := ⟨⟨e, he⟩⟩
  haveI : AlgebraicGeometry.IsIntegral (μ ⁻¹ᵁ U).toScheme :=
    isIntegral_of_isOpenImmersion (μ ⁻¹ᵁ U).ι
  obtain ⟨x, hx⟩ : ∃ x : (μ ⁻¹ᵁ U).toScheme, (μ ⁻¹ᵁ U).ι x = e := ⟨⟨e, he⟩, rfl⟩
  subst hx
  have ha := Scheme.SpecMap_stalkMap_fromSpecStalk (μ ⁻¹ᵁ U).ι (x := x)
  have hb : (μ ⁻¹ᵁ U).toScheme.fromSpecStalk x ≫ (μ ∣_ U) =
      Spec.map ((μ ⁻¹ᵁ U).ι.stalkMap x) ≫ Spec.map (μ.stalkMap ((μ ⁻¹ᵁ U).ι x)) ≫
        U.fromSpecStalkOfMem (μ ((μ ⁻¹ᵁ U).ι x)) hU := by
    rw [← cancel_mono U.ι]
    simp only [Category.assoc, morphismRestrict_ι, Scheme.Opens.fromSpecStalkOfMem_ι,
      Scheme.SpecMap_stalkMap_fromSpecStalk]
    rw [← Category.assoc, ← ha, Category.assoc]
  have hstar : (μ ⁻¹ᵁ U).toScheme.fromSpecStalk x ≫ ((μ ∣_ U) ≫ f) =
      (μ ⁻¹ᵁ U).toScheme.fromSpecStalk x ≫ (μ ⁻¹ᵁ U).ι := by
    rw [← Category.assoc, hb, Category.assoc, Category.assoc, ← hfφ, ← ha,
      ← Category.assoc (Spec.map (μ.stalkMap ((μ ⁻¹ᵁ U).ι x))) (Spec.map (inv _)),
      ← Spec.map_comp (inv (μ.stalkMap ((μ ⁻¹ᵁ U).ι x))) (μ.stalkMap ((μ ⁻¹ᵁ U).ι x)),
      IsIso.inv_hom_id, Spec.map_id, Category.id_comp]
  obtain ⟨N', hxN', heq⟩ :=
    spread_out_unique_of_isGermInjective' ((μ ∣_ U) ≫ f) (μ ⁻¹ᵁ U).ι hstar
  obtain ⟨j, hj⟩ : ∃ j, j = N'.ι ≫ (μ ⁻¹ᵁ U).ι := ⟨_, rfl⟩
  obtain ⟨g, hg⟩ : ∃ g, g = N'.ι ≫ (μ ∣_ U) := ⟨_, rfl⟩
  haveI : IsOpenImmersion j := by rw [hj]; infer_instance
  have hgf : g ≫ f = j := by rw [hg, hj, Category.assoc]; exact heq
  have hjμ : j ≫ μ = g ≫ U.ι := by rw [← hgf, Category.assoc, hfμ]
  refine ⟨j.opensRange, ?_, ?_⟩
  · rw [Scheme.Hom.mem_opensRange]
    refine ⟨⟨x, hxN'⟩, ?_⟩
    rw [hj]
    rfl
  · have hrange : Set.range ⇑g ⊆ Set.range ⇑(f ⁻¹ᵁ j.opensRange).ι := by
      rw [Scheme.Opens.range_ι]
      rintro _ ⟨y, rfl⟩
      rw [SetLike.mem_coe, Scheme.Hom.mem_preimage, ← Scheme.Hom.comp_apply, hgf,
        Scheme.Hom.mem_opensRange]
      exact ⟨y, rfl⟩
    obtain ⟨g₀, hg₀⟩ : ∃ g₀ : N'.toScheme ⟶ (f ⁻¹ᵁ j.opensRange).toScheme,
        g₀ ≫ (f ⁻¹ᵁ j.opensRange).ι = g :=
      ⟨IsOpenImmersion.lift (f ⁻¹ᵁ j.opensRange).ι g hrange, IsOpenImmersion.lift_fac _ _ _⟩
    have hε : j.isoOpensRange.inv ≫ j = j.opensRange.ι := by
      rw [Iso.inv_comp_eq, Scheme.Hom.isoOpensRange_hom_ι]
    have h1 : g₀ ≫ (f ∣_ j.opensRange) ≫ j.isoOpensRange.inv = 𝟙 _ := by
      rw [← cancel_mono j]
      simp only [Category.assoc, hε, morphismRestrict_ι, Category.id_comp]
      rw [← Category.assoc, hg₀, hgf]
    have h2 : ((f ∣_ j.opensRange) ≫ j.isoOpensRange.inv) ≫ g₀ = 𝟙 _ := by
      rw [← cancel_mono ((f ⁻¹ᵁ j.opensRange).ι ≫ U.ι)]
      simp only [Category.assoc, Category.id_comp]
      rw [← Category.assoc g₀, hg₀, ← hjμ, ← Category.assoc j.isoOpensRange.inv, hε,
        ← Category.assoc (f ∣_ _), morphismRestrict_ι, Category.assoc, hfμ]
    haveI : IsIso g₀ := ⟨⟨_, h1, h2⟩⟩
    have hfin : j.opensRange.ι ≫ μ =
        j.isoOpensRange.inv ≫ g₀ ≫ (f ⁻¹ᵁ j.opensRange).ι ≫ U.ι := by
      rw [← hε, Category.assoc, hjμ, ← Category.assoc g₀, hg₀]
    rw [hfin]
    infer_instance

theorem wcpa_dj_gsl_local_lift : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
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
      (∀ c : C, wcpaDjGcPtType (π₅ ≫ Limits.pullback.snd g ρ) c) →
      ∀ (j : Fin m) (p : S''), ∃ (V : S''.Opens) (σ : V.toScheme ⟶ C) (Nc : C.Opens)
        (hp : p ∈ V), σ ≫ π₅ = V.ι ≫ wcpaDjStcLift g ρ τ hτ j ∧ σ ⟨p, hp⟩ ∈ Nc ∧
        SmoothOfRelativeDimension 1 (Nc.ι ≫ π₅ ≫ Limits.pullback.snd g ρ) :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hτ S'' _ ρ D'' H C _ π₅ A hM hπ₅p _hpt j p

  obtain ⟨E, iE, e, ϑ, c', E₁, ψ₁, V, hp, s₀, u, hϑ, hEn, hEsm, hE₁, hψo, hψπ, hψA, hs₀,
    hs₀p, hμdata⟩ :=
    wcpa_dj_gsl_chart_model k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' H C π₅ A hM hπ₅p j p
  haveI := iE
  obtain ⟨hnorm, ⟨hA, hLfin⟩, -, -⟩ := hM

  have hcomm : E₁.ι ≫ Limits.pullback.lift e ϑ hϑ = ψ₁ ≫ Limits.pullback.lift π₅ A hA := by
    apply Limits.pullback.hom_ext
    · rw [Category.assoc, Limits.pullback.lift_fst, Category.assoc, Limits.pullback.lift_fst,
        hψπ]
    · rw [Category.assoc, Limits.pullback.lift_snd, Category.assoc, Limits.pullback.lift_snd,
        hψA]

  obtain ⟨μ, hμL, hμ₁⟩ := wcpa_dj_gsl_normal_lift E C _ (Limits.pullback.lift π₅ A hA)
    (Limits.pullback.lift e ϑ hϑ) E₁ ψ₁ hLfin hEn hE₁ hcomm
  have hμπ : μ ≫ π₅ = e := by
    have h1 : (μ ≫ Limits.pullback.lift π₅ A hA) ≫ Limits.pullback.fst _ _ =
        Limits.pullback.lift e ϑ hϑ ≫ Limits.pullback.fst _ _ := by rw [hμL]
    rwa [Category.assoc, Limits.pullback.lift_fst, Limits.pullback.lift_fst] at h1
  have hμA : μ ≫ A = ϑ := by
    have h1 : (μ ≫ Limits.pullback.lift π₅ A hA) ≫ Limits.pullback.snd _ _ =
        Limits.pullback.lift e ϑ hϑ ≫ Limits.pullback.snd _ _ := by rw [hμL]
    rwa [Category.assoc, Limits.pullback.lift_snd, Limits.pullback.lift_snd] at h1

  have hiso : IsIso (μ.stalkMap c') :=
    wcpa_dj_gsl_normal_stalk_iso E C μ E₁ c' u hE₁ (by rw [hμ₁]; exact hψo) (hnorm (μ c'))
      (hμdata μ hμπ hμA).1 (hμdata μ hμπ hμA).2

  have hμπ' : μ ≫ π₅ ≫ Limits.pullback.snd g ρ = e ≫ Limits.pullback.snd g ρ := by
    rw [← Category.assoc, hμπ]
  haveI : SmoothOfRelativeDimension 1 (e ≫ Limits.pullback.snd g ρ) := hEsm
  haveI : Smooth (e ≫ Limits.pullback.snd g ρ) :=
    SmoothOfRelativeDimension.smooth 1 (e ≫ Limits.pullback.snd g ρ)
  haveI : LocallyOfFiniteType (μ ≫ π₅ ≫ Limits.pullback.snd g ρ) := by
    rw [hμπ']; infer_instance
  haveI : LocallyOfFiniteType μ := locallyOfFiniteType_of_comp μ (π₅ ≫ Limits.pullback.snd g ρ)
  obtain ⟨N₀, hc'N₀, hN₀⟩ := wcpa_dj_gsl_local_iso_spread E C μ c' inferInstance hiso
  haveI := hN₀

  refine ⟨V, s₀ ≫ μ, (N₀.ι ≫ μ).opensRange, hp, ?_, ?_, ?_⟩
  · rw [Category.assoc, hμπ, hs₀]
  · have h2 : (s₀ ≫ μ) ⟨p, hp⟩ = μ (s₀ ⟨p, hp⟩) := Scheme.Hom.comp_apply _ _ _
    rw [h2, hs₀p]
    exact Scheme.Hom.mem_opensRange.mpr ⟨⟨c', hc'N₀⟩, by
      have h3 : (N₀.ι ≫ μ) ⟨c', hc'N₀⟩ = μ (N₀.ι ⟨c', hc'N₀⟩) := Scheme.Hom.comp_apply _ _ _
      rw [h3, Scheme.Opens.ι_apply]⟩
  · have e1 : (N₀.ι ≫ μ).opensRange.ι =
        (Scheme.Hom.isoOpensRange (N₀.ι ≫ μ)).inv ≫ N₀.ι ≫ μ := by
      rw [Iso.eq_inv_comp, Scheme.Hom.isoOpensRange_hom_ι]
    rw [e1]
    simp only [Category.assoc]
    rw [hμπ']
    have h2 := smoothOfRelativeDimension_comp (n := 0) (m := 1)
      ((Scheme.Hom.isoOpensRange (N₀.ι ≫ μ)).inv ≫ N₀.ι) (e ≫ Limits.pullback.snd g ρ)
    simpa only [Category.assoc, zero_add] using h2

theorem wcpa_dj_gsl_generic_iso : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
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
      ∀ (j : Fin m), ∃ Y₁ : (Limits.pullback g ρ).Opens,
        wcpaDjStcLift g ρ τ hτ j (genericPoint S'') ∈ Y₁ ∧ IsIso (π₅ ∣_ Y₁) :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hτ S'' _ ρ D'' H C _ π₅ A hM hπ₅p j
  classical



  have hs3 : ∀ (A R : Type u) [CommRing A] [CommRing R] [IsLocalRing R] [IsDomain R]
      [IsNoetherianRing R] [Algebra A R] (σ : R →+* A), IsField A →
      (∀ a : A, σ (algebraMap A R a) = a) →
      Module.finrank (IsLocalRing.maximalIdeal R).ResidueField
        (TensorProduct R (IsLocalRing.maximalIdeal R).ResidueField (Ω[R⁄A])) = 1 →
      ValuationRing R := by
    intro A R _ _ _ _ _ _ σ hA hσ hrank
    by_cases hfield : IsField R
    · letI := hfield.toField
      infer_instance
    haveI : Nontrivial A := ⟨hA.exists_pair_ne⟩
    let φ := algebraMap A R
    have hker : ∀ r : R, r - φ (σ r) ∈ IsLocalRing.maximalIdeal R := by
      intro r
      apply IsLocalRing.le_maximalIdeal (J := RingHom.ker σ)
      · intro h
        rw [Ideal.eq_top_iff_one, RingHom.mem_ker, map_one] at h
        exact one_ne_zero h
      · rw [RingHom.mem_ker, map_sub, hσ, sub_self]
    have hzero : ∀ x ∈ IsLocalRing.maximalIdeal R, σ x = 0 := by
      intro x hx
      by_contra hne
      obtain ⟨b, hb⟩ := hA.mul_inv_cancel hne
      have h1 : φ (σ x) ∈ IsLocalRing.maximalIdeal R := by
        have := (IsLocalRing.maximalIdeal R).sub_mem hx (hker x)
        simpa using this
      have hu : IsUnit (φ (σ x)) := by
        have h' : φ b * φ (σ x) = 1 := by rw [← map_mul, mul_comm, hb, map_one]
        exact IsUnit.of_mul_eq_one_right _ h'
      exact (IsLocalRing.mem_maximalIdeal _).mp h1 hu
    let D0 : R →ₗ[A] (IsLocalRing.maximalIdeal R).Cotangent :=
      { toFun := fun r => (IsLocalRing.maximalIdeal R).toCotangent ⟨r - φ (σ r), hker r⟩
        map_add' := fun r s => by
          rw [← map_add]
          congr 1
          ext
          simp only [map_add, Submodule.coe_add]
          ring
        map_smul' := fun c r => by
          rw [RingHom.id_apply, ← algebraMap_smul R c ((IsLocalRing.maximalIdeal R).toCotangent _),
            ← map_smul]
          congr 1
          ext
          simp only [Submodule.coe_smul, smul_eq_mul, Algebra.smul_def, map_mul, hσ, φ]
          ring }
    have hD0 : ∀ r, D0 r = (IsLocalRing.maximalIdeal R).toCotangent ⟨r - φ (σ r), hker r⟩ :=
      fun r => rfl
    have hleib : ∀ r s : R, D0 (r * s) = r • D0 s + s • D0 r := by
      intro r s
      rw [hD0, hD0, hD0, ← map_smul, ← map_smul, ← map_add, ← sub_eq_zero, ← map_sub,
        Ideal.toCotangent_eq_zero]
      have : (((⟨r * s - φ (σ (r * s)), hker _⟩ : IsLocalRing.maximalIdeal R) -
          (r • (⟨s - φ (σ s), hker s⟩ : IsLocalRing.maximalIdeal R) +
            s • (⟨r - φ (σ r), hker r⟩ : IsLocalRing.maximalIdeal R)) :
            IsLocalRing.maximalIdeal R) : R) = -((r - φ (σ r)) * (s - φ (σ s))) := by
        simp only [Submodule.coe_sub, Submodule.coe_add, Submodule.coe_smul, smul_eq_mul, map_mul]
        ring
      rw [this, neg_mem_iff, pow_two]
      exact Ideal.mul_mem_mul (hker r) (hker s)
    let D : Derivation A R (IsLocalRing.maximalIdeal R).Cotangent := Derivation.mk' D0 hleib
    let L := D.liftKaehlerDifferential
    have hLD : ∀ r, L (KaehlerDifferential.D A R r) = D0 r := fun r =>
      Derivation.liftKaehlerDifferential_comp_D D r
    have hLsurj : Function.Surjective L := by
      intro w
      obtain ⟨x, rfl⟩ := Ideal.toCotangent_surjective _ w
      refine ⟨KaehlerDifferential.D A R x, ?_⟩
      rw [hLD, hD0]
      congr 1
      ext
      simp [hzero x x.2]

    let κ := (IsLocalRing.maximalIdeal R).ResidueField
    let e : (R ⧸ IsLocalRing.maximalIdeal R) ≃+* κ :=
      RingEquiv.ofBijective (algebraMap (R ⧸ IsLocalRing.maximalIdeal R) κ)
        (Ideal.bijective_algebraMap_quotient_residueField _)
    let s : κ →+* IsLocalRing.ResidueField R := e.symm.toRingHom
    have hs : ∀ r : R, s (algebraMap R κ r) = IsLocalRing.residue R r := by
      intro r
      apply e.injective
      show e (e.symm (algebraMap R κ r)) = e (Ideal.Quotient.mk _ r)
      rw [RingEquiv.apply_symm_apply]
      show algebraMap R κ r = algebraMap (R ⧸ IsLocalRing.maximalIdeal R) κ (Ideal.Quotient.mk _ r)
      rw [IsScalarTower.algebraMap_apply R (R ⧸ IsLocalRing.maximalIdeal R) κ]
      rfl
    have hsmulres : ∀ (r : R) (y : IsLocalRing.CotangentSpace R),
        IsLocalRing.residue R r • y = r • y := fun r y => algebraMap_smul _ r y
    let B : κ →ₗ[R] (Ω[R⁄A]) →ₗ[R] IsLocalRing.CotangentSpace R :=
      LinearMap.mk₂ R (fun c ω => s c • (L ω : IsLocalRing.CotangentSpace R))
        (fun c₁ c₂ ω => by rw [map_add, add_smul])
        (fun r c ω => by
          rw [Algebra.smul_def, map_mul, hs, mul_smul, hsmulres])
        (fun c ω₁ ω₂ => by rw [map_add, smul_add])
        (fun r c ω => by
          rw [map_smul, ← hsmulres, ← hsmulres, ← mul_smul, ← mul_smul, mul_comm])
    let T := TensorProduct.lift B
    have hT : ∀ c ω, T (c ⊗ₜ[R] ω) = s c • (L ω : IsLocalRing.CotangentSpace R) := by
      intro c ω
      simp only [T, TensorProduct.lift.tmul, B, LinearMap.mk₂_apply]
    obtain ⟨v₀, -, hv₀⟩ := finrank_eq_one_iff'.mp hrank
    have hκsurj : Function.Surjective (algebraMap R κ) := by
      intro c
      obtain ⟨q, rfl⟩ := e.surjective c
      obtain ⟨r, rfl⟩ := Ideal.Quotient.mk_surjective q
      exact ⟨r, by
        show algebraMap R κ r = algebraMap (R ⧸ IsLocalRing.maximalIdeal R) κ (Ideal.Quotient.mk _ r)
        rw [IsScalarTower.algebraMap_apply R (R ⧸ IsLocalRing.maximalIdeal R) κ]
        rfl⟩
    have hle : Module.finrank (IsLocalRing.ResidueField R) (IsLocalRing.CotangentSpace R) ≤ 1 := by
      apply finrank_le_one (T v₀)
      intro w
      obtain ⟨ω, rfl⟩ := hLsurj w
      obtain ⟨c, hc⟩ := hv₀ ((1 : κ) ⊗ₜ[R] ω)
      obtain ⟨r, rfl⟩ := hκsurj c
      refine ⟨IsLocalRing.residue R r, ?_⟩
      rw [hsmulres, ← map_smul, ← algebraMap_smul κ r v₀, hc, hT, map_one, one_smul]
    have hne : Module.finrank (IsLocalRing.ResidueField R) (IsLocalRing.CotangentSpace R) ≠ 0 :=
      fun h => hfield (IsLocalRing.finrank_cotangentSpace_eq_zero_iff.mp h)
    have h6 : Module.finrank (IsLocalRing.ResidueField R) (IsLocalRing.CotangentSpace R) = 1 := by
      omega
    exact ((IsDiscreteValuationRing.TFAE R hfield).out 6 2).mp h6



  have hs4 : ∀ (S Y : Scheme.{u}) [AlgebraicGeometry.IsIntegral S] (g : Y ⟶ S) (τ : S ⟶ Y),
      τ ≫ g = 𝟙 S → IsField (S.presheaf.stalk (g (τ (genericPoint S)))) ∧
      ∃ σ : Y.presheaf.stalk (τ (genericPoint S)) →+* S.presheaf.stalk (g (τ (genericPoint S))),
        ∀ a : S.presheaf.stalk (g (τ (genericPoint S))),
          σ ((g.stalkMap (τ (genericPoint S))).hom a) = a := by
    intro S Y _ g τ hτg
    have hiso : IsIso (g.stalkMap (τ (genericPoint S)) ≫ τ.stalkMap (genericPoint S)) := by
      have hI : IsIso (τ ≫ g) := by rw [hτg]; infer_instance
      rw [← Scheme.Hom.stalkMap_comp]
      exact ((isIso_iff_isIso_stalkMap (τ ≫ g)).mp hI).2 _
    let c := asIso (g.stalkMap (τ (genericPoint S)) ≫ τ.stalkMap (genericPoint S))
    refine ⟨MulEquiv.isField (Field.toIsField _) c.commRingCatIsoToRingEquiv.toMulEquiv,
      (τ.stalkMap (genericPoint S) ≫ c.inv).hom, fun x => ?_⟩
    have h2 : g.stalkMap (τ (genericPoint S)) ≫ τ.stalkMap (genericPoint S) ≫ c.inv = 𝟙 _ := by
      rw [← Category.assoc]; exact c.hom_inv_id
    calc (τ.stalkMap (genericPoint S) ≫ c.inv).hom ((g.stalkMap (τ (genericPoint S))).hom x)
        = (g.stalkMap (τ (genericPoint S)) ≫ τ.stalkMap (genericPoint S) ≫ c.inv).hom x := rfl
      _ = x := by rw [h2]; rfl



  obtain ⟨Hkm, hρS, hρp, hρs, hρf, _, _, _, _⟩ := H
  obtain ⟨hS, hY, hss, _, _, hW, hWsm, hWgc, _, _, _, _, _, _, _⟩ := Hkm
  obtain ⟨_, _, ⟨V, hV, hVi⟩, _⟩ := hM
  haveI hYint : AlgebraicGeometry.IsIntegral (Limits.pullback g ρ) :=
    wcpa_dj_tr_basechange_integral S S'' Y ρ g W hss.1 hρs hW hWsm hWgc
  haveI : IsProper (ρ ≫ sS) := wcpa_dj_proj_proper k (ρ ≫ sS) hρS
  haveI : IsProper g := hss.2.1
  haveI : IsLocallyNoetherian (Limits.pullback g ρ) :=
    LocallyOfFiniteType.isLocallyNoetherian (Limits.pullback.snd g ρ ≫ ρ ≫ sS)
  haveI := hπ₅p



  have hτsnd : wcpaDjStcLift g ρ τ hτ j ≫ Limits.pullback.snd g ρ = 𝟙 S'' := by
    unfold wcpaDjStcLift
    exact Limits.pullback.lift_snd _ _ _
  generalize wcpaDjStcLift g ρ τ hτ j = τ'' at hτsnd ⊢
  have hsndy : Limits.pullback.snd g ρ (τ'' (genericPoint S'')) = genericPoint S'' := by
    rw [← Scheme.Hom.comp_apply, hτsnd]
    rfl
  have hηW : genericPoint S'' ∈ ρ ⁻¹ᵁ W := by
    obtain ⟨w, hw⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty W).mp hW
    haveI := hρs
    obtain ⟨s, hs⟩ := ρ.surjective w
    have hne : ((ρ ⁻¹ᵁ W : S''.Opens) : Set S'').Nonempty :=
      ⟨s, (Scheme.Hom.mem_preimage _).mpr (by rw [hs]; exact hw)⟩
    exact ((genericPoint_spec S'').mem_open_set_iff (ρ ⁻¹ᵁ W).isOpen).mpr (by simpa using hne)
  have hsm := wcpa_dj_tr_basechange_smooth S S'' Y ρ g W hWsm



  have hmem : Limits.pullback.snd g ρ ((Limits.pullback g ρ).fromSpecStalk (τ'' (genericPoint S''))
      ⟨IsLocalRing.maximalIdeal _, inferInstance⟩) ∈ ρ ⁻¹ᵁ W := by
    have e0 := Scheme.fromSpecStalk_closedPoint (X := Limits.pullback g ρ)
      (x := τ'' (genericPoint S''))
    have e1 : (Limits.pullback g ρ).fromSpecStalk (τ'' (genericPoint S''))
        ⟨IsLocalRing.maximalIdeal _, inferInstance⟩ = τ'' (genericPoint S'') := e0
    rw [e1, hsndy]
    exact hηW
  have hrank := wcpa_dj_mn_smooth_omega_rank S'' (Limits.pullback g ρ) (Limits.pullback.snd g ρ)
    (ρ ⁻¹ᵁ W) (τ'' (genericPoint S'')) (IsLocalRing.maximalIdeal _) hsm hmem
  obtain ⟨hfield, σ, hσ⟩ := hs4 S'' (Limits.pullback g ρ) (Limits.pullback.snd g ρ) τ'' hτsnd
  have hval : ValuationRing ((Limits.pullback g ρ).presheaf.stalk (τ'' (genericPoint S''))) := by
    letI := ((Limits.pullback.snd g ρ).stalkMap (τ'' (genericPoint S''))).hom.toAlgebra
    exact hs3 _ _ σ hfield (fun x => hσ x) hrank
  generalize τ'' (genericPoint S'') = y₀ at hval ⊢



  have hVne : (V : Set ↥(Limits.pullback g ρ)).Nonempty :=
    (TopologicalSpace.Opens.ne_bot_iff_nonempty V).mp hV
  have hηV : genericPoint ↥(Limits.pullback g ρ) ∈ V :=
    ((genericPoint_spec ↥(Limits.pullback g ρ)).mem_open_set_iff V.isOpen).mpr (by simpa using hVne)
  have hsurjV : ∀ v ∈ V, ∃ x : C, π₅ x = v := by
    intro v hv
    obtain ⟨x, hx⟩ := (π₅ ∣_ V).surjective ⟨v, hv⟩
    exact ⟨x.1, by rw [← morphismRestrict_base_coe, hx]⟩
  obtain ⟨x₀, hx₀⟩ := hsurjV _ hηV
  have hx₀V : x₀ ∈ π₅ ⁻¹ᵁ V := by
    rw [Scheme.Hom.mem_preimage, hx₀]; exact hηV
  have hη'V : genericPoint C ∈ π₅ ⁻¹ᵁ V := by
    have hne : ((π₅ ⁻¹ᵁ V : C.Opens) : Set C).Nonempty := ⟨x₀, hx₀V⟩
    exact ((genericPoint_spec C).mem_open_set_iff (π₅ ⁻¹ᵁ V).isOpen).mpr (by simpa using hne)
  have hstη : IsIso (π₅.stalkMap (genericPoint C)) := by
    have e := morphismRestrictStalkMap π₅ V ⟨genericPoint C, hη'V⟩
    have h0 : IsIso ((π₅ ∣_ V).stalkMap ⟨genericPoint C, hη'V⟩) :=
      ((isIso_iff_isIso_stalkMap (π₅ ∣_ V)).mp hVi).2 _
    exact (MorphismProperty.arrow_mk_iso_iff (MorphismProperty.isomorphisms CommRingCat) e).mp h0
  have dom : ∀ (A B K : Type u) [CommRing A] [IsDomain A] [ValuationRing A] [CommRing B] [Field K]
      [Algebra A K] [IsFractionRing A K] (φ : A →+* B) [IsLocalHom φ] (ψ : B →+* K),
      Function.Injective ψ → ψ.comp φ = algebraMap A K → Function.Bijective φ := by
    intro A B K _ _ _ _ _ _ _ φ _ ψ hψ hc
    have hc' : ∀ a, ψ (φ a) = algebraMap A K a := fun a => by rw [← hc]; rfl
    refine ⟨fun a b hab => IsFractionRing.injective A K (by rw [← hc', ← hc', hab]), fun b => ?_⟩
    rcases ValuationRing.isInteger_or_isInteger A (ψ b) with ⟨a, ha⟩ | ⟨a, ha⟩
    · exact ⟨a, hψ (by rw [hc', ha])⟩
    · by_cases hb : ψ b = 0
      · exact ⟨0, hψ (by rw [map_zero, map_zero, hb])⟩
      have h1 : b * φ a = 1 := hψ (by rw [map_mul, hc', ha, map_one, mul_inv_cancel₀ hb])
      have hu : IsUnit a := isUnit_of_map_unit φ a (IsUnit.of_mul_eq_one_right b h1)
      obtain ⟨c, hc2⟩ := hu.exists_right_inv
      refine ⟨c, ?_⟩
      calc φ c = (b * φ a) * φ c := by rw [h1, one_mul]
        _ = b * φ (a * c) := by rw [map_mul, mul_assoc]
        _ = b := by rw [hc2, map_one, mul_one]
  have hst : ∀ z : C, ValuationRing ((Limits.pullback g ρ).presheaf.stalk (π₅ z)) →
      IsIso (π₅.stalkMap z) := by
    intro z hvz
    have h1 : Function.Injective (C.presheaf.stalkSpecializes (genericPoint_specializes z)).hom :=
      IsFractionRing.injective (C.presheaf.stalk z) C.functionField
    have h2 : Function.Injective (inv (π₅.stalkMap (genericPoint C))).hom :=
      (ConcreteCategory.bijective_of_isIso (inv (π₅.stalkMap (genericPoint C)))).1
    have h3 : Function.Injective ((Limits.pullback g ρ).presheaf.stalkSpecializes
        (genericPoint_specializes (π₅ (genericPoint C)))).hom :=
      IsFractionRing.injective ((Limits.pullback g ρ).presheaf.stalk (π₅ (genericPoint C)))
        (Limits.pullback g ρ).functionField
    have hψinj : Function.Injective
        (C.presheaf.stalkSpecializes (genericPoint_specializes z) ≫
          inv (π₅.stalkMap (genericPoint C)) ≫
          (Limits.pullback g ρ).presheaf.stalkSpecializes
            (genericPoint_specializes (π₅ (genericPoint C)))).hom := by
      rw [CommRingCat.hom_comp, CommRingCat.hom_comp, RingHom.coe_comp, RingHom.coe_comp]
      exact h3.comp (h2.comp h1)
    have hcomp : π₅.stalkMap z ≫ (C.presheaf.stalkSpecializes (genericPoint_specializes z) ≫
          inv (π₅.stalkMap (genericPoint C)) ≫
          (Limits.pullback g ρ).presheaf.stalkSpecializes
            (genericPoint_specializes (π₅ (genericPoint C)))) =
        (Limits.pullback g ρ).presheaf.stalkSpecializes (genericPoint_specializes (π₅ z)) := by
      have e := π₅.stalkSpecializes_stalkMap (genericPoint C) z (genericPoint_specializes z)
      rw [← Category.assoc, ← e, Category.assoc, IsIso.hom_inv_id_assoc,
        TopCat.Presheaf.stalkSpecializes_comp]
    have hc : (C.presheaf.stalkSpecializes (genericPoint_specializes z) ≫
          inv (π₅.stalkMap (genericPoint C)) ≫
          (Limits.pullback g ρ).presheaf.stalkSpecializes
            (genericPoint_specializes (π₅ (genericPoint C)))).hom.comp
          (π₅.stalkMap z).hom =
        algebraMap ((Limits.pullback g ρ).presheaf.stalk (π₅ z))
          (Limits.pullback g ρ).functionField := by
      rw [← CommRingCat.hom_comp, hcomp]; rfl
    have hbij := dom ((Limits.pullback g ρ).presheaf.stalk (π₅ z)) (C.presheaf.stalk z)
      (Limits.pullback g ρ).functionField (π₅.stalkMap z).hom _ hψinj hc
    exact (ConcreteCategory.isIso_iff_bijective _).mpr hbij
  have lift : ∀ (z : C) (y : ↥(Limits.pullback g ρ)), π₅ z = y →
      ValuationRing ((Limits.pullback g ρ).presheaf.stalk y) →
      ∃ l : Spec ((Limits.pullback g ρ).presheaf.stalk y) ⟶ C,
        l ≫ π₅ = (Limits.pullback g ρ).fromSpecStalk y ∧
        l (IsLocalRing.closedPoint ((Limits.pullback g ρ).presheaf.stalk y)) = z := by
    rintro z y rfl hvy
    haveI := hst z hvy
    refine ⟨Spec.map (inv (π₅.stalkMap z)) ≫ C.fromSpecStalk z, ?_, ?_⟩
    · rw [Category.assoc, ← Scheme.SpecMap_stalkMap_fromSpecStalk, ← Category.assoc,
        ← Spec.map_comp, IsIso.hom_inv_id, Spec.map_id, Category.id_comp]
    · have hcp : (Spec.map (inv (π₅.stalkMap z)))
          (IsLocalRing.closedPoint ((Limits.pullback g ρ).presheaf.stalk (π₅ z))) =
          IsLocalRing.closedPoint (C.presheaf.stalk z) := by
        show PrimeSpectrum.comap (inv (π₅.stalkMap z)).hom
          (IsLocalRing.closedPoint ((Limits.pullback g ρ).presheaf.stalk (π₅ z))) = _
        haveI := isLocalHom_of_isIso (inv (π₅.stalkMap z))
        exact IsLocalRing.comap_closedPoint (inv (π₅.stalkMap z)).hom
      have h2 := congrArg (C.fromSpecStalk z) hcp
      rw [Scheme.fromSpecStalk_closedPoint] at h2
      exact h2
  have uniq : ∀ (l₁ l₂ : Spec ((Limits.pullback g ρ).presheaf.stalk y₀) ⟶ C),
      l₁ ≫ π₅ = (Limits.pullback g ρ).fromSpecStalk y₀ →
      l₂ ≫ π₅ = (Limits.pullback g ρ).fromSpecStalk y₀ →
      Spec.map ((Limits.pullback g ρ).presheaf.stalkSpecializes (genericPoint_specializes y₀)) ≫ l₁ =
        Spec.map ((Limits.pullback g ρ).presheaf.stalkSpecializes
          (genericPoint_specializes y₀)) ≫ l₂ → l₁ = l₂ := by
    intro l₁ l₂ h₁ h₂ hj
    have hj0 : CommRingCat.ofHom (algebraMap ((Limits.pullback g ρ).presheaf.stalk y₀)
        (Limits.pullback g ρ).functionField) =
        (Limits.pullback g ρ).presheaf.stalkSpecializes (genericPoint_specializes y₀) := rfl
    have hsq : CommSq (Spec.map ((Limits.pullback g ρ).presheaf.stalkSpecializes
          (genericPoint_specializes y₀)) ≫ l₁)
        (Spec.map (CommRingCat.ofHom (algebraMap ((Limits.pullback g ρ).presheaf.stalk y₀)
          (Limits.pullback g ρ).functionField))) π₅
        ((Limits.pullback g ρ).fromSpecStalk y₀) := ⟨by
          rw [Category.assoc, h₁]
          exact congrArg (fun f => Spec.map f ≫ (Limits.pullback g ρ).fromSpecStalk y₀) hj0.symm⟩
    let Sq : ValuativeCommSq π₅ := @ValuativeCommSq.mk _ _ π₅
      ((Limits.pullback g ρ).presheaf.stalk y₀) _ inferInstance
      hval (Limits.pullback g ρ).functionField _ _ inferInstance _ _ hsq
    have hu : Subsingleton Sq.commSq.LiftStruct := IsSeparated.valuativeCriterion π₅ Sq
    let L₁ : Sq.commSq.LiftStruct := ⟨l₁, rfl, h₁⟩
    let L₂ : Sq.commSq.LiftStruct := ⟨l₂, hj.symm, h₂⟩
    exact congrArg CommSq.LiftStruct.l (hu.elim L₁ L₂)
  have eqV : ∀ (T : Scheme.{u}) (a b : T ⟶ C), a ≫ π₅ = b ≫ π₅ →
      Set.range ⇑(a ≫ π₅) ⊆ (V : Set ↥(Limits.pullback g ρ)) → a = b := by
    intro T a b hab hr
    have hr' : Set.range ⇑(b ≫ π₅) ⊆ (V : Set ↥(Limits.pullback g ρ)) := hab ▸ hr
    have ha : Set.range ⇑a ⊆ Set.range ⇑(π₅ ⁻¹ᵁ V).ι := by
      rw [Scheme.Opens.range_ι]; rintro _ ⟨t, rfl⟩; exact hr ⟨t, rfl⟩
    have hb : Set.range ⇑b ⊆ Set.range ⇑(π₅ ⁻¹ᵁ V).ι := by
      rw [Scheme.Opens.range_ι]; rintro _ ⟨t, rfl⟩; exact hr' ⟨t, rfl⟩
    have key : IsOpenImmersion.lift _ a ha = IsOpenImmersion.lift _ b hb := by
      rw [← cancel_mono (π₅ ∣_ V), ← cancel_mono V.ι, Category.assoc, Category.assoc,
        morphismRestrict_ι, ← Category.assoc, IsOpenImmersion.lift_fac, ← Category.assoc,
        IsOpenImmersion.lift_fac, hab]
    calc a = IsOpenImmersion.lift _ a ha ≫ (π₅ ⁻¹ᵁ V).ι := (IsOpenImmersion.lift_fac _ a ha).symm
      _ = IsOpenImmersion.lift _ b hb ≫ (π₅ ⁻¹ᵁ V).ι := by rw [key]
      _ = b := IsOpenImmersion.lift_fac _ b hb
  have hfib : ∀ z₁ z₂ : C, π₅ z₁ = y₀ → π₅ z₂ = y₀ → z₁ = z₂ := by
    intro z₁ z₂ h₁ h₂
    obtain ⟨l₁, hl₁, hc₁⟩ := lift z₁ y₀ h₁ hval
    obtain ⟨l₂, hl₂, hc₂⟩ := lift z₂ y₀ h₂ hval
    have hj : Spec.map ((Limits.pullback g ρ).presheaf.stalkSpecializes
          (genericPoint_specializes y₀)) ≫ l₁ =
        Spec.map ((Limits.pullback g ρ).presheaf.stalkSpecializes
          (genericPoint_specializes y₀)) ≫ l₂ := by
      apply eqV
      · rw [Category.assoc, Category.assoc, hl₁, hl₂]
      · rw [Category.assoc, hl₁, Scheme.SpecMap_stalkSpecializes_fromSpecStalk,
          Scheme.range_fromSpecStalk]
        intro x hx
        exact hx.mem_open V.isOpen hηV
    have hl := uniq l₁ l₂ hl₁ hl₂ hj
    calc z₁ = l₁ (IsLocalRing.closedPoint _) := hc₁.symm
      _ = l₂ (IsLocalRing.closedPoint _) := by rw [hl]
      _ = z₂ := hc₂
  have hsurj : Function.Surjective π₅ := by
    have hcl : IsClosed (Set.range π₅) := π₅.isClosedMap.isClosed_range
    have hVsub : (V : Set ↥(Limits.pullback g ρ)) ⊆ Set.range π₅ := fun v hv => hsurjV v hv
    have hdense : Dense (V : Set ↥(Limits.pullback g ρ)) := V.isOpen.dense hVne
    intro y
    have hy : y ∈ closure (V : Set ↥(Limits.pullback g ρ)) := by rw [hdense.closure_eq]; trivial
    exact (closure_minimal hVsub hcl) hy



  obtain ⟨z₀, hz₀⟩ := hsurj y₀
  have hvz₀ : ValuationRing ((Limits.pullback g ρ).presheaf.stalk (π₅ z₀)) := by
    rw [hz₀]; exact hval
  obtain ⟨Nn, hz₀N, hNimm⟩ := wcpa_dj_gsl_local_iso_spread C (Limits.pullback g ρ) π₅ z₀
    inferInstance (hst z₀ hvz₀)
  have hZcl : IsClosed (⇑π₅ '' ((Nn : Set C)ᶜ)) :=
    π₅.isClosedMap _ Nn.isOpen.isClosed_compl
  let Y₁ : (Limits.pullback g ρ).Opens := ⟨(⇑π₅ '' ((Nn : Set C)ᶜ))ᶜ, hZcl.isOpen_compl⟩
  have hy₀ : y₀ ∈ Y₁ := by
    rintro ⟨z', hz'N, hz'⟩
    exact hz'N (hfib z' z₀ hz' hz₀ ▸ hz₀N)
  have hleN : π₅ ⁻¹ᵁ Y₁ ≤ Nn := by
    intro x hx
    by_contra hxN
    exact ((Scheme.Hom.mem_preimage _).mp hx) ⟨x, hxN, rfl⟩
  refine ⟨Y₁, hy₀, ?_⟩
  have hcomp : (π₅ ∣_ Y₁) ≫ Y₁.ι = C.homOfLE hleN ≫ (Nn.ι ≫ π₅) := by
    rw [morphismRestrict_ι, ← Category.assoc, Scheme.homOfLE_ι]
  haveI : IsOpenImmersion ((π₅ ∣_ Y₁) ≫ Y₁.ι) := by rw [hcomp]; infer_instance
  haveI : IsOpenImmersion (π₅ ∣_ Y₁) := IsOpenImmersion.of_comp _ Y₁.ι
  refine (isIso_iff_isOpenImmersion_and_surjective _).mpr ⟨inferInstance, ⟨fun w => ?_⟩⟩
  obtain ⟨x, hx⟩ := hsurj w.1
  have hxY : x ∈ π₅ ⁻¹ᵁ Y₁ := by
    rw [Scheme.Hom.mem_preimage, hx]; exact w.2
  refine ⟨⟨x, hxY⟩, Subtype.ext ?_⟩
  first
    | exact (morphismRestrict_base_coe π₅ Y₁ ⟨x, hxY⟩).trans hx
    | (erw [morphismRestrict_base_coe]; exact hx)
    | (simp only [morphismRestrict_base_coe]; exact hx)

theorem wcpa_dj_gcl_section_lift : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
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
      (∀ c : C, wcpaDjGcPtType (π₅ ≫ Limits.pullback.snd g ρ) c) →
      ∃ τ' : Fin m → (S'' ⟶ C), (∀ j, τ' j ≫ π₅ = wcpaDjStcLift g ρ τ hτ j) ∧
        wcpaDjSections (π₅ ≫ Limits.pullback.snd g ρ) m τ' :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hτ S'' _ ρ D'' H C _ π₅ A hM hπ₅p hpt
  classical
  have hτsec : wcpaDjSections g m τ := by
    obtain ⟨⟨-, -, -, -, h, -⟩, -⟩ := H
    exact h

  have huniq : ∀ (j : Fin m) (T : Scheme.{u}) (i : T ⟶ S'') [IsOpenImmersion i] (s s' : T ⟶ C),
      s ≫ π₅ = i ≫ wcpaDjStcLift g ρ τ hτ j → s' ≫ π₅ = i ≫ wcpaDjStcLift g ρ τ hτ j →
      s = s' := by
    intro j T i _ s s' hs hs'
    obtain ⟨Y₁, hη, hiso⟩ := wcpa_dj_gsl_generic_iso k S Y sS g m τ W mD Dc N I O a hτ S'' ρ
      D'' H C π₅ A hM hπ₅p j
    haveI := hiso
    haveI : IsReduced T := isReduced_of_isOpenImmersion i
    have hdense0 : Dense ((wcpaDjStcLift g ρ τ hτ j ⁻¹ᵁ Y₁ : S''.Opens) : Set S'') :=
      IsOpen.dense (TopologicalSpace.Opens.isOpen _)
        ⟨genericPoint S'', (Scheme.Hom.mem_preimage _).mpr hη⟩
    let Wv : T.Opens := i ⁻¹ᵁ (wcpaDjStcLift g ρ τ hτ j ⁻¹ᵁ Y₁)
    have hdense : Dense (Wv : Set T) := hdense0.preimage i.isOpenEmbedding.isOpenMap
    haveI : IsDominant Wv.ι := Opens.isDominant_ι hdense
    have hmono : Mono ((π₅ ⁻¹ᵁ Y₁).ι ≫ π₅) := by
      rw [← morphismRestrict_ι]
      infer_instance
    have hrange : ∀ (s₀ : T ⟶ C), s₀ ≫ π₅ = i ≫ wcpaDjStcLift g ρ τ hτ j →
        Set.range ⇑(Wv.ι ≫ s₀) ⊆ Set.range ⇑(π₅ ⁻¹ᵁ Y₁).ι := by
      intro s₀ hs₀ y hy
      rw [Scheme.Opens.range_ι]
      obtain ⟨x, rfl⟩ := hy
      have hx2 : wcpaDjStcLift g ρ τ hτ j (i (Wv.ι x)) ∈ Y₁ :=
        (Scheme.Hom.mem_preimage _).mp ((Scheme.Hom.mem_preimage _).mp x.2)
      have e : (s₀ ≫ π₅) (Wv.ι x) = (i ≫ wcpaDjStcLift g ρ τ hτ j) (Wv.ι x) := by rw [hs₀]
      rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply] at e
      show (Wv.ι ≫ s₀) x ∈ π₅ ⁻¹ᵁ Y₁
      rw [Scheme.Hom.mem_preimage, Scheme.Hom.comp_apply, e]
      exact hx2
    have h1 := IsOpenImmersion.lift_fac (π₅ ⁻¹ᵁ Y₁).ι (Wv.ι ≫ s) (hrange s hs)
    have h2 := IsOpenImmersion.lift_fac (π₅ ⁻¹ᵁ Y₁).ι (Wv.ι ≫ s') (hrange s' hs')
    have h3 : IsOpenImmersion.lift (π₅ ⁻¹ᵁ Y₁).ι (Wv.ι ≫ s) (hrange s hs) =
        IsOpenImmersion.lift (π₅ ⁻¹ᵁ Y₁).ι (Wv.ι ≫ s') (hrange s' hs') := by
      rw [← cancel_mono ((π₅ ⁻¹ᵁ Y₁).ι ≫ π₅), ← Category.assoc, h1, ← Category.assoc, h2,
        Category.assoc, Category.assoc, hs, hs']
    have hfac : Wv.ι ≫ s = Wv.ι ≫ s' := by
      calc Wv.ι ≫ s = _ := h1.symm
        _ = _ := by rw [h3]
        _ = _ := h2
    exact ext_of_isDominant_of_isSeparated π₅ (hs.trans hs'.symm) Wv.ι hfac

  have hloc := wcpa_dj_gsl_local_lift k S Y sS g m τ W mD Dc N I O a hτ S'' ρ D'' H C π₅ A hM
    hπ₅p hpt
  choose V σ Nc hpV hσ hσN hNc using hloc
  have hcov : ∀ j, TopologicalSpace.IsOpenCover (V j) := fun j => by
    rw [TopologicalSpace.IsOpenCover, eq_top_iff]
    intro p _
    exact TopologicalSpace.Opens.mem_iSup.mpr ⟨p, hpV j p⟩
  have hglue : ∀ j (x y : S''), Limits.pullback.fst (V j x).ι (V j y).ι ≫ σ j x =
      Limits.pullback.snd (V j x).ι (V j y).ι ≫ σ j y := by
    intro j x y
    haveI : IsOpenImmersion (Limits.pullback.fst (V j x).ι (V j y).ι ≫ (V j x).ι) :=
      inferInstance
    apply huniq j _ (Limits.pullback.fst (V j x).ι (V j y).ι ≫ (V j x).ι)
    · rw [Category.assoc, hσ, Category.assoc]
    · rw [Category.assoc, hσ, ← Category.assoc, ← Limits.pullback.condition, Category.assoc]
  have hex : ∀ j, ∃ tj : S'' ⟶ C, ∀ p, (V j p).ι ≫ tj = σ j p := fun j =>
    ⟨(S''.openCoverOfIsOpenCover (V j) (hcov j)).glueMorphisms (σ j) (hglue j),
      fun p => Scheme.Cover.ι_glueMorphisms (S''.openCoverOfIsOpenCover (V j) (hcov j)) (σ j)
        (hglue j) p⟩
  choose t ht using hex
  have htπ : ∀ j, t j ≫ π₅ = wcpaDjStcLift g ρ τ hτ j := by
    intro j
    apply Scheme.Cover.hom_ext (S''.openCoverOfIsOpenCover (V j) (hcov j))
    intro (p : S'')
    have e1 : (V j p).ι ≫ t j ≫ π₅ = (V j p).ι ≫ wcpaDjStcLift g ρ τ hτ j := by
      rw [← Category.assoc, ht j p, hσ j p]
    exact e1
  refine ⟨t, htπ, ?_, ?_, ?_⟩
  · intro j
    rw [← Category.assoc, htπ]
    unfold wcpaDjStcLift
    exact Limits.pullback.lift_snd _ _ _
  · intro i j p q hij heq
    have e : (t i ≫ π₅) p = (t j ≫ π₅) q := by
      rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply, heq]
    rw [htπ, htπ] at e
    have e2 : (wcpaDjStcLift g ρ τ hτ i ≫ Limits.pullback.snd g ρ) p =
        (wcpaDjStcLift g ρ τ hτ j ≫ Limits.pullback.snd g ρ) q := by
      rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply, e]
    have e3 : (wcpaDjStcLift g ρ τ hτ i ≫ Limits.pullback.fst g ρ) p =
        (wcpaDjStcLift g ρ τ hτ j ≫ Limits.pullback.fst g ρ) q := by
      rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply, e]
    simp only [wcpaDjStcLift, Limits.pullback.lift_snd, Limits.pullback.lift_fst] at e2 e3
    rw [Scheme.Hom.comp_apply, Scheme.Hom.comp_apply] at e3
    have hpq : p = q := by simpa using e2
    subst hpq
    exact hτsec.2.1 i j (ρ p) (ρ p) hij e3
  · intro j p
    refine ⟨Nc j p, ?_, hNc j p⟩
    have h1 : (V j p).ι ⟨p, hpV j p⟩ = p := Scheme.Opens.ι_apply (V j p) ⟨p, hpV j p⟩
    have h2 : ((V j p).ι ≫ t j) ⟨p, hpV j p⟩ = t j ((V j p).ι ⟨p, hpV j p⟩) :=
      Scheme.Hom.comp_apply _ _ _
    have e : t j p = σ j p ⟨p, hpV j p⟩ := by
      have h3 := h2.symm
      rw [h1] at h3
      rw [h3]
      exact congrArg (fun f => f ⟨p, hpV j p⟩) (ht j p)
    rw [e]
    exact hσN j p

theorem wcpa_dj_gcl_boundary : ∀ (k : Type u) [Field k] [Finite k] (S Y : Scheme.{u})
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
      ∀ τ' : Fin m → (S'' ⟶ C), (∀ j, τ' j ≫ π₅ = wcpaDjStcLift g ρ τ hτ j) →
      ∃ U' : S''.Opens, U' ≠ ⊥ ∧
        SmoothOfRelativeDimension 1 ((π₅ ≫ Limits.pullback.snd g ρ) ∣_ U') ∧
        GeometricallyConnected ((π₅ ≫ Limits.pullback.snd g ρ) ∣_ U') ∧
        ⇑(π₅ ≫ Limits.pullback.fst g ρ) ⁻¹' ((⋃ j, Set.range ⇑(τ j)) ∪ ⇑g ⁻¹' ((W : Set S)ᶜ)) ⊆
          (⋃ j, Set.range ⇑(τ' j)) ∪
            ⇑(π₅ ≫ Limits.pullback.snd g ρ) ⁻¹' ((U' : Set S'')ᶜ) :=
by
  intro k _ _ S Y _ _ sS g m τ W mD Dc N I O a hτ S'' _ ρ D'' H C _ π₅ A hM _hπ₅p τ' hτ'
  obtain ⟨⟨_hS, _hY, hss, _hmono, _hτs, hW, hWsm, hWgc, _hreg, _hcomps, _hWD, hO, hstr, _hC1,
    _hC2⟩, hρS, _hρp, hρs, _hρf, _hreg'', _hsnc'', _hD'', _hK⟩ := H
  obtain ⟨_hM1, ⟨hA, hL⟩, ⟨V₀, hV₀, hV₀iso⟩, hM4⟩ := hM
  haveI hYint : AlgebraicGeometry.IsIntegral (Limits.pullback g ρ) :=
    wcpa_dj_tr_basechange_integral S S'' Y ρ g W hss.1 hρs hW hWsm hWgc
  haveI := hρs

  have h1 : SmoothOfRelativeDimension 1 ((Limits.pullback.snd g ρ) ∣_ (ρ ⁻¹ᵁ W)) :=
    wcpa_dj_tr_basechange_smooth S S'' Y ρ g W hWsm
  have h2 : GeometricallyConnected ((Limits.pullback.snd g ρ) ∣_ (ρ ⁻¹ᵁ W)) := by
    have hA' := isPullback_morphismRestrict g W
    have hB := isPullback_morphismRestrict (Limits.pullback.snd g ρ) (ρ ⁻¹ᵁ W)
    have hC : ρ ∣_ W ≫ W.ι = (ρ ⁻¹ᵁ W).ι ≫ ρ := morphismRestrict_ι ρ W
    have hD := morphismRestrict_ι (Limits.pullback.snd g ρ) (ρ ⁻¹ᵁ W)
    have hw : ((Limits.pullback.snd g ρ) ∣_ (ρ ⁻¹ᵁ W) ≫ ρ ∣_ W) ≫ W.ι =
        (((Limits.pullback.snd g ρ) ⁻¹ᵁ (ρ ⁻¹ᵁ W)).ι ≫ Limits.pullback.fst g ρ) ≫ g := by
      rw [Category.assoc, hC, ← Category.assoc, hD, Category.assoc, Category.assoc,
        Limits.pullback.condition]
    have hE := hA'.lift_fst _ _ hw
    have hF := hA'.lift_snd _ _ hw
    have hrect := IsPullback.paste_horiz hB.flip (IsPullback.of_hasPullback g ρ)
    rw [← hF, ← hC] at hrect
    have hpb := IsPullback.of_right hrect hE hA'.flip
    exact MorphismProperty.of_isPullback (P := @GeometricallyConnected) hpb hWgc

  haveI hρSp : IsProper (ρ ≫ sS) := wcpa_dj_proj_proper k _ hρS
  have hW''ne : ρ ⁻¹ᵁ W ≠ ⊥ := by
    rw [TopologicalSpace.Opens.ne_bot_iff_nonempty] at hW ⊢
    obtain ⟨w, hw⟩ := hW
    obtain ⟨p, hp⟩ := ρ.surjective w
    refine ⟨p, ?_⟩
    show ρ p ∈ W
    rw [hp]; exact hw
  obtain ⟨x₀, hx₀⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty _).mp hW''ne
  obtain ⟨U₀, hU₀, hxU₀, hU₀le⟩ :=
    (TopologicalSpace.Opens.isBasis_iff_nbhd.mp (Scheme.isBasis_affineOpens S'')) hx₀
  have hU₀aff : IsAffineOpen U₀ := hU₀
  haveI : Nonempty U₀ := ⟨⟨x₀, hxU₀⟩⟩
  have hft : RingHom.FiniteType ((ρ ≫ sS).appLE ⊤ U₀ le_top).hom :=
    HasRingHomProperty.appLE @LocallyOfFiniteType (ρ ≫ sS) inferInstance
      ⟨⊤, isAffineOpen_top _⟩ ⟨U₀, hU₀aff⟩ le_top
  have hsurj : Function.Surjective (Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom := by
    intro z
    refine ⟨(Scheme.ΓSpecIso (CommRingCat.of k)).hom.hom z, ?_⟩
    simp
  let ψ : k →+* Γ(S'', U₀) :=
    ((ρ ≫ sS).appLE ⊤ U₀ le_top).hom.comp (Scheme.ΓSpecIso (CommRingCat.of k)).inv.hom
  have hψ : ψ.FiniteType := hft.comp (RingHom.FiniteType.of_surjective _ hsurj)
  letI : Algebra k Γ(S'', U₀) := ψ.toAlgebra
  haveI : Algebra.FiniteType k Γ(S'', U₀) := hψ
  haveI : IsNoetherianRing Γ(S'', U₀) := Algebra.FiniteType.isNoetherianRing k _
  have hfinIC : ∀ P ∈ minimalPrimes Γ(S'', U₀), Module.Finite (Γ(S'', U₀) ⧸ P)
      (integralClosure (Γ(S'', U₀) ⧸ P) (FractionRing (Γ(S'', U₀) ⧸ P))) := by
    intro P hP
    haveI : P.IsPrime := Ideal.minimalPrimes_isPrime hP
    haveI : Algebra.FiniteType k (Γ(S'', U₀) ⧸ P) :=
      Algebra.FiniteType.of_surjective (Ideal.Quotient.mkₐ k P)
        (Ideal.Quotient.mkₐ_surjective k P)
    exact noether_integralClosure_finite k _
  have hbot : (⊥ : Ideal Γ(S'', U₀)) ∈ minimalPrimes Γ(S'', U₀) := by
    show ⊥ ∈ (⊥ : Ideal Γ(S'', U₀)).minimalPrimes
    rw [Ideal.minimalPrimes_eq_subsingleton_self]
    exact Set.mem_singleton _
  obtain ⟨f, hf0, hf⟩ := reduced_noetherian_generic_normal Γ(S'', U₀) hfinIC ⊥ hbot
  haveI hloc := hU₀aff.isLocalization_basicOpen f
  obtain ⟨hdom', hic'⟩ := hf Γ(S'', S''.basicOpen f)
  haveI := hdom'
  haveI := hic'
  haveI : IsNoetherianRing Γ(S'', S''.basicOpen f) :=
    IsLocalization.isNoetherianRing (Submonoid.powers f) _ inferInstance
  have hU'aff : IsAffineOpen (S''.basicOpen f) := hU₀aff.basicOpen f
  have hU'W : S''.basicOpen f ≤ ρ ⁻¹ᵁ W := (S''.basicOpen_le f).trans hU₀le
  have hU'ne : S''.basicOpen f ≠ ⊥ := by
    intro h
    apply hf0
    rw [Ideal.mem_bot]
    exact (basicOpen_eq_bot_iff f).mp h
  set U' := S''.basicOpen f with hU'def

  obtain ⟨hsm', hgc'⟩ :=
    wcpa_dj_ssm_restrict_smaller (Limits.pullback.snd g ρ) (ρ ⁻¹ᵁ W) U' hU'W h1 h2

  have hV₁O : Limits.pullback.snd g ρ ⁻¹ᵁ U' ≤ Limits.pullback.fst g ρ ⁻¹ᵁ O := by
    intro y hy
    have hy' : Limits.pullback.snd g ρ y ∈ U' := hy
    have e : (Limits.pullback.fst g ρ ≫ g) y = (Limits.pullback.snd g ρ ≫ ρ) y := by
      rw [Limits.pullback.condition]
    simp only [Scheme.Hom.comp_apply] at e
    have h3 : g (Limits.pullback.fst g ρ y) ∈ W := by rw [e]; exact hU'W hy'
    exact hO h3

  have hfinO : IsFinite (π₅ ∣_ (Limits.pullback.fst g ρ ⁻¹ᵁ O)) := by
    have hw : (Limits.pullback.fst g ρ ⁻¹ᵁ O).ι ≫ Limits.pullback.snd g ρ ≫ ρ ≫ sS =
        (Limits.pullback.fst g ρ ∣_ O ≫ a) ≫ @Proj.toSpecZero _ _ _ _ _
          (MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k) MvPolynomial.gradedAlgebra ≫
          Spec.map (CommRingCat.ofHom
            (algebraMap k ↥(MvPolynomial.homogeneousSubmodule (Fin (N + 1)) k 0))) := by
      rw [Category.assoc, hstr, morphismRestrict_ι_assoc, Limits.pullback.condition_assoc]
    obtain ⟨Q, prY, L, Γ, hL1, hLfin, hΓ1, hLΓ⟩ : ∃ (Q : Scheme.{u})
        (prY : Q ⟶ Limits.pullback g ρ) (L : C ⟶ Q)
        (Γ : (Limits.pullback.fst g ρ ⁻¹ᵁ O).toScheme ⟶ Q),
        L ≫ prY = π₅ ∧ IsFinite L ∧ Γ ≫ prY = (Limits.pullback.fst g ρ ⁻¹ᵁ O).ι ∧
        (π₅ ⁻¹ᵁ (Limits.pullback.fst g ρ ⁻¹ᵁ O)).ι ≫ L =
          π₅ ∣_ (Limits.pullback.fst g ρ ⁻¹ᵁ O) ≫ Γ := by
      refine ⟨_, _, Limits.pullback.lift π₅ A hA, Limits.pullback.lift _ _ hw,
        Limits.pullback.lift_fst _ _ _, hL, Limits.pullback.lift_fst _ _ _, ?_⟩
      apply Limits.pullback.hom_ext
      · simp only [Category.assoc, Limits.pullback.lift_fst, morphismRestrict_ι]
      · simp only [Category.assoc, Limits.pullback.lift_snd]
        exact hM4
    have hpbQ := isPullback_morphismRestrict prY (Limits.pullback.fst g ρ ⁻¹ᵁ O)
    have hw2 : 𝟙 _ ≫ (Limits.pullback.fst g ρ ⁻¹ᵁ O).ι = Γ ≫ prY := by
      rw [Category.id_comp, hΓ1]
    have hΓ'1 := hpbQ.lift_fst _ _ hw2
    have hΓ'2 := hpbQ.lift_snd _ _ hw2
    generalize hpbQ.lift _ _ hw2 = Γ' at hΓ'1 hΓ'2
    haveI : IsSeparated (Γ' ≫ prY ∣_ (Limits.pullback.fst g ρ ⁻¹ᵁ O)) := by
      rw [hΓ'1]; infer_instance
    haveI : IsSeparated Γ' := IsSeparated.of_comp Γ' (prY ∣_ _)
    haveI : IsFinite (L ∣_ (prY ⁻¹ᵁ (Limits.pullback.fst g ρ ⁻¹ᵁ O))) :=
      MorphismProperty.of_isPullback (P := @IsFinite) (isPullback_morphismRestrict L _).flip hLfin
    have hOE : π₅ ⁻¹ᵁ (Limits.pullback.fst g ρ ⁻¹ᵁ O) =
        L ⁻¹ᵁ (prY ⁻¹ᵁ (Limits.pullback.fst g ρ ⁻¹ᵁ O)) := by
      rw [← hL1, Scheme.Hom.comp_preimage]
    have hkey : π₅ ∣_ (Limits.pullback.fst g ρ ⁻¹ᵁ O) ≫ Γ' =
        (C.isoOfEq hOE).hom ≫ L ∣_ (prY ⁻¹ᵁ (Limits.pullback.fst g ρ ⁻¹ᵁ O)) := by
      rw [← cancel_mono (prY ⁻¹ᵁ (Limits.pullback.fst g ρ ⁻¹ᵁ O)).ι]
      simp only [Category.assoc, hΓ'2, morphismRestrict_ι, Scheme.isoOfEq_hom_ι_assoc]
      exact hLΓ.symm
    haveI : IsFinite (π₅ ∣_ (Limits.pullback.fst g ρ ⁻¹ᵁ O) ≫ Γ') := by
      rw [hkey]; infer_instance
    exact IsFinite.of_comp _ Γ'

  haveI : GeometricallyConnected ((Limits.pullback.snd g ρ) ∣_ U') := hgc'
  obtain ⟨u, hu⟩ := (TopologicalSpace.Opens.ne_bot_iff_nonempty _).mp hU'ne
  obtain ⟨z, _hz⟩ := ((Limits.pullback.snd g ρ) ∣_ U').surjective ⟨u, hu⟩
  have hO''ne : (SetLike.coe (Limits.pullback.fst g ρ ⁻¹ᵁ O)).Nonempty := ⟨z.1, hV₁O z.2⟩
  have hV₀ne : (SetLike.coe V₀).Nonempty :=
    (TopologicalSpace.Opens.ne_bot_iff_nonempty _).mp hV₀
  obtain ⟨y₀, hy₀V₀, hy₀O⟩ := nonempty_preirreducible_inter V₀.isOpen
    (Limits.pullback.fst g ρ ⁻¹ᵁ O).isOpen hV₀ne hO''ne
  haveI := hV₀iso
  obtain ⟨x₀', hx₀'⟩ := (π₅ ∣_ V₀).surjective ⟨y₀, hy₀V₀⟩
  have hx₀'' : π₅ x₀'.1 = y₀ := by
    have := congrArg Subtype.val hx₀'
    simpa [morphismRestrict_base_coe] using this
  haveI : Nonempty (Limits.pullback.fst g ρ ⁻¹ᵁ O).toScheme := ⟨⟨y₀, hy₀O⟩⟩
  haveI : Nonempty (π₅ ⁻¹ᵁ (Limits.pullback.fst g ρ ⁻¹ᵁ O)).toScheme :=
    ⟨⟨x₀'.1, show π₅ x₀'.1 ∈ Limits.pullback.fst g ρ ⁻¹ᵁ O from hx₀'' ▸ hy₀O⟩⟩
  haveI : AlgebraicGeometry.IsIntegral (Limits.pullback.fst g ρ ⁻¹ᵁ O).toScheme :=
    isIntegral_of_isOpenImmersion (Limits.pullback.fst g ρ ⁻¹ᵁ O).ι
  haveI : AlgebraicGeometry.IsIntegral (π₅ ⁻¹ᵁ (Limits.pullback.fst g ρ ⁻¹ᵁ O)).toScheme :=
    isIntegral_of_isOpenImmersion (π₅ ⁻¹ᵁ (Limits.pullback.fst g ρ ⁻¹ᵁ O)).ι

  have hRR : ∀ (V U : (Limits.pullback g ρ).Opens),
      IsIso ((π₅ ∣_ V) ∣_ (V.ι ⁻¹ᵁ U)) ↔ IsIso (π₅ ∣_ (V ⊓ U)) := by
    intro V U
    have e := (MorphismProperty.isomorphisms Scheme).arrow_mk_iso_iff
      (morphismRestrictRestrict π₅ V (V.ι ⁻¹ᵁ U))
    have hVU : V.ι ''ᵁ (V.ι ⁻¹ᵁ U) = V ⊓ U := by
      rw [Scheme.Hom.image_preimage_eq_opensRange_inf, Scheme.Opens.opensRange_ι]
    rw [hVU] at e
    exact e
  have hgen : IsIso ((π₅ ∣_ (Limits.pullback.fst g ρ ⁻¹ᵁ O)) ∣_
      ((Limits.pullback.fst g ρ ⁻¹ᵁ O).ι ⁻¹ᵁ V₀)) := by
    rw [hRR, inf_comm, ← hRR]
    exact IsZariskiLocalAtTarget.restrict (P := MorphismProperty.isomorphisms Scheme) hV₀iso _
  have hUne : (Limits.pullback.fst g ρ ⁻¹ᵁ O).ι ⁻¹ᵁ V₀ ≠ ⊥ := by
    rw [TopologicalSpace.Opens.ne_bot_iff_nonempty]
    exact ⟨⟨y₀, hy₀O⟩, hy₀V₀⟩

  have hnormY : ∀ y : ↥(Limits.pullback g ρ), Limits.pullback.snd g ρ y ∈ U' →
      IsIntegrallyClosed ((Limits.pullback g ρ).presheaf.stalk y) := by
    intro y hy0
    have hy : y ∈ Limits.pullback.snd g ρ ⁻¹ᵁ U' := hy0
    haveI : SmoothOfRelativeDimension 1 (Limits.pullback.snd g ρ ∣_ U') := hsm'
    haveI : Smooth (Limits.pullback.snd g ρ ∣_ U') := SmoothOfRelativeDimension.smooth 1 _
    haveI : Smooth hU'aff.isoSpec.hom := inferInstance
    haveI : Smooth ((Limits.pullback.snd g ρ ∣_ U') ≫ hU'aff.isoSpec.hom) := inferInstance
    have hn := (wc_fntame_smooth_stalk_normal Γ(S'', U') (Limits.pullback.snd g ρ ⁻¹ᵁ U').toScheme
      ((Limits.pullback.snd g ρ ∣_ U') ≫ hU'aff.isoSpec.hom) ⟨y, hy⟩).2
    exact IsIntegrallyClosed.of_equiv (Scheme.Opens.stalkIso _ ⟨y, hy⟩).commRingCatIsoToRingEquiv

  have hisoR := wcpa_dj_gs_norm_iso_normal_locus _ _ (π₅ ∣_ (Limits.pullback.fst g ρ ⁻¹ᵁ O))
    hfinO ⟨_, hUne, hgen⟩ ((Limits.pullback.fst g ρ ⁻¹ᵁ O).ι ⁻¹ᵁ (Limits.pullback.snd g ρ ⁻¹ᵁ U'))
    (fun r hr => by
      have hn := hnormY r.1 hr
      exact IsIntegrallyClosed.of_equiv (Scheme.Opens.stalkIso _ r).commRingCatIsoToRingEquiv.symm)
  have hiso : IsIso (π₅ ∣_ (Limits.pullback.snd g ρ ⁻¹ᵁ U')) := by
    have h := (hRR _ _).mp hisoR
    rwa [inf_eq_right.mpr hV₁O] at h
  haveI := hiso

  have hcomp : (π₅ ≫ Limits.pullback.snd g ρ) ∣_ U' =
      π₅ ∣_ (Limits.pullback.snd g ρ ⁻¹ᵁ U') ≫ (Limits.pullback.snd g ρ) ∣_ U' :=
    morphismRestrict_comp _ _ _
  have hpbI : IsPullback (π₅ ∣_ (Limits.pullback.snd g ρ ⁻¹ᵁ U'))
      ((π₅ ∣_ (Limits.pullback.snd g ρ ⁻¹ᵁ U')) ≫ (Limits.pullback.snd g ρ) ∣_ U')
      ((Limits.pullback.snd g ρ) ∣_ U') (𝟙 _) :=
    IsPullback.of_horiz_isIso ⟨by rw [Category.comp_id]⟩
  refine ⟨U', hU'ne, ?_, ?_, ?_⟩
  · rw [hcomp]
    exact MorphismProperty.of_isPullback (P := @SmoothOfRelativeDimension 1) hpbI hsm'
  · rw [hcomp]
    exact MorphismProperty.of_isPullback (P := @GeometricallyConnected) hpbI hgc'
  · intro c hc
    rw [Set.mem_preimage, Scheme.Hom.comp_apply] at hc
    by_cases hcU : (π₅ ≫ Limits.pullback.snd g ρ) c ∈ (U' : Set S'')
    · left
      rw [Scheme.Hom.comp_apply] at hcU
      have e : (Limits.pullback.fst g ρ ≫ g) (π₅ c) = (Limits.pullback.snd g ρ ≫ ρ) (π₅ c) := by
        rw [Limits.pullback.condition]
      simp only [Scheme.Hom.comp_apply] at e
      have hρW : ρ (Limits.pullback.snd g ρ (π₅ c)) ∈ W := hU'W hcU
      rcases (Set.mem_union _ _ _).mp hc with hc | hc
      · obtain ⟨l, hl⟩ := Set.mem_iUnion.mp hc
        obtain ⟨s, hs⟩ := hl
        have hgs : s = ρ (Limits.pullback.snd g ρ (π₅ c)) := by
          have e2 : (τ l ≫ g) s = s := by rw [hτ l]; rfl
          rw [Scheme.Hom.comp_apply, hs, e] at e2
          exact e2.symm
        have hlift_snd : wcpaDjStcLift g ρ τ hτ l ≫ Limits.pullback.snd g ρ = 𝟙 S'' :=
          Limits.pullback.lift_snd _ _ _
        have hlift_fst : wcpaDjStcLift g ρ τ hτ l ≫ Limits.pullback.fst g ρ = ρ ≫ τ l :=
          Limits.pullback.lift_fst _ _ _
        have huniq := (wcpa_dj_mm_section_point_unique Y S S'' (Limits.pullback g ρ) g ρ
          (Limits.pullback.fst g ρ) (Limits.pullback.snd g ρ) (τ l) (wcpaDjStcLift g ρ τ hτ l)
          (IsPullback.of_hasPullback g ρ) (hτ l) hlift_snd hlift_fst (π₅ c)).mp
          (by rw [← hgs]; exact hs.symm)
        have hc' : π₅ (τ' l (Limits.pullback.snd g ρ (π₅ c))) = π₅ c := by
          have h4 : (τ' l ≫ π₅) (Limits.pullback.snd g ρ (π₅ c)) =
              wcpaDjStcLift g ρ τ hτ l (Limits.pullback.snd g ρ (π₅ c)) := by rw [hτ' l]
          rw [Scheme.Hom.comp_apply] at h4
          exact h4.trans huniq.symm
        have hcV : c ∈ π₅ ⁻¹ᵁ (Limits.pullback.snd g ρ ⁻¹ᵁ U') := hcU
        have hc'V : τ' l (Limits.pullback.snd g ρ (π₅ c)) ∈
            π₅ ⁻¹ᵁ (Limits.pullback.snd g ρ ⁻¹ᵁ U') := by
          show Limits.pullback.snd g ρ (π₅ (τ' l (Limits.pullback.snd g ρ (π₅ c)))) ∈ U'
          rw [hc']; exact hcU
        have hinj := (π₅ ∣_ (Limits.pullback.snd g ρ ⁻¹ᵁ U')).isOpenEmbedding.injective
        have heq : (⟨c, hcV⟩ : π₅ ⁻¹ᵁ (Limits.pullback.snd g ρ ⁻¹ᵁ U')) =
            ⟨τ' l (Limits.pullback.snd g ρ (π₅ c)), hc'V⟩ := by
          apply hinj
          apply Subtype.ext
          exact (morphismRestrict_base_coe π₅ _ ⟨c, hcV⟩).trans
            (hc'.symm.trans (morphismRestrict_base_coe π₅ _
              ⟨τ' l (Limits.pullback.snd g ρ (π₅ c)), hc'V⟩).symm)
        exact Set.mem_iUnion.mpr ⟨l, _, (congrArg Subtype.val heq).symm⟩
      · exfalso
        have h5 : g (Limits.pullback.fst g ρ (π₅ c)) ∈ (W : Set S) := by rw [e]; exact hρW
        exact hc h5
    · right
      exact hcU

end GRWTSK.FiniteFieldWeil
